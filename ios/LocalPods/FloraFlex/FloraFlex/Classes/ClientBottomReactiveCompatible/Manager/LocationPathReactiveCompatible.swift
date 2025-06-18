
//: Declare String Begin

/*: "0,0" :*/
fileprivate let kStr_pathValue:[Character] = ["0",",","0"]

/*: "dist/loungePlus" :*/
fileprivate let kStr_momentTitle:[Character] = ["d","i","s","t","/","l","o"]
fileprivate let kStr_managerValue:String = "original"
fileprivate let kStr_fatalData:String = "user fromngePlus"

/*: "mf/freeCall/getVideoInfo" :*/
fileprivate let kStr_tempValue:String = "view managermf/fre"
fileprivate let kStr_nutTitle:String = "icon self return case/getV"
fileprivate let kStr_makeValue:String = "for heightInfo"

/*: "fromType" :*/
fileprivate let kStr_modelValueContent:[UInt8] = [0xb6,0xc2,0xbf,0xbd,0xa4,0xc9,0xc0,0xb5]

fileprivate func returnType(create num: UInt8) -> UInt8 {
    let value = Int(num) - 80
    if value < 0 {
        return UInt8(value + 256)
    } else {
        return UInt8(value)
    }
}

/*: "videoId" :*/
fileprivate let kStr_blockValue:[Character] = ["v","i","d","e","o","I","d"]

/*: "uid" :*/
fileprivate let kStr_viewValue:[Character] = ["u","i","d"]

/*: "type" :*/
fileprivate let kStr_scaleName:[Character] = ["t","y","p","e"]

/*: "logId" :*/
fileprivate let kStr_greetContent:[Character] = ["l","o","g","I","d"]

/*: "duration" :*/
fileprivate let kStr_noSessionName:String = "duraapp"
fileprivate let kStr_collectionValue:String = "view"

/*: "stopUid" :*/
fileprivate let kStr_progressValue:[Character] = ["s","t","o","p","U","i"]
fileprivate let kStr_themeData:String = "range"

/*: "mf/freeCall/operation" :*/
fileprivate let kStr_makeData:String = "mf/frfatal advertising return"
fileprivate let kStr_viewMessageTitle:String = "plus leftll/op"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  LocationPathReactiveCompatible.swift
//  AbroadTalking
//
//  Created by Charlotte on 2023/11/6.
//

//: import UIKit
import UIKit

/// 主动拨打视频弹窗管理
//: class TalkingVideoInitivCallManager: NSObject {
class LocationPathReactiveCompatible: NSObject {
    //: private var videoCallTimer: Timer?
    private var videoCallTimer: Timer? /// timer
    //: var videoCallModel = TalkingVideoInitivCallModel.init()
    var videoCallModel = ArtifactModel()
    //: private var countDown = 0
    private var countDown = 0 /// x秒后显示主动拨打弹窗
    //: private var intervalDown = 0
    private var intervalDown = 0 /// 间隔时间x秒
    //: private var timer_Duration: TimeInterval = 0
    private var timer_Duration: TimeInterval = 0 /// 时间间隔 初次3s，后续90s

    //: static let shared = TalkingVideoInitivCallManager()
    static let shared = LocationPathReactiveCompatible()

    //: private override init() {
    override private init() {
        //: super.init()
        super.init()
        //: NotificationCenter.default.addObserver(self,
        NotificationCenter.default.addObserver(self,
                                               //: selector: #selector(stop_VideoCallTimer),
                                               selector: #selector(videoMove),
                                               //: name: DID_LOGIN_OUT_SUCCESS_NOTIFICATION,
                                               name: kLet_statusFailData,
                                               //: object: nil)
                                               object: nil)
    }

    //: override func copy() -> Any { return self }
    override func copy() -> Any { return self }
    //: override func mutableCopy() -> Any { return self }
    override func mutableCopy() -> Any { return self }
}

// MARK: - Event

//: extension TalkingVideoInitivCallManager {
extension LocationPathReactiveCompatible {
    //: private func distroryNotif() {
    private func upSave() {
        //: NotificationCenter.default.removeObserver(self)
        NotificationCenter.default.removeObserver(self)
    }

