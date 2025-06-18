
//: Declare String Begin

/*: "LIVE_NEED_OPEN_NOTIFICATION" :*/
fileprivate let kStr_awayName:[Character] = ["L","I","V","E","_","N","E","E","D","_","O","P","E","N","_","N","O","T","I","F","I","C"]
fileprivate let kStr_scaleProcessorValue:[Character] = ["A","T","I","O","N"]

/*: "LIVE_STATUS_CHANGE_NOTIFICATION" :*/
fileprivate let kStr_topData:[UInt8] = [0xea,0xe7,0xf4,0xe3,0xfd,0xf1,0xf2,0xdf,0xf2,0xf3,0xf1,0xfd,0xe1,0xe6,0xdf,0xec,0xe5,0xe3,0xfd,0xec,0xed,0xf2,0xe7,0xe4,0xe7,0xe1,0xdf,0xf2,0xe7,0xed,0xec]

fileprivate func colorMake(equal num: UInt8) -> UInt8 {
    let value = Int(num) - 158
    if value < 0 {
        return UInt8(value + 256)
    } else {
        return UInt8(value)
    }
}

/*: "live/startCheck" :*/
fileprivate let kStr_valueRecordData:String = "add iflive/sta"
fileprivate let kStr_draftName:[Character] = ["r","t","C","h","e","c","k"]

/*: "live/start" :*/
fileprivate let kStr_cardData:String = "remove equal addlive/s"
fileprivate let kStr_objectText:String = "TART"

/*: "live/stop" :*/
fileprivate let kStr_responseContent:String = "main to guard modellive/stop"

/*: "type" :*/
fileprivate let kStr_formalCellValue:[UInt8] = [0x5f,0x52,0x5b,0x4e]

private func colorMin(content num: UInt8) -> UInt8 {
    return num ^ 43
}

/*: "mf/user/dataCard" :*/
fileprivate let kStr_shareData:String = "var text indexmf/u"
fileprivate let kStr_appName:String = "dprioritytpriority"

/*: "uid" :*/
fileprivate let kStr_randomValue:[UInt8] = [0x64,0x69,0x75]

/*: "streamerUid" :*/
fileprivate let kStr_infoData:[UInt8] = [0xbc,0xbb,0xbd,0xaa,0xae,0xa2,0xaa,0xbd,0x9a,0xa6,0xab]

private func sizeView(cell num: UInt8) -> UInt8 {
    return num ^ 207
}

/*: "roomId" :*/
fileprivate let kStr_equalUpName:String = "roomIdavailable deadline sex"

/*: "Try again later, if you have any questions please contact customer service" :*/
fileprivate let kStr_contentText:[UInt8] = [0x22,0x4,0xf,0x56,0x17,0x11,0x17,0x1f,0x18,0x56,0x1a,0x17,0x2,0x13,0x4,0x5a,0x56,0x1f,0x10,0x56,0xf,0x19,0x3,0x56,0x1e,0x17,0x0,0x13,0x56,0x17,0x18,0xf,0x56,0x7,0x3,0x13,0x5,0x2,0x1f,0x19,0x18,0x5,0x56,0x6,0x1a,0x13,0x17,0x5,0x13,0x56,0x15,0x19,0x18,0x2,0x17,0x15,0x2,0x56,0x15,0x3,0x5,0x2,0x19,0x1b,0x13,0x4,0x56,0x5,0x13,0x4,0x0,0x1f,0x15,0x13]

private func viewRefresh(hidden num: UInt8) -> UInt8 {
    return num ^ 118
}

/*: "redirectUrl" :*/
fileprivate let kStr_messageName:String = "redlabr"
fileprivate let kStr_translationData:[Character] = ["e","c","t","U","r","l"]

/*: "livePushUrl" :*/
fileprivate let kStr_upText:String = "lvideoe"

/*: "FaceActionEvent_Interval_1_second" :*/
fileprivate let kStr_viewName:[UInt8] = [0xe3,0xc4,0xc6,0xc0,0xe4,0xc6,0xd1,0xcc,0xca,0xcb,0xe0,0xd3,0xc0,0xcb,0xd1,0xfa,0xec,0xcb,0xd1,0xc0,0xd7,0xd3,0xc4,0xc9,0xfa,0x94,0xfa,0xd6,0xc0,0xc6,0xca,0xcb,0xc1]

private func titleFrame(equal num: UInt8) -> UInt8 {
    return num ^ 165
}

/*: "hasFace" :*/
fileprivate let kStr_styleText:[Character] = ["h","a","s","F","a","c","e"]

/*: "Opening failed" :*/
fileprivate let kStr_placeTitle:[Character] = ["O","p","e","n","i","n","g"," ","f","a","i","l","e","d"]

/*: "LIVE 状态码： :*/
fileprivate let kStr_mediaName:String = "LIVapp"

/*: ." :*/
fileprivate let kStr_lastText:[Character] = ["."]

/*: "Network busy!" :*/
fileprivate let kStr_fileValue:String = "super add number data selfNetwo"
fileprivate let kStr_arrayData:String = "name content self afterrk busy!"

