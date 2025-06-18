
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let kStr_listTitle:[UInt8] = [0x23,0x24,0x23,0x3e,0x62,0x29,0x25,0x2e,0x2f,0x38,0x70,0x63,0x6a,0x22,0x2b,0x39,0x6a,0x24,0x25,0x3e,0x6a,0x28,0x2f,0x2f,0x24,0x6a,0x23,0x27,0x3a,0x26,0x2f,0x27,0x2f,0x24,0x3e,0x2f,0x2e]

private func letModelGift(request num: UInt8) -> UInt8 {
    return num ^ 74
}

/*: "btn_recording" :*/
fileprivate let kStr_momentTitle:String = "self fail viewbtn_r"
fileprivate let kStr_titleVoiceValue:[Character] = ["e","c","o","r","d","i","n","g"]

/*: "btn_marching" :*/
fileprivate let kStr_managerValue:String = "btn_mapoint transform data size"
fileprivate let kStr_sizeData:[Character] = ["n","g"]

/*: "btn_upload" :*/
fileprivate let kStr_requestText:String = "blayer"
fileprivate let kStr_titleText:String = "if model info center topn_upload"

/*: "btn_audition" :*/
fileprivate let kStr_requestTitle:String = "make info view succeedbtn_au"
fileprivate let kStr_valueStorageData:String = "errition"

/*: "Click to listen" :*/
fileprivate let kStr_firstValue:[Character] = ["C","l","i","c","k"," ","t"]
fileprivate let kStr_priorityName:String = "o lmodel in model make"
fileprivate let kStr_beyondTitle:String = "beansten"

/*: "Click to start recording" :*/
fileprivate let kStr_liveTitle:String = "let year touch with returnClick "
fileprivate let kStr_withValue:String = "self datat "
fileprivate let kStr_keyData:[Character] = ["r","e","c","o","r","d","i","n","g"]

/*: "00:00" :*/
fileprivate let kStr_actionInfoValue:[Character] = ["0","0",":","0","0"]

/*: "brn_cycle" :*/
fileprivate let kStr_hiddenName:String = "sharern"
fileprivate let kStr_sufficientTitle:String = "_cycleput resume"

/*: "Come back" :*/
fileprivate let kStr_topText:String = "line nameCome b"
fileprivate let kStr_cellName:[Character] = ["a","c","k"]

/*: "btn_submit" :*/
fileprivate let kStr_indexValue:String = "btn_substyle area"
fileprivate let kStr_panPlaceData:String = "miadd"

/*: "Submit" :*/
fileprivate let kStr_upName:[Character] = ["S","u","b","m","i","t"]

/*: "Click to finish recording" :*/
fileprivate let kStr_fatalValue:[Character] = ["C","l","i","c","k"," ","t"]
fileprivate let kStr_recordText:String = "value create corner viewo fin"
fileprivate let kStr_toText:[Character] = ["i","s","h"," ","r","e","c","o","r","d","i","n","g"]

/*: "Under time" :*/
fileprivate let kStr_loadContent:[Character] = ["U","n","d","e","r"," ","t","i","m","e"]

/*: "Click to pause" :*/
fileprivate let kStr_colorValue:String = "progress anyClick"
fileprivate let kStr_sizeTitle:String = "usinfo"

/*: "Click to play" :*/
fileprivate let kStr_neighborText:[Character] = ["C","l","i","c","k"," ","t","o"," ","p","l","a","y"]

/*: "filePath" :*/
fileprivate let kStr_signContent:[UInt8] = [0x68,0x74,0x61,0x50,0x65,0x6c,0x69,0x66]

/*: "time" :*/
fileprivate let kStr_textName:[UInt8] = [0xad,0xb0,0xb4,0xbc]

private func visualImage(group num: UInt8) -> UInt8 {
    return num ^ 217
}

/*: "Recording cancelled" :*/
fileprivate let kStr_buttonName:String = "let permission productRecord"
fileprivate let kStr_fileContent:String = "nestllnestd"

/*: "get json error" :*/
fileprivate let kStr_itemName:String = "get jsfalse return moment model"
fileprivate let kStr_sizeModelData:[Character] = ["o","n"," ","e","r","r","o","r"]

/*: "%02d:%02d" :*/
fileprivate let kStr_mediumValue:String = "%02d:array self"

/*: "btn_delete" :*/
fileprivate let kStr_targetValue:String = "tool color add to letbtn_de"
fileprivate let kStr_appModelValue:[Character] = ["l","e","t","e"]

/*: "Add voice message" :*/
fileprivate let kStr_subName:[Character] = ["A","d"]
fileprivate let kStr_imageData:String = "self type labd voi"
fileprivate let kStr_toName:String = "ESSAGE"

