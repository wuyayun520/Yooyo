
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let kStr_layerName:[UInt8] = [0xe4,0xe9,0xe4,0xef,0xa3,0xde,0xea,0xdf,0xe0,0xed,0xb5,0xa4,0x9b,0xe3,0xdc,0xee,0x9b,0xe9,0xea,0xef,0x9b,0xdd,0xe0,0xe0,0xe9,0x9b,0xe4,0xe8,0xeb,0xe7,0xe0,0xe8,0xe0,0xe9,0xef,0xe0,0xdf]

fileprivate func modelSum(main num: UInt8) -> UInt8 {
    let value = Int(num) - 123
    if value < 0 {
        return UInt8(value + 256)
    } else {
        return UInt8(value)
    }
}

/*: "&type=6" :*/
fileprivate let kStr_targetEqualText:[Character] = ["&","t","y","p","e","=","6"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  ColourationViewDelegate.swift
//  AbroadTalking
//
//  Created by Charlotte on 2023/11/6.
//

//: import UIKit
import UIKit

//: import CallKit.CXCallObserver
import CallKit.CXCallObserver

//: class TalkingVideoInitivCallVC: TalkingBaseViewController {
class ColourationViewDelegate: LayerRecognizerDelegate {
    //: var chatModel: TalkingVideoChatModel?
    var chatModel: TitleGiftChatModel? // 视频通话模型
    //: private var miniView: TalkingVideoMiniView?
    private var miniView: BlockView? // 视频通话小窗口
    //: private var isFromMiniView = false
    private var isFromMiniView = false // 是否点击小窗口进入
    //: private var palyerStatus = VideoPlayerStatus.Unknown
    private var palyerStatus = ButtonPlayerStatus.Unknown // 视频播放状态
    //: var isRandomVCPush = false
    var isRandomVCPush = false // 是否随机视频匹配进来

    //: override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
    override init(nibName _: String?, bundle _: Bundle?) {
        //: super.init(nibName: nil, bundle: nil)
        super.init(nibName: nil, bundle: nil)
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: kStr_layerName.map{modelSum(main: $0)}, encoding: .utf8)!)
    }

    //: override func viewDidAppear(_ animated: Bool) {
    override func viewDidAppear(_ animated: Bool) {
        //: super.viewDidAppear(animated)
        super.viewDidAppear(animated)
        //: let nav = self.navigationController as! TalkingNavigationController
        let nav = self.navigationController as! EngineControllerDelegate
        //: nav.protectedPushVc = nil
        nav.protectedPushVc = nil
        //: UIApplication.shared.isIdleTimerDisabled = true
        UIApplication.shared.isIdleTimerDisabled = true // 设备不会进入休眠状态
    }

    //: override func viewWillAppear(_ animated: Bool) {
    override func viewWillAppear(_ animated: Bool) {
        //: super.viewWillAppear(animated)
        super.viewWillAppear(animated)
        //: if self.miniView != nil {
        if self.miniView != nil { // 移除小窗口
            //: self.miniView?.removeFromSuperview()
            self.miniView?.removeFromSuperview()
            //: self.miniView = nil
            self.miniView = nil
            //: TalkingSocketManager.shared.currTalkingVC = nil
            ToSocketManager.shared.currTalkingVC = nil
        }
    }

    //: override func viewDidLoad() {
    override func viewDidLoad() {
        //: super.viewDidLoad()
        super.viewDidLoad()
        //: self.hideNavi = true
        self.hideNavi = true
        //: self.view.backgroundColor = UIColor.RGBA(51, 51, 51, 1)
        self.view.backgroundColor = UIColor.largesse(51, 51, 51, 1)
        //: TalkingSocketManager.shared.isTalking = true
        ToSocketManager.shared.isTalking = true
        //: setupSubviews()
        female()
        //: setupSubViewsConstraint()
        viewPlayer()
        //: req_callGetUserInfo()
        pushGetTable()
        //: self.startPreview()
        self.titlePreview()
    }

    //: deinit {
    deinit {
        //: self.player?.stopPlay()
        self.player?.alongCounterval()
        //: self.player?.removeVideoWidget()
        self.player?.loadUp()
        //: self.player = nil
        self.player = nil
        //: UIApplication.shared.isIdleTimerDisabled = false
        UIApplication.shared.isIdleTimerDisabled = false
        //: NotificationCenter.default.removeObserver(self)
        NotificationCenter.default.removeObserver(self)
        //: TalkingSocketManager.shared.isTalking = false
        ToSocketManager.shared.isTalking = false
    }

    // MARK: - Lazy Load

    /// 视频通话操作按钮
    //: private lazy var interactionView: TalkingVideoInitivCallView = {
    private lazy var interactionView: CountThen = {
        //: let v = TalkingVideoInitivCallView(frame: .zero, chatModel: self.chatModel)
        let v = CountThen(frame: .zero, chatModel: self.chatModel)
        //: v.durationTime = Double(TalkingVideoInitivCallManager.shared.videoCallModel.callCountdown)
        v.durationTime = Double(LocationPathReactiveCompatible.shared.videoCallModel.callCountdown)
        //: v.delegate = self
        v.delegate = self
        //: return v
        return v
        //: }()
    }()

    // 视频通话小窗口
    //: private lazy var windowView: TalkingVideoWindowView = {
    private lazy var windowView: DoRecognizerDelegate = {
        //: let v = TalkingVideoWindowView()
        let v = DoRecognizerDelegate()
        //: v.frame = CGRect(x: ScreenWidth-15-actualWidth(w: 125), y: StatusBarHeight+actualHeight(h: 25)+26+35, width: actualWidth(w: 125), height: actualHeight(h: 170))
        v.frame = CGRect(x: kLet_halfData - 15 - originalScene(w: 125), y: kLet_postPartyValue + mediaBlock(h: 25) + 26 + 35, width: originalScene(w: 125), height: mediaBlock(h: 170))
        //: v.block = { [weak self] in
        v.block = { [weak self] in
            //: guard let self = self else { return }
            guard let self = self else { return }
            //: self.changeRenderView()
            self.positive()
        }
        //: return v
        return v
        //: }()
    }()

    //: private lazy var videoManager: TalkingVideoInitivCallTool = {
    private lazy var videoManager: ShowTool = {
        //: let m = TalkingVideoInitivCallTool()
        let m = ShowTool()
        //: m.infoModel = self.chatModel
        m.infoModel = self.chatModel
        // 视图传递给manager
        //: m.bgVideoView = self.view
        m.bgVideoView = self.view
        //: m.bgView = self.interactionView
        m.bgView = self.interactionView
        //: m.windowVideoView = self.windowView.renderView
        m.windowVideoView = self.windowView.renderView
        //: return m
        return m
        //: }()
    }()

    // 懒加载初始化
    //: private lazy var player: TalkingVideoPlayerManager? = {
    private lazy var player: TalkingSearchedPlayListener? = {
        //: let  player = TalkingVideoPlayerManager.init()
        let player = TalkingSearchedPlayListener()
        //: player.player.setMute(false)
        player.player.setMute(false)
        //: return player
        return player
        //: }()
    }()
}

