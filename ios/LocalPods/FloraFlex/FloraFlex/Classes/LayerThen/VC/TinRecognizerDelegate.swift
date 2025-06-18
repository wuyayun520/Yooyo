
//: Declare String Begin

/*: "Personal information" :*/
fileprivate let kStr_norData:[Character] = ["P","e","r","s","o","n"]
fileprivate let kStr_cellModelNameValue:String = "al iview height transition should"
fileprivate let kStr_toData:String = "temptyon"

/*: "authPic" :*/
fileprivate let kStr_meData:String = "authPicmake let view in"

/*: "Face verification" :*/
fileprivate let kStr_imageData:String = "gesture sceneFace "
fileprivate let kStr_modelValue:String = "finormaltion"

/*: "icon_zc_userconver" :*/
fileprivate let kStr_countData:[Character] = ["i","c","o","n","_","z","c","_","u","s","e"]
fileprivate let kStr_pointText:String = "voiceconvevoice"

/*: "Verify now" :*/
fileprivate let kStr_goLiveViewValue:String = "Veriheight image color content"
fileprivate let kStr_betweenName:String = "by then guard selffy now"

/*: "#4A89F3" :*/
fileprivate let kStr_backData:[Character] = ["#","4","A","8","9","F","3"]

/*: "Finish" :*/
fileprivate let kStr_itemName:[Character] = ["F","i","n","i","s","h"]

/*: "#8C7AFF" :*/
fileprivate let kStr_countName:String = "head during self#8C7AF"
fileprivate let kStr_moveSceneName:String = "top"

/*: "Skip" :*/
fileprivate let kStr_closeText:[Character] = ["S","k","i","p"]

/*: "icon_successfylly" :*/
fileprivate let kStr_textValue:String = "icon_message color fatal transaction result"
fileprivate let kStr_iconValue:String = "ssfymatch"
fileprivate let kStr_imageEnterName:String = "label"

/*: "Submitted successfully" :*/
fileprivate let kStr_makeName:String = "for equalSubm"
fileprivate let kStr_userName:String = "d suselected var push button cell"
fileprivate let kStr_listName:String = "modellly"

/*: "#2ED180" :*/
fileprivate let kStr_requestName:String = "#2ED180app label style"

/*: _ :*/
fileprivate let kStr_pastName:String = "_"

/*: "male" :*/
fileprivate let kStr_monthText:[UInt8] = [0x33,0x3f,0x32,0x3b]

private func meParty(background num: UInt8) -> UInt8 {
    return num ^ 94
}

/*: "female" :*/
fileprivate let kStr_greenData:String = "FEMALE"

/*: "RegisterSuccess" :*/
fileprivate let kStr_leadingTitle:String = "app contactRegis"
fileprivate let kStr_appearMultiName:[Character] = ["t","e"]
fileprivate let kStr_keyTitle:String = "rSuccesstype up public else in"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  TinRecognizerDelegate.swift
//  AbroadTalking
//
//  Created by Charlotte on 2023/9/8.
//

//: import UIKit
import UIKit

//: class TalkingLoginEditAuthAndVideoVC: TalkingBaseViewController {
class TinRecognizerDelegate: LayerRecognizerDelegate {
    //: private var VideoIconPath = ""
    private var VideoIconPath = ""
    //: private var videoPath = ""
    private var videoPath = ""
    //: var params = [String: Any]()
    var params = [String: Any]()

    //: override func viewDidAppear(_ animated: Bool) {
    override func viewDidAppear(_ animated: Bool) {
        //: super.viewDidAppear(animated)
        super.viewDidAppear(animated)
        //: popGesture(isOpen: false)
        unAgencyOn(isOpen: false)
    }