/*: "LIVE 异常下播，evtID: :*/
fileprivate let kStr_emptyText:String = "title as import picLIVE 异常下播"
fileprivate let kStr_dataText:String = "，evtID:guard target"

/*: "Live room exception" :*/
fileprivate let kStr_equalValue:[Character] = ["L","i","v","e"," ","r","o","o"]
fileprivate let kStr_pathValue:String = "content view user applicationm exce"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  VideoPushListener.swift
//  AbroadTalking
//
//  Created by young on 2023/6/15.
//

//: import TXLiteAVSDK_Professional
import TXLiteAVSDK_Professional
//: import UIKit
import UIKit

// 是否需要恢复直播
//: public var NEED_RESTORE_LIVE = false
public var kLet_agentValue = false
// 唤起直播功能
//: public let LIVE_NEED_OPEN_NOTIFICATION = NSNotification.Name(rawValue: "LIVE_NEED_OPEN_NOTIFICATION")
public let kLet_meTitle = NSNotification.Name(rawValue: (String(kStr_awayName) + String(kStr_scaleProcessorValue)))
// 直播状态变更通知
//: public let LIVE_STATUS_CHANGE_NOTIFICATION = NSNotification.Name(rawValue: "LIVE_STATUS_CHANGE_NOTIFICATION")
public let kLet_appData = NSNotification.Name(rawValue: String(bytes: kStr_topData.map{colorMake(equal: $0)}, encoding: .utf8)!)

/// 直播渲染配置
//: class TalkingLiveConfig: NSObject {
class EqualReactiveCompatible: NSObject {
    //: var livePushUrl = ""                 // 推流地址
    var livePushUrl = "" // 推流地址
    //: var isSmallMode = false
    var isSmallMode = false // 是否小窗口
    //: var isMute = false
    var isMute = false // 是否静音
    //: var isRequest = false
    var isRequest = false // 正在请求中（防止多次调用）
    //: var frontCamera = true
    var frontCamera = true // 是否前置摄像头
}

//: class TalkingLiveManager: NSObject {
class VideoPushListener: NSObject {
    // 直播间消息
    //: var liveRoomModel = TalkingLiveRoomModel()
    var liveRoomModel = SharedModel()
    // 是否正在直播中（状态变更时发送通知）
    //: private(set) var isLive: Bool = false {
    private(set) var isLive: Bool = false {
        //: didSet {
        didSet {
            //: if LocationThen.share.appStatus == AppSkinStatus.normal.rawValue {
            if LocationThen.share.appStatus == SharedInsetTarget.normal.rawValue {
                //: NotificationCenter.default.post(name: LIVE_STATUS_CHANGE_NOTIFICATION, object: self)
                NotificationCenter.default.post(name: kLet_appData, object: self)
            }
        }
    }

    // TXLive
    //: var config = TalkingLiveConfig()
    var config = EqualReactiveCompatible() // 直播渲染配置类
    //: private weak var renderLiveView: UIView?
    private weak var renderLiveView: UIView? // 直播视图视频源
    //: private var localPreviewView: TalkingTRTCVideoView?
    private var localPreviewView: SeekViewDelegete? // 本地预览view（使用商汤美颜）
    //: private static var _instance: TalkingLiveManager?
    private static var _instance: VideoPushListener? // singleton

    //: private override init() {}
    override private init() {}
    //: class func shared() -> TalkingLiveManager {
    class func isGesture() -> VideoPushListener {
        //: guard _instance != nil else {
        guard _instance != nil else {
            //: _instance = TalkingLiveManager()
            _instance = VideoPushListener()
            //: return _instance!
            return _instance!
        }
        //: return _instance!
        return _instance!
    }

    //: class func destroy() {
    class func modelDestroy() {
        //: if TalkingLiveManager._instance != nil {
        if VideoPushListener._instance != nil {
            //: TalkingLiveManager._instance = nil
            VideoPushListener._instance = nil
        }
    }

    // MARK: - Lazy Load

    // 直播小窗口悬浮窗
    //: private lazy var liveMiniView: TalkingLiveMiniView = {
    private lazy var liveMiniView: ViewSharedReactiveCompatible = {
        //: let mini = TalkingLiveMiniView.buildLiveMiniView()
        let mini = ViewSharedReactiveCompatible.capture()
        //: mini.tapGestureBlock = { [weak self] in
        mini.tapGestureBlock = { [weak self] in
            //: guard let self = self else { return }
            guard let self = self else { return }
            // 进入直播间
            //: self.live_updateTXLivePreview(self.liveRoomVC.renderView, smallWindow: false)
            self.doingEndWindow(self.liveRoomVC.renderView, smallWindow: false)
            //: guard let currentVC = self.currentViewController() else { return }
            guard let currentVC = self.giftFew() else { return }
            // 如果顶部视图是私信页，先返回列表，避免多个私信页消息同步问题
            //: if currentVC.isKind(of: TalkingPrivateChatController.self) {
            if currentVC.isKind(of: SucceedTitleControllerDelegate.self) {
                //: if var vcArr = currentVC.navigationController?.viewControllers {
                if var vcArr = currentVC.navigationController?.viewControllers {
                    //: vcArr.removeLast()
                    vcArr.removeLast()
                    //: vcArr.append(self.liveRoomVC)
                    vcArr.append(self.liveRoomVC)
                    //: currentVC.navigationController?.setViewControllers(vcArr, animated: true)
                    currentVC.navigationController?.setViewControllers(vcArr, animated: true)
                }
                //: } else {
            } else {
                //: currentVC.navigationController?.pushViewController(self.liveRoomVC, animated: true)
                currentVC.navigationController?.pushViewController(self.liveRoomVC, animated: true)
            }
        }
        //: return mini
        return mini
        //: }()
    }()