// MARK: - Request && 刷新UI

//: extension TalkingVideoInitivCallVC {
extension ColourationViewDelegate {
    /// 初始化信息
    //: private func req_callGetUserInfo() {
    private func pushGetTable() {
        //: self.chatModel = TalkingVideoChatModel.init()
        self.chatModel = TitleGiftChatModel()
        //: self.chatModel?.isCaller = true
        self.chatModel?.isCaller = true
        //: self.chatModel?.videoStage = .Calling
        self.chatModel?.videoStage = .Calling
        //: self.chatModel?.renderPostion = .SelfOnWindow
        self.chatModel?.renderPostion = .SelfOnWindow
        //: self.chatModel?.isTalkingNow = true
        self.chatModel?.isTalkingNow = true

        //: self.player?.delegate = self
        self.player?.delegate = self
        //: self.player?.playerWithUrlAndVideoView(url: TalkingVideoInitivCallManager.shared.videoCallModel.callVideoUrl, view: self.interactionView)
        self.player?.cardView(url: LocationPathReactiveCompatible.shared.videoCallModel.callVideoUrl, view: self.interactionView)
        //: self.videoManager.startPreview()
        self.videoManager.clickFrom()
    }
}

// MARK: - Event

//: extension TalkingVideoInitivCallVC {
extension ColourationViewDelegate {
    /// 预览视频画面
    //: private func startPreview() {
    private func titlePreview() {
        //: self.videoManager.startPreview()
        self.videoManager.clickFrom()
    }

    // 将当前视图从栈中移除
    //: private func popCurrentViewController(animated: Bool = true) {
    private func outsideCancel(animated: Bool = true) {
        //: self.navigationController?.popViewController(animated: animated)
        self.navigationController?.popViewController(animated: animated)
//        if self.navigationController?.topViewController == self {
//            self.navigationController?.popViewController(animated: animated)
//        } else {
//            if var vcArr = self.navigationController?.viewControllers {
//                if let index = vcArr.firstIndex(of: self) {
//                    vcArr.remove(at: index)
//                    self.navigationController?.setViewControllers(vcArr, animated: false)
//                }
//            }
//        }
    }

