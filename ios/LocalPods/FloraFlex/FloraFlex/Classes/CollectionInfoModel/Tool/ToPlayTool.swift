
//: Declare String Begin

/*: "Status changed, please exit and retry" :*/
fileprivate let kStr_playerText:[UInt8] = [0x6,0x21,0x34,0x21,0x20,0x26,0x75,0x36,0x3d,0x34,0x3b,0x32,0x30,0x31,0x79,0x75,0x25,0x39,0x30,0x34,0x26,0x30,0x75,0x30,0x2d,0x3c,0x21,0x75,0x34,0x3b,0x31,0x75,0x27,0x30,0x21,0x27,0x2c]

/*: "GET" :*/
fileprivate let kStr_equalValue:String = "GEup"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  ToPlayTool.swift
//  AbroadTalking
//
//  Created by Charlotte on 2023/2/17.
//

//: import UIKit
import UIKit

//: typealias AudioCompletionblock = (_ urldata: NSData) -> Void
typealias AudioCompletionblock = (_ urldata: NSData) -> Void

//: protocol TalkingAudioPlayToolDelegate: NSObject {
protocol ToolDelegate: NSObject {
    /// 播放完毕的回调
    //: func playerStatusChange(status: AudioPlayerStatus)
    func fill(status: SucceedBinaryQuantity)
}

//: class TalkingAudioPlayTool: NSObject {
class ToPlayTool: NSObject {
    //: var player: AVAudioPlayer?
    var player: AVAudioPlayer?
    //: open weak var delegate: TalkingAudioPlayToolDelegate?
    open weak var delegate: ToolDelegate?

    // singleton
    //: static let shared = TalkingAudioPlayTool()
    static let shared = ToPlayTool()
    //: override func copy() -> Any { return self }
    override func copy() -> Any { return self }
    //: override func mutableCopy() -> Any { return self }
    override func mutableCopy() -> Any { return self }
    //: private override init() {
    override private init() {
        //: super.init()
        super.init()
        //: NotificationCenter.default.addObserver(self, selector: #selector(interruptionChange(notification:)), name: AVAudioSession.interruptionNotification, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(change(notification:)), name: AVAudioSession.interruptionNotification, object: nil)
    }

    //: func play(urlStr: String) {
    func playerPause(urlStr: String) {
        //: if AVAudioSession.sharedInstance().category != .ambient {
        if AVAudioSession.sharedInstance().category != .ambient {
            //: let audioSession = AVAudioSession.sharedInstance()
            let audioSession = AVAudioSession.sharedInstance()
            //: do {
            do {
                //: try audioSession.setCategory(.ambient)
                try audioSession.setCategory(.ambient)
                //: } catch {
            } catch {}
        }

        //: downloadAudioWith(audioUrl: urlStr) { data in
        pauseJump(audioUrl: urlStr) { data in
            //: do {
            do {
                //: try self.player = AVAudioPlayer.init(data: data as Data)
                try self.player = AVAudioPlayer(data: data as Data)
                //: self.player?.delegate = self
                self.player?.delegate = self
                //: NSLog("开始播放")
                // 开始播放
                //: if self.player?.prepareToPlay() == true {
                if self.player?.prepareToPlay() == true {
                    //: self.player?.play()
                    self.player?.play()
                }

                //: } catch let error {
            } catch {
                //: self.func__showStatusBarErrorMsg(showMsg: "Status changed, please exit and retry".localized)
                self.detailDownArray(showMsg: String(bytes: kStr_playerText.map{$0^85}, encoding: .utf8)!.localized)
                //: self.delegate?.playerStatusChange(status: .PlayerFinish)
                self.delegate?.fill(status: .PlayerFinish)
                //: NSLog("Error crenting player: %@", error.localizedDescription)
            }
        }
    }

    //: func stopPlay() {
    func busy() {
        //: self.player?.pause()
        self.player?.pause()
    }

    //: func finishPlay() {
    func whiteDwarfStar() {}

    //: func destroy() {
    func designDestroy() {
        //: if self.player != nil {
        if self.player != nil {
            //: self.player?.delegate = nil
            self.player?.delegate = nil
            //: self.player = nil
            self.player = nil
        }
    }
}

//: extension TalkingAudioPlayTool {
extension ToPlayTool {
    //: func downloadAudioWith(audioUrl: String, completion: @escaping AudioCompletionblock) {
    func pauseJump(audioUrl: String, completion: @escaping AudioCompletionblock) {
        //: var urlOk = true
        var urlOk = true
        //: var url = NSURL.init(string: "")
        var url = NSURL(string: "")

        //: if audioUrl.count == 0 {
        if audioUrl.count == 0 {
            //: urlOk = false
            urlOk = false

            //: } else {
        } else {
            //: url = NSURL.init(string: audioUrl as String)
            url = NSURL(string: audioUrl as String)
            //: if url == nil {
            if url == nil {
                //: urlOk = false
                urlOk = false
            }
        }

        //: if urlOk == false {
        if urlOk == false {
            //: return
            return
        }
        //: let request = NSMutableURLRequest.init(url: NSURL.init(string: audioUrl as String)! as URL)
        let request = NSMutableURLRequest(url: NSURL(string: audioUrl as String)! as URL)
        //: request.httpMethod      = "GET"
        request.httpMethod = (kStr_equalValue.replacingOccurrences(of: "up", with: "T"))
        //: request.timeoutInterval = 15.0
        request.timeoutInterval = 15.0

        //: URLSession.shared.dataTask(with: request as URLRequest) { data, response, error in
        URLSession.shared.dataTask(with: request as URLRequest) { data, _, _ in
            //: DispatchQueue.main.async {
            DispatchQueue.main.async {
                //: if data != nil {
                if data != nil {
                    //: completion(data! as NSData)
                    completion(data! as NSData)
                    //: }else {
                } else {
                    //: self.func__showStatusBarErrorMsg(showMsg: "Status changed, please exit and retry".localized)
                    self.detailDownArray(showMsg: String(bytes: kStr_playerText.map{$0^85}, encoding: .utf8)!.localized)
                    //: self.delegate?.playerStatusChange(status: .PlayerFinish)
                    self.delegate?.fill(status: .PlayerFinish)
                }
            }
            //: }.resume()
        }.resume()
    }
}

//: extension TalkingAudioPlayTool: AVAudioPlayerDelegate {
extension ToPlayTool: AVAudioPlayerDelegate {
    /// 播放过程中中断
    //: @objc func interruptionChange(notification: NSNotification) -> Void {
    @objc func change(notification: NSNotification) {
        //: let dic = notification.userInfo as![String: AnyObject]
        let dic = notification.userInfo as! [String: AnyObject]

        //: let changeReason = dic[AVAudioSessionInterruptionTypeKey]
        let changeReason = dic[AVAudioSessionInterruptionTypeKey]
        //: if changeReason?.intValue ?? 0 == AVAudioSession.InterruptionType.began.rawValue {
        if changeReason?.intValue ?? 0 == AVAudioSession.InterruptionType.began.rawValue {
            //: self.delegate?.playerStatusChange(status: .PlayerInterruption)
            self.delegate?.fill(status: .PlayerInterruption)
        }
    }

    /// 播放完成
    //: func audioPlayerDidFinishPlaying(_ player: AVAudioPlayer, successfully flag: Bool) {
    func audioPlayerDidFinishPlaying(_: AVAudioPlayer, successfully flag: Bool) {
        //: if flag {
        if flag {
            //: self.delegate?.playerStatusChange(status: .PlayerFinish)
            self.delegate?.fill(status: .PlayerFinish)
        }
    }
}
