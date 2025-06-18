
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let kStr_infoTitle:[UInt8] = [0xa3,0xa4,0xa3,0xbe,0xe2,0xa9,0xa5,0xae,0xaf,0xb8,0xf0,0xe3,0xea,0xa2,0xab,0xb9,0xea,0xa4,0xa5,0xbe,0xea,0xa8,0xaf,0xaf,0xa4,0xea,0xa3,0xa7,0xba,0xa6,0xaf,0xa7,0xaf,0xa4,0xbe,0xaf,0xae]

private func languageView(corner num: UInt8) -> UInt8 {
    return num ^ 202
}

/*: "icon_video_bd" :*/
fileprivate let kStr_equalName:String = "icinviten"
fileprivate let kStr_indexTableValue:String = "add heighto_bd"

/*: "btn_video_drop_nor" :*/
fileprivate let kStr_maleName:String = "lab indicator of size cellbtn_"
fileprivate let kStr_selectedText:String = "o_drrange model jump content view"
fileprivate let kStr_buttonText:String = "op_nortransform cell location list"

/*: "get json error" :*/
fileprivate let kStr_rangeText:String = "to equal self make thereget j"
fileprivate let kStr_popData:[Character] = ["r","o","r"]

/*: s" :*/
fileprivate let kStr_fullName:String = "view"

/*: "icon_videocall_topView" :*/
fileprivate let kStr_toTitle:[Character] = ["i","c","o","n","_","v","i","d","e","o","c","a","l","l","_","t","o","p"]
fileprivate let kStr_beData:[Character] = ["V","i","e","w"]

/*: "Video Call" :*/
fileprivate let kStr_fromValue:[Character] = ["V","i","d","e","o"]
fileprivate let kStr_listValue:[Character] = [" ","C","a","l","l"]

/*: "icon_videocall_initerv_topView" :*/
fileprivate let kStr_textData:[Character] = ["i","c","o","n","_","v","i","d","e","o","c","a","l","l","_","i","n"]
fileprivate let kStr_giftLeadingName:[Character] = ["i","t","e","r","v"]
fileprivate let kStr_indexText:[Character] = ["_","t","o","p","V","i","e","w"]

/*: "Free" :*/
fileprivate let kStr_effectData:[Character] = ["F","r","e","e"]

/*: "You've been barred from receiving calls" :*/
fileprivate let kStr_giftContent:[UInt8] = [0x10,0x26,0x3c,0x6e,0x3f,0x2c,0x69,0x2b,0x2c,0x2c,0x27,0x69,0x2b,0x28,0x3b,0x3b,0x2c,0x2d,0x69,0x2f,0x3b,0x26,0x24,0x69,0x3b,0x2c,0x2a,0x2c,0x20,0x3f,0x20,0x27,0x2e,0x69,0x2a,0x28,0x25,0x25,0x3a]

private func actionSection(view num: UInt8) -> UInt8 {
    return num ^ 73
}

/*: "&type=6" :*/
fileprivate let kStr_maxValue:[Character] = ["&","t"]
fileprivate let kStr_colorTitleContent:[Character] = ["y","p","e","=","6"]

/*: "#864EFF" :*/
fileprivate let kStr_name:[Character] = ["#","8","6","4","E","F","F"]

/*: "#F79AFF" :*/
fileprivate let kStr_afterDirectionTitle:String = "#F79AFFtrue right center path"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  ClientView.swift
//  AbroadTalking
//
//  Created by Charlotte on 2023/11/6.
//

//: import UIKit
import UIKit