    // 直播控制器
    //: private lazy var liveRoomVC: TalkingLiveBeautifyViewController = {
    private lazy var liveRoomVC: SharedViewRecognizerDelegate = {
        //: let vc = TalkingLiveBeautifyViewController()
        let vc = SharedViewRecognizerDelegate()
        //: return vc
        return vc
        //: }()
    }()

    // 检测无人脸弹窗
    //: private lazy var noFaceAlert: TalkingLiveAlertView = {
    private lazy var noFaceAlert: MakeAlertView = //: return MakeAlertView(frame: .zero, type: .noFace)
        .init(frame: .zero, type: .noFace)
    //: }()

    // 直播推流对象
    //: private lazy var livePusher: TXLivePush = {
    private lazy var livePusher: TXLivePush = {
        //: let pushConfig = TXLivePushConfig()
        let pushConfig = TXLivePushConfig()
        //: pushConfig.frontCamera = self.config.frontCamera
        pushConfig.frontCamera = self.config.frontCamera
        //: pushConfig.customModeType |= CUSTOM_MODE_VIDEO_CAPTURE
        pushConfig.customModeType |= CUSTOM_MODE_VIDEO_CAPTURE
        // 标清
        //: let pusher = TXLivePush(config: pushConfig)
        let pusher = TXLivePush(config: pushConfig)
        //: pusher?.setVideoQuality(TX_Enum_Type_VideoQuality.VIDEO_QUALITY_STANDARD_DEFINITION,
        pusher?.setVideoQuality(TX_Enum_Type_VideoQuality.VIDEO_QUALITY_STANDARD_DEFINITION,
                                //: adjustBitrate: true,
                                adjustBitrate: true,
                                //: adjustResolution: false)
                                adjustResolution: false)
        //: return pusher!
        return pusher!
        //: }()
    }()
}

// MARK: - Request

