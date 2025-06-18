
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let kStr_aspectText:[UInt8] = [0x0,0x5,0x0,0xb,0xbf,0xfa,0x6,0xfb,0xfc,0x9,0xd1,0xc0,0xb7,0xff,0xf8,0xa,0xb7,0x5,0x6,0xb,0xb7,0xf9,0xfc,0xfc,0x5,0xb7,0x0,0x4,0x7,0x3,0xfc,0x4,0xfc,0x5,0xb,0xfc,0xfb]

fileprivate func piContent(text num: UInt8) -> UInt8 {
    let value = Int(num) - 151
    if value < 0 {
        return UInt8(value + 256)
    } else {
        return UInt8(value)
    }
}

/*: "Enter phone number" :*/
fileprivate let kStr_managerValue:[Character] = ["E","n","t","e","r"]
fileprivate let kStr_videoPhotoData:String = "player"
fileprivate let kStr_paperTitle:[Character] = ["p","h","o","n","e"," ","n","u","m","b","e","r"]

/*: "Enter Email Address" :*/
fileprivate let kStr_managerTitle:String = "date let labelEnte"
fileprivate let kStr_ageText:String = "r Emcontent request confirm daily let"
fileprivate let kStr_stateValue:String = "view toAddress"

/*: "F4F4F4" :*/
fileprivate let kStr_sizeData:[Character] = ["F","4","F","4","F","4"]

/*: "America(+1)" :*/
fileprivate let kStr_addText:String = "app"
fileprivate let kStr_arrayValue:String = "merinput"

/*: "area_code_down_icon" :*/
fileprivate let kStr_sourceData:String = "armake"
fileprivate let kStr_kitContent:String = "_codeaside let frame try"
fileprivate let kStr_userConstraintData:String = "content let back draw maken_icon"

/*: "BBBBBB" :*/
fileprivate let kStr_value:[Character] = ["B","B","B","B","B","B"]

/*: "btn_field_delete_icon" :*/
fileprivate let kStr_cellName:String = "btn_fiup last mode"
fileprivate let kStr_leadingWillName:String = "local appearancelete_icon"

/*: "Password" :*/
fileprivate let kStr_resumeData:[Character] = ["P","a","s","s","w","o","r","d"]

/*: "CCCCCC" :*/
fileprivate let kStr_viewName:[Character] = ["C","C","C","C","C"]
fileprivate let kStr_requestElectValue:[Character] = ["C"]

/*: "or" :*/
fileprivate let kStr_shareTitle:String = "owith"

/*: "F5F5F5" :*/
fileprivate let kStr_fatalData:String = "blockblockblock"

/*: "Next" :*/
fileprivate let kStr_sumMeTitle:[Character] = ["N","e","x","t"]

/*: "Login by password" :*/
fileprivate let kStr_tableText:[Character] = ["L","o","g","i","n"," ","b","y"]
fileprivate let kStr_netName:String = " "
fileprivate let kStr_quoteTradeData:[Character] = ["p","a","s","s","w","o","r","d"]

/*: "Login by OTP" :*/
fileprivate let kStr_toContent:String = "post"
fileprivate let kStr_priorityDismissData:String = "return size cell cellogin b"

/*: "#8C7AFF" :*/
fileprivate let kStr_infoData:[Character] = ["#","8","C","7","A","F","F"]

/*: "Login" :*/
fileprivate let kStr_styleContent:String = "Loginname content scene"

/*: "Send verification" :*/
fileprivate let kStr_textData:String = "self return section result guardSend"
fileprivate let kStr_frameTitle:String = "ICATION"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  ViewNameFieldDelegate.swift
//  AbroadTalking
//
//  Created by Hemming on 2022/1/26.
//

//: import UIKit
import UIKit

//: class TalkingLoginView: UIView, UITextFieldDelegate {
class ViewNameFieldDelegate: UIView, UITextFieldDelegate {
    //: typealias CommitBtnBlock = (_ phone: String, _ pwd: String?) -> Void
    typealias CommitBtnBlock = (_ phone: String, _ pwd: String?) -> Void
    //: typealias AreaCodeBtnBlock = () -> Void
    typealias AreaCodeBtnBlock = () -> Void
    //: var commitBlock: CommitBtnBlock?
    var commitBlock: CommitBtnBlock?
    //: var areaCodeBlock: AreaCodeBtnBlock?
    var areaCodeBlock: AreaCodeBtnBlock?
    //: let disposeBag = DisposeBag()
    let disposeBag = DisposeBag()
    //: private let pwdLimitCount = 16
    private let pwdLimitCount = 16 // 密码长度限制
    //: private var loginType: TalkingLoginVCType?
    private var loginType: SignalLoginType?

