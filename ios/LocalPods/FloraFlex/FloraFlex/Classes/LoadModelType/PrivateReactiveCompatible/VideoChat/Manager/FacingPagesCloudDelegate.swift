
//: Declare String Begin

/*: "Speaker On" :*/
fileprivate let kStr_listValue:[Character] = ["S","p","e","a","k"]
fileprivate let kStr_viewSizeText:String = "double right image model delayer On"

/*: "Speaker Off" :*/
fileprivate let kStr_containerTitle:[Character] = ["S","p","e","a","k","e","r"," ","O","f","f"]

/*: "s- :*/
fileprivate let kStr_modelContent:[Character] = ["s","-"]

/*: - :*/
fileprivate let kStr_editToolData:String = "down"

/*: "TRTC 音频通话销毁. logId： :*/
fileprivate let kStr_hiddenKeyData:String = "TRTC 音to background camera make in"
fileprivate let kStr_fragmentText:[Character] = ["\u{6bc1}","."," ","l","o","g","I","d","："]

/*: ." :*/
fileprivate let kStr_pathText:String = "."

/*: "TRTC 音频通话错误. errCode: :*/
fileprivate let kStr_tempValue:[Character] = ["T","R","T","C"," ","音","\u{9891}","通"]
fileprivate let kStr_whoData:[Character] = ["\u{8bdd}","\u{9519}","\u{8bef}","."," ","e","r","r","C","o","d","e",":"]

/*: , errMsg: :*/
fileprivate let kStr_modelTitle:String = "show bottom index title, er"

/*: "TRTC 音频通话SDK收到警告. warningCode: :*/
fileprivate let kStr_liveAreaData:String = "TstatusC"
fileprivate let kStr_topData:String = "DK\u{6536}到"
fileprivate let kStr_failureIncomeName:String = "miniiminig"
fileprivate let kStr_resultData:String = "count message cellCode:"

/*: , warningMsg: :*/
fileprivate let kStr_labelLeadingText:String = ", warpriority color success"

/*: "TRTC 音频通话进入房间. result: :*/
fileprivate let kStr_targetName:String = "to gift imageTRTC "
fileprivate let kStr_redViewLetText:[Character] = ["入","房","间","."," ","r","e","s","u","l","t",":"]

/*: , logId： :*/
fileprivate let kStr_photoImageIconValue:String = "model for string, logId"
fileprivate let kStr_wrapToTitle:[Character] = ["\u{ff1a}"]

/*:  加入了房间" :*/
fileprivate let kStr_sizeValue:[Character] = [" ","加","\u{5165}","了","房","间"]