    /// 视频通话双方窗口转换
    //: private func changeRenderView() {
    private func positive() {
        //: if self.chatModel?.renderPostion == .selfOnBg {
        if self.chatModel?.renderPostion == .selfOnBg {
            //: self.chatModel?.renderPostion = .SelfOnWindow
            self.chatModel?.renderPostion = .SelfOnWindow
            //: self.player?.player.setupVideoWidget(self.interactionView, insert: 0)
            self.player?.player.setupVideoWidget(self.interactionView, insert: 0)
            //: } else if self.chatModel?.renderPostion == .SelfOnWindow {
        } else if self.chatModel?.renderPostion == .SelfOnWindow {
            //: self.chatModel?.renderPostion = .selfOnBg
            self.chatModel?.renderPostion = .selfOnBg
            //: self.player?.player.setupVideoWidget(self.windowView.renderView, insert: 0)
            self.player?.player.setupVideoWidget(self.windowView.renderView, insert: 0)
        }

        //: self.videoManager.changeRenderView()
        self.videoManager.portion()
    }
}

// MARK: - PlayerDelegete

//: extension TalkingVideoInitivCallVC: TalkingVideoPlayerDelegate {
extension ColourationViewDelegate: LoadPlayerDelegate {
    //: func func__playerStatus(player: TalkingVideoPlayerManager, status: VideoPlayerStatus) {
    func statusMessage(player _: TalkingSearchedPlayListener, status: ButtonPlayerStatus) {
        //: palyerStatus = status
        palyerStatus = status
        //: if status == .Failed {
        if status == .Failed {
            //: uploadRecord.uploadRecordEvent(eventID: videoPlayFailure)
            kLet_dismissValue.digitizerInsideStatus(eventID: kLet_attributeText)
        }
    }

    //: func func__playerDuration(player: TalkingVideoPlayerManager, duration: Int, currentTime: Int) {
    func publicTransport(player _: TalkingSearchedPlayListener, duration _: Int, currentTime _: Int) {}

    //: func func__playerProgress(player: TalkingVideoPlayerManager, progress: CGFloat) {
    func showWrite(player _: TalkingSearchedPlayListener, progress _: CGFloat) {}
}

// MARK: - EqualObjectProtocol【通话按钮操作事件】

//: extension TalkingVideoInitivCallVC: Talking1v1VideoInteractionViewDelegate {
extension ColourationViewDelegate: EqualObjectProtocol {
    //: func interactionView_reportSucceed() {
    func quantityeraction() {}

    /// 接听视频通话
    //: func interactionView_shouldAcceptCall() {
    func totalerchangeTo() {}