    //: init(type: TalkingLoginVCType) {
    init(type: SignalLoginType) {
        //: super.init(frame: .zero)
        super.init(frame: .zero)
        //: self.backgroundColor = UIColor.white
        self.backgroundColor = UIColor.white
        //: self.loginType = type
        self.loginType = type
        //: setupSubviews()
        bindEqual()
        //: setupSubViewsConstraint()
        language()
        //: bindInteraction()
        monologuise()
        //: checkCommitButtonState()
        itemTheme()
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: kStr_aspectText.map{piContent(text: $0)}, encoding: .utf8)!)
    }

    // MARK: - Lazy load

    //: private lazy var titleLabel: UILabel = {
    private lazy var titleLabel: UILabel = {
        //: let label = UILabel()
        let label = UILabel()
        //: label.font = .pingfangFont(type: .Semibold, fontSize: 17)
        label.font = .groupSize(type: .Semibold, fontSize: 17)
        //: label.textColor = .appTitleColor()
        label.textColor = .dataFormat()
        //: label.text = self.loginType == .LoginPhone ? "Enter phone number".localized : "Enter Email Address".localized
        label.text = self.loginType == .LoginPhone ? (String(kStr_managerValue) + kStr_videoPhotoData.replacingOccurrences(of: "player", with: " ") + String(kStr_paperTitle)).localized : (String(kStr_managerTitle.suffix(4)) + String(kStr_ageText.prefix(4)) + "ail " + String(kStr_stateValue.suffix(7))).localized
        //: return label
        return label
        //: }()
    }()

    //: private lazy var areaCodeControl: UIControl = {
    private lazy var areaCodeControl: UIControl = {
        //: let control = UIControl()
        let control = UIControl()
        //: control.backgroundColor = UIColor(hex: "F4F4F4")
        control.backgroundColor = UIColor(hex: (String(kStr_sizeData)))
        //: control.layer.cornerRadius = 25
        control.layer.cornerRadius = 25
        //: control.clipsToBounds = true
        control.clipsToBounds = true
        //: return control
        return control
        //: }()
    }()

    //: lazy var areaImageView: UIImageView = {
    lazy var areaImageView: UIImageView = {
        //: let imageView = UIImageView()
        let imageView = UIImageView()
        //: imageView.layer.cornerRadius = 11
        imageView.layer.cornerRadius = 11
        //: imageView.clipsToBounds = true
        imageView.clipsToBounds = true
        //: return imageView
        return imageView
        //: }()
    }()

    //: lazy var areaCodeLabel: UILabel = {
    lazy var areaCodeLabel: UILabel = {
        //: let label = UILabel()
        let label = UILabel()
        //: label.font = .pingfangFont(type: .Semibold, fontSize: 17)
        label.font = .groupSize(type: .Semibold, fontSize: 17)
        //: label.textColor = .appTitleColor()
        label.textColor = .dataFormat()
        //: label.text = "America(+1)"
        label.text = (kStr_addText.replacingOccurrences(of: "app", with: "A") + kStr_arrayValue.replacingOccurrences(of: "input", with: "ic") + "a(+1)")
        //: return label
        return label
        //: }()
    }()

    //: private lazy var areaDownImgView: UIImageView = {
    private lazy var areaDownImgView: UIImageView = {
        //: let imageView = UIImageView()
        let imageView = UIImageView()
        //: imageView.image = UIImage.bundleBy(name: "area_code_down_icon")
        imageView.image = UIImage.bundleBy(name: (kStr_sourceData.replacingOccurrences(of: "make", with: "ea") + String(kStr_kitContent.prefix(5)) + "_dow" + String(kStr_userConstraintData.suffix(6))))
        //: return imageView
        return imageView
        //: }()
    }()

    //: private lazy var phoneInputView: UITextField = {
    private lazy var phoneInputView: UITextField = {
        //: let textField = UITextField()
        let textField = UITextField()
        //: textField.backgroundColor = UIColor(hex: "F4F4F4")
        textField.backgroundColor = UIColor(hex: (String(kStr_sizeData)))
        //: textField.font = .pingfangFont(type: .Medium, fontSize: 17)
        textField.font = .groupSize(type: .Medium, fontSize: 17)
        //: textField.textColor = .appTitleColor()
        textField.textColor = .dataFormat()
        //: textField.layer.cornerRadius = 25
        textField.layer.cornerRadius = 25
        //: textField.clipsToBounds = true
        textField.clipsToBounds = true
        //: textField.attributedPlaceholder = NSAttributedString(string: "", attributes: [NSAttributedString.Key.font: UIFont.pingfangFont(type: .Regular, fontSize: 17), NSAttributedString.Key.foregroundColor: UIColor(hex: "BBBBBB")!])
        textField.attributedPlaceholder = NSAttributedString(string: "", attributes: [NSAttributedString.Key.font: UIFont.groupSize(type: .Regular, fontSize: 17), NSAttributedString.Key.foregroundColor: UIColor(hex: (String(kStr_value)))!])
        //: textField.keyboardType = (self.loginType == .LoginPhone ? .asciiCapableNumberPad : .default)
        textField.keyboardType = (self.loginType == .LoginPhone ? .asciiCapableNumberPad : .default)
        //: let leftView = UIView()
        let leftView = UIView()
        //: leftView.frame = CGRect(x: 0, y: 0, width: 20, height: 50)
        leftView.frame = CGRect(x: 0, y: 0, width: 20, height: 50)
        //: textField.leftView = leftView
        textField.leftView = leftView
        //: textField.leftViewMode = .always
        textField.leftViewMode = .always
        //: let rightView = UIView()
        let rightView = UIView()
        //: rightView.frame = CGRect(x: 0, y: 0, width: 56, height: 50)
        rightView.frame = CGRect(x: 0, y: 0, width: 56, height: 50)
        //: textField.rightView = rightView
        textField.rightView = rightView
        //: textField.rightViewMode = .whileEditing
        textField.rightViewMode = .whileEditing
        //: rightView.addSubview(phoneDeleteBtn)
        rightView.addSubview(phoneDeleteBtn)
        //: return textField
        return textField
        //: }()
    }()

    //: private lazy var phoneDeleteBtn: UIButton = {
    private lazy var phoneDeleteBtn: UIButton = {
        //: let btn = UIButton(type: .custom)
        let btn = UIButton(type: .custom)
        //: btn.frame = CGRect(x: 0, y: 0, width: 56, height: 50)
        btn.frame = CGRect(x: 0, y: 0, width: 56, height: 50)
        //: btn.setImage(UIImage.bundleBy(name: "btn_field_delete_icon"), for: .normal)
        btn.setImage(UIImage.bundleBy(name: (String(kStr_cellName.prefix(6)) + "eld_de" + String(kStr_leadingWillName.suffix(9)))), for: .normal)
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var pwdTitleLab: UILabel = {
    private lazy var pwdTitleLab: UILabel = {
        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.text = "Password".localized
        lab.text = (String(kStr_resumeData)).localized
        //: lab.textColor = .appTitleColor()
        lab.textColor = .dataFormat()
        //: lab.font = UIFont.pingfangFont(type: .Semibold, fontSize: 17)
        lab.font = UIFont.groupSize(type: .Semibold, fontSize: 17)
        //: lab.isHidden = true
        lab.isHidden = true
        //: return lab
        return lab
        //: }()
    }()

    //: private lazy var pwdInputView: UITextField = {
    private lazy var pwdInputView: UITextField = {
        //: let textField = UITextField()
        let textField = UITextField()
        //: textField.backgroundColor = UIColor(hex: "F4F4F4")
        textField.backgroundColor = UIColor(hex: (String(kStr_sizeData)))
        //: textField.font = .pingfangFont(type: .Regular, fontSize: 17)
        textField.font = .groupSize(type: .Regular, fontSize: 17)
        //: textField.textColor = .appTitleColor()
        textField.textColor = .dataFormat()
        //: textField.layer.cornerRadius = 25
        textField.layer.cornerRadius = 25
        //: textField.clipsToBounds = true
        textField.clipsToBounds = true
        //: textField.attributedPlaceholder = NSAttributedString(string: "", attributes: [NSAttributedString.Key.font: UIFont.pingfangFont(type: .Regular, fontSize: 17), NSAttributedString.Key.foregroundColor: UIColor(hex: "BBBBBB")!])
        textField.attributedPlaceholder = NSAttributedString(string: "", attributes: [NSAttributedString.Key.font: UIFont.groupSize(type: .Regular, fontSize: 17), NSAttributedString.Key.foregroundColor: UIColor(hex: (String(kStr_value)))!])
        //: textField.keyboardType = .asciiCapable
        textField.keyboardType = .asciiCapable
        //: textField.autocorrectionType = .no
        textField.autocorrectionType = .no
        //: textField.returnKeyType = .done
        textField.returnKeyType = .done
        //: textField.isHidden = true
        textField.isHidden = true
        //: textField.isSecureTextEntry = true
        textField.isSecureTextEntry = true
        //: let leftView = UIView()
        let leftView = UIView()
        //: leftView.frame = CGRect(x: 0, y: 0, width: 20, height: 50)
        leftView.frame = CGRect(x: 0, y: 0, width: 20, height: 50)
        //: textField.leftView = leftView
        textField.leftView = leftView
        //: textField.leftViewMode = .always
        textField.leftViewMode = .always
        //: if LanguageManager.shared.direction == .rightToLeft {
        if DeleteClientThen.shared.direction == .rightToLeft {
            //: textField.textAlignment = .right
            textField.textAlignment = .right
        }
        //: let rightView = UIView()
        let rightView = UIView()
        //: rightView.frame = CGRect(x: 0, y: 0, width: 56, height: 50)
        rightView.frame = CGRect(x: 0, y: 0, width: 56, height: 50)
        //: textField.rightView = rightView
        textField.rightView = rightView
        //: textField.rightViewMode = .whileEditing
        textField.rightViewMode = .whileEditing
        //: rightView.addSubview(pwdDeleteBtn)
        rightView.addSubview(pwdDeleteBtn)
        //: return textField
        return textField
        //: }()
    }()

    //: lazy var pwdDeleteBtn: UIButton = {
    lazy var pwdDeleteBtn: UIButton = {
        //: let btn = UIButton(type: .custom)
        let btn = UIButton(type: .custom)
        //: btn.frame = CGRect(x: 0, y: 0, width: 56, height: 50)
        btn.frame = CGRect(x: 0, y: 0, width: 56, height: 50)
        //: btn.setImage(UIImage.bundleBy(name: "btn_field_delete_icon"), for: .normal)
        btn.setImage(UIImage.bundleBy(name: (String(kStr_cellName.prefix(6)) + "eld_de" + String(kStr_leadingWillName.suffix(9)))), for: .normal)
        //: return btn
        return btn
        //: }()
    }()

    //: lazy var otherLabel: UILabel = {
    lazy var otherLabel: UILabel = {
        //: let label = UILabel()
        let label = UILabel()
        //: label.font =  .pingfangFont(type: .Medium, fontSize: 17)
        label.font = .groupSize(type: .Medium, fontSize: 17)
        //: label.textColor =  UIColor(hex: "CCCCCC")
        label.textColor = UIColor(hex: (String(kStr_viewName) + String(kStr_requestElectValue)))
        //: label.textAlignment = .center
        label.textAlignment = .center
        //: label.text = "or".localized
        label.text = "or".localized
        //: return label
        return label
        //: }()
    }()

    //: lazy var otherLeftLine: UIView = {
    lazy var otherLeftLine: UIView = {
        //: let view = UIView()
        let view = UIView()
        //: view.backgroundColor = UIColor(hex: "F5F5F5")
        view.backgroundColor = UIColor(hex: (kStr_fatalData.replacingOccurrences(of: "block", with: "F5")))
        //: return view
        return view
        //: }()
    }()

    //: lazy var otherRightLine: UIView = {
    lazy var otherRightLine: UIView = {
        //: let view = UIView()
        let view = UIView()
        //: view.backgroundColor = UIColor(hex: "F5F5F5")
        view.backgroundColor = UIColor(hex: (kStr_fatalData.replacingOccurrences(of: "block", with: "F5")))
        //: return view
        return view
        //: }()
    }()

    //: lazy var commitButton: UIButton = {
    lazy var commitButton: UIButton = {
        //: let btn = UIButton(type: .custom)
        let btn = UIButton(type: .custom)
        //: btn.titleLabel?.font = UIFont.pingfangFont(type: .Medium, fontSize: 18)
        btn.titleLabel?.font = UIFont.groupSize(type: .Medium, fontSize: 18)
        //: btn.setTitleColor(UIColor.white, for: .normal)
        btn.setTitleColor(UIColor.white, for: .normal)
        //: btn.setTitle("Next".localized, for: .normal)
        btn.setTitle((String(kStr_sumMeTitle)).localized, for: .normal)
        //: btn.setBackgroundImage(UIImage.imageGradientColor(colors: UIColor.appGradientColor(), size: CGSize(width: ScreenWidth-60, height: 50)), for: .normal)
        btn.setBackgroundImage(UIImage.upTo(colors: UIColor.thirdColor(), size: CGSize(width: kLet_halfData - 60, height: 50)), for: .normal)
        //: btn.layer.cornerRadius = 25
        btn.layer.cornerRadius = 25
        //: btn.clipsToBounds = true
        btn.clipsToBounds = true
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var loginStyleBtn: UIButton = {
    private lazy var loginStyleBtn: UIButton = {
        //: let btn = UIButton()
        let btn = UIButton()
        //: btn.titleLabel?.font = UIFont.pingfangFont(type: .Medium, fontSize: 17)
        btn.titleLabel?.font = UIFont.groupSize(type: .Medium, fontSize: 17)
        //: btn.setTitleColor(UIColor.fromBuild(), for: .normal)
        btn.setTitleColor(UIColor.fromBuild(), for: .normal)
        //: btn.setTitleColor(UIColor.fromBuild(), for: .selected)
        btn.setTitleColor(UIColor.fromBuild(), for: .selected)
        //: btn.setTitle("Login by password".localized, for: .normal)
        btn.setTitle((String(kStr_tableText) + kStr_netName.capitalized + String(kStr_quoteTradeData)).localized, for: .normal)
        //: btn.setTitle("Login by OTP".localized, for: .selected)
        btn.setTitle((kStr_toContent.replacingOccurrences(of: "post", with: "L") + String(kStr_priorityDismissData.suffix(6)) + "y OTP").localized, for: .selected)
        //: btn.addTarget(self, action: #selector(loginStyleButtonClick(sender:)), for: .touchUpInside)
        btn.addTarget(self, action: #selector(multiGroup(sender:)), for: .touchUpInside)
        //: btn.layer.cornerRadius = 25
        btn.layer.cornerRadius = 25
        //: btn.layer.borderWidth = 2
        btn.layer.borderWidth = 2
        //: btn.layer.borderColor = UIColor(hex: "#8C7AFF")?.withAlphaComponent(0.6).cgColor
        btn.layer.borderColor = UIColor(hex: (String(kStr_infoData)))?.withAlphaComponent(0.6).cgColor
        //: return btn
        return btn
        //: }()
    }()
}

// MARK: - Event

//: extension TalkingLoginView {
extension ViewNameFieldDelegate {
    /// 更新提交按钮状态
    //: func checkCommitButtonState() {
    func itemTheme() {
        //: var isEnabled = false
        var isEnabled = false
        //: if loginStyleBtn.isSelected == true {
        if loginStyleBtn.isSelected == true { // pwd
            //: isEnabled = phoneInputView.text!.count > 0 && pwdInputView.text!.count >= 6
            isEnabled = phoneInputView.text!.count > 0 && pwdInputView.text!.count >= 6
            //: } else {
        } else { // OTP
            //: isEnabled = phoneInputView.text!.count > 0
            isEnabled = phoneInputView.text!.count > 0
        }
        //: commitButton.isEnabled = isEnabled
        commitButton.isEnabled = isEnabled
    }

    /// 区域选择按钮点击事件
    //: func areaCodeControlAction() {
    func line() {
        //: areaCodeBlock?()
        areaCodeBlock?()
    }

    /// 提交按钮点击事件
    //: @objc private func commintBtnAction() {
    @objc private func upAdd() {
        //: if loginStyleBtn.isSelected == true {
        if loginStyleBtn.isSelected == true { // pwd
            //: commitBlock?(phoneInputView.text!, pwdInputView.text)
            commitBlock?(phoneInputView.text!, pwdInputView.text)
            //: } else {
        } else { // OTP
            //: commitBlock?(phoneInputView.text!, nil)
            commitBlock?(phoneInputView.text!, nil)
        }
    }

    /// 登录方式切换按钮事件
    //: @objc private func loginStyleButtonClick(sender: UIButton) {
    @objc private func multiGroup(sender: UIButton) {
        //: sender.isSelected = !sender.isSelected
        sender.isSelected = !sender.isSelected
        //: pwdInputView.text = ""
        pwdInputView.text = ""
        //: pwdInputView.isHidden = !sender.isSelected
        pwdInputView.isHidden = !sender.isSelected
        //: pwdTitleLab.isHidden = !sender.isSelected
        pwdTitleLab.isHidden = !sender.isSelected
        //: if sender.isSelected == true {
        if sender.isSelected == true { // pwd
            //: commitButton.setTitle("Login".localized, for: .normal)
            commitButton.setTitle((String(kStr_styleContent.prefix(5))).localized, for: .normal)
            //: } else {
        } else { // OTP
            //: commitButton.setTitle("Next".localized, for: .normal)
            commitButton.setTitle((String(kStr_sumMeTitle)).localized, for: .normal)
        }
        //: if loginType == .LoginEmail {
        if loginType == .LoginEmail {
            //: phoneInputView.snp.updateConstraints({ make in
            phoneInputView.snp.updateConstraints { make in
                //: make.top.equalTo(titleLabel.snp.bottom).offset((pwdInputView.isHidden ? 44 : 16))
                make.top.equalTo(titleLabel.snp.bottom).offset(pwdInputView.isHidden ? 44 : 16)
                //: })
            }
        }

        //: commitButton.snp.remakeConstraints { make in
        commitButton.snp.remakeConstraints { make in
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.width.equalTo(ScreenWidth-60)
            make.width.equalTo(kLet_halfData - 60)
            //: make.height.equalTo(50)
            make.height.equalTo(50)
            //: if pwdInputView.isHidden {
            if pwdInputView.isHidden {
                //: make.top.equalTo(phoneInputView.snp.bottom).offset(40)
                make.top.equalTo(phoneInputView.snp.bottom).offset(40)
                //: } else {
            } else {
                //: make.top.equalTo(pwdInputView.snp.bottom).offset(30)
                make.top.equalTo(pwdInputView.snp.bottom).offset(30)
            }
        }
        //: checkCommitButtonState()
        itemTheme()
    }

    /// 绑定手机页面设置
    //: func setPhoneView() {
    func event() {
        //: otherLabel.isHidden = true
        otherLabel.isHidden = true
        //: otherLeftLine.isHidden = true
        otherLeftLine.isHidden = true
        //: otherRightLine.isHidden = true
        otherRightLine.isHidden = true
        //: loginStyleBtn.isHidden = true
        loginStyleBtn.isHidden = true
        //: commitButton.setTitle("Send verification".localized, for: .normal)
        commitButton.setTitle((String(kStr_textData.suffix(4)) + " verif" + kStr_frameTitle.lowercased()).localized, for: .normal)
    }
}

// MARK: - Layout

//: extension TalkingLoginView {
extension ViewNameFieldDelegate {
    /// 添加视图
    //: private func setupSubviews() {
    private func bindEqual() {
        //: addSubview(titleLabel)
        addSubview(titleLabel)

        //: if self.loginType == .LoginPhone {
        if self.loginType == .LoginPhone {
            //: addSubview(areaCodeControl)
            addSubview(areaCodeControl)
            //: areaCodeControl.addSubview(areaImageView)
            areaCodeControl.addSubview(areaImageView)
            //: areaCodeControl.addSubview(areaCodeLabel)
            areaCodeControl.addSubview(areaCodeLabel)
            //: areaCodeControl.addSubview(areaDownImgView)
            areaCodeControl.addSubview(areaDownImgView)
        }
        //: addSubview(pwdTitleLab)
        addSubview(pwdTitleLab)
        //: addSubview(phoneInputView)
        addSubview(phoneInputView)
        //: addSubview(pwdInputView)
        addSubview(pwdInputView)
        //: addSubview(commitButton)
        addSubview(commitButton)
        //: addSubview(otherLabel)
        addSubview(otherLabel)
        //: addSubview(otherLeftLine)
        addSubview(otherLeftLine)
        //: addSubview(otherRightLine)
        addSubview(otherRightLine)

        //: addSubview(loginStyleBtn)
        addSubview(loginStyleBtn)
    }

    /// 添加约束
    //: private func setupSubViewsConstraint() {
    private func language() {
        //: titleLabel.snp.makeConstraints { make in
        titleLabel.snp.makeConstraints { make in
            //: make.top.equalTo(34)
            make.top.equalTo(34)
            //: make.height.equalTo(28)
            make.height.equalTo(28)
            //: make.leading.equalTo(30)
            make.leading.equalTo(30)
            //: make.trailing.equalToSuperview()
            make.trailing.equalToSuperview()
        }
        //: if self.loginType == .LoginPhone {
        if self.loginType == .LoginPhone {
            //: areaCodeControl.snp.makeConstraints { make in
            areaCodeControl.snp.makeConstraints { make in
                //: make.top.equalTo(titleLabel.snp.bottom).offset(16)
                make.top.equalTo(titleLabel.snp.bottom).offset(16)
                //: make.leading.equalTo(30)
                make.leading.equalTo(30)
                //: make.trailing.equalTo(-30)
                make.trailing.equalTo(-30)
                //: make.height.equalTo(50)
                make.height.equalTo(50)
            }
            //: areaImageView.snp.makeConstraints { make in
            areaImageView.snp.makeConstraints { make in
                //: make.centerY.equalToSuperview()
                make.centerY.equalToSuperview()
                //: make.height.width.equalTo(22)
                make.height.width.equalTo(22)
                //: make.leading.equalTo(20)
                make.leading.equalTo(20)
            }
            //: areaCodeLabel.snp.makeConstraints { make in
            areaCodeLabel.snp.makeConstraints { make in
                //: make.centerY.equalToSuperview()
                make.centerY.equalToSuperview()
                //: make.leading.equalTo(areaImageView.snp.trailing).offset(8)
                make.leading.equalTo(areaImageView.snp.trailing).offset(8)
                //: make.trailing.equalToSuperview().offset(-40)
                make.trailing.equalToSuperview().offset(-40)
            }
            //: areaDownImgView.snp.makeConstraints { make in
            areaDownImgView.snp.makeConstraints { make in
                //: make.centerY.equalToSuperview()
                make.centerY.equalToSuperview()
                //: make.height.width.equalTo(20)
                make.height.width.equalTo(20)
                //: make.trailing.equalToSuperview().offset(-18)
                make.trailing.equalToSuperview().offset(-18)
            }
            //: phoneInputView.snp.makeConstraints { make in
            phoneInputView.snp.makeConstraints { make in
                //: make.top.equalTo(areaCodeControl.snp.bottom).offset(16)
                make.top.equalTo(areaCodeControl.snp.bottom).offset(16)
                //: make.leading.equalTo(30)
                make.leading.equalTo(30)
                //: make.trailing.equalTo(-30)
                make.trailing.equalTo(-30)
                //: make.height.equalTo(50)
                make.height.equalTo(50)
            }
            //: }else{
        } else {
            //: phoneInputView.snp.makeConstraints { make in
            phoneInputView.snp.makeConstraints { make in
                //: make.top.equalTo(titleLabel.snp.bottom).offset(44)
                make.top.equalTo(titleLabel.snp.bottom).offset(44)
                //: make.leading.equalTo(30)
                make.leading.equalTo(30)
                //: make.trailing.equalTo(-30)
                make.trailing.equalTo(-30)
                //: make.height.equalTo(50)
                make.height.equalTo(50)
            }
        }

        //: pwdTitleLab.snp.makeConstraints { make in
        pwdTitleLab.snp.makeConstraints { make in
            //: make.top.equalTo(phoneInputView.snp.bottom).offset(30)
            make.top.equalTo(phoneInputView.snp.bottom).offset(30)
            //: make.leading.equalTo(phoneInputView)
            make.leading.equalTo(phoneInputView)
            //: make.height.equalTo(28)
            make.height.equalTo(28)
        }
        //: pwdInputView.snp.makeConstraints { make in
        pwdInputView.snp.makeConstraints { make in
            //: make.top.equalTo(pwdTitleLab.snp.bottom).offset(16)
            make.top.equalTo(pwdTitleLab.snp.bottom).offset(16)
            //: make.leading.trailing.height.equalTo(phoneInputView)
            make.leading.trailing.height.equalTo(phoneInputView)
        }

        //: commitButton.snp.makeConstraints { make in
        commitButton.snp.makeConstraints { make in
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.width.equalTo(ScreenWidth-60)
            make.width.equalTo(kLet_halfData - 60)
            //: make.height.equalTo(50)
            make.height.equalTo(50)
            //: make.top.equalTo(phoneInputView.snp.bottom).offset(40)
            make.top.equalTo(phoneInputView.snp.bottom).offset(40)
        }

        //: otherLabel.snp.makeConstraints { make in
        otherLabel.snp.makeConstraints { make in
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.top.equalTo(commitButton.snp.bottom).offset(30)
            make.top.equalTo(commitButton.snp.bottom).offset(30)
        }
        //: otherLeftLine.snp.makeConstraints { make in
        otherLeftLine.snp.makeConstraints { make in
            //: make.centerY.equalTo(otherLabel)
            make.centerY.equalTo(otherLabel)
            //: make.height.equalTo(1)
            make.height.equalTo(1)
            //: make.width.equalTo(actualWidth(w: 106))
            make.width.equalTo(originalScene(w: 106))
            //: make.trailing.equalTo(otherLabel.snp.leading).offset(-16)
            make.trailing.equalTo(otherLabel.snp.leading).offset(-16)
        }

        //: otherRightLine.snp.makeConstraints { make in
        otherRightLine.snp.makeConstraints { make in
            //: make.height.equalTo(1)
            make.height.equalTo(1)
            //: make.width.equalTo(actualWidth(w: 106))
            make.width.equalTo(originalScene(w: 106))
            //: make.centerY.equalTo(otherLabel)
            make.centerY.equalTo(otherLabel)
            //: make.leading.equalTo(otherLabel.snp.trailing).offset(16)
            make.leading.equalTo(otherLabel.snp.trailing).offset(16)
        }

        //: loginStyleBtn.snp.makeConstraints { make in
        loginStyleBtn.snp.makeConstraints { make in
            //: make.top.equalTo(otherLabel.snp.bottom).offset(30)
            make.top.equalTo(otherLabel.snp.bottom).offset(30)
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.height.equalTo(50)
            make.height.equalTo(50)
            //: make.width.equalTo(ScreenWidth-60)
            make.width.equalTo(kLet_halfData - 60)
        }
    }

    /// 添加事件
    //: private func bindInteraction() {
    private func monologuise() {
        //: commitButton.rx.tap
        commitButton.rx.tap
            //: .subscribe(onNext: { [weak self] in
            .subscribe(onNext: { [weak self] in
                //: guard let self = self else { return }
                guard let self = self else { return }
                //: self.commintBtnAction()
                self.upAdd()
                //: })
            })
            //: .disposed(by: disposeBag)
            .disposed(by: disposeBag)

        //: if loginType == .LoginPhone {
        if loginType == .LoginPhone {
            //: areaCodeControl.rx.controlEvent(.touchUpInside)
            areaCodeControl.rx.controlEvent(.touchUpInside)
                //: .subscribe(onNext: { [weak self] in
                .subscribe(onNext: { [weak self] in
                    //: guard let self = self else { return }
                    guard let self = self else { return }
                    //: self.areaCodeControlAction()
                    self.line()
                    //: })
                })
                //: .disposed(by: disposeBag)
                .disposed(by: disposeBag)
        }

        //: phoneDeleteBtn.rx.tap
        phoneDeleteBtn.rx.tap
            //: .subscribe(onNext: { [weak self] in
            .subscribe(onNext: { [weak self] in
                //: guard let self = self else { return }
                guard let self = self else { return }
                //: self.phoneInputView.text = ""
                self.phoneInputView.text = ""
                //: self.checkCommitButtonState()
                self.itemTheme()
                //: })
            })
            //: .disposed(by: disposeBag)
            .disposed(by: disposeBag)

        //: phoneInputView.rx.text.orEmpty.asObservable()
        phoneInputView.rx.text.orEmpty.asObservable()
            //: .subscribe(onNext: { [weak self] _ in
            .subscribe(onNext: { [weak self] _ in
                //: guard let self = self else { return }
                guard let self = self else { return }
                //: self.checkCommitButtonState()
                self.itemTheme()
                //: })
            })
            //: .disposed(by: disposeBag)
            .disposed(by: disposeBag)

        //: pwdDeleteBtn.rx.tap
        pwdDeleteBtn.rx.tap
            //: .subscribe(onNext: { [weak self] in
            .subscribe(onNext: { [weak self] in
                //: guard let self = self else { return }
                guard let self = self else { return }
                //: self.pwdInputView.text = ""
                self.pwdInputView.text = ""
                //: self.checkCommitButtonState()
                self.itemTheme()
                //: })
            })
            //: .disposed(by: disposeBag)
            .disposed(by: disposeBag)

        //: pwdInputView.rx.text.orEmpty.asObservable()
        pwdInputView.rx.text.orEmpty.asObservable()
            //: .subscribe(onNext: { [weak self] in
            .subscribe(onNext: { [weak self] in
                //: guard let self = self else { return }
                guard let self = self else { return }
                //: self.pwdInputView.text = String($0.filter { $0.isLetter || $0.isNumber }.prefix(self.pwdLimitCount))
                self.pwdInputView.text = String($0.filter { $0.isLetter || $0.isNumber }.prefix(self.pwdLimitCount))
                //: self.checkCommitButtonState()
                self.itemTheme()
                //: })
            })
            //: .disposed(by: disposeBag)
            .disposed(by: disposeBag)
    }
}
