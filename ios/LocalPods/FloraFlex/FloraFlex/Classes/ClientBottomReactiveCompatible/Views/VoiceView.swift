
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let kStr_tableTitle:[UInt8] = [0x1a,0x1d,0x1a,0x7,0x5b,0x10,0x1c,0x17,0x16,0x1,0x49,0x5a,0x53,0x1b,0x12,0x0,0x53,0x1d,0x1c,0x7,0x53,0x11,0x16,0x16,0x1d,0x53,0x1a,0x1e,0x3,0x1f,0x16,0x1e,0x16,0x1d,0x7,0x16,0x17]

private func sourceRow(target num: UInt8) -> UInt8 {
    return num ^ 115
}

/*: "icon_window_verification" :*/
fileprivate let kStr_toValue:[Character] = ["i","c","o","n","_","w","i","n","d","o","w","_","v"]
fileprivate let kStr_norName:String = "user"
fileprivate let kStr_mainData:String = "rindexfindexca"

/*: "Go to certify" :*/
fileprivate let kStr_formatName:[Character] = ["G"]
fileprivate let kStr_searchMediaValue:String = "o to crow true let"

/*: "btn_me_program_photo_delete" :*/
fileprivate let kStr_transitionValue:[Character] = ["b","t","n","_","m","e","_","p","r","o","g","r","a","m"]
fileprivate let kStr_labData:String = "collection camera bucket text_p"
fileprivate let kStr_slideName:[Character] = ["h","o","t","o","_","d","e","l","e","t","e"]

/*: "Authentication is under reviewing" :*/
fileprivate let kStr_finishText:[UInt8] = [0xb6,0x82,0x83,0x9f,0x92,0x99,0x83,0x9e,0x94,0x96,0x83,0x9e,0x98,0x99,0xd7,0x9e,0x84,0xd7,0x82,0x99,0x93,0x92,0x85,0xd7,0x85,0x92,0x81,0x9e,0x92,0x80,0x9e,0x99,0x90]

private func tagShare(touch num: UInt8) -> UInt8 {
    return num ^ 247
}

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  VoiceView.swift
//  AbroadTalking
//
//  Created by Charlotte on 2023/11/15.
//

//: import UIKit
import UIKit