/*:  离开了房间" :*/
fileprivate let kStr_fromGiftValue:[Character] = [" ","离","开","了","\u{623f}","\u{95f4}"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  FacingPagesCloudDelegate.swift
//  AbroadTalking
//
//  Created by young on 2022/12/16.
//

//: import TXLiteAVSDK_Professional
import TXLiteAVSDK_Professional
//: import UIKit
import UIKit

/// 音频渲染配置
//: private class TalkingVoiceChatConfig: NSObject {
private class ManagerChatConfig: NSObject {
    //: var isHandsfree = false
    var isHandsfree = false // 是否免提，默认否
    //: var isMute = false
    var isMute = false // 是否静音，默认否
    //: var isTalking = false
    var isTalking = false // 是否正在通话
    //: var disconnected = true
    var disconnected = true // 是否未连接
}

//: class TalkingVoiceChatManager: NSObject {
class FacingPagesCloudDelegate: NSObject {
    //: weak var handsfreeBtn: UIButton?
    weak var handsfreeBtn: UIButton? // 免提按钮弱引用
    //: weak var handsfreeDesLab: UILabel?
    weak var handsfreeDesLab: UILabel? // 免提描述弱引用
    //: private var config = TalkingVoiceChatConfig()
    private var config = ManagerChatConfig() // 音频渲染配置类
    //: private var logId = 0
    private var logId = 0 // 通话Id

    //: override init() {
    override init() {
        //: super.init()
        super.init()
        //: self.notificationAndInterruptSettings()
        self.sumerruptClick()
    }

    //: deinit {
    deinit {
        //: NotificationCenter.default.removeObserver(self)
        NotificationCenter.default.removeObserver(self)
        //: self.shouldReleaseAllResource()
        self.assets()
    }
}

// MARK: - Public Event

//: extension TalkingVoiceChatManager {
extension FacingPagesCloudDelegate {
    /// 挂断来电后，需重恢复音频设备
    //: func enableAudioModule(enable: Bool) {
    func withModule(enable: Bool) {
        //: guard enable == true else { return }
        guard enable == true else { return }

        // 先暂停音频设备
        //: notification_stopLocalAudio(notif: nil)
        upNotif(notif: nil)
        //: DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 1) {
        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 1) {
            // 再恢复音频设备
            //: self.notification_startLocalAudio(notif: nil)
            self.can(notif: nil)
        }
    }

    /// 释放资源
    //: func shouldReleaseAllResource() {
    func assets() {
        //: destoryTRTCView()
        mortal()
    }

    /// 创建音频通话房间
    /// - Parameter roomId: 房间id
    //: func createRoomAndStartPublish(roomId: Int) {
    func flunk(roomId: Int) {
        //: self.handsfreeBtn?.isEnabled = !hasHeadSet()
        self.handsfreeBtn?.isEnabled = !sizeSet()

        //: self.config.isTalking = true
        self.config.isTalking = true
        //: self.logId = roomId
        self.logId = roomId
        //: enterRoom()
        superior()
    }

    /// 设置静音
    /// - Parameter isMute: true：静音；false：恢复
    //: func setMute(isMute: Bool) {
    func giantStar(isMute: Bool) {
        //: guard self.config.isMute != isMute else { return }
        guard self.config.isMute != isMute else { return }

        //: self.config.isMute = isMute
        self.config.isMute = isMute
        //: TRTCCloud.sharedInstance().muteLocalAudio(isMute)
        TRTCCloud.sharedInstance().muteLocalAudio(isMute)
    }

    /// 设置免提
    /// - Parameter isHandsfree: true：开启免提；false：听筒
    //: func setHandsfree(isHandsfree: Bool) {
    func notVoice(isHandsfree: Bool) {
        //: guard hasHeadSet() == false else { return }
        guard sizeSet() == false else { return }
        //: guard self.config.isHandsfree != isHandsfree else { return }
        guard self.config.isHandsfree != isHandsfree else { return }

        //: self.config.isHandsfree = isHandsfree
        self.config.isHandsfree = isHandsfree
        //: self.handsfreeBtn?.isSelected = isHandsfree
        self.handsfreeBtn?.isSelected = isHandsfree
        //: self.handsfreeDesLab?.text = isHandsfree ? "Speaker On".localized:"Speaker Off".localized
        self.handsfreeDesLab?.text = isHandsfree ? (String(kStr_listValue) + String(kStr_viewSizeText.suffix(5))).localized : (String(kStr_containerTitle)).localized
        //: updateWhenPlayDeviceChanged(isHandsfree: isHandsfree)
        decarburize(isHandsfree: isHandsfree)
    }
}

// MARK: - Private Event

//: extension TalkingVoiceChatManager {
extension FacingPagesCloudDelegate {
    /// 判断当前设备是否链接了蓝牙耳机等设备
    /// - Returns: true：有；false：没有
    //: private func hasHeadSet() -> Bool {
    private func sizeSet() -> Bool {
        //: let audioSession = AVAudioSession.sharedInstance()
        let audioSession = AVAudioSession.sharedInstance()
        //: let currentRoute = audioSession.currentRoute
        let currentRoute = audioSession.currentRoute
        //: for output in currentRoute.outputs {
        for output in currentRoute.outputs {
            //: let portType = output.portType
            let portType = output.portType
            //: if portType == .headphones ||
            if portType == .headphones ||
                //: portType == .bluetoothA2DP ||
                portType == .bluetoothA2DP ||
                //: portType == .bluetoothLE ||
                portType == .bluetoothLE ||
                //: portType == .bluetoothHFP {
                portType == .bluetoothHFP
            {
                //: return true
                return true
            }
        }

        //: return false
        return false
    }
}

// MARK: - 通知事件