//: extension TalkingLiveManager {
extension VideoPushListener {
    /// 检测是否被禁用“开播功能”
    //: class func req_liveStartCheck(completion: @escaping FinishBlock) {
    class func beforeClick(completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel()
        let reqModel = SizeRequestModel()
        //: reqModel.requestPath = "live/startCheck"
        reqModel.requestPath = (String(kStr_valueRecordData.suffix(8)) + String(kStr_draftName))
        //: reqModel.requestType = .GET
        reqModel.requestType = .GET
        //: reqModel.showErrorStatusBar = false
        reqModel.showErrorStatusBar = false
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        kLet_firstName.afterFailureCompletion(model: reqModel) { succeed, result, errorModel in
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }

    /// 开启直播
    //: class func req_liveStart(completion: @escaping FinishBlock) {
    class func mainCurrent(completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel()
        let reqModel = SizeRequestModel()
        //: reqModel.requestPath = "live/start"
        reqModel.requestPath = (String(kStr_cardData.suffix(6)) + kStr_objectText.lowercased())
        //: reqModel.requestType = .GET
        reqModel.requestType = .GET
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        kLet_firstName.afterFailureCompletion(model: reqModel) { succeed, result, errorModel in
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }

    /// 停止直播
    /// - Parameters:
    ///   - type: 停播类型：1=主动终止；2=没有人脸；3=通话中断
    ///   - completion: 回调
    //: class func req_liveStop(type: Int, completion: FinishBlock? = nil) {
    class func drawUp(type: Int, completion: FinishBlock? = nil) {
        //: let reqModel = TalkingRequestModel()
        let reqModel = SizeRequestModel()
        //: reqModel.requestPath = "live/stop"
        reqModel.requestPath = (String(kStr_responseContent.suffix(9)))
        //: reqModel.requestType = .GET
        reqModel.requestType = .GET
        //: reqModel.params = ["type": type]
        reqModel.params = [String(bytes: kStr_formalCellValue.map{colorMin(content: $0)}, encoding: .utf8)!: type]
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        kLet_firstName.afterFailureCompletion(model: reqModel) { succeed, result, errorModel in
            //: completion?(succeed, result, errorModel)
            completion?(succeed, result, errorModel)
        }
    }

    /// - Parameters:
    ///  - uid: 卡片用户id
    ///   - streamerUid: 主播id
    //: class func req__userCardInfo(uid: String, streamerUid: String, roomId: String? = nil , completion: @escaping FinishBlock) {
    class func tool(uid: String, streamerUid: String, roomId: String? = nil, completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel.init()
        let reqModel = SizeRequestModel()
        //: reqModel.requestPath = "mf/user/dataCard"
        reqModel.requestPath = (String(kStr_shareData.suffix(4)) + "ser/" + kStr_appName.replacingOccurrences(of: "priority", with: "a") + "Card")
        //: var params = ["uid": uid, "streamerUid": streamerUid]
        var params = [String(bytes: kStr_randomValue.reversed(), encoding: .utf8)!: uid, String(bytes: kStr_infoData.map{sizeView(cell: $0)}, encoding: .utf8)!: streamerUid]
        //: if let roomId = roomId {
        if let roomId = roomId {
            //: params["roomId"] = roomId
            params[(String(kStr_equalUpName.prefix(6)))] = roomId
        }
        //: reqModel.params = params
        reqModel.params = params
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        kLet_firstName.afterFailureCompletion(model: reqModel) { succeed, result, errorModel in
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }
}

// MARK: - 权限检测，通过后开启直播

//: extension TalkingLiveManager {
extension VideoPushListener {
    // 检测直播状态，未开播时打开直播
    //: func checkLiveAuthAndTurnOn(completionHandler: ((_ isSucceed: Bool) -> Void)? = nil) {
    func nurseLogHandler(completionHandler: ((_ isSucceed: Bool) -> Void)? = nil) {
        //: guard self.isLive == false else { return }
        guard self.isLive == false else { return }
        //: guard self.config.isRequest == false else { return }
        guard self.config.isRequest == false else { return }
        //: self.config.isRequest = true
        self.config.isRequest = true

        // 1. 商汤美颜
        //: guard SenseTime_Use == true else {
        guard kLet_intervalName == true else {
            //: self.func__showStatusBarErrorMsg(showMsg: "Try again later, if you have any questions please contact customer service".localized)
            self.detailDownArray(showMsg: String(bytes: kStr_contentText.map{viewRefresh(hidden: $0)}, encoding: .utf8)!.localized)
            //: self.config.isRequest = false
            self.config.isRequest = false
            //: return
            return
        }

        // 2. 权限检测
        //: TalkingPermissionTool.checkCameraAndMicrophone { isOpen in
        PerspectiveThen.disappearEvent { isOpen in
            //: guard isOpen == true else {
            guard isOpen == true else {
                //: self.func__showStatusBarErrorMsg(showMsg: kMessage_permissions_error)
                self.detailDownArray(showMsg: kLet_viewValue)
                //: self.config.isRequest = false
                self.config.isRequest = false
                //: completionHandler?(false)
                completionHandler?(false)
                //: return
                return
            }
            // 3. 接口是否禁播检测
            //: TalkingLiveManager.req_liveStartCheck { succeed, result, errorModel in
            VideoPushListener.beforeClick { succeed, result, errorModel in
                //: guard succeed else {
                guard succeed else {
                    //: self.config.isRequest = false
                    self.config.isRequest = false
                    //: if errorModel?.errorCode == 302 {
                    if errorModel?.errorCode == 302 { // 失败，跳转H5
                        //: if let result = result as? Dictionary<String, Any> {
                        if let result = result as? [String: Any] {
                            //: EffectPushManager.share.func__pushToWebVC(urlStr: result["redirectUrl"] as? String)
                            EffectPushManager.share.deleteTake(urlStr: result[(kStr_messageName.replacingOccurrences(of: "lab", with: "i") + String(kStr_translationData))] as? String)
                        }
                        //: } else if errorModel?.errorMsg.count ?? 0 > 0 {
                    } else if errorModel?.errorMsg.count ?? 0 > 0 {
                        //: self.func__showStatusBarErrorMsg(showMsg: errorModel!.errorMsg)
                        self.detailDownArray(showMsg: errorModel!.errorMsg)
                    }
                    //: completionHandler?(false)
                    completionHandler?(false)
                    //: return
                    return
                }
                // 4. 是否正在音视频通话中
                //: guard TalkingSocketManager.shared.isTalking == false else {
                guard ToSocketManager.shared.isTalking == false else {
                    //: self.func__showStatusBarErrorMsg(showMsg: kMessage_videoTalking_limit)
                    self.detailDownArray(showMsg: kLet_tableEndValue)
                    //: self.config.isRequest = false
                    self.config.isRequest = false
                    //: completionHandler?(false)
                    completionHandler?(false)
                    //: return
                    return
                }

                // 校验成功，开启直播
                //: completionHandler?(true)
                completionHandler?(true)
                //: let json = JSON(result ?? [String: Any]())
                let json = JSON(result ?? [String: Any]())

                // 进入直播间
                //: self.currentViewController()?.navigationController?.pushViewController(self.liveRoomVC, animated: true)
                self.giftFew()?.navigationController?.pushViewController(self.liveRoomVC, animated: true)
                //: self.live_createRoomAndStartPush(livePushUrl: json["livePushUrl"].stringValue)
                self.forEachOffe(livePushUrl: json[(kStr_upText.replacingOccurrences(of: "video", with: "iv") + "PushUrl")].stringValue)
            }
        }
    }
}

// MARK: - Public Event

//: extension TalkingLiveManager {
extension VideoPushListener {
    /// 展示直播违规弹窗
    //: static func live_showWarningView(content: String, reason: String, time: String) {
    static func sharedPlayer(content: String, reason: String, time: String) {
        //: let alert = TalkingLiveWarningView()
        let alert = SharedThen()
        //: alert.refreshUI(content: content, reason: reason, time: time)
        alert.observe(content: content, reason: reason, time: time)
        //: alert.show()
        alert.viewQuantity()
    }

    /// 释放资源
    //: func live_releaseAllResource() {
    func outAssets() {
        //: DispatchQueue.main.async {
        DispatchQueue.main.async {
            //: self.isLive = false
            self.isLive = false
            //: self.config.isRequest = false
            self.config.isRequest = false
            //: UIApplication.shared.isIdleTimerDisabled = false
            UIApplication.shared.isIdleTimerDisabled = false // 恢复息屏
            //: NotificationCenter.default.removeObserver(self)
            NotificationCenter.default.removeObserver(self) // 移除通知
            //: TalkingSocketManager.shared.endLivePing()
            ToSocketManager.shared.appearIn() // 结束心跳包
            //: self.liveMiniView.removeFromSuperview()
            self.liveMiniView.removeFromSuperview() // 移除小窗口
            //: self.liveRoomVC.popCurrentViewController()
            self.liveRoomVC.moveAnimated() // 将直播视图从栈中移除
            //: self.destoryTXLiveView()
            self.imageKey()
            // 释放单例
            //: TalkingLiveManager.destroy()
            VideoPushListener.modelDestroy()
            // 销毁弹幕
            //: TalkingDanmuManager.danmu_releaseAllResource()
            FlipDanmuManager.noAt()
            //: (TalkingApplication.shared as! TalkingApplication).femaleBusyStatusReport()
            (LayerKingfisherCompatible.shared as! LayerKingfisherCompatible).deadlineReport()
        }
    }

    /// 创建视频通话房间开始推流
    /// - Parameter livePushUrl: 推流地址
    //: func live_createRoomAndStartPush(livePushUrl: String) {
    func forEachOffe(livePushUrl: String) {
        //: self.config.livePushUrl = livePushUrl
        self.config.livePushUrl = livePushUrl

        // 创建预览画面，开始直播（默认大屏）
        //: UIApplication.shared.isIdleTimerDisabled = true
        UIApplication.shared.isIdleTimerDisabled = true // 防止息屏
        //: self.live_updateTXLivePreview(self.liveRoomVC.renderView, smallWindow: false)
        self.doingEndWindow(self.liveRoomVC.renderView, smallWindow: false)
        //: self.live_startPush(livePushUrl: livePushUrl)
        self.neighbor(livePushUrl: livePushUrl)
    }

    /// 更新tx直播画面
    /// - Parameters:
    ///   - randerView: 渲染视图（默认为小窗口）
    ///   - smallWindow: 是否小窗口
    //: func live_updateTXLivePreview(_ randerView: UIView? = nil, smallWindow: Bool) {
    func doingEndWindow(_ randerView: UIView? = nil, smallWindow: Bool) {
        //: if randerView == nil {
        if randerView == nil {
            //: self.renderLiveView = self.liveMiniView.renderView
            self.renderLiveView = self.liveMiniView.renderView
            //: } else {
        } else {
            //: self.renderLiveView = randerView
            self.renderLiveView = randerView
        }

        //: self.liveMiniView.isHidden = !smallWindow
        self.liveMiniView.isHidden = !smallWindow
        //: self.config.isSmallMode = smallWindow
        self.config.isSmallMode = smallWindow
        // 清除小窗口未读消息标识
        //: if self.config.isSmallMode {
        if self.config.isSmallMode {
            //: updateUnredMessageCount(clear: true)
            lock(clear: true)
        }
        //: startTXLivePreview(smallWindow: smallWindow)
        dataWindow(smallWindow: smallWindow)
    }

    /// 前后摄像头切换
    /// - Parameter front: 是否前置
    //: func switchTRTCCamer(front: Bool) {
    func disguise(front: Bool) {
        //: guard self.config.frontCamera != front else { return }
        guard self.config.frontCamera != front else { return }
        //: self.config.frontCamera = front
        self.config.frontCamera = front

        //: guard SenseTime_Use == true else {
        guard kLet_intervalName == true else {
            //: livePusher.switchCamera()
            livePusher.switchCamera()
            //: return
            return
        }

        //: self.localPreviewView?.switchTRTCCamer(isFront: front)
        self.localPreviewView?.viewWith(isFront: front)
    }
}

// MARK: - 通知事件

//: extension TalkingLiveManager {
extension VideoPushListener {
    /// 添加通知监听
    //: private func addNotifications() {
    private func sum() {
        // 监听是否捕获到人脸
        //: if SenseTime_Use == true {
        if kLet_intervalName == true {
            //: NotificationCenter.default.addObserver(self,
            NotificationCenter.default.addObserver(self,
                                                   //: selector: #selector(catchFaceResultNotification(notification:)),
                                                   selector: #selector(listNotification(notification:)),
                                                   //: name: NSNotification.Name(rawValue: "FaceActionEvent_Interval_1_second"),
                                                   name: NSNotification.Name(rawValue: String(bytes: kStr_viewName.map{titleFrame(equal: $0)}, encoding: .utf8)!),
                                                   //: object: nil)
                                                   object: nil)
        }

        // 监听应用将要销毁
        //: NotificationCenter.default.addObserver(self,
        NotificationCenter.default.addObserver(self,
                                               //: selector: #selector(appWillTerminate),
                                               selector: #selector(quality),
                                               //: name: UIApplication.willTerminateNotification,
                                               name: UIApplication.willTerminateNotification,
                                               //: object: nil)
                                               object: nil)
    }

    /// 程序销毁时调用停播接口
    //: @objc private func appWillTerminate() {
    @objc private func quality() {
        //: guard self.isLive == true else { return }
        guard self.isLive == true else { return }
        //: TalkingLiveManager.req_liveStop(type: 1)
        VideoPushListener.drawUp(type: 1)
    }
}

// MARK: - 未读消息提醒标识

//: extension TalkingLiveManager {
extension VideoPushListener {
    /// 更新未读消息数量
    /// - Parameter clear: 是否清空
    //: func updateUnredMessageCount(clear: Bool = false) {
    func lock(clear: Bool = false) {
        //: guard self.config.isSmallMode else { return }
        guard self.config.isSmallMode else { return }
        //: if clear {
        if clear {
            //: self.liveMiniView.msgCount = 0
            self.liveMiniView.msgCount = 0
            //: } else {
        } else {
            //: self.liveMiniView.msgCount += 1
            self.liveMiniView.msgCount += 1
        }
    }
}

// MARK: - 商汤人脸检测

//: extension TalkingLiveManager {
extension VideoPushListener {
    /// 商汤美颜是否捕获到人脸通知（间隔1秒）
    //: @objc private func catchFaceResultNotification(notification: NSNotification) {
    @objc private func listNotification(notification: NSNotification) {
        //: DispatchQueue.main.async {
        DispatchQueue.main.async {
            //: guard self.isLive == true else { return }
            guard self.isLive == true else { return }
            //: let userInfo = notification.userInfo as! [String: AnyObject]
            let userInfo = notification.userInfo as! [String: AnyObject]
            //: let hasFace = (userInfo["hasFace"] as! NSNumber).description.boolValue
            let hasFace = (userInfo[(String(kStr_styleText))] as! NSNumber).description.boolValue
            //: if hasFace == true {
            if hasFace == true {
                //: self.liveMiniView.noFaceTime = 0
                self.liveMiniView.noFaceTime = 0
                //: self.liveRoomVC.topView.noFaceTime = 0
                self.liveRoomVC.topView.noFaceTime = 0
                //: } else {
            } else {
                //: self.liveMiniView.noFaceTime += 1
                self.liveMiniView.noFaceTime += 1
                //: self.liveRoomVC.topView.noFaceTime += 1
                self.liveRoomVC.topView.noFaceTime += 1
            }
            // 连续X秒无人脸出现直接下播
            //: if self.liveMiniView.noFaceTime == MAX_NOFACETIME {
            if self.liveMiniView.noFaceTime == kLet_listMaxTitle {
                //: self.interval_noFace()
                self.upward()
            }
            // 开启超时检测（防止直播时长时间后台、锁屏）
            //: self.interval_cancelPreviousPerformRequest()
            self.rankView()
            //: self.interval_startPerformRequest()
            self.numbererval()
        }
    }

    /// 开启超时检测（防止直播时长时间后台、锁屏）
    //: private func interval_startPerformRequest() {
    private func numbererval() {
        //: self.perform(#selector(interval_noFace), with: nil, afterDelay: 30)
        self.perform(#selector(upward), with: nil, afterDelay: 30)
    }

    /// 取消超时检测
    //: private func interval_cancelPreviousPerformRequest() {
    private func rankView() {
        //: NSObject.cancelPreviousPerformRequests(withTarget: self,
        NSObject.cancelPreviousPerformRequests(withTarget: self,
                                               //: selector: #selector(interval_noFace),
                                               selector: #selector(upward),
                                               //: object: nil)
                                               object: nil)
    }

    /// 未检测到人脸超过30秒
    //: @objc private func interval_noFace() {
    @objc private func upward() {
        //: guard self.isLive == true else { return }
        guard self.isLive == true else { return }
        //: TalkingLiveManager.req_liveStop(type: 2)
        VideoPushListener.drawUp(type: 2)
        //: self.live_releaseAllResource()
        self.outAssets()
        //: self.noFaceAlert.show()
        self.noFaceAlert.clickFor()
    }
}

// MARK: - TX直播

//: extension TalkingLiveManager {
extension VideoPushListener {
    /// tx本地预览视频画面
    /// - Parameter smallWindow: 是否自己的画面在小窗口
    //: private func startTXLivePreview(smallWindow: Bool) {
    private func dataWindow(smallWindow: Bool) {
        //: guard SenseTime_Use == true else {
        guard kLet_intervalName == true else {
            //: let beautyManger = livePusher.getBeautyManager()
            let beautyManger = livePusher.getBeautyManager()
            //: beautyManger?.setBeautyStyle(.nature)
            beautyManger?.setBeautyStyle(.nature)
            //: beautyManger?.setBeautyLevel(6)
            beautyManger?.setBeautyLevel(6)

            //: livePusher.startPreview(self.renderLiveView)
            livePusher.startPreview(self.renderLiveView)
            //: return
            return
        }

        //: if self.localPreviewView == nil {
        if self.localPreviewView == nil {
            //: self.localPreviewView = TalkingTRTCVideoView()
            self.localPreviewView = SeekViewDelegete()
        }
        //: self.localPreviewView?.startPreView(isSmallWindow: smallWindow, livePusher: livePusher)
        self.localPreviewView?.skin(isSmallWindow: smallWindow, livePusher: livePusher)
        //: if self.localPreviewView?.superview != self.renderLiveView {
        if self.localPreviewView?.superview != self.renderLiveView {
            //: self.localPreviewView?.removeFromSuperview()
            self.localPreviewView?.removeFromSuperview()
            //: self.renderLiveView?.addSubview(self.localPreviewView!)
            self.renderLiveView?.addSubview(self.localPreviewView!)
            //: self.localPreviewView?.snp.makeConstraints({ make in
            self.localPreviewView?.snp.makeConstraints { make in
                //: make.edges.equalToSuperview()
                make.edges.equalToSuperview()
                //: })
            }
        }
    }

    /// 开始直播推流
    /// - Parameter livePushUrl: 推流地址
    //: private func live_startPush(livePushUrl: String) {
    private func neighbor(livePushUrl: String) {
        //: if SenseTime_Use {
        if kLet_intervalName {
            //: } else {
        } else {
            //: let beautyManger = livePusher.getBeautyManager()
            let beautyManger = livePusher.getBeautyManager()
            //: beautyManger?.setBeautyStyle(.nature)
            beautyManger?.setBeautyStyle(.nature)
            //: beautyManger?.setBeautyLevel(6)
            beautyManger?.setBeautyLevel(6)
        }

        //: livePusher.delegate = self
        livePusher.delegate = self
        //: livePusher.setMute(self.config.isMute)
        livePusher.setMute(self.config.isMute)
        //: let result = livePusher.start(livePushUrl)
        let result = livePusher.start(livePushUrl)
        //: onEnterRoom(Int(result))
        actionButton(Int(result))
    }

    /// 销毁tx直播
    //: private func destoryTXLiveView() {
    private func imageKey() {
        //: if SenseTime_Use {
        if kLet_intervalName {
            //: self.localPreviewView?.stopPreView()
            self.localPreviewView?.straddle()
            //: } else {
        } else {
            //: self.livePusher.stopPreview()
            self.livePusher.stopPreview()
        }

        //: self.localPreviewView?.removeFromSuperview()
        self.localPreviewView?.removeFromSuperview()
        //: self.localPreviewView = nil
        self.localPreviewView = nil

        //: self.livePusher.stop()
        self.livePusher.stop()
    }

    /// 进入直播间，调用接口
    //: func onEnterRoom(_ result: Int) {
    func actionButton(_ result: Int) {
        //: guard result >= 0 else {
        guard result >= 0 else {
            //: self.func__showStatusBarErrorMsg(showMsg: "Opening failed".localized)
            self.detailDownArray(showMsg: (String(kStr_placeTitle)).localized)
            //: self.live_releaseAllResource()
            self.outAssets()
            //: return
            return
        }

        // 加入房间成功，调用开播接口
        //: TalkingLiveManager.req_liveStart { succeed, result, errorModel in
        VideoPushListener.mainCurrent { succeed, result, _ in
            //: guard succeed else {
            guard succeed else {
                //: self.live_releaseAllResource()
                self.outAssets()
                //: return
                return
            }
            //: if let model = TalkingLiveRoomModel.deserialize(from: result as? Dictionary) {
            if let model = SharedModel.deserialize(from: result as? Dictionary) {
                //: self.liveRoomModel = model
                self.liveRoomModel = model
            }
            // 加入弹幕
            //: TalkingDanmuManager.joinLiveRoomDanmu(groupId: self.liveRoomModel.chatGroupId, announcementMsg: self.liveRoomModel.notification)
            FlipDanmuManager.lay(groupId: self.liveRoomModel.chatGroupId, announcementMsg: self.liveRoomModel.notification)
            // 开播成功
            //: self.isLive = true
            self.isLive = true
            //: self.liveMiniView.refreshMiniView()
            self.liveMiniView.work()
            //: self.liveRoomVC.refreshLiveRoomView()
            self.liveRoomVC.executeView()
            //: TalkingSocketManager.shared.startLivePing()
            ToSocketManager.shared.revolutionaryCalendarMonthRequest()
            //: self.addNotifications()
            self.sum()
            // 销毁上传busy状态定时器
            //: (TalkingApplication.shared as! TalkingApplication).destroyTimer()
            (LayerKingfisherCompatible.shared as! LayerKingfisherCompatible).imageAdd()
        }
    }
}

// MARK: - TXLivePushListener

//: extension TalkingLiveManager: TXLivePushListener {
extension VideoPushListener: TXLivePushListener {
    //: func onPushEvent(_ evtID: Int32, withParam param: [AnyHashable: Any]!) {
    func onPushEvent(_ evtID: Int32, withParam _: [AnyHashable: Any]!) {
        //: MiniLoadThen.appLine(msg: "LIVE 状态码：\(evtID).")
        MiniLoadThen.appLine(msg: (kStr_mediaName.replacingOccurrences(of: "app", with: "E") + " \u{72b6}\u{6001}码\u{ff1a}") + "\(evtID).")
        //: if evtID == PUSH_WARNING_NET_BUSY.rawValue {
        if evtID == PUSH_WARNING_NET_BUSY.rawValue {
            //: self.func__showStatusBarErrorMsg(showMsg: "Network busy!".localized)
            self.detailDownArray(showMsg: (String(kStr_fileValue.suffix(5)) + String(kStr_arrayData.suffix(8))).localized)

            //: } else if evtID == PUSH_ERR_OPEN_CAMERA_FAIL.rawValue ||
        } else if evtID == PUSH_ERR_OPEN_CAMERA_FAIL.rawValue ||
            //: evtID == PUSH_ERR_OPEN_MIC_FAIL.rawValue ||
            evtID == PUSH_ERR_OPEN_MIC_FAIL.rawValue ||
            //: evtID == PUSH_ERR_VIDEO_ENCODE_FAIL.rawValue ||
            evtID == PUSH_ERR_VIDEO_ENCODE_FAIL.rawValue ||
            //: evtID == PUSH_ERR_AUDIO_ENCODE_FAIL.rawValue ||
            evtID == PUSH_ERR_AUDIO_ENCODE_FAIL.rawValue ||
            //: evtID == PUSH_ERR_UNSUPPORTED_RESOLUTION.rawValue ||
            evtID == PUSH_ERR_UNSUPPORTED_RESOLUTION.rawValue ||
            //: evtID == PUSH_ERR_UNSUPPORTED_SAMPLERATE.rawValue ||
            evtID == PUSH_ERR_UNSUPPORTED_SAMPLERATE.rawValue ||
            //: evtID == PUSH_ERR_NET_DISCONNECT.rawValue ||
            evtID == PUSH_ERR_NET_DISCONNECT.rawValue ||
            //: evtID == PUSH_ERR_AUDIO_SYSTEM_NOT_WORK.rawValue ||
            evtID == PUSH_ERR_AUDIO_SYSTEM_NOT_WORK.rawValue ||
            //: evtID == PUSH_ERR_INVALID_ADDRESS.rawValue ||
            evtID == PUSH_ERR_INVALID_ADDRESS.rawValue ||
            //: evtID == PUSH_ERR_CONNECT_SERVER_FAILED.rawValue ||
            evtID == PUSH_ERR_CONNECT_SERVER_FAILED.rawValue ||
            //: evtID == PUSH_ERR_NETWORK_UNAVAIABLE.rawValue ||
            evtID == PUSH_ERR_NETWORK_UNAVAIABLE.rawValue ||
            //: evtID == PUSH_ERR_SERVER_REFUSED.rawValue {
            evtID == PUSH_ERR_SERVER_REFUSED.rawValue
        {
            // 主播异常下播
            //: MiniLoadThen.appLine(msg: "LIVE 异常下播，evtID:\(evtID).")
            MiniLoadThen.appLine(msg: (String(kStr_emptyText.suffix(9)) + String(kStr_dataText.prefix(7))) + "\(evtID).")
            //: self.func__showStatusBarErrorMsg(showMsg: "Live room exception".localized)
            self.detailDownArray(showMsg: (String(kStr_equalValue) + String(kStr_pathValue.suffix(6)) + "ption").localized)
            //: TalkingLiveManager.req_liveStop(type: 1)
            VideoPushListener.drawUp(type: 1)
            //: live_releaseAllResource()
            outAssets()
            // 重新开播弹窗
            //: DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 0.5) {
            DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 0.5) {
                //: let alert = TalkingLiveAlertView(frame: .zero, type: .turnOnLive)
                let alert = MakeAlertView(frame: .zero, type: .turnOnLive)
                //: alert.rightBlcok = {
                alert.rightBlcok = {
                    //: TalkingLiveManager.shared().checkLiveAuthAndTurnOn()
                    VideoPushListener.isGesture().nurseLogHandler()
                }
                //: alert.show()
                alert.clickFor()
            }
        }
    }

    //: func onNetStatus(_ param: [AnyHashable: Any]!) {}
    func onNetStatus(_: [AnyHashable: Any]!) {}

    //: func onScreenCaptureStarted() {}
    func onScreenCaptureStarted() {}

    //: func onScreenCapturePaused(_ reason: Int32) {}
    func onScreenCapturePaused(_: Int32) {}

    //: func onScreenCaptureResumed(_ reason: Int32) {}
    func onScreenCaptureResumed(_: Int32) {}

    //: func onScreenCaptureStoped(_ reason: Int32) {}
    func onScreenCaptureStoped(_: Int32) {}
}