    //: func setObserver() {
    func moveTotaloObserver() {
        //: guard LocationThen.share.loginUserMode.callPopupSetting != "0,0" else {
        guard LocationThen.share.loginUserMode.callPopupSetting != "0,0" else {
            //: distroryNotif()
            upSave()
            //: return
            return
        }
        //: let arr = LocationThen.share.loginUserMode.callPopupSetting .split(separator: ",")
        let arr = LocationThen.share.loginUserMode.callPopupSetting.split(separator: ",")
        //: if arr.count > 1 {
        if arr.count > 1 {
            //: countDown = Int(arr[0]) ?? 0
            countDown = Int(arr[0]) ?? 0
            //: intervalDown = Int(arr[1]) ?? 0
            intervalDown = Int(arr[1]) ?? 0
        }
        //: DispatchQueue.main.asyncAfter(deadline: DispatchTime.now()+Double(countDown)) {
        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + Double(countDown)) {
            //: self.req_getVideoInfo()
            self.sustain()
        }
        /// 充值/订阅成功
        //: NotificationCenter.default.addObserver(self,
        NotificationCenter.default.addObserver(self,
                                               //: selector: #selector(paySuccessTool),
                                               selector: #selector(shouldTool),
                                               //: name: USER_UPDATE_LOUNGEPLUSINFO_NOTIFICATION,
                                               name: kLet_viewData,
                                               //: object: nil)
                                               object: nil)
    }

    /// 开启x秒倒计时
    //: func initVideoCallTimer() {
    func directionFor() {
        //: self.timer_Duration = TimeInterval(intervalDown)
        self.timer_Duration = TimeInterval(intervalDown)
        //: if videoCallTimer == nil {
        if videoCallTimer == nil {
            //: videoCallTimer = Timer.scheduledTimer(timeInterval: timer_Duration, target: self, selector: #selector(req_getVideoInfo), userInfo: nil, repeats: true)
            videoCallTimer = Timer.scheduledTimer(timeInterval: timer_Duration, target: self, selector: #selector(sustain), userInfo: nil, repeats: true)
            //: RunLoop.current.add(videoCallTimer!, forMode: RunLoop.Mode.common)
            RunLoop.current.add(videoCallTimer!, forMode: RunLoop.Mode.common)
        }
    }

    //: private func videoCallTimerPopView() {
    private func orbit() {
        /// 当前显示半屏充值页或订阅页时，不显示弹窗
        //: if currentViewController()?.isKind(of: TalkingWebViewController.self) == true {
        if giftFew()?.isKind(of: ClientReactiveCompatible.self) == true {
            //: let vc = currentViewController() as! TalkingWebViewController
            let vc = giftFew() as! ClientReactiveCompatible
            //: if vc.urlStr.contains(WebUrlType.RechargeToVideoInitivHalfPage.rawValue) || vc.urlStr.contains("dist/loungePlus") {
            if vc.urlStr.contains(VariantLayerNameProtocol.RechargeToVideoInitivHalfPage.rawValue) || vc.urlStr.contains((String(kStr_momentTitle) + kStr_managerValue.replacingOccurrences(of: "original", with: "u") + String(kStr_fatalData.suffix(7)))) {
                //: return
                return
            }
        }
        /// 当前在随机匹配页，视频通话页，不显示弹窗
        //: if currentViewController()?.isKind(of: TalkingRandomVideoViewController.self) == true || currentViewController()?.isKind(of: TalkingVideoInitivCallVC.self) == true {
        if giftFew()?.isKind(of: MiniskirtObjectProtocol.self) == true || giftFew()?.isKind(of: ColourationViewDelegate.self) == true {
            //: return
            return
        }
        //: TalkingPopupWindowManager.shared.videoCallPopUpWindow()
        ClientBottomReactiveCompatible.shared.giftOf()
        //: stop_VideoCallTimer()
        videoMove()
    }

    /// 停止
    //: @objc func stop_VideoCallTimer() {
    @objc func videoMove() {
        //: if self.videoCallTimer != nil {
        if self.videoCallTimer != nil {
            //: self.videoCallTimer?.invalidate()
            self.videoCallTimer?.invalidate()
            //: self.videoCallTimer = nil
            self.videoCallTimer = nil
        }
    }

    ///  充值成功后，跳转到callTab页面
    //: @objc private func paySuccessTool() {
    @objc private func shouldTool() {
        //: if currentViewController()?.isKind(of: TalkingWebViewController.self) == true {
        if giftFew()?.isKind(of: ClientReactiveCompatible.self) == true {
            //: let vc = currentViewController() as! TalkingWebViewController
            let vc = giftFew() as! ClientReactiveCompatible
            //: if (vc.urlStr.contains(WebUrlType.RechargeHalfPage.rawValue) || vc.urlStr.contains(WebUrlType.SubscribeAlert.rawValue )) && vc.isRechargeOrSubscribeChangeMatch {
            if vc.urlStr.contains(VariantLayerNameProtocol.RechargeHalfPage.rawValue) || vc.urlStr.contains(VariantLayerNameProtocol.SubscribeAlert.rawValue), vc.isRechargeOrSubscribeChangeMatch {
                //: stop_VideoCallTimer()
                videoMove()
                //: vc.dismiss(animated: true)
                vc.dismiss(animated: true)
//                tabberSelete()
            }
        }
    }
}