//: extension TalkingVoiceChatManager {
extension FacingPagesCloudDelegate {
    /// 初始化通知
    //: func notificationAndInterruptSettings() {
    func sumerruptClick() {
        // 监听 App 切后台
        //: NotificationCenter.default.addObserver(self,
        NotificationCenter.default.addObserver(self,
                                               //: selector: #selector(notification_stopLocalAudio(notif:)),
                                               selector: #selector(upNotif(notif:)),
                                               //: name: UIApplication.didEnterBackgroundNotification,
                                               name: UIApplication.didEnterBackgroundNotification,
                                               //: object: nil)
                                               object: nil)

        // 监听 App 从后台切前台
        //: NotificationCenter.default.addObserver(self,
        NotificationCenter.default.addObserver(self,
                                               //: selector: #selector(notification_startLocalAudio(notif:)),
                                               selector: #selector(can(notif:)),
                                               //: name: UIApplication.willEnterForegroundNotification,
                                               name: UIApplication.willEnterForegroundNotification,
                                               //: object: nil)
                                               object: nil)

        // 监听电话事件
        //: NotificationCenter.default.addObserver(self,
        NotificationCenter.default.addObserver(self,
                                               //: selector: #selector(audioSessionWasInterrupted(notif:)),
                                               selector: #selector(afterwardNotif(notif:)),
                                               //: name: AVAudioSession.interruptionNotification,
                                               name: AVAudioSession.interruptionNotification,
                                               //: object: nil)
                                               object: nil)

        // 播放设备更改监听
        //: NotificationCenter.default.addObserver(self,
        NotificationCenter.default.addObserver(self,
                                               //: selector: #selector(audioRouteChangeListenerCallback(notif:)),
                                               selector: #selector(comparable(notif:)),
                                               //: name: AVAudioSession.routeChangeNotification,
                                               name: AVAudioSession.routeChangeNotification,
                                               //: object: nil)
                                               object: nil)
    }

    /// app进入后台，暂停音频设备
    //: @objc private func notification_stopLocalAudio(notif: Notification?) {
    @objc private func upNotif(notif: Notification?) {
        //: if notif == nil {
        if notif == nil {
            //: TRTCCloud.sharedInstance().stopLocalAudio()
            TRTCCloud.sharedInstance().stopLocalAudio()
        }
    }

    /// 监听 App 从后台切前台，开启音频设备
    //: @objc private func notification_startLocalAudio(notif: Notification?) {
    @objc private func can(notif: Notification?) {
        //: if notif == nil {
        if notif == nil {
            //: TRTCCloud.sharedInstance().startLocalAudio(.default)
            TRTCCloud.sharedInstance().startLocalAudio(.default)
        }
    }

    // 监听电话事件
    //: @objc private func audioSessionWasInterrupted(notif: Notification) {
    @objc private func afterwardNotif(notif: Notification) {
        //: guard notif.userInfo != nil else { return }
        guard notif.userInfo != nil else { return }
        //: DispatchQueue.main.async {
        DispatchQueue.main.async {
            //: guard let status = notif.userInfo![AVAudioSessionInterruptionTypeKey] as? UInt else {
            guard let status = notif.userInfo![AVAudioSessionInterruptionTypeKey] as? UInt else {
                //: return
                return
            }
            //: let  interruptStatus = AVAudioSession.InterruptionType(rawValue: status)
            let interruptStatus = AVAudioSession.InterruptionType(rawValue: status)
            //: if interruptStatus == AVAudioSession.InterruptionType.began {
            if interruptStatus == AVAudioSession.InterruptionType.began {
                // 暂停音频设备
                //: self.notification_stopLocalAudio(notif: nil)
                self.upNotif(notif: nil)
                //: } else if interruptStatus == AVAudioSession.InterruptionType.ended {
            } else if interruptStatus == AVAudioSession.InterruptionType.ended {
                // 恢复音频设备
                //: self.notification_startLocalAudio(notif: nil)
                self.can(notif: nil)
            }
        }
    }