    //: override func viewDidLoad() {
    override func viewDidLoad() {
        //: super.viewDidLoad()
        super.viewDidLoad()
        //: self.title = "Personal information".localized
        self.title = (String(kStr_norData) + String(kStr_cellModelNameValue.prefix(4)) + "nforma" + kStr_toData.replacingOccurrences(of: "empty", with: "i")).localized
        //: self.view.backgroundColor = .white
        self.view.backgroundColor = .white
        //: self.setupSubviews()
        self.resume()
        //: self.setupSubViewsConstraint()
        self.voice()

        //: if !LocationThen.share.appConfigMode.skipInputInviteCode {
        if !LocationThen.share.appConfigMode.skipInputInviteCode {
            //: skipButton.isHidden = true
            skipButton.isHidden = true
//            skipTipLabel.isHidden = skipButton.isHidden
        }
        //: if LocationThen.share.userFillInfoMode.authImage != nil {
        if LocationThen.share.userFillInfoMode.authImage != nil {
            //: self.params["authPic"] = LocationThen.share.userFillInfoMode.authImage?.jpegData(compressionQuality: 1)
            self.params[(String(kStr_meData.prefix(7)))] = LocationThen.share.userFillInfoMode.authImage?.jpegData(compressionQuality: 1)
            //: self.setConverView()
            self.faculty()
            //: self.finishBtn.isEnabled = true
            self.finishBtn.isEnabled = true
        }
    }

    // MARK: - Lazy Load

    //: lazy var contentView: UIView = {
    lazy var contentView: UIView = {
        //: let contentView = UIView.init()
        let contentView = UIView()
        //: return contentView
        return contentView
        //: }()
    }()

    //: lazy var converLB: UILabel = {
    lazy var converLB: UILabel = {
        //: let lb = UILabel.init()
        let lb = UILabel()
        //: lb.textColor = .appTitleColor()
        lb.textColor = .dataFormat()
        //: lb.font = UIFont.pingfangFont(type: .Semibold, fontSize: 17)
        lb.font = UIFont.groupSize(type: .Semibold, fontSize: 17)
        //: lb.text = "Face verification".localized
        lb.text = (String(kStr_imageData.suffix(5)) + "veri" + kStr_modelValue.replacingOccurrences(of: "normal", with: "ca")).localized
        //: return lb
        return lb
        //: }()
    }()

    //: lazy var converImag: UIImageView = {
    lazy var converImag: UIImageView = {
        //: let imagv = UIImageView.init()
        let imagv = UIImageView()
        //: imagv.image = UIImage.bundleBy(name: "icon_zc_userconver")
        imagv.image = UIImage.bundleBy(name: (String(kStr_countData) + kStr_pointText.replacingOccurrences(of: "voice", with: "r")))
        //: return imagv
        return imagv
        //: }()
    }()