// MARK: - Load Data

//: extension TalkingVideoInitivCallManager {
extension LocationPathReactiveCompatible {
    /// 获取用户主动拨打视频信息
    //: @objc private func req_getVideoInfo() {
    @objc private func sustain() {
        //: let reqModel = TalkingRequestModel.init()
        let reqModel = SizeRequestModel()
        //: reqModel.requestPath = "mf/freeCall/getVideoInfo"
        reqModel.requestPath = (String(kStr_tempValue.suffix(6)) + "eCall" + String(kStr_nutTitle.suffix(5)) + "ideo" + String(kStr_makeValue.suffix(4)))
        //: reqModel.requestType = .GET
        reqModel.requestType = .GET
        //: reqModel.params = ["fromType": "0"]
        reqModel.params = [String(bytes: kStr_modelValueContent.map{returnType(create: $0)}, encoding: .utf8)!: "0"]
        //: reqModel.showErrorStatusBar = false
        reqModel.showErrorStatusBar = false
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        kLet_firstName.afterFailureCompletion(model: reqModel) { succeed, result, errorModel in
            /// 用户正在通话中，需要开启x秒后再次请求
            //: if errorModel?.errorCode == 104 {
            if errorModel?.errorCode == 104 {
                //: self.initVideoCallTimer()
                self.directionFor()
                //: return
                return
            }
            //: guard succeed == true else {
            guard succeed == true else {
                //: self.distroryNotif()
                self.upSave()
                //: self.stop_VideoCallTimer()
                self.videoMove()
                //: return
                return
            }
            //: guard let result = result as? Dictionary<String, Any> else {
            guard let result = result as? [String: Any] else {
                //: return
                return
            }
            //: if let model = TalkingVideoInitivCallModel.deserialize(from: result as? Dictionary) {
            if let model = ArtifactModel.deserialize(from: result as? Dictionary) {
                //: self.videoCallModel = model
                self.videoCallModel = model
            }
            /// 预加载
            //: let  player = TalkingVideoPlayerManager.init()
            let player = TalkingSearchedPlayListener()
            //: player.setMute(bEnable: true)
            player.eraseEnable(bEnable: true)
            //: player.playerWithUrlAndVideoView(url: self.videoCallModel.winVideoUrl, view: UIView.init())
            player.cardView(url: self.videoCallModel.winVideoUrl, view: UIView())

            //: self.videoCallTimerPopView()
            self.orbit()
        }
    }

    /** 接口记录用户是否接通或拒绝当前通话
     *  type :3 拒绝 1 接通 2 挂断
     *  duration 接通时长
     */
    //: func req_userOperation(type: Int, duration: Int = 0, stopUid: String = "", completion: @escaping FinishBlock) {
    func timeByCompletion(type: Int, duration: Int = 0, stopUid: String = "", completion: @escaping FinishBlock) {
        //: var dict = Dictionary<String, Any>()
        var dict = [String: Any]()
        //: dict["videoId"] = videoCallModel.videoId
        dict[(String(kStr_blockValue))] = videoCallModel.videoId
        //: dict["uid"] = videoCallModel.uid
        dict[(String(kStr_viewValue))] = videoCallModel.uid
        //: dict["type"] = type
        dict[(String(kStr_scaleName))] = type
        //: dict["logId"] = videoCallModel.logId
        dict[(String(kStr_greetContent))] = videoCallModel.logId

        //: if duration > 0 {
        if duration > 0 {
            //: dict["duration"] = duration
            dict[(kStr_noSessionName.replacingOccurrences(of: "app", with: "ti") + kStr_collectionValue.replacingOccurrences(of: "view", with: "on"))] = duration
        }
        //: if stopUid.count > 0 {
        if stopUid.count > 0 {
            //: dict["stopUid"] = stopUid
            dict[(String(kStr_progressValue) + kStr_themeData.replacingOccurrences(of: "range", with: "d"))] = stopUid
        }

        //: let reqModel = TalkingRequestModel.init()
        let reqModel = SizeRequestModel()
        //: reqModel.requestPath = "mf/freeCall/operation"
        reqModel.requestPath = (String(kStr_makeData.prefix(5)) + "eeCa" + String(kStr_viewMessageTitle.suffix(5)) + "eration")
        //: reqModel.requestType = .POST
        reqModel.requestType = .POST
        //: reqModel.params = dict
        reqModel.params = dict
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        kLet_firstName.afterFailureCompletion(model: reqModel) { succeed, result, errorModel in
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }
}