    // 播放设备更改监听
    //: @objc func audioRouteChangeListenerCallback(notif: Notification) {
    @objc func comparable(notif: Notification) {
        //: guard let interuptionDict = notif.userInfo else { return }
        guard let interuptionDict = notif.userInfo else { return }
        //: guard let number = interuptionDict[AVAudioSessionRouteChangeReasonKey] as? NSNumber else {
        guard let number = interuptionDict[AVAudioSessionRouteChangeReasonKey] as? NSNumber else {
            //: return
            return
        }
        //: let routeChangeReason = AVAudioSession.RouteChangeReason(rawValue: number.uintValue)
        let routeChangeReason = AVAudioSession.RouteChangeReason(rawValue: number.uintValue)

        //: switch(routeChangeReason) {
        switch routeChangeReason {
        //: case .newDeviceAvailable:
        case .newDeviceAvailable: // 听筒
            //: self.handsfreeBtn?.isEnabled = false
            self.handsfreeBtn?.isEnabled = false
            //: updateWhenPlayDeviceChanged(isHandsfree: false)
            decarburize(isHandsfree: false)

        //: case .oldDeviceUnavailable:
        case .oldDeviceUnavailable: // 免提
            //: self.handsfreeBtn?.isEnabled = true
            self.handsfreeBtn?.isEnabled = true
            //: self.config.isHandsfree = true
            self.config.isHandsfree = true
            //: self.handsfreeBtn?.isSelected = true
            self.handsfreeBtn?.isSelected = true
            //: self.handsfreeDesLab?.text = "Speaker On".localized
            self.handsfreeDesLab?.text = (String(kStr_listValue) + String(kStr_viewSizeText.suffix(5))).localized
            //: updateWhenPlayDeviceChanged(isHandsfree: self.config.isHandsfree)
            decarburize(isHandsfree: self.config.isHandsfree)

        //: default:
        default:
            //: break
            break
        }
    }
}

// MARK: - 音频通话事件

//: extension TalkingVoiceChatManager {
extension FacingPagesCloudDelegate {
    /// 进入音频通话房间
    //: private func enterRoom() {
    private func superior() {
        //: let params = TRTCParams()
        let params = TRTCParams()
        //: params.sdkAppId = TRTCAppID
        params.sdkAppId = kLet_maxVideoName
        //: params.roomId = UInt32(logId)
        params.roomId = UInt32(logId)
        //: params.userId = LocationThen.share.loginUserMode.userID
        params.userId = LocationThen.share.loginUserMode.userID
        //: params.userSig = LocationThen.share.appUserConfigMode.uSigTrtc
        params.userSig = LocationThen.share.appUserConfigMode.uSigTrtc
        //: params.streamId = "s-\(params.userId)-\(logId)"
        params.streamId = "s-\(params.userId)-\(logId)"
        //: TRTCCloud.sharedInstance().delegate = self
        TRTCCloud.sharedInstance().delegate = self
        //: TRTCCloud.sharedInstance().startLocalAudio(.default)
        TRTCCloud.sharedInstance().startLocalAudio(.default)
        //: TRTCCloud.sharedInstance().enterRoom(params, appScene: .audioCall)
        TRTCCloud.sharedInstance().enterRoom(params, appScene: .audioCall)
        // 初始设置是否免提
        //: updateWhenPlayDeviceChanged(isHandsfree: self.config.isHandsfree)
        decarburize(isHandsfree: self.config.isHandsfree)
    }

    /// 更新通话模式
    /// - Parameter isHandsfree: 是否免提
    //: private func updateWhenPlayDeviceChanged(isHandsfree: Bool) {
    private func decarburize(isHandsfree: Bool) {
        //: TRTCCloud.sharedInstance().setAudioRoute((isHandsfree ? .modeSpeakerphone:.modeEarpiece))
        TRTCCloud.sharedInstance().setAudioRoute(isHandsfree ? .modeSpeakerphone : .modeEarpiece)
    }

    /// 销毁trtc
    //: private func destoryTRTCView() {
    private func mortal() {
        //: MiniLoadThen.appLine(msg: "TRTC 音频通话销毁. logId：\(logId).")
        MiniLoadThen.appLine(msg: (String(kStr_hiddenKeyData.prefix(6)) + "\u{9891}通话销" + String(kStr_fragmentText)) + "\(logId).")
        //: guard self.config.isTalking else { return }
        guard self.config.isTalking else { return }

        //: if self.config.isHandsfree == false {
        if self.config.isHandsfree == false { // 恢复系统扬声器播放声音
            //: updateWhenPlayDeviceChanged(isHandsfree: true)
            decarburize(isHandsfree: true)
        }
        //: TRTCCloud.sharedInstance().exitRoom()
        TRTCCloud.sharedInstance().exitRoom()
        //: DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 0.5) {
        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 0.5) {
            //: TRTCCloud.destroySharedIntance()
            TRTCCloud.destroySharedIntance()
        }
        //: self.config.isTalking = false
        self.config.isTalking = false
    }

    /// 音频通话重连
    /// - Parameter roomId: 房间Id
    //: func restartTalkWhenDisconnectedAndNetAvailable(roomId: Int) {
    func stream(roomId: Int) {
        //: if self.config.disconnected == true {
        if self.config.disconnected == true {
            //: self.config.disconnected = false
            self.config.disconnected = false
            //: self.createRoomAndStartPublish(roomId: roomId)
            self.flunk(roomId: roomId)
        }
    }
}