    /// 拨打方结束通话
    //: func interactionView_shouldEndCall() {
    func addBy() {
        //: if self.miniView != nil {
        if self.miniView != nil { // 移除小窗口
            //: self.miniView?.removeFromSuperview()
            self.miniView?.removeFromSuperview()
            //: self.miniView = nil
            self.miniView = nil
            //: TalkingSocketManager.shared.currTalkingVC = nil
            ToSocketManager.shared.currTalkingVC = nil
        }
        //: let duration = TalkingVideoInitivCallManager.shared.videoCallModel.callCountdown - Int(interactionView.durationTime)
        let duration = LocationPathReactiveCompatible.shared.videoCallModel.callCountdown - Int(interactionView.durationTime)
        //: let uid = interactionView.durationTime <= 0 ? "\(TalkingVideoInitivCallManager.shared.videoCallModel.uid)" : LocationThen.share.loginUserMode.userID
        let uid = interactionView.durationTime <= 0 ? "\(LocationPathReactiveCompatible.shared.videoCallModel.uid)" : LocationThen.share.loginUserMode.userID
        //: TalkingVideoInitivCallManager.shared.req_userOperation(type: 2, duration: duration, stopUid: uid) { succeed, result, errorModel in
        LocationPathReactiveCompatible.shared.timeByCompletion(type: 2, duration: duration, stopUid: uid) { _, _, _ in
        }
        /// 视频失败上报
        //: if palyerStatus != .Finished && palyerStatus != .Playing {
        if palyerStatus != .Finished && palyerStatus != .Playing {
            //: uploadRecord.uploadRecordEvent(eventID: videoPlayFailure)
            kLet_dismissValue.digitizerInsideStatus(eventID: kLet_attributeText)
        }
        //: popCurrentViewController()
        outsideCancel()

        //: if LocationThen.share.appUserConfigMode.popupCallEndEvent == 1 {
        if LocationThen.share.appUserConfigMode.popupCallEndEvent == 1 {
            //: EffectPushManager.share.func__pushToHalfWebVC(webViewType: .RechargeToVideoInitivHalfPage)
            EffectPushManager.share.markColor(webViewType: .RechargeToVideoInitivHalfPage)
            //: } else if LocationThen.share.appUserConfigMode.popupCallEndEvent == 2 {
        } else if LocationThen.share.appUserConfigMode.popupCallEndEvent == 2 {
            //: EffectPushManager.share.func__pushToSubscribeAlert(appendParams: "&type=6")
            EffectPushManager.share.toShould(appendParams: (String(kStr_targetEqualText)))
        }
        //: DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 1.0) {
        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 1.0) {
            //: if self.currentViewController()?.isKind(of: TalkingWebViewController.self) == true {
            if self.giftFew()?.isKind(of: ClientReactiveCompatible.self) == true {
                //: let vc = self.currentViewController() as! TalkingWebViewController
                let vc = self.giftFew() as! ClientReactiveCompatible
                //: vc.isVideoCallRechargeHalfPage = true
                vc.isVideoCallRechargeHalfPage = true
                //: if !self.isRandomVCPush {
                if !self.isRandomVCPush {
                    /// 主动拨打视频弹窗，充值成功才切换到match
                    //: vc.isRechargeOrSubscribeChangeMatch = true
                    vc.isRechargeOrSubscribeChangeMatch = true
                }
            }
        }
    }

    /// 旋转摄像头
    //: func interactionView_shouldChangeCamera(isFront: Bool) {
    func valuePush(isFront: Bool) {
        //: self.videoManager.useFrontCamera(isFront)
        self.videoManager.textCamera(isFront)
    }

    /// 开启/关闭摄像头
    //: func interactionView_shouldForbiddenCamera(forbidden: Bool) {
    func contactTimePicture(forbidden: Bool) {
        //: self.videoManager.useCamera(!forbidden)
        self.videoManager.atCamera(!forbidden)
    }

    /// 展示视频通话小窗口
    //: func interactionView_shouldDisplayMiniWindow() {
    func atWindow() {
        //: TalkingSocketManager.shared.currTalkingVC = self
        ToSocketManager.shared.currTalkingVC = self
        //: self.miniView = TalkingVideoMiniView.buildVideoMiniView()
        self.miniView = BlockView.sizeIcon()
        //: self.player?.player.setupVideoWidget(self.miniView?.renderView, insert: 0)
        self.player?.player.setupVideoWidget(self.miniView?.renderView, insert: 0)
        //: self.videoManager.smallRenderView = self.miniView?.renderView
        self.videoManager.smallRenderView = self.miniView?.renderView
        //: self.videoManager.enterSmallRenderMode()
        self.videoManager.lifeStyle()
        //: self.miniView?.tapGestureBlock = { [weak self] in
        self.miniView?.tapGestureBlock = { [weak self] in // 还原回通话界面
            //: guard let self = self else { return }
            guard let self = self else { return }
            //: self.videoManager.exitSmallRenderMode()
            self.videoManager.bagMode()
            //: if self.chatModel?.renderPostion == .selfOnBg {
            if self.chatModel?.renderPostion == .selfOnBg {
                //: self.player?.player.setupVideoWidget(self.windowView.renderView, insert: 0)
                self.player?.player.setupVideoWidget(self.windowView.renderView, insert: 0)
                //: } else if self.chatModel?.renderPostion == .SelfOnWindow {
            } else if self.chatModel?.renderPostion == .SelfOnWindow {
                //: self.player?.player.setupVideoWidget(self.interactionView, insert: 0)
                self.player?.player.setupVideoWidget(self.interactionView, insert: 0)
            }
            //: self.videoManager.changeRenderView()
            self.videoManager.portion()
            //: self.isFromMiniView = true
            self.isFromMiniView = true
            //: self.currentViewController()?.navigationController?.pushViewController(self, animated: true)
            self.giftFew()?.navigationController?.pushViewController(self, animated: true)
        }
        //: popCurrentViewController()
        outsideCancel()
    }
}

// MARK: - Layout

//: extension TalkingVideoInitivCallVC {
extension ColourationViewDelegate {
    /// 添加视图
    //: private func setupSubviews() {
    private func female() {
        //: self.view.layer.masksToBounds = true
        self.view.layer.masksToBounds = true
        //: self.view.addSubview(interactionView)
        self.view.addSubview(interactionView)
        //: self.interactionView.addWindowView(view: self.windowView)
        self.interactionView.statuteText(view: self.windowView)
    }

    /// 添加约束
    //: private func setupSubViewsConstraint() {
    private func viewPlayer() {
        //: interactionView.snp.makeConstraints { make in
        interactionView.snp.makeConstraints { make in
            //: make.edges.equalToSuperview()
            make.edges.equalToSuperview()
        }
    }
}
