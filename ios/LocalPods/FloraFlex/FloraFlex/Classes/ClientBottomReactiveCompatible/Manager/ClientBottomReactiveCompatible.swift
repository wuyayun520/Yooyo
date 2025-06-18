
//: Declare String Begin

/*: "content" :*/
fileprivate let kStr_receiveName:String = "cocommenttecommentt"

/*: "jumpKey" :*/
fileprivate let kStr_frameName:String = "shared nojumpKe"
fileprivate let kStr_interactionTitle:[Character] = ["y"]

/*: "uploadUserHeaderPic" :*/
fileprivate let kStr_requestModelContent:[Character] = ["u","p","l","o","a","d","U","s","e","r","H","e","a","d","e"]
fileprivate let kStr_imageTitle:[Character] = ["r","P","i","c"]

/*: "truePersonAuth" :*/
fileprivate let kStr_stageFeatureValue:String = "bottomrue"
fileprivate let kStr_addTitle:[Character] = ["n","A","u","t","h"]

/*: "yyyy-MM-dd" :*/
fileprivate let kStr_labelTitle:String = "context zone border let labyyyy-"
fileprivate let kStr_borderValue:[Character] = ["M","M","-","d","d"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  ClientBottomReactiveCompatible.swift
//  AbroadTalking
//
//  Created by Charlotte on 2023/5/17.
//

//: import UIKit
import UIKit

//: enum PopupWindowType: CaseIterable {
enum DesignationCaseIterable: CaseIterable {
    //: case sign_in
    case sign_in // 签到
    //: case video_Cover
    case video_Cover // 上传视频封面提醒弹窗
    //: case startLive_Tips
    case startLive_Tips // 开播提醒弹窗
    //: case video_Call
    case video_Call // 主动拨打弹窗
    //: case face_Verification
    case face_Verification // 需要真人认证弹窗
    //: case Web_Subscribe
    case Web_Subscribe // 会员订阅弹窗
    //: case Attestation_Refuse
    case Attestation_Refuse // 真人认证，头像上传，被拒绝时提示弹窗
    //: case New_Guidance
    case New_Guidance // 主播引导弹窗（女性首次注册，未完成全部新人任务）
}

//: class TalkingPopupWindowManager: NSObject {
class ClientBottomReactiveCompatible: NSObject {
    //: var dataSource = Array<PopupWindowType>()
    var dataSource = [DesignationCaseIterable]()
    //: var alertQueue: PublishSubject<PopupWindowType> = PublishSubject<PopupWindowType>()
    var alertQueue: PublishSubject<DesignationCaseIterable> = .init()
    //: private let disposeBag = DisposeBag()
    private let disposeBag = DisposeBag()

    //: private var isShowLiveTipsView = false
    private var isShowLiveTipsView = false
    /// 通话中，结束后再显示审核拒绝提示弹窗
    //: private var isLateronRefuseView = false
    private var isLateronRefuseView = false

    //: var refuseViewData = [String: String]()
    var refuseViewData = [String: String]()

    //: static let shared = TalkingPopupWindowManager()
    static let shared = ClientBottomReactiveCompatible()
    //: private override init() {
    override private init() {
        //: super.init()
        super.init()
        //: setObserver()
        isSend()
    }

    //: override func copy() -> Any { return self }
    override func copy() -> Any { return self }
    //: override func mutableCopy() -> Any { return self }
    override func mutableCopy() -> Any { return self }
}

//: extension TalkingPopupWindowManager {
extension ClientBottomReactiveCompatible {
    //: func setObserver() {
    func isSend() {
        //: alertQueue.asObservable().subscribe(onNext: { [weak self]  type in
        alertQueue.asObservable().subscribe(onNext: { [weak self] type in
            //: guard let self = self else {return}
            guard let self = self else { return }
            //: self.dataSource.append(type)
            self.dataSource.append(type)
            //: self.showAlert()
            self.mapAppear()
            //: }).disposed(by: disposeBag)
        }).disposed(by: disposeBag)

        //: NotificationCenter.default.addObserver(self, selector: #selector(showRefuseView), name: VIDEOCALL_END_CLOSEDISCOUNTS_NOTIFICATION, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(appView), name: kLet_detailContent, object: nil)
    }

    //: func setHomePopUpWindow() {
    func toGame() {
        // 默认模式, 男性, 未订阅
        //: if LocationThen.share.loginUserMode.jumpType == 0,
        if LocationThen.share.loginUserMode.jumpType == 0,
           //: LocationThen.share.appUserConfigMode.payWinType == 2,
           LocationThen.share.appUserConfigMode.payWinType == 2,
           //: LocationThen.share.appStatus == AppSkinStatus.normal.rawValue,
           LocationThen.share.appStatus == SharedInsetTarget.normal.rawValue,
           //: LocationThen.share.loginUserMode.sex == Gender.male.rawValue,
           LocationThen.share.loginUserMode.sex == SucceedComparable.male.rawValue,
           //: LocationThen.share.loginUserMode.loungePlus == false {
           LocationThen.share.loginUserMode.loungePlus == false
        {
            //: self.alertQueue.onNext(PopupWindowType.Web_Subscribe)
            self.alertQueue.onNext(DesignationCaseIterable.Web_Subscribe)
        }

        //: if  LocationThen.share.loginUserMode.showSignInPage && LocationThen.share.loginUserMode.sex == Gender.male.rawValue && LocationThen.share.appStatus != AppSkinStatus.special.rawValue {
        if LocationThen.share.loginUserMode.showSignInPage, LocationThen.share.loginUserMode.sex == SucceedComparable.male.rawValue, LocationThen.share.appStatus != SharedInsetTarget.special.rawValue {
            //: self.alertQueue.onNext(PopupWindowType.sign_in)
            self.alertQueue.onNext(DesignationCaseIterable.sign_in)
        }

        //: if LocationThen.share.loginUserMode.isNaUser == false,
        if LocationThen.share.loginUserMode.isNaUser == false,
           //: LocationThen.share.appUserConfigMode.videoCover.count > 0,
           LocationThen.share.appUserConfigMode.videoCover.count > 0,
           //: LocationThen.share.loginUserMode.sex == Gender.female.rawValue,
           LocationThen.share.loginUserMode.sex == SucceedComparable.female.rawValue,
           //: LocationThen.share.appStatus != AppSkinStatus.special.rawValue {
           LocationThen.share.appStatus != SharedInsetTarget.special.rawValue
        {
            //: self.alertQueue.onNext(PopupWindowType.video_Cover)
            self.alertQueue.onNext(DesignationCaseIterable.video_Cover)
        }

        //: if LocationThen.share.appUserConfigMode.showNewGuidance, LocationThen.share.loginUserMode.sex == Gender.female.rawValue && LocationThen.share.appStatus != AppSkinStatus.special.rawValue {
        if LocationThen.share.appUserConfigMode.showNewGuidance, LocationThen.share.loginUserMode.sex == SucceedComparable.female.rawValue, LocationThen.share.appStatus != SharedInsetTarget.special.rawValue {
            //: self.alertQueue.onNext(PopupWindowType.New_Guidance)
            self.alertQueue.onNext(DesignationCaseIterable.New_Guidance)
        }

        //: if LocationThen.share.appUserConfigMode.headPicRejectNotice.count > 0 && LocationThen.share.loginUserMode.sex == Gender.female.rawValue && LocationThen.share.appStatus != AppSkinStatus.special.rawValue {
        if LocationThen.share.appUserConfigMode.headPicRejectNotice.count > 0, LocationThen.share.loginUserMode.sex == SucceedComparable.female.rawValue, LocationThen.share.appStatus != SharedInsetTarget.special.rawValue {
            //: refuseViewData["content"] = LocationThen.share.appUserConfigMode.headPicRejectNotice
            refuseViewData[(kStr_receiveName.replacingOccurrences(of: "comment", with: "n"))] = LocationThen.share.appUserConfigMode.headPicRejectNotice
            //: refuseViewData["jumpKey"] = "uploadUserHeaderPic"
            refuseViewData[(String(kStr_frameName.suffix(6)) + String(kStr_interactionTitle))] = (String(kStr_requestModelContent) + String(kStr_imageTitle))
            //: self.alertQueue.onNext(PopupWindowType.Attestation_Refuse)
            self.alertQueue.onNext(DesignationCaseIterable.Attestation_Refuse)
        }

        //: if LocationThen.share.appUserConfigMode.realPicRejectNotice.count > 0 && LocationThen.share.loginUserMode.sex == Gender.female.rawValue && LocationThen.share.appStatus != AppSkinStatus.special.rawValue {
        if LocationThen.share.appUserConfigMode.realPicRejectNotice.count > 0, LocationThen.share.loginUserMode.sex == SucceedComparable.female.rawValue, LocationThen.share.appStatus != SharedInsetTarget.special.rawValue {
            //: refuseViewData["content"] = LocationThen.share.appUserConfigMode.realPicRejectNotice
            refuseViewData[(kStr_receiveName.replacingOccurrences(of: "comment", with: "n"))] = LocationThen.share.appUserConfigMode.realPicRejectNotice
            //: refuseViewData["jumpKey"] = "truePersonAuth"
            refuseViewData[(String(kStr_frameName.suffix(6)) + String(kStr_interactionTitle))] = (kStr_stageFeatureValue.replacingOccurrences(of: "bottom", with: "t") + "Perso" + String(kStr_addTitle))
            //: self.alertQueue.onNext(PopupWindowType.Attestation_Refuse)
            self.alertQueue.onNext(DesignationCaseIterable.Attestation_Refuse)
        }
    }

    //: func startLivePopUpWindow() {
    func equalWindow() {
        //: self.alertQueue.onNext(PopupWindowType.startLive_Tips)
        self.alertQueue.onNext(DesignationCaseIterable.startLive_Tips)
    }

    /// 主动拨打弹窗
    //: func videoCallPopUpWindow() {
    func giftOf() {
        //: self.alertQueue.onNext(PopupWindowType.video_Call)
        self.alertQueue.onNext(DesignationCaseIterable.video_Call)
    }

    /// 需要真人认证弹窗
    //: func faceVerificationPopUpWindow() {
    func destabilisation() {
        //: self.alertQueue.onNext(PopupWindowType.face_Verification)
        self.alertQueue.onNext(DesignationCaseIterable.face_Verification)
    }

    /// 真人认证，头像上传，被拒绝时提示弹窗
    //: func attestationRefusePopUpWindow(dic: [String: Any]) {
    func blockAcrossDic(dic: [String: Any]) {
        //: refuseViewData["content"] = dic["content"] as? String
        refuseViewData[(kStr_receiveName.replacingOccurrences(of: "comment", with: "n"))] = dic[(kStr_receiveName.replacingOccurrences(of: "comment", with: "n"))] as? String
        //: refuseViewData["jumpKey"] = dic["jumpKey"] as? String
        refuseViewData[(String(kStr_frameName.suffix(6)) + String(kStr_interactionTitle))] = dic[(String(kStr_frameName.suffix(6)) + String(kStr_interactionTitle))] as? String
        //: guard TalkingSocketManager.shared.isTalking == false else {
        guard ToSocketManager.shared.isTalking == false else {
            //: isLateronRefuseView = true
            isLateronRefuseView = true
            //: return
            return
        }
        //: self.alertQueue.onNext(PopupWindowType.Attestation_Refuse)
        self.alertQueue.onNext(DesignationCaseIterable.Attestation_Refuse)
    }

    /// 通话结束后
    //: @objc private func showRefuseView() {
    @objc private func appView() {
        //: if isLateronRefuseView {
        if isLateronRefuseView {
            //: self.alertQueue.onNext(PopupWindowType.Attestation_Refuse)
            self.alertQueue.onNext(DesignationCaseIterable.Attestation_Refuse)
        }
    }

    //: func showAlert() {
    func mapAppear() {
        //: guard self.dataSource.count > 0 else { return }
        guard self.dataSource.count > 0 else { return }
        //: self.actionForTask(type: self.dataSource.first!)
        self.detailColor(type: self.dataSource.first!)
    }

    //: func actionForTask(type: PopupWindowType) {
    func detailColor(type: DesignationCaseIterable) {
        //: switch type {
        switch type {
        //: case .sign_in:
        case .sign_in:
            //: if let index = self.dataSource.firstIndex(of: .sign_in) {
            if let index = self.dataSource.firstIndex(of: .sign_in) {
                //: self.dataSource.remove(at: index)
                self.dataSource.remove(at: index)
            }
            //: EffectPushManager.share.func__pushToWebVC(webViewType: .SiginPopup)
            EffectPushManager.share.selectUp(webViewType: .SiginPopup)

        //: case .video_Cover:
        case .video_Cover:
            //: if let index = self.dataSource.firstIndex(of: .video_Cover) {
            if let index = self.dataSource.firstIndex(of: .video_Cover) {
                //: self.dataSource.remove(at: index)
                self.dataSource.remove(at: index)
            }
            //: let view = TalkingVideoCoverPopUpView.init(frame: CGRect(x: 0, y: 0, width: ScreenWidth, height: ScreenHeight))
            let view = SearchedUpView(frame: CGRect(x: 0, y: 0, width: kLet_halfData, height: kLet_noSeatName))
            //: view.show()
            view.off()

        //: case .startLive_Tips:
        case .startLive_Tips:
            //: if let index = self.dataSource.firstIndex(of: .startLive_Tips) {
            if let index = self.dataSource.firstIndex(of: .startLive_Tips) {
                //: self.dataSource.remove(at: index)
                self.dataSource.remove(at: index)
            }
            //: if isShowLiveTipsView {
            if isShowLiveTipsView {
                //: return
                return
            }
            //: let view = TalkingLiveTipsPopUpView.init(frame: CGRect(x: 0, y: 0, width: ScreenWidth, height: ScreenHeight))
            let view = ColorThen(frame: CGRect(x: 0, y: 0, width: kLet_halfData, height: kLet_noSeatName))
            //: view.show()
            view.keyTheme()
            //: isShowLiveTipsView = true
            isShowLiveTipsView = true
            //: view.endBlock = { [weak self] in
            view.endBlock = { [weak self] in
                //: guard let self = self else { return }
                guard let self = self else { return }
                //: self.isShowLiveTipsView = false
                self.isShowLiveTipsView = false
            }

        //: case.video_Call:
        case .video_Call:
            //: if let index = self.dataSource.firstIndex(of: .video_Call) {
            if let index = self.dataSource.firstIndex(of: .video_Call) {
                //: self.dataSource.remove(at: index)
                self.dataSource.remove(at: index)
            }
            //: let view = TalkingVideoCallPopUpView.init(frame: CGRect(x: 0, y: 0, width: ScreenWidth, height: ScreenHeight))
            let view = ClientView(frame: CGRect(x: 0, y: 0, width: kLet_halfData, height: kLet_noSeatName))
            //: view.show()
            view.makeIn()

        //: case.face_Verification:
        case .face_Verification:
            //: if let index = self.dataSource.firstIndex(of: .face_Verification) {
            if let index = self.dataSource.firstIndex(of: .face_Verification) {
                //: self.dataSource.remove(at: index)
                self.dataSource.remove(at: index)
            }
            //: let view = TalkingFaceVerificationPopUpView.init(frame: CGRect(x: 0, y: 0, width: ScreenWidth, height: ScreenHeight))
            let view = VoiceView(frame: CGRect(x: 0, y: 0, width: kLet_halfData, height: kLet_noSeatName))
            //: view.show()
            view.betweenClick()

        //: case .Web_Subscribe:
        case .Web_Subscribe:
            //: if let index = self.dataSource.firstIndex(of: .Web_Subscribe) {
            if let index = self.dataSource.firstIndex(of: .Web_Subscribe) {
                //: self.dataSource.remove(at: index)
                self.dataSource.remove(at: index)
            }
            //: let date = Defaults.object(forKey: TalkingMaleUnsubscribedAlertIsShow)
            let date = kLet_managerValue.object(forKey: kLet_pingValue)
            //: let today = NSDate.getTimeString(date: Date(), dateFormat: "yyyy-MM-dd")
            let today = NSDate.delayTitle(date: Date(), dateFormat: (String(kStr_labelTitle.suffix(5)) + String(kStr_borderValue)))
            //: if date == nil || (date as! String) != today {
            if date == nil || (date as! String) != today {
                //: Defaults.set(today, forKey: TalkingMaleUnsubscribedAlertIsShow)
                kLet_managerValue.set(today, forKey: kLet_pingValue)
                //: EffectPushManager.share.func__pushToSubscribeAlert()
                EffectPushManager.share.toShould()
            }

        //: case.Attestation_Refuse:
        case .Attestation_Refuse:
            //: if let index = self.dataSource.firstIndex(of: .Attestation_Refuse) {
            if let index = self.dataSource.firstIndex(of: .Attestation_Refuse) {
                //: self.dataSource.remove(at: index)
                self.dataSource.remove(at: index)
            }
            //: let view = TalkingAttestationRefusePopUpView.init(frame: CGRect(x: 0, y: 0, width: ScreenWidth, height: ScreenHeight))
            let view = VideoReactiveCompatible(frame: CGRect(x: 0, y: 0, width: kLet_halfData, height: kLet_noSeatName))
            //: view.setViewData(dit: refuseViewData)
            view.eventData(dit: refuseViewData)
            //: view.show()
            view.keyShow()

        //: case .New_Guidance:
        case .New_Guidance:
            //: if let index = self.dataSource.firstIndex(of: .New_Guidance) {
            if let index = self.dataSource.firstIndex(of: .New_Guidance) {
                //: self.dataSource.remove(at: index)
                self.dataSource.remove(at: index)
            }
            //: let view = TalkingNewGuidancePopUpView(frame: CGRect(x: 0, y: 0, width: ScreenWidth, height: ScreenHeight))
            let view = LightThen(frame: CGRect(x: 0, y: 0, width: kLet_halfData, height: kLet_noSeatName))
            //: view.show()
            view.pastWith()
        }
    }
}