// MARK: - TRTCCloudDelegate

//: extension TalkingVoiceChatManager: TRTCCloudDelegate {
extension FacingPagesCloudDelegate: TRTCCloudDelegate {
    //: func onError(_ errCode: TXLiteAVError, errMsg: String?, extInfo: [AnyHashable: Any]?) {
    func onError(_ errCode: TXLiteAVError, errMsg: String?, extInfo _: [AnyHashable: Any]?) {
        //: MiniLoadThen.appLine(msg: "TRTC 音频通话错误. errCode:\(errCode), errMsg:\(String(describing: errMsg)).")
        MiniLoadThen.appLine(msg: (String(kStr_tempValue) + String(kStr_whoData)) + "\(errCode)" + (String(kStr_modelTitle.suffix(4)) + "rMsg:") + "\(String(describing: errMsg)).")
        //: if errMsg != nil {
        if errMsg != nil {
            //: self.func__showStatusBarErrorMsg(showMsg: errMsg!)
            self.detailDownArray(showMsg: errMsg!)
        }
    }

    //: func onWarning(_ warningCode: TXLiteAVWarning, warningMsg: String?, extInfo: [AnyHashable: Any]?) {
    func onWarning(_ warningCode: TXLiteAVWarning, warningMsg: String?, extInfo _: [AnyHashable: Any]?) {
        //: MiniLoadThen.appLine(msg: "TRTC 音频通话SDK收到警告. warningCode:\(warningCode), warningMsg:\(String(describing: warningMsg)).")
        MiniLoadThen.appLine(msg: (kStr_liveAreaData.replacingOccurrences(of: "status", with: "RT") + " \u{97f3}频\u{901a}话S" + kStr_topData + "警告. war" + kStr_failureIncomeName.replacingOccurrences(of: "mini", with: "n") + String(kStr_resultData.suffix(5))) + "\(warningCode)" + (String(kStr_labelLeadingText.prefix(5)) + "ningMsg:") + "\(String(describing: warningMsg)).")
    }

    //: func onEnterRoom(_ result: Int) {
    func onEnterRoom(_ result: Int) {
        //: MiniLoadThen.appLine(msg: "TRTC 音频通话进入房间. result:\(result), logId：\(logId).")
        MiniLoadThen.appLine(msg: (String(kStr_targetName.suffix(5)) + "音频通话\u{8fdb}" + String(kStr_redViewLetText)) + "\(result)" + (String(kStr_photoImageIconValue.suffix(7)) + String(kStr_wrapToTitle)) + "\(logId).")
        //: if result < 0 {
        if result < 0 { // 加入失败
            //: self.config.disconnected = true
            self.config.disconnected = true
            //: TalkingSocketManager.shared.endTalkingPing()
            ToSocketManager.shared.disappear()
            //: } else {
        } else {
            //: self.config.disconnected = false
            self.config.disconnected = false
        }
    }

    //: func onExitRoom(_ reason: Int) {
    func onExitRoom(_: Int) {
        //: self.config.disconnected = true
        self.config.disconnected = true
        //: TalkingSocketManager.shared.endTalkingPing()
        ToSocketManager.shared.disappear()
    }

    //: func onRemoteUserEnterRoom(_ userId: String) {
    func onRemoteUserEnterRoom(_ userId: String) {
        //: printLog(message: "\(userId) 加入了房间")
        pathLine(message: "\(userId)" + (String(kStr_sizeValue)))
    }

    //: func onRemoteUserLeaveRoom(_ userId: String, reason: Int) {
    func onRemoteUserLeaveRoom(_ userId: String, reason _: Int) {
        //: printLog(message: "\(userId) 离开了房间")
        pathLine(message: "\(userId)" + (String(kStr_fromGiftValue)))
    }
}