    //: lazy var converBtn: UIButton = {
    lazy var converBtn: UIButton = {
        //: let btn = UIButton.init()
        let btn = UIButton()
        //: btn.addTarget(self, action: #selector(converBtnClick), for: UIControl.Event.touchUpInside)
        btn.addTarget(self, action: #selector(motion), for: UIControl.Event.touchUpInside)
        //: var attributedString = NSMutableAttributedString(string: "Verify now".localized)
        var attributedString = NSMutableAttributedString(string: (String(kStr_goLiveViewValue.prefix(4)) + String(kStr_betweenName.suffix(6))).localized)
        //: attributedString.addAttributes([.underlineStyle: NSNumber(value: NSUnderlineStyle.single.rawValue), .foregroundColor: UIColor.init(hex: "#4A89F3")!, .font: UIFont.pingfangFont(type: .Semibold, fontSize: 15)], range: NSRange.init(location: 0, length: attributedString.length))
        attributedString.addAttributes([.underlineStyle: NSNumber(value: NSUnderlineStyle.single.rawValue), .foregroundColor: UIColor(hex: (String(kStr_backData)))!, .font: UIFont.groupSize(type: .Semibold, fontSize: 15)], range: NSRange(location: 0, length: attributedString.length))
        //: btn.setAttributedTitle(attributedString, for: UIControl.State.normal)
        btn.setAttributedTitle(attributedString, for: UIControl.State.normal)
        //: return btn
        return btn
        //: }()
    }()

    //: lazy var finishBtn: UIButton = {
    lazy var finishBtn: UIButton = {
        //: let btn = UIButton(type: .custom)
        let btn = UIButton(type: .custom)
        //: btn.isEnabled = false
        btn.isEnabled = false
        //: btn.setTitleColor(UIColor.white, for: .normal)
        btn.setTitleColor(UIColor.white, for: .normal)
        //: btn.titleLabel?.font = UIFont.pingfangFont(type: .Medium, fontSize: 17)
        btn.titleLabel?.font = UIFont.groupSize(type: .Medium, fontSize: 17)
        //: btn.setTitle("Finish".localized, for: .normal)
        btn.setTitle((String(kStr_itemName)).localized, for: .normal)
        //: btn.setBackgroundImage(UIImage.imageGradientColor(colors: UIColor.appGradientColor(), size: CGSize(width: ScreenWidth-60, height: 50)), for: .normal)
        btn.setBackgroundImage(UIImage.upTo(colors: UIColor.thirdColor(), size: CGSize(width: kLet_halfData - 60, height: 50)), for: .normal)
        //: btn.layer.cornerRadius = 25
        btn.layer.cornerRadius = 25
        //: btn.clipsToBounds = true
        btn.clipsToBounds = true
        //: btn.addTarget(self, action: #selector(finishBtnClick(isSkip:)), for: .touchUpInside)
        btn.addTarget(self, action: #selector(changeApp(isSkip:)), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()

    //: lazy var skipButton: UIButton = {
    lazy var skipButton: UIButton = {
        //: let btn = UIButton(type: .custom)
        let btn = UIButton(type: .custom)
        //: btn.setTitleColor(UIColor.init(hex: "#8C7AFF"), for: .normal)
        btn.setTitleColor(UIColor(hex: (String(kStr_countName.suffix(6)) + kStr_moveSceneName.replacingOccurrences(of: "top", with: "F"))), for: .normal)
        //: btn.titleLabel?.font = UIFont.pingfangFont(type: .Medium, fontSize: 17)
        btn.titleLabel?.font = UIFont.groupSize(type: .Medium, fontSize: 17)
        //: let attributeString = NSMutableAttributedString(string: "Skip".localized)
        let attributeString = NSMutableAttributedString(string: (String(kStr_closeText)).localized)
        //: attributeString.addAttribute(.underlineStyle, value: NSUnderlineStyle.single.rawValue, range: NSRange(location: 0, length: attributeString.length))
        attributeString.addAttribute(.underlineStyle, value: NSUnderlineStyle.single.rawValue, range: NSRange(location: 0, length: attributeString.length))
        //: btn.setAttributedTitle(attributeString, for: .normal)
        btn.setAttributedTitle(attributeString, for: .normal)
        //: btn.addTarget(self, action: #selector(skipButtonClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(note), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()
//    lazy var skipTipLabel: UILabel = {
//        let label = UILabel()
//        label.font = .pingfangFont(type: .Regular, fontSize: 12)
//        label.textColor = .statusMin()
//        label.textAlignment = .center
//        label.numberOfLines = 0
//        label.text = "You can feel free to skip this step.".localized
//        return label
//    }()
}

//: extension TalkingLoginEditAuthAndVideoVC {
extension TinRecognizerDelegate {
    //: func setConverView() {
    func faculty() {
        //: self.converImag.image = UIImage.bundleBy(name: "icon_successfylly")
        self.converImag.image = UIImage.bundleBy(name: (String(kStr_textValue.prefix(5)) + "succe" + kStr_iconValue.replacingOccurrences(of: "match", with: "ll") + kStr_imageEnterName.replacingOccurrences(of: "label", with: "y")))
        //: let attributedString = NSMutableAttributedString(string: "Submitted successfully".localized)
        let attributedString = NSMutableAttributedString(string: (String(kStr_makeName.suffix(4)) + "itte" + String(kStr_userName.prefix(4)) + "ccess" + kStr_listName.replacingOccurrences(of: "model", with: "fu")).localized)
        //: attributedString.addAttributes([.foregroundColor: UIColor.init(hex: "#2ED180")!, .font: UIFont.pingfangFont(type: .Semibold, fontSize: 15)], range: NSRange.init(location: 0, length: attributedString.length))
        attributedString.addAttributes([.foregroundColor: UIColor(hex: (String(kStr_requestName.prefix(7))))!, .font: UIFont.groupSize(type: .Semibold, fontSize: 15)], range: NSRange(location: 0, length: attributedString.length))
        //: self.converBtn.setAttributedTitle(attributedString, for: UIControl.State.normal)
        self.converBtn.setAttributedTitle(attributedString, for: UIControl.State.normal)
    }
}

/// event
//: extension TalkingLoginEditAuthAndVideoVC {
extension TinRecognizerDelegate {
    /// 重写返回按钮事件
    //: override func naviPopback() {
    override func viewDownPopback() {
        //: super.naviPopback()
        super.viewDownPopback()
        // 埋点
        //: let eventID = "\(click_registration_information3_backBTN)_\(LocationThen.share.userFillInfoMode.sex == Gender.male.rawValue ? "male" : "female")"
        let eventID = "\(kLet_likeName)_\(LocationThen.share.userFillInfoMode.sex == SucceedComparable.male.rawValue ? String(bytes: kStr_monthText.map{meParty(background: $0)}, encoding: .utf8)! : (kStr_greenData.lowercased()))"
        //: uploadRecord.uploadRecordEvent(eventID: eventID)
        kLet_dismissValue.digitizerInsideStatus(eventID: eventID)
    }

    //: @objc func converBtnClick() {
    @objc func motion() {
        // 埋点
        //: let eventID = "\(click_registration_information3_verifyBTN)_\(LocationThen.share.userFillInfoMode.sex == Gender.male.rawValue ? "male" : "female")"
        let eventID = "\(kLet_appTitle)_\(LocationThen.share.userFillInfoMode.sex == SucceedComparable.male.rawValue ? String(bytes: kStr_monthText.map{meParty(background: $0)}, encoding: .utf8)! : (kStr_greenData.lowercased()))"
        //: uploadRecord.uploadRecordEvent(eventID: eventID)
        kLet_dismissValue.digitizerInsideStatus(eventID: eventID)

        //: let vc = TalkingVerificationExampleVC()
        let vc = FillThen()
        //: vc.isRegisterPush = true
        vc.isRegisterPush = true
        //: self.navigationController?.pushViewController(vc, animated: true)
        self.navigationController?.pushViewController(vc, animated: true)
        //: vc.iconActionBlock = { [weak self] image in
        vc.iconActionBlock = { [weak self] image in
            //: guard let self = self else {
            guard let self = self else {
                //: return
                return
            }
            //: LocationThen.share.userFillInfoMode.authImage = image
            LocationThen.share.userFillInfoMode.authImage = image
            //: self.params["authPic"] = image.jpegData(compressionQuality: 1)
            self.params[(String(kStr_meData.prefix(7)))] = image.jpegData(compressionQuality: 1)
            //: self.setConverView()
            self.faculty()
            //: self.finishBtn.isEnabled = true
            self.finishBtn.isEnabled = true
        }
    }

    //: @objc private func skipButtonClick() {
    @objc private func note() {
        // 埋点
        //: let eventID = "\(click_registration_information3_skipBTN)_\(LocationThen.share.userFillInfoMode.sex == Gender.male.rawValue ? "male" : "female")"
        let eventID = "\(kLet_infoData)_\(LocationThen.share.userFillInfoMode.sex == SucceedComparable.male.rawValue ? String(bytes: kStr_monthText.map{meParty(background: $0)}, encoding: .utf8)! : (kStr_greenData.lowercased()))"
        //: uploadRecord.uploadRecordEvent(eventID: eventID)
        kLet_dismissValue.digitizerInsideStatus(eventID: eventID)

        //: params.removeValue(forKey: "authPic")
        params.removeValue(forKey: (String(kStr_meData.prefix(7))))
        //: finishBtnClick(isSkip: true)
        changeApp(isSkip: true)
    }

    //: @objc private func finishBtnClick(isSkip: Bool = false) {
    @objc private func changeApp(isSkip: Bool = false) {
        // 埋点
        //: if isSkip == false {
        if isSkip == false {
            //: let eventID = "\(click_registration_information3_finishBTN)_\(LocationThen.share.userFillInfoMode.sex == Gender.male.rawValue ? "male" : "female")"
            let eventID = "\(kLet_deviceText)_\(LocationThen.share.userFillInfoMode.sex == SucceedComparable.male.rawValue ? String(bytes: kStr_monthText.map{meParty(background: $0)}, encoding: .utf8)! : (kStr_greenData.lowercased()))"
            //: uploadRecord.uploadRecordEvent(eventID: eventID)
            kLet_dismissValue.digitizerInsideStatus(eventID: eventID)
        }

        //: view.endEditing(true)
        view.endEditing(true)
        //: ProgressHUD.show()
        TintProgressHUD.weight()
        //: TalkingLoginRequestTool.req_updateUserInfo(params: params) { succeed, result, errorModel in
        TableThen.color(params: params) { succeed, result, _ in
            //: ProgressHUD.dismiss()
            TintProgressHUD.inkingPadDismiss()
            //: if succeed {
            if succeed {
                // 发送通知
                //: NotificationCenter.default.post(name: DID_LOGIN_SUCCESS_NOTIFICATION, object: nil, userInfo: result as! Dictionary<String, Any>)
                NotificationCenter.default.post(name: kLet_readText, object: nil, userInfo: result as! [String: Any])
                // 注册成功埋点
                //: TalkingAdjustManager.share.addEvent(key: "RegisterSuccess")
                QualityAdjustManager.share.taproom(key: (String(kStr_leadingTitle.suffix(5)) + String(kStr_appearMultiName) + String(kStr_keyTitle.prefix(8))))
                //: FirebaseAnalyticsManager.share.logEvent(name: "RegisterSuccess")
                FillShowAnalyticsManager.share.parameters(name: (String(kStr_leadingTitle.suffix(5)) + String(kStr_appearMultiName) + String(kStr_keyTitle.prefix(8))))

                //: if LocationThen.share.loginUserMode.remindBindEmail == true {
                if LocationThen.share.loginUserMode.remindBindEmail == true { // 需要绑定邮箱
                    //: DispatchQueue.main.asyncAfter(deadline: .now()+0.5) {
                    DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
                        //: EffectPushManager.share.func__pushToLockUserEmailVC(isShowBack: false)
                        EffectPushManager.share.emphasizing(isShowBack: false)
                    }
                }
            }
        }
    }
}

//: extension TalkingLoginEditAuthAndVideoVC {
extension TinRecognizerDelegate {
    //: func setupSubviews() {
    func resume() {
        //: self.view.addSubview(converLB)
        self.view.addSubview(converLB)
        //: self.view.addSubview(converImag)
        self.view.addSubview(converImag)
        //: self.view.addSubview(converBtn)
        self.view.addSubview(converBtn)
        //: self.view.addSubview(finishBtn)
        self.view.addSubview(finishBtn)
        //: self.view.addSubview(skipButton)
        self.view.addSubview(skipButton)
//        self.view.addSubview(skipTipLabel)
    }

    //: func setupSubViewsConstraint() {
    func voice() {
        //: converLB.snp.makeConstraints { make in
        converLB.snp.makeConstraints { make in
            //: make.top.equalTo(34)
            make.top.equalTo(34)
            //: make.leading.equalTo(30)
            make.leading.equalTo(30)
        }
        //: converImag.snp.makeConstraints { make in
        converImag.snp.makeConstraints { make in
            //: make.top.equalTo(converLB.snp.bottom).offset(20)
            make.top.equalTo(converLB.snp.bottom).offset(20)
            //: make.centerX.equalTo(self.view)
            make.centerX.equalTo(self.view)
            //: make.size.equalTo(125)
            make.size.equalTo(125)
        }
        //: converBtn.snp.makeConstraints { make in
        converBtn.snp.makeConstraints { make in
            //: make.top.equalTo(converImag.snp.bottom).offset(9)
            make.top.equalTo(converImag.snp.bottom).offset(9)
            //: make.centerX.equalTo(self.view)
            make.centerX.equalTo(self.view)
        }

        //: finishBtn.snp.makeConstraints { make in
        finishBtn.snp.makeConstraints { make in
            //: make.top.equalTo(converBtn.snp.bottom).offset(40)
            make.top.equalTo(converBtn.snp.bottom).offset(40)
            //: make.height.equalTo(51)
            make.height.equalTo(51)
            //: make.leading.equalTo(30)
            make.leading.equalTo(30)
            //: make.trailing.equalTo(-30)
            make.trailing.equalTo(-30)
        }
        //: skipButton.snp.makeConstraints { make in
        skipButton.snp.makeConstraints { make in
            //: make.top.equalTo(finishBtn.snp.bottom).offset(20)
            make.top.equalTo(finishBtn.snp.bottom).offset(20)
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.size.equalTo(CGSize.init(width: 50, height: 18))
            make.size.equalTo(CGSize(width: 50, height: 18))
        }
//        skipTipLabel.snp.makeConstraints { make in
//            make.bottom.equalTo(skipButton.snp.top).offset(-15)
//            make.centerX.equalToSuperview()
//            make.width.equalTo(ScreenWidth-60)
//        }
    }
}