//: class TalkingVideoCallPopUpView: UIView {
class ClientView: UIView {
    //: var popView: TalkingPopView?
    var popView: BackgroundThen?
    //: private var countdownTimer: Timer?
    private var countdownTimer: Timer?

    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: self.setupSubviews()
        self.setupPlaceSubviews()
        //: self.setupSubViewsConstraint()
        self.setupInput()
        //: self.bindInteraction()
        self.televisionTo()
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: kStr_infoTitle.map{languageView(corner: $0)}, encoding: .utf8)!)
    }

    //: deinit {
    deinit {
        //: player?.stopPlay()
        player?.alongCounterval()
        //: player?.removeVideoWidget()
        player?.loadUp()
        //: player = nil
        player = nil
        //: NotificationCenter.default.removeObserver(self)
        NotificationCenter.default.removeObserver(self)
    }

    // MARK: - Lazy Load

    //: private lazy var contentView: UIView = {
    private lazy var contentView: UIView = {
        //: let view = UIView.init()
        let view = UIView()
        //: view.isUserInteractionEnabled = true
        view.isUserInteractionEnabled = true
        //: return view
        return view
        //: }()
    }()

    //: private lazy var playerView: UIImageView = {
    private lazy var playerView: UIImageView = {
        //: let view = UIImageView.init()
        let view = UIImageView()
        //: view.contentMode = .scaleAspectFill
        view.contentMode = .scaleAspectFill
        //: view.isUserInteractionEnabled = true
        view.isUserInteractionEnabled = true
        //: view.layer.cornerRadius = 8
        view.layer.cornerRadius = 8
        //: view.layer.masksToBounds = true
        view.layer.masksToBounds = true
        //: return view
        return view
        //: }()
    }()

    //: private lazy var topIcon: UIImageView = {
    private lazy var topIcon: UIImageView = {
        //: let iamg = UIImageView.init()
        let iamg = UIImageView()
        //: iamg.contentMode = .scaleAspectFill
        iamg.contentMode = .scaleAspectFill
        //: return iamg
        return iamg
        //: }()
    }()

    //: private lazy var topBtn: TalkingButton = {
    private lazy var topBtn: OverdoTalkingButton = {
        //: let btn = TalkingButton.init(type: .custom)
        let btn = OverdoTalkingButton(type: .custom)
        //: btn.titleLabel?.font = UIFont.pingfangFont(type: .Medium, fontSize: 17)
        btn.titleLabel?.font = UIFont.groupSize(type: .Medium, fontSize: 17)
        //: btn.setTitleColor(.white, for: .normal)
        btn.setTitleColor(.white, for: .normal)
        //: btn.setImage(UIImage.bundleBy(name: "icon_video_bd"), for: .normal)
        btn.setImage(UIImage.bundleBy(name: (kStr_equalName.replacingOccurrences(of: "invite", with: "o") + "_vide" + String(kStr_indexTableValue.suffix(4)))), for: .normal)
        //: btn.spaceBetweenTitleAndImage = 4
        btn.spaceBetweenTitleAndImage = 4
        //: btn.imageView?.contentMode = .scaleAspectFill
        btn.imageView?.contentMode = .scaleAspectFill
        //: btn.isUserInteractionEnabled = false
        btn.isUserInteractionEnabled = false
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var finishBtn: UIButton = {
    private lazy var finishBtn: UIButton = {
        //: let btn = UIButton.init(type: .custom)
        let btn = UIButton(type: .custom)
        //: btn.backgroundColor = .clear
        btn.backgroundColor = .clear
        //: btn.addTarget(self, action: #selector(finishBtnClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(development), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var closeBtn: UIButton = {
    private lazy var closeBtn: UIButton = {
        //: let btn = UIButton.init(type: .custom)
        let btn = UIButton(type: .custom)
        //: btn.setImage(UIImage.bundleBy(name: "btn_video_drop_nor"), for: .normal)
        btn.setImage(UIImage.bundleBy(name: (String(kStr_maleName.suffix(4)) + "vide" + String(kStr_selectedText.prefix(4)) + String(kStr_buttonText.prefix(6)))), for: .normal)
        //: btn.addTarget(self, action: #selector(closeBtnClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(onTouch), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var countDownLb: UILabel = {
    private lazy var countDownLb: UILabel = {
        //: let lb = UILabel.init()
        let lb = UILabel()
        //: lb.textColor = .white
        lb.textColor = .white
        //: lb.font = UIFont.dorsum(fontSize: 10)
        lb.font = UIFont.dorsum(fontSize: 10)
        //: lb.isHidden = true
        lb.isHidden = true
        //: return lb
        return lb
        //: }()
    }()

    // 懒加载初始化
    //: private lazy var player: TalkingVideoPlayerManager? = {
    private lazy var player: TalkingSearchedPlayListener? = {
        //: let  player = TalkingVideoPlayerManager.init()
        let player = TalkingSearchedPlayListener()
        //: player.setMute(bEnable: false)
        player.eraseEnable(bEnable: false)
        //: return player
        return player
        //: }()
    }()

    //: private lazy var svgaPlayer: SVGAPlayer = {
    private lazy var svgaPlayer: SVGAPlayer = {
        //: let player = SVGAPlayer.init()
        let player = SVGAPlayer()
        //: player.loops = 0
        player.loops = 0
        //: player.clearsAfterStop = false
        player.clearsAfterStop = false
        //: player.isUserInteractionEnabled = false
        player.isUserInteractionEnabled = false
        //: player.contentMode = .scaleAspectFill
        player.contentMode = .scaleAspectFill

        //: let url = SVGAEffectTool.default.getZipEffectPath(type: .Videocall_initiver)
        let url = LoadGrappleEffectTool.default.sunnahType(type: .Videocall_initiver)
        //: do {
        do {
            //: let data = try Data(contentsOf: url)
            let data = try Data(contentsOf: url)
            //: let parser = SVGAParser.init()
            let parser = SVGAParser()
            //: parser.parse(with: data, cacheKey: "") { [weak self] videoItem in
            parser.parse(with: data, cacheKey: "") { [weak self] videoItem in
                //: guard let self = self else {return}
                guard let self = self else { return }
                //: player.videoItem = videoItem
                player.videoItem = videoItem
                //: player.startAnimation()
                player.startAnimation()
            }
            //: } catch {
        } catch {
            //: printLog(message: "get json error")
            pathLine(message: (String(kStr_rangeText.suffix(5)) + "son er" + String(kStr_popData)))
        }
        //: return player
        return player
        //: }()
    }()
}

// MARK: - Tool

//: extension TalkingVideoCallPopUpView {
extension ClientView {
    /// 获取权限
    //: private func getServercePermission() {
    private func overLab() {
        // 是否开启摄像头
        //: TalkingPermissionTool.func__openCaptureDeviceServiceWithBlock(false) { isOpen in
        PerspectiveThen.leadershipMore(false) { isOpen in
            //: guard isOpen == true else {
            guard isOpen == true else {
                //: return
                return
            }
            // 麦克风权限
            //: TalkingPermissionTool.func__openRecordServiceWithBlock(false) { [weak self] isOpen in
            PerspectiveThen.schlep(false) { [weak self] isOpen in
                //: guard let self = self else {
                guard let self = self else {
                    //: return
                    return
                }
                //: guard isOpen == true else {
                guard isOpen == true else {
                    //: return
                    return
                }
                //: self.countDownLb.isHidden = false
                self.countDownLb.isHidden = false
                //: self.topBtn.snp.remakeConstraints { make in
                self.topBtn.snp.remakeConstraints { make in
                    //: make.centerX.equalToSuperview()
                    make.centerX.equalToSuperview()
                    //: make.centerY.equalToSuperview().offset(-10)
                    make.centerY.equalToSuperview().offset(-10)
                    //: make.height.equalTo(18)
                    make.height.equalTo(18)
                }
                //: self.countDownLb.snp.remakeConstraints { make in
                self.countDownLb.snp.remakeConstraints { make in
                    //: make.top.equalTo(self.topBtn.snp.bottom).offset(7)
                    make.top.equalTo(self.topBtn.snp.bottom).offset(7)
                    //: make.centerX.equalToSuperview()
                    make.centerX.equalToSuperview()
                    //: make.height.equalTo(10)
                    make.height.equalTo(10)
                }
                // 5s倒计时主动接通
                //: var time = TalkingVideoInitivCallManager.shared.videoCallModel.winCountdown
                var time = LocationPathReactiveCompatible.shared.videoCallModel.winCountdown
                //: self.countdownTimer = Timer.scheduledTimer(withTimeInterval: 1.0, block: { [weak self] timer in
                self.countdownTimer = Timer.scheduledTimer(withTimeInterval: 1.0, block: { [weak self] _ in
                    //: guard let self = self else { return }
                    guard let self = self else { return }
                    //: guard time > 0 else {
                    guard time > 0 else { // 结束倒计时
                        //: self.destroyTimer()
                        self.valueLoad()
                        //: self.dismiss()
                        self.towardDeleteDismiss()
                        //: switch LocationThen.share.appUserConfigMode.popupCallAcceptEvent {
                        switch LocationThen.share.appUserConfigMode.popupCallAcceptEvent {
                        //: case 1:
                        case 1:
                            //: pushWebRechargeView()
                            analogDigitalConverterGift()
                        //: case 2:
                        case 2:
                            //: pushWebSubscriptionView()
                            pushSub()
                        //: case 3:
                        case 3:
                            //: self.putThrough()
                            self.infoAcross()
                        //: default:
                        default:
                            //: break
                            break
                        }
                        //: return
                        return
                    }
                    //: self.countDownLb.text = "\(time)s"
                    self.countDownLb.text = "\(time)s"
                    //: time -= 1
                    time -= 1
                    //: }, repeats: true)
                }, repeats: true)
                //: self.countdownTimer?.fire()
                self.countdownTimer?.fire()
                //: RunLoop.current.add(self.countdownTimer!, forMode: .common)
                RunLoop.current.add(self.countdownTimer!, forMode: .common)
            }
        }
        //: if self.countDownLb.isHidden {
        if self.countDownLb.isHidden {
            //: self.topBtn.snp.remakeConstraints { make in
            self.topBtn.snp.remakeConstraints { make in
                //: make.center.equalToSuperview()
                make.center.equalToSuperview()
                //: make.height.equalTo(18)
                make.height.equalTo(18)
            }
        }
    }

    //: private func seTypeView() {
    private func forefrontObject() {
        //: switch LocationThen.share.appUserConfigMode.popupCallAcceptEvent {
        switch LocationThen.share.appUserConfigMode.popupCallAcceptEvent {
        //: case 1, 2:
        case 1, 2:
            //: topIcon.image = UIImage.bundleBy(name: "icon_videocall_topView")
            topIcon.image = UIImage.bundleBy(name: (String(kStr_toTitle) + String(kStr_beData)))
            //: topBtn.setTitle("Video Call".localized, for: .normal)
            topBtn.setTitle((String(kStr_fromValue) + String(kStr_listValue)).localized, for: .normal)
        //: case 3:
        case 3:
            //: topIcon.image = UIImage.bundleBy(name: "icon_videocall_initerv_topView")
            topIcon.image = UIImage.bundleBy(name: (String(kStr_textData) + String(kStr_giftLeadingName) + String(kStr_indexText)))
            //: topBtn.setTitle("Free".localized, for: .normal)
            topBtn.setTitle((String(kStr_effectData)).localized, for: .normal)
        //: default:
        default:
            //: break
            break
        }
    }

    /// 播放视频或封面
    //: private func beginPlayer() {
    private func withMain() {
        //: if TalkingVideoInitivCallManager.shared.videoCallModel.winUrlType == 2 {
        if LocationPathReactiveCompatible.shared.videoCallModel.winUrlType == 2 {
            //: self.player?.playerWithUrlAndVideoView(url: TalkingVideoInitivCallManager.shared.videoCallModel.winVideoUrl, view: playerView)
            self.player?.cardView(url: LocationPathReactiveCompatible.shared.videoCallModel.winVideoUrl, view: playerView)
            //: } else {
        } else {
            //: self.playerView.setUrlImage(urlStr: TalkingVideoInitivCallManager.shared.videoCallModel.winVideoUrl)
            self.playerView.timeFinish(urlStr: LocationPathReactiveCompatible.shared.videoCallModel.winVideoUrl)
        }
    }

    /// 销毁倒计时
    //: private func destroyTimer() {
    private func valueLoad() {
        //: if countdownTimer != nil {
        if countdownTimer != nil {
            //: countdownTimer?.invalidate()
            countdownTimer?.invalidate()
            //: countdownTimer = nil
            countdownTimer = nil
        }
    }

    /// 接通电话
    //: private func putThrough() {
    private func infoAcross() {
        //: uploadRecord.uploadRecordEvent(eventID: clickVideoAcceptButton)
        kLet_dismissValue.digitizerInsideStatus(eventID: kLet_onTitle)
        //: initVideoCallTime()
        rename()
        /// 视频通话被禁用
        //: guard TalkingVideoInitivCallManager.shared.videoCallModel.isBan == 0 else {
        guard LocationPathReactiveCompatible.shared.videoCallModel.isBan == 0 else {
            //: self.func__showStatusBarErrorMsg(showMsg: "You've been barred from receiving calls".localized)
            self.detailDownArray(showMsg: String(bytes: kStr_giftContent.map{actionSection(view: $0)}, encoding: .utf8)!.localized)
            //: return
            return
        }
        //: TalkingVideoInitivCallManager.shared.req_userOperation(type: 1) { succeed, result, errorModel in
        LocationPathReactiveCompatible.shared.timeByCompletion(type: 1) { succeed, _, _ in
            //: guard succeed == true else {
            guard succeed == true else {
                //: return
                return
            }
            //: if self.currentViewController()?.presentingViewController != nil {
            if self.giftFew()?.presentingViewController != nil {
                // 如果有present, 先dismiss
                //: self.currentViewController()?.dismiss(animated: false)
                self.giftFew()?.dismiss(animated: false)
            }
            //: DispatchQueue.main.asyncAfter(deadline: .now()+0.5) {
            DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
                //: let vc = TalkingVideoInitivCallVC()
                let vc = ColourationViewDelegate()
                //: self.currentViewController()?.navigationController?.pushViewController(vc, animated: true)
                self.giftFew()?.navigationController?.pushViewController(vc, animated: true)
            }
        }
    }

    /// 上报行为
    //: private func uploadRepord(type: Int) {
    private func every(type: Int) {
        //: TalkingVideoInitivCallManager.shared.req_userOperation(type: type) { succeed, result, errorModel in
        LocationPathReactiveCompatible.shared.timeByCompletion(type: type) { _, _, _ in
        }
    }

    /// 开启下次弹窗倒计时
    //: private func initVideoCallTime() {
    private func rename() {
        //: TalkingVideoInitivCallManager.shared.initVideoCallTimer()
        LocationPathReactiveCompatible.shared.directionFor()
    }
}

// MARK: - Event

//: extension TalkingVideoCallPopUpView {
extension ClientView {
    //: @objc private func finishBtnClick() {
    @objc private func development() {
        //: self.dismiss()
        self.towardDeleteDismiss()
        //: switch LocationThen.share.appUserConfigMode.popupCallAcceptEvent {
        switch LocationThen.share.appUserConfigMode.popupCallAcceptEvent {
        //: case 1:
        case 1:
            //: pushWebRechargeView()
            analogDigitalConverterGift()
        //: case 2:
        case 2:
            //: pushWebSubscriptionView()
            pushSub()
        //: case 3:
        case 3:
            //: TalkingPermissionTool.checkCameraAndMicrophone { [weak self] isOpen in
            PerspectiveThen.disappearEvent { [weak self] isOpen in
                //: guard let self = self else { return }
                guard let self = self else { return }
                //: guard isOpen == true else { return }
                guard isOpen == true else { return }
                //: self.putThrough()
                self.infoAcross()
            }
        //: default:
        default:
            //: break
            break
        }
    }

    /// 充值
    //: private func pushWebRechargeView() {
    private func analogDigitalConverterGift() {
        //: initVideoCallTime()
        rename()
        //: EffectPushManager.share.func__pushToHalfWebVC(webViewType: .RechargeToVideoInitivHalfPage)
        EffectPushManager.share.markColor(webViewType: .RechargeToVideoInitivHalfPage)
        //: if currentViewController()?.isKind(of: TalkingWebViewController.self) == true {
        if giftFew()?.isKind(of: ClientReactiveCompatible.self) == true {
            //: let vc = currentViewController() as! TalkingWebViewController
            let vc = giftFew() as! ClientReactiveCompatible
            //: vc.isVideoCallRechargeHalfPage = true
            vc.isVideoCallRechargeHalfPage = true
            //: vc.isRechargeOrSubscribeChangeMatch = true
            vc.isRechargeOrSubscribeChangeMatch = true
        }
    }

    /// 订阅
    //: private func pushWebSubscriptionView() {
    private func pushSub() {
        //: initVideoCallTime()
        rename()
        //: EffectPushManager.share.func__pushToSubscribeAlert(appendParams: "&type=6")
        EffectPushManager.share.toShould(appendParams: (String(kStr_maxValue) + String(kStr_colorTitleContent)))
        //: if currentViewController()?.isKind(of: TalkingWebViewController.self) == true {
        if giftFew()?.isKind(of: ClientReactiveCompatible.self) == true {
            //: let vc = currentViewController() as! TalkingWebViewController
            let vc = giftFew() as! ClientReactiveCompatible
            //: vc.isVideoCallRechargeHalfPage = true
            vc.isVideoCallRechargeHalfPage = true
            //: vc.isRechargeOrSubscribeChangeMatch = true
            vc.isRechargeOrSubscribeChangeMatch = true
        }
    }

    //: @objc private func closeBtnClick() {
    @objc private func onTouch() {
        //: uploadRecord.uploadRecordEvent(eventID: clickVideoRejectButton)
        kLet_dismissValue.digitizerInsideStatus(eventID: kLet_successValue)
        //: initVideoCallTime()
        rename()
        //: uploadRepord(type: 3)
        every(type: 3)
        //: dismiss()
        towardDeleteDismiss()
    }

    //: func show() {
    func makeIn() {
        //: popView = TalkingPopView.init(frame: UIScreen.main.bounds)
        popView = BackgroundThen(frame: UIScreen.main.bounds)
        //: popView?.initWithView(view: self)
        popView?.toViewText(view: self)
        //: popView?.showInView(view: TableMacroDefine.getWindow())
        popView?.beyondAllAdjust(view: TableMacroDefine.oeilDeBoeufView())
        //: popView?.isRemoveTapGes = true
        popView?.isRemoveTapGes = true
    }

    //: @objc func dismiss() {
    @objc func towardDeleteDismiss() {
        //: popView?.dismissView()
        popView?.placePushAside()
        //: popView = nil
        popView = nil
        //: destroyTimer()
        valueLoad()
    }
}

// MARK: - Layout

//: extension TalkingVideoCallPopUpView {
extension ClientView {
    /// 添加视图
    //: private func setupSubviews() {
    private func setupPlaceSubviews() {
        //: self.addSubview(contentView)
        self.addSubview(contentView)
        //: contentView.addSubview(playerView)
        contentView.addSubview(playerView)
        //: contentView.addSubview(topIcon)
        contentView.addSubview(topIcon)
        //: contentView.insertSubview(topIcon, aboveSubview: playerView)
        contentView.insertSubview(topIcon, aboveSubview: playerView)
        //: contentView.addSubview(closeBtn)
        contentView.addSubview(closeBtn)
        //: contentView.addSubview(svgaPlayer)
        contentView.addSubview(svgaPlayer)
        //: contentView.insertSubview(finishBtn, aboveSubview: svgaPlayer)
        contentView.insertSubview(finishBtn, aboveSubview: svgaPlayer)
        //: finishBtn.addSubview(topBtn)
        finishBtn.addSubview(topBtn)
        //: finishBtn.addSubview(countDownLb)
        finishBtn.addSubview(countDownLb)
    }

    /// 添加约束
    //: private func setupSubViewsConstraint() {
    private func setupInput() {
        //: contentView.snp.makeConstraints { make in
        contentView.snp.makeConstraints { make in
            //: make.center.equalToSuperview()
            make.center.equalToSuperview()
            //: make.size.equalTo(CGSize.init(width: actualWidth(w: 295), height: actualWidth(w: 419)))
            make.size.equalTo(CGSize(width: originalScene(w: 295), height: originalScene(w: 419)))
        }
        //: playerView.snp.makeConstraints { make in
        playerView.snp.makeConstraints { make in
            //: make.leading.top.equalTo(4)
            make.leading.top.equalTo(4)
            //: make.trailing.bottom.equalTo(-4)
            make.trailing.bottom.equalTo(-4)
        }

        //: topIcon.snp.makeConstraints { make in
        topIcon.snp.makeConstraints { make in
            //: make.leading.equalTo(-12)
            make.leading.equalTo(-12)
            //: make.top.equalTo(-23)
            make.top.equalTo(-23)
            //: make.size.equalTo(CGSize.init(width: actualWidth(w: 121), height: actualWidth(w: 52)))
            make.size.equalTo(CGSize(width: originalScene(w: 121), height: originalScene(w: 52)))
        }

        //: closeBtn.snp.makeConstraints { make in
        closeBtn.snp.makeConstraints { make in
            //: make.bottom.equalTo(-20)
            make.bottom.equalTo(-20)
            //: make.leading.equalTo(22)
            make.leading.equalTo(22)
            //: make.size.equalTo(42)
            make.size.equalTo(42)
        }

        //: svgaPlayer.snp.makeConstraints { make in
        svgaPlayer.snp.makeConstraints { make in
            //: make.leading.equalTo(closeBtn.snp.trailing).offset(1)
            make.leading.equalTo(closeBtn.snp.trailing).offset(1)
            //: make.centerY.equalTo(closeBtn)
            make.centerY.equalTo(closeBtn)
            //: make.trailing.equalTo(-5)
            make.trailing.equalTo(-5)
        }
        //: finishBtn.snp.makeConstraints { make in
        finishBtn.snp.makeConstraints { make in
            //: make.top.leading.equalTo(svgaPlayer).offset(6)
            make.top.leading.equalTo(svgaPlayer).offset(6)
            //: make.trailing.bottom.equalTo(svgaPlayer).offset(-6)
            make.trailing.bottom.equalTo(svgaPlayer).offset(-6)
        }
    }

    /// 事件绑定
    //: private func bindInteraction() {
    private func televisionTo() {
        //: addGradientLayerWithCorner(cornerRadius: 10, lineWidth: 4, colors: [UIColor.init(hex: "#864EFF")!.cgColor, UIColor.init(hex: "#F79AFF")!.cgColor])
        getCounto(cornerRadius: 10, lineWidth: 4, colors: [UIColor(hex: (String(kStr_name)))!.cgColor, UIColor(hex: (String(kStr_afterDirectionTitle.prefix(7))))!.cgColor])
        //: self.getServercePermission()
        self.overLab()
        //: self.seTypeView()
        self.forefrontObject()
        //: self.beginPlayer()
        self.withMain()
        //: NotificationCenter.default.post(name: VIDEOCALL_INITIV_NOTIFICATION, object: nil)
        NotificationCenter.default.post(name: kLet_appErrorText, object: nil)
    }

    //: private func addGradientLayerWithCorner(cornerRadius: CGFloat, lineWidth: CGFloat, colors: [CGColor]) {
    private func getCounto(cornerRadius: CGFloat, lineWidth: CGFloat, colors: [CGColor]) {
        //: self.layoutIfNeeded()
        self.layoutIfNeeded()
        //: let gradientLayer = CAGradientLayer()
        let gradientLayer = CAGradientLayer()
        //: gradientLayer.frame = contentView.bounds
        gradientLayer.frame = contentView.bounds
        //: gradientLayer.colors = colors
        gradientLayer.colors = colors
        //: gradientLayer.cornerRadius = cornerRadius
        gradientLayer.cornerRadius = cornerRadius

        //: let maskLayer = CAShapeLayer()
        let maskLayer = CAShapeLayer()
        //: maskLayer.lineWidth = lineWidth
        maskLayer.lineWidth = lineWidth
        //: maskLayer.path = UIBezierPath(roundedRect: CGRect(x: lineWidth / 2, y: lineWidth / 2, width: contentView.width - lineWidth, height: contentView.height - lineWidth), cornerRadius: cornerRadius).cgPath
        maskLayer.path = UIBezierPath(roundedRect: CGRect(x: lineWidth / 2, y: lineWidth / 2, width: contentView.width - lineWidth, height: contentView.height - lineWidth), cornerRadius: cornerRadius).cgPath
        //: maskLayer.fillColor = UIColor.clear.cgColor
        maskLayer.fillColor = UIColor.clear.cgColor
        //: maskLayer.strokeColor = UIColor.black.cgColor
        maskLayer.strokeColor = UIColor.black.cgColor

        //: gradientLayer.mask = maskLayer
        gradientLayer.mask = maskLayer
        //: contentView.layer.insertSublayer(gradientLayer, at: 0)
        contentView.layer.insertSublayer(gradientLayer, at: 0)
    }
}