//: class TalkingFaceVerificationPopUpView: UIView {
class VoiceView: UIView {
    //: var popView: TalkingPopView?
    var popView: BackgroundThen?

    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: self.setupSubviews()
        self.apiece()
        //: self.setupSubViewsConstraint()
        self.asError()
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: kStr_tableTitle.map{sourceRow(target: $0)}, encoding: .utf8)!)
    }

    //: deinit {
    deinit {
        //: NotificationCenter.default.removeObserver(self)
        NotificationCenter.default.removeObserver(self)
    }

    // MARK: - Lazy

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

    //: private lazy var backIcon: UIImageView = {
    private lazy var backIcon: UIImageView = {
        //: let imag = UIImageView.init()
        let imag = UIImageView()
        //: imag.setUrlImage(urlStr: LocationThen.share.appUserConfigMode.rpWindowBg, placeImg: UIImage.bundleBy(name: "icon_window_verification"))
        imag.failureFinish(urlStr: LocationThen.share.appUserConfigMode.rpWindowBg, placeImg: UIImage.bundleBy(name: (String(kStr_toValue) + kStr_norName.replacingOccurrences(of: "user", with: "e") + kStr_mainData.replacingOccurrences(of: "index", with: "i") + "tion")))
        //: imag.contentMode = .scaleAspectFill
        imag.contentMode = .scaleAspectFill
        //: imag.isUserInteractionEnabled = true
        imag.isUserInteractionEnabled = true
        //: return imag
        return imag
        //: }()
    }()

    //: private lazy var finishBtn: UIButton = {
    private lazy var finishBtn: UIButton = {
        //: let btn = UIButton.init(type: .custom)
        let btn = UIButton(type: .custom)
        //: btn.setBackgroundImage(UIImage.imageGradientColor(colors: UIColor.appGradientColor(), size: CGSize(width: actualWidth(w: 203), height: actualWidth(w: 50))), for: .normal)
        btn.setBackgroundImage(UIImage.upTo(colors: UIColor.thirdColor(), size: CGSize(width: originalScene(w: 203), height: originalScene(w: 50))), for: .normal)
        //: btn.setTitleColor(.white, for: .normal)
        btn.setTitleColor(.white, for: .normal)
        //: btn.setTitle("Go to certify".localized, for: .normal)
        btn.setTitle((String(kStr_formatName) + String(kStr_searchMediaValue.prefix(6)) + "ertify").localized, for: .normal)
        //: btn.titleLabel?.font = UIFont.dorsum(fontSize: 16)
        btn.titleLabel?.font = UIFont.dorsum(fontSize: 16)
        //: btn.layer.cornerRadius = 25
        btn.layer.cornerRadius = 25
        //: btn.clipsToBounds = true
        btn.clipsToBounds = true
        //: btn.addTarget(self, action: #selector(finishBtnClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(afterKind), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var closeBtn: UIButton = {
    private lazy var closeBtn: UIButton = {
        //: let btn = UIButton.init(type: .custom)
        let btn = UIButton(type: .custom)
        //: btn.setImage(UIImage.bundleBy(name: "btn_me_program_photo_delete"), for: .normal)
        btn.setImage(UIImage.bundleBy(name: (String(kStr_transitionValue) + String(kStr_labData.suffix(2)) + String(kStr_slideName))), for: .normal)
        //: btn.addTarget(self, action: #selector(closeBtnClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(postClick), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()
}

// MARK: - Event

//: extension TalkingFaceVerificationPopUpView {
extension VoiceView {
    //: @objc private func finishBtnClick() {
    @objc private func afterKind() {
        //: dismiss()
        outGenerateDismiss()
        //: if LocationThen.share.loginUserMode.isTPAuth == TPUserAuth.isSuccessed.rawValue {
        if LocationThen.share.loginUserMode.isTPAuth == FillContiguousBytes.isSuccessed.rawValue {
            //: return
            return
                //: } else if LocationThen.share.loginUserMode.isTPAuth == TPUserAuth.unknown.rawValue {
        } else if LocationThen.share.loginUserMode.isTPAuth == FillContiguousBytes.unknown.rawValue {
            //: EffectPushManager.share.func__pushUserVerifyController(toast: nil)
            EffectPushManager.share.retirement(toast: nil)
            //: } else if LocationThen.share.loginUserMode.isTPAuth == TPUserAuth.isOnGoing.rawValue {
        } else if LocationThen.share.loginUserMode.isTPAuth == FillContiguousBytes.isOnGoing.rawValue {
            //: self.func__showStatusBarErrorMsg(showMsg: "Authentication is under reviewing".localized)
            self.detailDownArray(showMsg: String(bytes: kStr_finishText.map{tagShare(touch: $0)}, encoding: .utf8)!.localized)
            //: } else {
        } else {
            //: EffectPushManager.share.func__pushUserVerifyController(toast: nil)
            EffectPushManager.share.retirement(toast: nil)
        }
    }

    //: @objc private func closeBtnClick() {
    @objc private func postClick() {
        //: dismiss()
        outGenerateDismiss()
    }

    //: func show() {
    func betweenClick() {
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
    @objc func outGenerateDismiss() {
        //: popView?.dismissView()
        popView?.placePushAside()
        //: popView = nil
        popView = nil
    }
}

// MARK: - Layout

//: extension TalkingFaceVerificationPopUpView {
extension VoiceView {
    // 添加视图
    //: private func setupSubviews() {
    private func apiece() {
        //: self.addSubview(contentView)
        self.addSubview(contentView)
        //: contentView.addSubview(backIcon)
        contentView.addSubview(backIcon)
        //: backIcon.addSubview(finishBtn)
        backIcon.addSubview(finishBtn)
        //: contentView.addSubview(closeBtn)
        contentView.addSubview(closeBtn)
    }

    // 添加约束
    //: private func setupSubViewsConstraint() {
    private func asError() {
        //: contentView.snp.makeConstraints { make in
        contentView.snp.makeConstraints { make in
            //: make.top.equalTo(ScreenHeight/4)
            make.top.equalTo(kLet_noSeatName / 4)
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.size.equalTo(CGSize.init(width: 319, height: 386+60))
            make.size.equalTo(CGSize(width: 319, height: 386 + 60))
        }

        //: backIcon.snp.makeConstraints { make in
        backIcon.snp.makeConstraints { make in
            //: make.leading.trailing.top.equalToSuperview()
            make.leading.trailing.top.equalToSuperview()
            //: make.height.equalTo(386)
            make.height.equalTo(386)
        }

        //: finishBtn.snp.makeConstraints { make in
        finishBtn.snp.makeConstraints { make in
            //: make.bottom.equalTo(-25)
            make.bottom.equalTo(-25)
            //: make.height.equalTo(50)
            make.height.equalTo(50)
            //: make.height.equalTo(203)
            make.height.equalTo(203)
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
        }

        //: closeBtn.snp.makeConstraints { make in
        closeBtn.snp.makeConstraints { make in
            //: make.top.equalTo(backIcon.snp.bottom).offset(30)
            make.top.equalTo(backIcon.snp.bottom).offset(30)
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.size.equalTo(30)
            make.size.equalTo(30)
        }
    }
}