/*: "Record a voice for 3-10s" :*/
fileprivate let kStr_pathValue:[Character] = ["R","e","c","o","r","d"," ","a"," ","v","o","i","c","e"," ","f","o","r"," ","3"]
fileprivate let kStr_contentData:[Character] = ["-","1","0","s"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  LocationAudioView.swift
//  AbroadTalking
//
//  Created by Charlotte on 2023/2/13.
//

//: import UIKit
import UIKit

//: enum RecordSoundStatus: Int {
enum TimeQuickLookable: Int {
    //: case Record = 100
    case Record = 100
    //: case Listen
    case Listen
    //: case Reset
    case Reset
    //: case Finish
    case Finish
}

//: enum RecordState: Int {
enum EqualSovietSocialistRepublicMeasurable: Int {
    //: case ReadyToRecord = 0
    case ReadyToRecord = 0 /// 准备录音
    //: case Recording
    case Recording /// 录音中
    //: case RecordComplete
    case RecordComplete /// 录音完成
    //: case RecordWaitReply
    case RecordWaitReply /// 录音审核中
    //: case RecordPassed
    case RecordPassed /// 录音审核通过
}

//: typealias AudioFileUpload = (_ info: Dictionary<String, Any>) -> Void
typealias AudioFileUpload = (_ info: [String: Any]) -> Void

//: class TalkingGreetRecordAudioView: UIView {
class LocationAudioView: UIView {
    //: var state: RecordState? = .ReadyToRecord
    var state: EqualSovietSocialistRepublicMeasurable? = .ReadyToRecord
    //: var didEnterBack = false
    var didEnterBack = false
    //: var tempTime = 0
    var tempTime = 0 /// 录音时长
    //: var filePath = ""
    var filePath = ""
    //: var audioFileUpload: AudioFileUpload?
    var audioFileUpload: AudioFileUpload?
    //: var popView: TalkingPopView?
    var popView: BackgroundThen?

    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: self.setupSubviews()
        self.direct()
        //: self.setupSubViewsConstraint()
        self.constraintCamera()
        //: self.bindInteraction()
        self.sendColor()
        //: NotificationCenter.default.addObserver(self, selector: #selector(appDidEnterBack), name: UIApplication.didEnterBackgroundNotification, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(removeAcrossBack), name: UIApplication.didEnterBackgroundNotification, object: nil)
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: kStr_listTitle.map{letModelGift(request: $0)}, encoding: .utf8)!)
    }

    //: deinit {
    deinit {
        //: NotificationCenter.default.removeObserver(self)
        NotificationCenter.default.removeObserver(self)
    }

    // 懒加载初始化

    //: lazy var contentView: UIView = {
    lazy var contentView: UIView = {
        //: let view = UIView.init()
        let view = UIView()
        //: view.backgroundColor = .white
        view.backgroundColor = .white
        //: view.layer.cornerRadius = 8
        view.layer.cornerRadius = 8
        //: view.layer.masksToBounds = true
        view.layer.masksToBounds = true
        //: return view
        return view
        //: }()
    }()

    //: lazy var soundButton: UIButton = {
    lazy var soundButton: UIButton = {
        //: let btn = UIButton.init()
        let btn = UIButton()
        //: btn.setImage(UIImage.bundleBy(name: "btn_recording"), for: .normal)
        btn.setImage(UIImage.bundleBy(name: (String(kStr_momentTitle.suffix(5)) + String(kStr_titleVoiceValue))), for: .normal)
        //: btn.setImage(UIImage.bundleBy(name: "btn_recording"), for: .highlighted)
        btn.setImage(UIImage.bundleBy(name: (String(kStr_momentTitle.suffix(5)) + String(kStr_titleVoiceValue))), for: .highlighted)
        //: btn.setImage(UIImage.bundleBy(name: "btn_marching"), for: .selected)
        btn.setImage(UIImage.bundleBy(name: (String(kStr_managerValue.prefix(6)) + "rchi" + String(kStr_sizeData))), for: .selected)
        //: btn.tag = RecordSoundStatus.Record.rawValue
        btn.tag = TimeQuickLookable.Record.rawValue
        //: btn.addTarget(self, action: #selector(soundButtonAction(sender:)), for: .touchUpInside)
        btn.addTarget(self, action: #selector(distance(sender:)), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()

    //: lazy var listenButton: UIButton = {
    lazy var listenButton: UIButton = {
        //: let btn = UIButton.init()
        let btn = UIButton()
        //: btn.setImage(UIImage.bundleBy(name: "btn_upload"), for: .normal)
        btn.setImage(UIImage.bundleBy(name: (kStr_requestText.replacingOccurrences(of: "layer", with: "t") + String(kStr_titleText.suffix(8)))), for: .normal)
        //: btn.setImage(UIImage.bundleBy(name: "btn_audition"), for: .selected)
        btn.setImage(UIImage.bundleBy(name: (String(kStr_requestTitle.suffix(6)) + kStr_valueStorageData.replacingOccurrences(of: "err", with: "d"))), for: .selected)
        //: btn.tag = RecordSoundStatus.Listen.rawValue
        btn.tag = TimeQuickLookable.Listen.rawValue
        //: btn.addTarget(self, action: #selector(soundButtonAction(sender:)), for: .touchUpInside)
        btn.addTarget(self, action: #selector(distance(sender:)), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()

    //: lazy var listenLabel: UILabel = {
    lazy var listenLabel: UILabel = {
        //: let lb = UILabel.init()
        let lb = UILabel()
        //: lb.font = UIFont.pingfangFont(type: .Regular, fontSize: 15)
        lb.font = UIFont.groupSize(type: .Regular, fontSize: 15)
        //: lb.textColor = .statusMin()
        lb.textColor = .statusMin()
        //: lb.text = "Click to listen".localized
        lb.text = (String(kStr_firstValue) + String(kStr_priorityName.prefix(3)) + kStr_beyondTitle.replacingOccurrences(of: "bean", with: "i")).localized
        //: return lb
        return lb
        //: }()
    }()

    //: lazy var soundLabel: UILabel = {
    lazy var soundLabel: UILabel = {
        //: let lb = UILabel.init()
        let lb = UILabel()
        //: lb.font = UIFont.pingfangFont(type: .Regular, fontSize: 17)
        lb.font = UIFont.groupSize(type: .Regular, fontSize: 17)
        //: lb.textColor = .statusMin()
        lb.textColor = .statusMin()
        //: lb.text = "Click to start recording".localized
        lb.text = (String(kStr_liveTitle.suffix(6)) + "to star" + String(kStr_withValue.suffix(2)) + String(kStr_keyData)).localized
        //: return lb
        return lb
        //: }()
    }()

    //: lazy var timeLabel: UILabel = {
    lazy var timeLabel: UILabel = {
        //: let lb = UILabel.init()
        let lb = UILabel()
        //: lb.font = UIFont.pingfangFont(type: .Medium, fontSize: 20)
        lb.font = UIFont.groupSize(type: .Medium, fontSize: 20)
        //: lb.textColor = .appTitleColor()
        lb.textColor = .dataFormat()
        //: lb.text = "00:00"
        lb.text = (String(kStr_actionInfoValue))
        //: return lb
        return lb
        //: }()
    }()

    //: lazy var resetButton: UIButton = {
    lazy var resetButton: UIButton = {
        //: let btn = UIButton.init()
        let btn = UIButton()
        //: btn.setImage(UIImage.bundleBy(name: "brn_cycle"), for: .normal)
        btn.setImage(UIImage.bundleBy(name: (kStr_hiddenName.replacingOccurrences(of: "share", with: "b") + String(kStr_sufficientTitle.prefix(6)))), for: .normal)
        //: btn.tag = RecordSoundStatus.Reset.rawValue
        btn.tag = TimeQuickLookable.Reset.rawValue
        //: btn.addTarget(self, action: #selector(soundButtonAction(sender:)), for: .touchUpInside)
        btn.addTarget(self, action: #selector(distance(sender:)), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()

    //: lazy var resetLabel: UILabel = {
    lazy var resetLabel: UILabel = {
        //: let lb = UILabel.init()
        let lb = UILabel()
        //: lb.font = UIFont.pingfangFont(type: .Regular, fontSize: 15)
        lb.font = UIFont.groupSize(type: .Regular, fontSize: 15)
        //: lb.textColor = .statusMin()
        lb.textColor = .statusMin()
        //: lb.text = "Come back".localized
        lb.text = (String(kStr_topText.suffix(6)) + String(kStr_cellName)).localized
        //: return lb
        return lb
        //: }()
    }()

    //: lazy var finishButton: UIButton = {
    lazy var finishButton: UIButton = {
        //: let btn = UIButton.init()
        let btn = UIButton()
        //: btn.setImage(UIImage.bundleBy(name: "btn_submit"), for: .normal)
        btn.setImage(UIImage.bundleBy(name: (String(kStr_indexValue.prefix(7)) + kStr_panPlaceData.replacingOccurrences(of: "add", with: "t"))), for: .normal)
        //: btn.tag = RecordSoundStatus.Finish.rawValue
        btn.tag = TimeQuickLookable.Finish.rawValue
        //: btn.addTarget(self, action: #selector(soundButtonAction(sender:)), for: .touchUpInside)
        btn.addTarget(self, action: #selector(distance(sender:)), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()

    //: lazy var finishLabel: UILabel = {
    lazy var finishLabel: UILabel = {
        //: let lb = UILabel.init()
        let lb = UILabel()
        //: lb.font = UIFont.pingfangFont(type: .Regular, fontSize: 15)
        lb.font = UIFont.groupSize(type: .Regular, fontSize: 15)
        //: lb.textColor = .statusMin()
        lb.textColor = .statusMin()
        //: lb.text = "Submit".localized
        lb.text = (String(kStr_upName)).localized
        //: return lb
        return lb
        //: }()
    }()

    //: lazy var listenPlayer: SVGAPlayer = {
    lazy var listenPlayer: SVGAPlayer = {
        //: let player = SVGAPlayer.init()
        let player = SVGAPlayer()
        //: player.loops = 0
        player.loops = 0
        //: player.clearsAfterStop = true
        player.clearsAfterStop = true
        //: player.isUserInteractionEnabled = false
        player.isUserInteractionEnabled = false
        //: player.contentMode = .scaleAspectFill
        player.contentMode = .scaleAspectFill
        //: return player
        return player
        //: }()
    }()

    //: lazy var leftRecordPlayer: SVGAPlayer = {
    lazy var leftRecordPlayer: SVGAPlayer = {
        //: let player = SVGAPlayer.init()
        let player = SVGAPlayer()
        //: player.loops = 0
        player.loops = 0
        //: player.clearsAfterStop = true
        player.clearsAfterStop = true
        //: player.isUserInteractionEnabled = false
        player.isUserInteractionEnabled = false
        //: player.contentMode = .scaleAspectFill
        player.contentMode = .scaleAspectFill
        //: return player
        return player
        //: }()
    }()

    //: lazy var rightRecordPlayer: SVGAPlayer = {
    lazy var rightRecordPlayer: SVGAPlayer = {
        //: let player = SVGAPlayer.init()
        let player = SVGAPlayer()
        //: player.loops = 0
        player.loops = 0
        //: player.clearsAfterStop = true
        player.clearsAfterStop = true
        //: player.isUserInteractionEnabled = false
        player.isUserInteractionEnabled = false
        //: player.contentMode = .scaleAspectFill
        player.contentMode = .scaleAspectFill
        //: return player
        return player
        //: }()
    }()

    //: lazy var audioTool: TalkingAudioTool? = {
    lazy var audioTool: SharedPlayerDelegate? = {
        //: let audioT = TalkingAudioTool.shared
        let audioT = SharedPlayerDelegate.shared
        //: audioT.delegate = self
        audioT.delegate = self
        //: return audioT
        return audioT
        //: }()
    }()
}

//: extension TalkingGreetRecordAudioView {
extension LocationAudioView {
    //: func showUIViaState() {
    func presentBlockState() {
        //: switch self.state {
        switch self.state {
        //: case .ReadyToRecord:
        case .ReadyToRecord:
            //: self.listenButton.isHidden = true
            self.listenButton.isHidden = true
            //: self.listenLabel.isHidden = true
            self.listenLabel.isHidden = true
            //: self.resetButton.isHidden = true
            self.resetButton.isHidden = true
            //: self.resetLabel.isHidden = true
            self.resetLabel.isHidden = true
            //: self.finishButton.isHidden = true
            self.finishButton.isHidden = true
            //: self.finishLabel.isHidden = true
            self.finishLabel.isHidden = true
            //: self.soundButton.isHidden = false
            self.soundButton.isHidden = false
            //: self.soundLabel.isHidden = false
            self.soundLabel.isHidden = false

        //: break
        //: case .Recording:
        case .Recording:
            //: break
            break
        //: case .RecordComplete:
        case .RecordComplete:
            //: self.soundButton.isHidden = true
            self.soundButton.isHidden = true
            //: self.soundLabel.isHidden = true
            self.soundLabel.isHidden = true
            //: self.resetButton.isHidden = false
            self.resetButton.isHidden = false
            //: self.resetLabel.isHidden = false
            self.resetLabel.isHidden = false
            //: self.finishButton.isHidden = false
            self.finishButton.isHidden = false
            //: self.finishLabel.isHidden = false
            self.finishLabel.isHidden = false
            //: self.listenButton.isHidden = false
            self.listenButton.isHidden = false
            //: self.listenLabel.isHidden = false
            self.listenLabel.isHidden = false
        //: break
        //: case .RecordWaitReply, .RecordPassed:
        case .RecordWaitReply, .RecordPassed:
            //: self.listenButton.isHidden = false
            self.listenButton.isHidden = false
            //: self.listenLabel.isHidden = false
            self.listenLabel.isHidden = false
            //: self.resetButton.isHidden = false
            self.resetButton.isHidden = false
            //: self.resetLabel.isHidden = false
            self.resetLabel.isHidden = false
            //: self.finishButton.isHidden = true
            self.finishButton.isHidden = true
            //: self.finishLabel.isHidden = true
            self.finishLabel.isHidden = true
            //: self.soundButton.isHidden = true
            self.soundButton.isHidden = true
            //: self.soundLabel.isHidden = true
            self.soundLabel.isHidden = true
        //: break
        //: default: break
        default: break
        }
    }

    //: func releaseSoundView() {
    func weltanschauungPhotoView() {
        //: self.audioTool?.delegate = nil
        self.audioTool?.delegate = nil
        //: self.audioTool?.stopRecord()
        self.audioTool?.actionRecord()
        //: stopPlay()
        towardGreet()
        //: self.audioTool?.destroy()
        self.audioTool?.juxtapose()
        //: self.audioTool = nil
        self.audioTool = nil
        //: NotificationCenter.default.removeObserver(self)
        NotificationCenter.default.removeObserver(self)
    }

    //: func record() {
    func list() {
        //: leftRecordSVGAParser()
        itemCamera()
        //: rightRecordSVGAParser()
        status()
        //: self.audioTool?.BeginRecord()
        self.audioTool?.mediumEnable()
        //: stopPlay()
        towardGreet()
        //: self.soundLabel.text = "Click to finish recording".localized
        self.soundLabel.text = (String(kStr_fatalValue) + String(kStr_recordText.suffix(5)) + String(kStr_toText)).localized
        //: self.state = .Recording
        self.state = .Recording
    }

    //: func stopRecord() {
    func addEnd() {
        //: self.soundButton.isSelected = false
        self.soundButton.isSelected = false
        //: self.leftRecordPlayer.stopAnimation()
        self.leftRecordPlayer.stopAnimation()
        //: self.rightRecordPlayer.stopAnimation()
        self.rightRecordPlayer.stopAnimation()
        //: self.audioTool?.stopRecord()
        self.audioTool?.actionRecord()

        //: if self.tempTime >= 3 {
        if self.tempTime >= 3 {
            //: self.state = .RecordComplete
            self.state = .RecordComplete
            //: showUIViaState()
            presentBlockState()
            //: self.listenLabel.text = "Click to listen".localized
            self.listenLabel.text = (String(kStr_firstValue) + String(kStr_priorityName.prefix(3)) + kStr_beyondTitle.replacingOccurrences(of: "bean", with: "i")).localized
            //: }else {
        } else {
            //: self.soundLabel.text = "Click to start recording".localized
            self.soundLabel.text = (String(kStr_liveTitle.suffix(6)) + "to star" + String(kStr_withValue.suffix(2)) + String(kStr_keyData)).localized
            //: self.timeLabel.text = "00:00"
            self.timeLabel.text = (String(kStr_actionInfoValue))
            //: self.state = .ReadyToRecord
            self.state = .ReadyToRecord
            //: self.func__showStatusBarErrorMsg(showMsg: "Under time".localized)
            self.detailDownArray(showMsg: (String(kStr_loadContent)).localized)
        }
    }

    //: func play() {
    func isometricalData() {
        //: if filePath.count>1 {
        if filePath.count > 1 {
            //: self.audioTool?.play()
            self.audioTool?.nameComment()
            //: self.listenLabel.text = "Click to pause".localized
            self.listenLabel.text = (String(kStr_colorValue.suffix(5)) + " to pa" + kStr_sizeTitle.replacingOccurrences(of: "info", with: "e")).localized
            //: listenSVGAParser()
            selectAdd()
            //: }else {
        } else {
            //: tryToPlayRemoteAudio()
            blockOfMetalApp()
        }
    }

    //: func stopPlay() {
    func towardGreet() {
        //: self.listenPlayer.stopAnimation()
        self.listenPlayer.stopAnimation()
        //: self.audioTool?.stopPlay()
        self.audioTool?.stopData()
        //: var text = "Click to play".localized
        var text = (String(kStr_neighborText)).localized
        //: if self.state == .RecordComplete {
        if self.state == .RecordComplete {
            //: text = "Click to listen".localized
            text = (String(kStr_firstValue) + String(kStr_priorityName.prefix(3)) + kStr_beyondTitle.replacingOccurrences(of: "bean", with: "i")).localized
        }
        //: self.listenLabel.text = text
        self.listenLabel.text = text
    }

    //: func reset() {
    func stageAt() {
        //: self.listenPlayer.stopAnimation()
        self.listenPlayer.stopAnimation()
        //: self.listenButton.isSelected = false
        self.listenButton.isSelected = false
        //: self.audioTool?.stopPlay()
        self.audioTool?.stopData()
        //: self.state = .ReadyToRecord
        self.state = .ReadyToRecord
        //: self.soundLabel.text = "Click to start recording".localized
        self.soundLabel.text = (String(kStr_liveTitle.suffix(6)) + "to star" + String(kStr_withValue.suffix(2)) + String(kStr_keyData)).localized
        //: self.timeLabel.text = "00:00"
        self.timeLabel.text = (String(kStr_actionInfoValue))

        //: showUIViaState()
        presentBlockState()
    }

    //: func finish() {
    func quantityFinish() {
        //: self.listenPlayer.stopAnimation()
        self.listenPlayer.stopAnimation()
        //: self.listenButton.isSelected = false
        self.listenButton.isSelected = false
        //: self.listenPlayer.stopAnimation()
        self.listenPlayer.stopAnimation()
        //: self.audioTool?.stopPlay()
        self.audioTool?.stopData()
        //: self.listenLabel.text = "Click to listen".localized
        self.listenLabel.text = (String(kStr_firstValue) + String(kStr_priorityName.prefix(3)) + kStr_beyondTitle.replacingOccurrences(of: "bean", with: "i")).localized
        //: if self.audioFileUpload != nil {
        if self.audioFileUpload != nil {
            //: let dict = ["filePath": self.filePath, "time": (self.tempTime).description]
            let dict = [String(bytes: kStr_signContent.reversed(), encoding: .utf8)!: self.filePath, String(bytes: kStr_textName.map{visualImage(group: $0)}, encoding: .utf8)!: (self.tempTime).description]
            //: self.audioFileUpload!(dict)
            self.audioFileUpload!(dict)
        }
    }

    //: func tryToPlayRemoteAudio() {
    func blockOfMetalApp() {
        //: let reachability = try? Reachability()
        let reachability = try? Reachability()
        //: if reachability?.connection == .unavailable {
        if reachability?.connection == .unavailable {
            //: func__showStatusBarErrorMsg(showMsg: kNetErrorMsg)
            detailDownArray(showMsg: kLet_accuracyContent)
            //: self.listenButton.isSelected = false
            self.listenButton.isSelected = false
            //: return
            return
        }
        //: self.listenLabel.text = "Click to pause".localized
        self.listenLabel.text = (String(kStr_colorValue.suffix(5)) + " to pa" + kStr_sizeTitle.replacingOccurrences(of: "info", with: "e")).localized
        //: listenSVGAParser()
        selectAdd()
    }

    //: @objc func soundButtonAction(sender: UIButton) {
    @objc func distance(sender: UIButton) {
        //: switch (sender.tag) {
        switch sender.tag {
        //: case RecordSoundStatus.Record.rawValue:
        case TimeQuickLookable.Record.rawValue:

            //: TalkingPermissionTool.func__openRecordServiceWithBlock(true) { isOpen in
            PerspectiveThen.schlep(true) { isOpen in
                //: guard isOpen == true else {
                guard isOpen == true else {
                    //: self.func__showStatusBarErrorMsg(showMsg: kMessage_permissions_error)
                    self.detailDownArray(showMsg: kLet_viewValue)
                    //: return
                    return
                }
                //: sender.isSelected = !sender.isSelected
                sender.isSelected = !sender.isSelected
                //: if (sender.isSelected) {
                if sender.isSelected {
                    //: guard !TalkingSocketManager.shared.isTalking else {
                    guard !ToSocketManager.shared.isTalking else {
                        //: self.func__showStatusBarErrorMsg(showMsg: kMessage_videoTalking_limit)
                        self.detailDownArray(showMsg: kLet_tableEndValue)
                        //: sender.isSelected = false
                        sender.isSelected = false
                        //: return
                        return
                    }
                    //: self.record()
                    self.list()
                    //: }else {
                } else {
                    //: self.stopRecord()
                    self.addEnd()
                }
            }
            //: break

        //: case RecordSoundStatus.Listen.rawValue:
        case TimeQuickLookable.Listen.rawValue:
            //: sender.isSelected = !sender.isSelected
            sender.isSelected = !sender.isSelected
            //: if sender.isSelected {
            if sender.isSelected {
                //: self.play()
                self.isometricalData()
                //: }else {
            } else {
                //: self.stopPlay()
                self.towardGreet()
            }
                //: break

        //: case RecordSoundStatus.Reset.rawValue:
        case TimeQuickLookable.Reset.rawValue:
            //: reset()
            stageAt()
                //: break

        //: case RecordSoundStatus.Finish.rawValue:
        case TimeQuickLookable.Finish.rawValue:
            //: finish()
            quantityFinish()
        //: break
        //: default:
        default:
            //: break
            break
        }
    }

    //: @objc func closeButtonAction() {
    @objc func from() {
        //: stopPlay()
        towardGreet()
        //: dismiss()
        title()
    }

    //: @objc func appDidEnterBack() {
    @objc func removeAcrossBack() {
        //: if self.state != .Recording {
        if self.state != .Recording {
            //: return
            return
        }
        //: self.func__showStatusBarErrorMsg(showMsg: "Recording cancelled")
        self.detailDownArray(showMsg: (String(kStr_buttonName.suffix(6)) + "ing canc" + kStr_fileContent.replacingOccurrences(of: "nest", with: "e")))
        //: self.didEnterBack = true
        self.didEnterBack = true
        //: self.soundButton.isSelected = false
        self.soundButton.isSelected = false
        //: self.leftRecordPlayer.stopAnimation()
        self.leftRecordPlayer.stopAnimation()
        //: self.rightRecordPlayer.stopAnimation()
        self.rightRecordPlayer.stopAnimation()
        //: self.audioTool?.stopRecord()
        self.audioTool?.actionRecord()

        //: self.soundLabel.text = "Click to start recording".localized
        self.soundLabel.text = (String(kStr_liveTitle.suffix(6)) + "to star" + String(kStr_withValue.suffix(2)) + String(kStr_keyData)).localized
        //: self.timeLabel.text = "00:00"
        self.timeLabel.text = (String(kStr_actionInfoValue))
        //: self.state = .ReadyToRecord
        self.state = .ReadyToRecord
        //: showUIViaState()
        presentBlockState()
    }

    //: func show() {
    func checkShow() {
        //: popView = TalkingPopView.init(frame: UIScreen.main.bounds)
        popView = BackgroundThen(frame: UIScreen.main.bounds)
        //: popView?.initWithView(view: self)
        popView?.toViewText(view: self)
        //: popView?.showInView(view: TableMacroDefine.getWindow())
        popView?.beyondAllAdjust(view: TableMacroDefine.oeilDeBoeufView())
    }

    //: func dismiss() {
    func title() {
        //: releaseSoundView()
        weltanschauungPhotoView()
        //: popView?.dismissView()
        popView?.placePushAside()
        //: popView = nil
        popView = nil
    }

    /// 试听动效
    //: func listenSVGAParser() {
    func selectAdd() {
        //: do {
        do {
            //: let url = SVGAEffectTool.default.getZipEffectPath(type: .Greet_Corrugated_Yellow)
            let url = LoadGrappleEffectTool.default.sunnahType(type: .Greet_Corrugated_Yellow)
            //: let data = try Data(contentsOf: url)
            let data = try Data(contentsOf: url)
            //: let parser = SVGAParser.init()
            let parser = SVGAParser()
            //: parser.parse(with: data, cacheKey: "") { [weak self] videoItem in
            parser.parse(with: data, cacheKey: "") { [weak self] videoItem in
                //: guard let self = self else {return}
                guard let self = self else { return }
                //: self.listenPlayer.videoItem = videoItem
                self.listenPlayer.videoItem = videoItem
                //: self.listenPlayer.startAnimation()
                self.listenPlayer.startAnimation()
            }

            //: } catch _ as Error? {
        } catch _ as Error? {
            //: printLog(message: "get json error")
            pathLine(message: (String(kStr_itemName.prefix(6)) + String(kStr_sizeModelData)))
        }
    }

    /// 录音动效
    //: func leftRecordSVGAParser() {
    func itemCamera() {
        //: do {
        do {
            //: let url = SVGAEffectTool.default.getZipEffectPath(type: .Chat_Record_Yellow)
            let url = LoadGrappleEffectTool.default.sunnahType(type: .Chat_Record_Yellow)
            //: let data = try Data(contentsOf: url)
            let data = try Data(contentsOf: url)
            //: let parser = SVGAParser.init()
            let parser = SVGAParser()
            //: parser.parse(with: data, cacheKey: "") { [weak self] videoItem in
            parser.parse(with: data, cacheKey: "") { [weak self] videoItem in
                //: guard let self = self else {return}
                guard let self = self else { return }
                //: self.leftRecordPlayer.videoItem = videoItem
                self.leftRecordPlayer.videoItem = videoItem
                //: self.leftRecordPlayer.startAnimation()
                self.leftRecordPlayer.startAnimation()
            }

            //: } catch _ as Error? {
        } catch _ as Error? {
            //: printLog(message: "get json error")
            pathLine(message: (String(kStr_itemName.prefix(6)) + String(kStr_sizeModelData)))
        }
    }

    ///
    //: func rightRecordSVGAParser() {
    func status() {
        //: do {
        do {
            //: let url = SVGAEffectTool.default.getZipEffectPath(type: .Chat_Record_Yellow)
            let url = LoadGrappleEffectTool.default.sunnahType(type: .Chat_Record_Yellow)
            //: let data = try Data(contentsOf: url)
            let data = try Data(contentsOf: url)
            //: let parser = SVGAParser.init()
            let parser = SVGAParser()
            //: parser.parse(with: data, cacheKey: "") { [weak self] videoItem in
            parser.parse(with: data, cacheKey: "") { [weak self] videoItem in
                //: guard let self = self else {return}
                guard let self = self else { return }
                //: self.rightRecordPlayer.videoItem = videoItem
                self.rightRecordPlayer.videoItem = videoItem
                //: self.rightRecordPlayer.startAnimation()
                self.rightRecordPlayer.startAnimation()
            }

            //: } catch _ as Error? {
        } catch _ as Error? {
            //: printLog(message: "get json error")
            pathLine(message: (String(kStr_itemName.prefix(6)) + String(kStr_sizeModelData)))
        }
    }
}

//: extension TalkingGreetRecordAudioView: TalkingAudioToolDelegate {
extension LocationAudioView: ViewThen {
    /// 录音时间
    //: func func__recordTime(currentTime: Double) {
    func trademark(currentTime: Double) {
        //: if currentTime > 10 {
        if currentTime > 10 {
            //: stopRecord()
            addEnd()
        }
        //: self.tempTime = Int(round(currentTime)) % 60
        self.tempTime = Int(round(currentTime)) % 60
        //: let currentTimeLabel = String.init(format: "%02d:%02d", Int(round(currentTime))/60, Int(round(currentTime))%60)
        let currentTimeLabel = String(format: "%02d:%02d", Int(round(currentTime)) / 60, Int(round(currentTime)) % 60)
        //: if self.tempTime > 10 {
        if self.tempTime > 10 {
            //: return
            return
        }
        //: self.timeLabel.text = currentTimeLabel
        self.timeLabel.text = currentTimeLabel
    }

    /// 播放时间
    //: func func__playTime(currentTime: Double) {
    func dateBy(currentTime: Double) {
        //: let currentTimeLabel = String.init(format: "%02d:%02d", Int(round(currentTime))/60, Int(round(currentTime))%60)
        let currentTimeLabel = String(format: "%02d:%02d", Int(round(currentTime)) / 60, Int(round(currentTime)) % 60)
        //: self.timeLabel.text = currentTimeLabel
        self.timeLabel.text = currentTimeLabel
    }

    /// 录音完毕的回调
    //: func func__recordFinishWithFile(filePath: String) {
    func toPop(filePath: String) {
        //: if self.didEnterBack {
        if self.didEnterBack {
            //: self.didEnterBack = false
            self.didEnterBack = false
            //: return
            return
        }
        //: self.filePath = filePath
        self.filePath = filePath
        //: stopRecord()
        addEnd()
    }

    /// 播放完毕的回调
    //: func playerStatusChange(status: AudioPlayerStatus) {
    func response(status: SucceedBinaryQuantity) {
        //: self.timeLabel.text = ""
        self.timeLabel.text = ""
        //: if status == .PlayerFinish {
        if status == .PlayerFinish {
            //: self.audioTool?.finishPlay()
            self.audioTool?.equalPlay()
            //: self.listenButton.isSelected = false
            self.listenButton.isSelected = false
            //: self.listenPlayer.stopAnimation()
            self.listenPlayer.stopAnimation()
            //: self.listenLabel.text = self.state == .RecordComplete ? "Click to listen".localized : "Click to play".localized
            self.listenLabel.text = self.state == .RecordComplete ? (String(kStr_firstValue) + String(kStr_priorityName.prefix(3)) + kStr_beyondTitle.replacingOccurrences(of: "bean", with: "i")).localized : (String(kStr_neighborText)).localized
            //: }else if status == .PlayerInterruption {
        } else if status == .PlayerInterruption {
            //: if self.filePath.count > 1 {
            if self.filePath.count > 1 {
                //: self.listenButton.isSelected = false
                self.listenButton.isSelected = false
                //: self.listenPlayer.stopAnimation()
                self.listenPlayer.stopAnimation()
                //: self.listenLabel.text = self.state == .RecordComplete ? "Click to listen".localized : "Click to play".localized
                self.listenLabel.text = self.state == .RecordComplete ? (String(kStr_firstValue) + String(kStr_priorityName.prefix(3)) + kStr_beyondTitle.replacingOccurrences(of: "bean", with: "i")).localized : (String(kStr_neighborText)).localized
            }
        }
    }
}

//: extension TalkingGreetRecordAudioView {
extension LocationAudioView {
    // 添加视图
    //: private func setupSubviews() {
    private func direct() {
        //: self.addSubview(contentView)
        self.addSubview(contentView)
        //: contentView.addSubview(soundButton)
        contentView.addSubview(soundButton)
        //: contentView.addSubview(listenButton)
        contentView.addSubview(listenButton)
        //: contentView.addSubview(soundLabel)
        contentView.addSubview(soundLabel)
        //: contentView.addSubview(listenLabel)
        contentView.addSubview(listenLabel)
        //: contentView.addSubview(timeLabel)
        contentView.addSubview(timeLabel)
        //: contentView.addSubview(resetButton)
        contentView.addSubview(resetButton)
        //: contentView.addSubview(resetLabel)
        contentView.addSubview(resetLabel)
        //: contentView.addSubview(finishButton)
        contentView.addSubview(finishButton)
        //: contentView.addSubview(finishLabel)
        contentView.addSubview(finishLabel)
        //: contentView.addSubview(listenPlayer)
        contentView.addSubview(listenPlayer)
        //: contentView.addSubview(leftRecordPlayer)
        contentView.addSubview(leftRecordPlayer)
        //: contentView.addSubview(rightRecordPlayer)
        contentView.addSubview(rightRecordPlayer)
    }

    // 添加约束
    //: private func setupSubViewsConstraint() {
    private func constraintCamera() {
        //: contentView.snp.makeConstraints { make in
        contentView.snp.makeConstraints { make in
            //: make.center.equalToSuperview()
            make.center.equalToSuperview()
            //: make.size.equalTo(CGSize.init(width: actualWidth(w: 275), height: actualWidth(w: 313)))
            make.size.equalTo(CGSize(width: originalScene(w: 275), height: originalScene(w: 313)))
        }
        //: let closeBtn = UIButton.init()
        let closeBtn = UIButton()
        //: closeBtn.setImage(UIImage.bundleBy(name: "btn_delete"), for: .normal)
        closeBtn.setImage(UIImage.bundleBy(name: (String(kStr_targetValue.suffix(6)) + String(kStr_appModelValue))), for: .normal)
        //: closeBtn.addTarget(self, action: #selector(closeButtonAction), for: .touchUpInside)
        closeBtn.addTarget(self, action: #selector(from), for: .touchUpInside)
        //: contentView.addSubview(closeBtn)
        contentView.addSubview(closeBtn)

        //: closeBtn.snp.makeConstraints { make in
        closeBtn.snp.makeConstraints { make in
            //: make.top.equalTo(11)
            make.top.equalTo(11)
            //: make.trailing.equalTo(-11)
            make.trailing.equalTo(-11)
            //: make.size.equalTo(CGSize.init(width: 18, height: 18))
            make.size.equalTo(CGSize(width: 18, height: 18))
        }

        //: let titleLb = UILabel.init()
        let titleLb = UILabel()
        //: titleLb.font = UIFont.pingfangFont(type: .Semibold, fontSize: 20)
        titleLb.font = UIFont.groupSize(type: .Semibold, fontSize: 20)
        //: titleLb.textColor = .appTitleColor()
        titleLb.textColor = .dataFormat()
        //: titleLb.text = "Add voice message".localized
        titleLb.text = (String(kStr_subName) + String(kStr_imageData.suffix(5)) + "ce m" + kStr_toName.lowercased()).localized
        //: contentView.addSubview(titleLb)
        contentView.addSubview(titleLb)
        //: titleLb.snp.makeConstraints { make in
        titleLb.snp.makeConstraints { make in
            //: make.top.equalTo(30)
            make.top.equalTo(30)
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
        }
        //: let explainLb = UILabel.init()
        let explainLb = UILabel()
        //: explainLb.font = UIFont.pingfangFont(type: .Regular, fontSize: 17)
        explainLb.font = UIFont.groupSize(type: .Regular, fontSize: 17)
        //: explainLb.textColor = .statusMin()
        explainLb.textColor = .statusMin()
        //: explainLb.text = "Record a voice for 3-10s".localized
        explainLb.text = (String(kStr_pathValue) + String(kStr_contentData)).localized
        //: contentView.addSubview(explainLb)
        contentView.addSubview(explainLb)
        //: explainLb.snp.makeConstraints { make in
        explainLb.snp.makeConstraints { make in
            //: make.top.equalTo(titleLb.snp.bottom).offset(9)
            make.top.equalTo(titleLb.snp.bottom).offset(9)
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
        }

        //: soundButton.snp.makeConstraints { make in
        soundButton.snp.makeConstraints { make in
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.bottom.equalTo(-actualWidth(w: 66))
            make.bottom.equalTo(-originalScene(w: 66))
            //: make.width.height.equalTo(actualWidth(w: 87))
            make.width.height.equalTo(originalScene(w: 87))
        }
        //: listenButton.snp.makeConstraints { make in
        listenButton.snp.makeConstraints { make in
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.bottom.equalTo(-actualWidth(w: 66))
            make.bottom.equalTo(-originalScene(w: 66))
            //: make.width.height.equalTo(actualWidth(w: 87))
            make.width.height.equalTo(originalScene(w: 87))
        }
        //: soundLabel.snp.makeConstraints { make in
        soundLabel.snp.makeConstraints { make in
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.bottom.equalTo(-actualWidth(w: 24))
            make.bottom.equalTo(-originalScene(w: 24))
        }
        //: listenLabel.snp.makeConstraints { make in
        listenLabel.snp.makeConstraints { make in
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.bottom.equalTo(-actualWidth(w: 24))
            make.bottom.equalTo(-originalScene(w: 24))
        }
        //: timeLabel.snp.makeConstraints { make in
        timeLabel.snp.makeConstraints { make in
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.top.equalTo(explainLb.snp.bottom).offset(36)
            make.top.equalTo(explainLb.snp.bottom).offset(36)
        }
        //: resetButton.snp.makeConstraints { make in
        resetButton.snp.makeConstraints { make in
            //: make.centerY.equalTo(soundButton)
            make.centerY.equalTo(soundButton)
            //: make.width.height.equalTo(actualWidth(w: 49))
            make.width.height.equalTo(originalScene(w: 49))
            //: make.trailing.equalTo(soundButton.snp.leading).offset(-27)
            make.trailing.equalTo(soundButton.snp.leading).offset(-27)
        }
        //: resetLabel.snp.makeConstraints { make in
        resetLabel.snp.makeConstraints { make in
            //: make.centerX.equalTo(resetButton)
            make.centerX.equalTo(resetButton)
            //: make.centerY.equalTo(soundLabel)
            make.centerY.equalTo(soundLabel)
        }
        //: finishButton.snp.makeConstraints { make in
        finishButton.snp.makeConstraints { make in
            //: make.centerY.equalTo(soundButton)
            make.centerY.equalTo(soundButton)
            //: make.width.height.equalTo(actualWidth(w: 49))
            make.width.height.equalTo(originalScene(w: 49))
            //: make.leading.equalTo(soundButton.snp.trailing).offset(27)
            make.leading.equalTo(soundButton.snp.trailing).offset(27)
        }
        //: finishLabel.snp.makeConstraints { make in
        finishLabel.snp.makeConstraints { make in
            //: make.centerX.equalTo(finishButton)
            make.centerX.equalTo(finishButton)
            //: make.centerY.equalTo(soundLabel)
            make.centerY.equalTo(soundLabel)
        }
        //: listenPlayer.snp.makeConstraints { make in
        listenPlayer.snp.makeConstraints { make in
            //: make.center.equalTo(soundButton)
            make.center.equalTo(soundButton)
            //: make.size.equalTo(CGSize.init(width: actualWidth(w: 123), height: actualWidth(w: 123)))
            make.size.equalTo(CGSize(width: originalScene(w: 123), height: originalScene(w: 123)))
        }
        //: leftRecordPlayer.snp.makeConstraints { make in
        leftRecordPlayer.snp.makeConstraints { make in
            //: make.centerY.equalTo(soundButton)
            make.centerY.equalTo(soundButton)
            //: make.trailing.equalTo(soundButton.snp.leading).offset(-12)
            make.trailing.equalTo(soundButton.snp.leading).offset(-12)
            //: make.size.equalTo(CGSize.init(width: actualWidth(w: 66), height: actualWidth(w: 26)))
            make.size.equalTo(CGSize(width: originalScene(w: 66), height: originalScene(w: 26)))
        }
        //: rightRecordPlayer.snp.makeConstraints { make in
        rightRecordPlayer.snp.makeConstraints { make in
            //: make.centerY.equalTo(soundButton)
            make.centerY.equalTo(soundButton)
            //: make.leading.equalTo(soundButton.snp.trailing).offset(12)
            make.leading.equalTo(soundButton.snp.trailing).offset(12)
            //: make.size.equalTo(CGSize.init(width: actualWidth(w: 66), height: actualWidth(w: 26)))
            make.size.equalTo(CGSize(width: originalScene(w: 66), height: originalScene(w: 26)))
        }
    }

    // 添加事件
    //: private func bindInteraction() {
    private func sendColor() {
        //: showUIViaState()
        presentBlockState()
    }
}
