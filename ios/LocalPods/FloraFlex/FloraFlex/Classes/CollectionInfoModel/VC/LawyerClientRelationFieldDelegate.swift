
//: Declare String Begin

/*: "^([a-zA-Z0-9_\\.-]+)@([\\da-z\\.-]+)\\.([a-z\\.]{2,6})$" :*/
fileprivate let kStr_managerData:[UInt8] = [0x47,0x31,0x42,0x78,0x34,0x63,0x58,0x34,0x43,0x29,0x34,0x20,0x46,0x45,0x37,0x34,0x44,0x32,0x30,0x59,0x31,0x42,0x45,0x7d,0x78,0x34,0x63,0x45,0x37,0x34,0x44,0x32,0x30,0x45,0x37,0x31,0x42,0x78,0x34,0x63,0x45,0x37,0x44,0x62,0x2b,0x35,0x2f,0x64,0x30,0x3d]

private func upBuild(length num: UInt8) -> UInt8 {
    return num ^ 25
}

/*: "^((1[34578][0-9]{9})|((0\\d{2}-\\d{8})|(0\\d{3}-\\d{7,8})|(0\\d{10,11}))$" :*/
fileprivate let kStr_noteName:[UInt8] = [0x20,0x56,0x56,0x4f,0x25,0x4d,0x4a,0x4b,0x49,0x46,0x23,0x25,0x4e,0x53,0x47,0x23,0x5,0x47,0x3,0x57,0x2,0x56,0x56,0x4e,0x22,0x1a,0x5,0x4c,0x3,0x53,0x22,0x1a,0x5,0x46,0x3,0x57,0x2,0x56,0x4e,0x22,0x1a,0x5,0x4d,0x3,0x53,0x22,0x1a,0x5,0x49,0x52,0x46,0x3,0x57,0x2,0x56,0x4e,0x22,0x1a,0x5,0x4f,0x4e,0x52,0x4f,0x4f,0x3,0x57,0x57,0x5a]

/*: "^([\\u4E00-\\u9FA5A-Za-z0-9_]{2,10}$)" :*/
fileprivate let kStr_easeValue:[UInt8] = [0x29,0x24,0x7d,0x30,0x31,0x2c,0x32,0x7b,0x5d,0x5f,0x39,0x2d,0x30,0x7a,0x2d,0x61,0x5a,0x2d,0x41,0x35,0x41,0x46,0x39,0x75,0x5c,0x2d,0x30,0x30,0x45,0x34,0x75,0x5c,0x5b,0x28,0x5e]

/*: "^[0-8]\\d{5}(?!\\d)$" :*/
fileprivate let kStr_downName:String = "^[last-"
fileprivate let kStr_frameTitle:String = "5}(?!\\d"
fileprivate let kStr_statusTitle:[Character] = [")","$"]

/*: "^[a-zA-Z0-9]{6,20}+$" :*/
fileprivate let kStr_quickData:[Character] = ["^","[","a","-","z","A","-","Z","0","-"]
fileprivate let kStr_groupData:String = "9]{6,2"

/*: "^(https?:\\/\\/)?([\\da-z\\.-]+)\\.([a-z\\.]{2,6})([\\/\\w \\.-]*)*\\/?$" :*/
fileprivate let kStr_activityName:[UInt8] = [0xb9,0xcf,0x8f,0x93,0x93,0x97,0x94,0xd8,0xdd,0xbb,0xc8,0xbb,0xc8,0xce,0xd8,0xcf,0xbc,0xbb,0x83,0x86,0xca,0x9d,0xbb,0xc9,0xca,0xba,0xcc,0xce,0xbb,0xc9,0xcf,0xbc,0x86,0xca,0x9d,0xbb,0xc9,0xba,0x9c,0xd5,0xcb,0xd1,0x9a,0xce,0xcf,0xbc,0xbb,0xc8,0xbb,0x90,0xc7,0xbb,0xc9,0xca,0xba,0xcd,0xce,0xcd,0xbb,0xc8,0xd8,0xc3]

private func photoButton(female num: UInt8) -> UInt8 {
    return num ^ 231
}

/*: "^(?:(?:25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\\.) {3}(?:25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)$" :*/
fileprivate let kStr_titleName:[UInt8] = [0x78,0xe,0x19,0x1c,0xe,0x19,0x1c,0x14,0x13,0x7d,0x16,0xb,0x13,0x7b,0x5a,0x14,0x7d,0x16,0xb,0x12,0x7b,0x7d,0x16,0xb,0x1f,0x7b,0x5a,0x7d,0x16,0x17,0x7b,0x19,0x7d,0x16,0xb,0x1f,0x7b,0x7d,0x16,0xb,0x1f,0x7b,0x19,0xf,0x7a,0x8,0xf,0x6,0x5d,0x15,0x5b,0xe,0x19,0x1c,0x14,0x13,0x7d,0x16,0xb,0x13,0x7b,0x5a,0x14,0x7d,0x16,0xb,0x12,0x7b,0x7d,0x16,0xb,0x1f,0x7b,0x5a,0x7d,0x16,0x17,0x7b,0x19,0x7d,0x16,0xb,0x1f,0x7b,0x7d,0x16,0xb,0x1f,0x7b,0x19,0xf,0x2]

private func straightAndNarrow(hidden num: UInt8) -> UInt8 {
    return num ^ 38
}

/*: "(^[0-9]{15}$)|([0-9]{17}([0-9]|[xX])$)" :*/
fileprivate let kStr_addTitle:[UInt8] = [0x29,0x24,0x29,0x5d,0x58,0x78,0x5b,0x7c,0x5d,0x39,0x2d,0x30,0x5b,0x28,0x7d,0x37,0x31,0x7b,0x5d,0x39,0x2d,0x30,0x5b,0x28,0x7c,0x29,0x24,0x7d,0x35,0x31,0x7b,0x5d,0x39,0x2d,0x30,0x5b,0x5e,0x28]

/*: "SELF MATCHES %@" :*/
fileprivate let kStr_backgroundName:String = "signature add same channelSELF MAT"
fileprivate let kStr_listData:String = "CHES %@string normal"

/*: "Feedback" :*/
fileprivate let kStr_ofValue:String = "Feedbackequal if type"

/*: "Enter your feedback…" :*/
fileprivate let kStr_topGiftVideoContent:[Character] = ["E","n","t","e","r"," ","y","o","u","r"," ","f","e","e","d","b","a","c","k"]
fileprivate let kStr_priceName:String = "\u{2026}"

/*: "#999999" :*/
fileprivate let kStr_makeValue:[Character] = ["#"]
fileprivate let kStr_blockCollectionValue:String = "999999"

/*: "0/ :*/
fileprivate let kStr_appearName:[Character] = ["0","/"]

/*: "Your email (Required) " :*/
fileprivate let kStr_postName:[Character] = ["Y","o","u","r"," ","e","m","a","i","l"," ","(","R","e","q","u","i","r","e","d"]
fileprivate let kStr_shareErrorValue:String = "index "

/*: "icon_me_feelback_star" :*/
fileprivate let kStr_sizeTitle:String = "background make makeicon_m"
fileprivate let kStr_messageData:String = "feedback dataack_star"

/*: "#CCCCCC" :*/
fileprivate let kStr_showTargetName:String = "type player past click#CCCCCC"

/*: "Send" :*/
fileprivate let kStr_succeedInputData:[Character] = ["S","e","n","d"]

/*: "#D0D0D0" :*/
fileprivate let kStr_touchLabText:String = "color height let#D0D0D"
fileprivate let kStr_modeName:String = "nobody"

/*: "Please fill in the content" :*/
fileprivate let kStr_languageData:[Character] = ["P","l","e","a","s","e"," ","f","i","l","l"," ","i","n"," ","t","h","e"," ","c","o","n","t","e","n","t"]

/*: "Please enter the correct email address" :*/
fileprivate let kStr_centerText:[UInt8] = [0x59,0x65,0x6c,0x68,0x7a,0x6c,0x29,0x6c,0x67,0x7d,0x6c,0x7b,0x29,0x7d,0x61,0x6c,0x29,0x6a,0x66,0x7b,0x7b,0x6c,0x6a,0x7d,0x29,0x6c,0x64,0x68,0x60,0x65,0x29,0x68,0x6d,0x6d,0x7b,0x6c,0x7a,0x7a]

/*: "content" :*/
fileprivate let kStr_modelValue:String = "coappteapp"
fileprivate let kStr_toData:[Character] = ["t"]

/*: "contactWay" :*/
fileprivate let kStr_topName:[Character] = ["c","o","n","t"]
fileprivate let kStr_enableHeartTitle:String = "selected makeactWay"

/*: "platform" :*/
fileprivate let kStr_blockTitle:String = "contentlatf"
fileprivate let kStr_giftPathValue:String = "readingm"

/*: "iphone" :*/
fileprivate let kStr_barValue:[Character] = ["i"]
fileprivate let kStr_succeedContent:[Character] = ["p","h","o","n","e"]

/*: "version" :*/
fileprivate let kStr_makeText:[Character] = ["v","e","r","s","i","o","n"]

/*: "type" :*/
fileprivate let kStr_toolText:[Character] = ["t","y","p","e"]

/*: "Operation succeeded" :*/
fileprivate let kStr_imageData:String = "Opermodel let bug official"
fileprivate let kStr_mainOpenText:String = "make path anima gift succ"
fileprivate let kStr_titleData:String = "cameraded"

/*: / :*/
fileprivate let kStr_upTitle:[Character] = ["/"]

/*: "\n" :*/
fileprivate let kStr_toName:String = "\n"

/*: "Problem statements" :*/
fileprivate let kStr_loadValue:String = "reason showProble"
fileprivate let kStr_formatValue:[Character] = ["m","e","n","t","s"]

/*: "Feature advice" :*/
fileprivate let kStr_sourceDetailValue:String = "Featureas gift data"
fileprivate let kStr_translateTitle:[Character] = [" ","a","d","v","i","c","e"]

/*: "Operation questions" :*/
fileprivate let kStr_meValue:String = "Operatiremove string title gender"
fileprivate let kStr_toManagerImportValue:[Character] = ["o","n"]
fileprivate let kStr_selectedTitle:String = "button block ques"

/*: "Others" :*/
fileprivate let kStr_timeContent:[Character] = ["O","t","h","e","r","s"]

/*: "#EFEDFF" :*/
fileprivate let kStr_picEndValue:String = "#EFEDFFlabel index view to if"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  LawyerClientRelationFieldDelegate.swift
//  AbroadTalking
//
//  Created by Charlotte on 2022/9/15.
//

//: import UIKit
import UIKit

//: enum Validate {
enum BlockValidate {
    //: case email(_: String)
    case email(_: String) //  邮箱
    //: case phoneNumber(_: String)
    case phoneNumber(_: String) //  手机号
    //: case userName(_: String)
    case userName(_: String) //  用户名
    //: case password(_: String)
    case password(_: String) //  密码
    //: case nickName(_: String)
    case nickName(_: String) //  昵称
    //: case postalCode(_: String)
    case postalCode(_: String) //  邮编
    //: case URL(_: String)
    case URL(_: String) //  URL
    //: case IP(_: String)
    case IP(_: String) //  IP
    //: case isChinese(_: String)
    case isChinese(_: String) //  是否全是中文字符
    //: case idNumber(_: String)
    case idNumber(_: String) //  身份证号

    //: var isRight: Bool {
    var isRight: Bool {
        //: var predicateStr: String!
        var predicateStr: String!
        //: var currentObject: String!
        var currentObject: String!
        //: switch self {
        switch self {
        //: case let .email(str):
        case let .email(str):
            //: predicateStr = "^([a-zA-Z0-9_\\.-]+)@([\\da-z\\.-]+)\\.([a-z\\.]{2,6})$"
            predicateStr = String(bytes: kStr_managerData.map{upBuild(length: $0)}, encoding: .utf8)!
            //: currentObject = str
            currentObject = str
        //: case let .phoneNumber(str):
        case let .phoneNumber(str):
            //: predicateStr = "^((1[34578][0-9]{9})|((0\\d{2}-\\d{8})|(0\\d{3}-\\d{7,8})|(0\\d{10,11}))$"
            predicateStr = String(bytes: kStr_noteName.map{$0^126}, encoding: .utf8)!
            //: currentObject = str
            currentObject = str
        //: case let .userName(str):
        case let .userName(str):
            //: predicateStr = "^([\\u4E00-\\u9FA5A-Za-z0-9_]{2,10}$)"
            predicateStr = String(bytes: kStr_easeValue.reversed(), encoding: .utf8)!
            //: currentObject = str
            currentObject = str
        //: case let .postalCode(str):
        case let .postalCode(str):
            //: predicateStr = "^[0-8]\\d{5}(?!\\d)$"
            predicateStr = (kStr_downName.replacingOccurrences(of: "last", with: "0") + "8]\\d{" + kStr_frameTitle + String(kStr_statusTitle))
            //: currentObject = str
            currentObject = str
        //: case let .password(str):
        case let .password(str):
            //: predicateStr = "^[a-zA-Z0-9]{6,20}+$"
            predicateStr = (String(kStr_quickData) + kStr_groupData.capitalized + "0}+$")
            //: currentObject = str
            currentObject = str
        //: case let .nickName(str):
        case let .nickName(str):
            //: predicateStr = "^([\\u4E00-\\u9FA5A-Za-z0-9_]{2,10}$)"
            predicateStr = String(bytes: kStr_easeValue.reversed(), encoding: .utf8)!
            //: currentObject = str
            currentObject = str
        //: case let .URL(str):
        case let .URL(str):
            //: predicateStr = "^(https?:\\/\\/)?([\\da-z\\.-]+)\\.([a-z\\.]{2,6})([\\/\\w \\.-]*)*\\/?$"
            predicateStr = String(bytes: kStr_activityName.map{photoButton(female: $0)}, encoding: .utf8)!
            //: currentObject = str
            currentObject = str
        //: case let .IP(str):
        case let .IP(str):
            //: predicateStr = "^(?:(?:25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\\.) {3}(?:25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)$"
            predicateStr = String(bytes: kStr_titleName.map{straightAndNarrow(hidden: $0)}, encoding: .utf8)!
            //: currentObject = str
            currentObject = str
        //: case let . isChinese(str):
        case let .isChinese(str):
            //: predicateStr = "(^[\u{4e00}-\u{9fa5}]$)"
            predicateStr = "(^[\u{4e00}-\u{9fa5}]$)"
            //: currentObject = str
            currentObject = str
        //: case let . idNumber(str):
        case let .idNumber(str):
            //: predicateStr = "(^[0-9]{15}$)|([0-9]{17}([0-9]|[xX])$)"
            predicateStr = String(bytes: kStr_addTitle.reversed(), encoding: .utf8)!
            //: currentObject = str
            currentObject = str
        }
        //: let predicate =  NSPredicate(format: "SELF MATCHES %@", predicateStr)
        let predicate = NSPredicate(format: (String(kStr_backgroundName.suffix(8)) + String(kStr_listData.prefix(7))), predicateStr)
        //: return predicate.evaluate(with: currentObject)
        return predicate.evaluate(with: currentObject)
    }
}

//: class TalkingFeedbackVC: TalkingBaseViewController {
class LawyerClientRelationFieldDelegate: LayerRecognizerDelegate {
    //: let limitCount = 300
    let limitCount = 300
    //: let EmialCount = 50
    let EmialCount = 50
    //: var seleteBtn: UIButton?
    var seleteBtn: UIButton?

    //: override func viewDidLoad() {
    override func viewDidLoad() {
        //: super.viewDidLoad()
        super.viewDidLoad()

        //: self.title = "Feedback".localized
        self.title = (String(kStr_ofValue.prefix(8))).localized
        //: self.view.backgroundColor = .white
        self.view.backgroundColor = .white
        //: designView()
        planColor()
        //: addTapGestureRecognizer()
        makeBy()
        //: addKeyboardNotification()
        play()
    }

    // MARK: - Lazy load

    //: lazy var backView: UIScrollView = {
    lazy var backView: UIScrollView = {
        //: let view = UIScrollView.init()
        let view = UIScrollView()
        //: view.backgroundColor = .white
        view.backgroundColor = .white
        //: view.showsHorizontalScrollIndicator = false
        view.showsHorizontalScrollIndicator = false
        //: view.showsVerticalScrollIndicator = false
        view.showsVerticalScrollIndicator = false
        //: return view
        return view
        //: }()
    }()

    //: lazy var contView: UIView = {
    lazy var contView: UIView = {
        //: let view = UIView.init()
        let view = UIView()
        //: view.backgroundColor = .white
        view.backgroundColor = .white
        //: return view
        return view
        //: }()
    }()

    //: lazy var inputTView: UIView = {
    lazy var inputTView: UIView = {
        //: let view = UIView.init()
        let view = UIView()
        //: view.clipsToBounds = true
        view.clipsToBounds = true
        //: view.layer.cornerRadius = 8
        view.layer.cornerRadius = 8
        //: view.backgroundColor = .appBgColor()
        view.backgroundColor = .bottomValue()
        //: return view
        return view
        //: }()
    }()

    //: lazy var textView: TalkingTextView = {
    lazy var textView: VoiceTextView = {
        //: let textView = TalkingTextView.init()
        let textView = VoiceTextView()
        //: textView.placeholder = "Enter your feedback…".localized
        textView.placeholder = (String(kStr_topGiftVideoContent) + kStr_priceName).localized
        //: textView.placeholderColor = UIColor.init(hex: "#999999")!
        textView.placeholderColor = UIColor(hex: (String(kStr_makeValue) + kStr_blockCollectionValue.capitalized))!
        //: textView.font = UIFont.pingfangFont(type: .Regular, fontSize: 15)
        textView.font = UIFont.groupSize(type: .Regular, fontSize: 15)
        //: textView.textColor = UIColor.appTitleColor()
        textView.textColor = UIColor.dataFormat()
        //: textView.PlaceholderInsets = UIEdgeInsets(top: 16, left: 16, bottom: 10, right: 16)
        textView.PlaceholderInsets = UIEdgeInsets(top: 16, left: 16, bottom: 10, right: 16)

        //: textView.textContainer.maximumNumberOfLines = 0
        textView.textContainer.maximumNumberOfLines = 0
        //: textView.textContainer.lineBreakMode = .byTruncatingTail
        textView.textContainer.lineBreakMode = .byTruncatingTail
        //: textView.delegate = self
        textView.delegate = self
        //: textView.returnKeyType = UIReturnKeyType.done
        textView.returnKeyType = UIReturnKeyType.done
        //: textView.bounces = false
        textView.bounces = false
        //: textView.backgroundColor = .appBgColor()
        textView.backgroundColor = .bottomValue()
        //: numberLB.text =  "0/\(limitCount)"
        numberLB.text = "0/\(limitCount)"
        //: return textView
        return textView
        //: }()
    }()

    //: lazy var numberLB: UILabel = {
    lazy var numberLB: UILabel = {
        //: let LB = UILabel.init()
        let LB = UILabel()
        //: LB.textColor = UIColor.init(hex: "#999999")
        LB.textColor = UIColor(hex: (String(kStr_makeValue) + kStr_blockCollectionValue.capitalized))
        //: LB.font = UIFont.pingfangFont(type: .Regular, fontSize: 14)
        LB.font = UIFont.groupSize(type: .Regular, fontSize: 14)
        //: LB.text = "0/\(limitCount)"
        LB.text = "0/\(limitCount)"
        //: LB.textAlignment = .right
        LB.textAlignment = .right
        //: return LB
        return LB
        //: }()
    }()

    //: lazy var emailTF: UITextField = {
    lazy var emailTF: UITextField = {
        //: let tf = UITextField.init()
        let tf = UITextField()
        //: tf.backgroundColor = .appBgColor()
        tf.backgroundColor = .bottomValue()
        //: tf.textColor = UIColor.appTitleColor()
        tf.textColor = UIColor.dataFormat()
        //: tf.font = UIFont.pingfangFont(type: .Regular, fontSize: 16)
        tf.font = UIFont.groupSize(type: .Regular, fontSize: 16)
        //: tf.delegate = self
        tf.delegate = self
        //: tf.returnKeyType = UIReturnKeyType.done
        tf.returnKeyType = UIReturnKeyType.done
        //: tf.attributedPlaceholder = NSAttributedString.init(string: "Your email (Required) ".localized, attributes: [
        tf.attributedPlaceholder = NSAttributedString(string: (String(kStr_postName) + kStr_shareErrorValue.replacingOccurrences(of: "index", with: ")")).localized, attributes: [
            //: NSAttributedString.Key.foregroundColor: UIColor.init(hex: "#999999")!])
            NSAttributedString.Key.foregroundColor: UIColor(hex: (String(kStr_makeValue) + kStr_blockCollectionValue.capitalized))!])
        //: tf.clipsToBounds = true
        tf.clipsToBounds = true
        //: tf.layer.cornerRadius = 8
        tf.layer.cornerRadius = 8
        //: if LanguageManager.shared.direction == .rightToLeft {
        if DeleteClientThen.shared.direction == .rightToLeft {
            //: tf.textAlignment = .right
            tf.textAlignment = .right
        }
        //: let leftView = UIView()
        let leftView = UIView()
        //: leftView.frame = CGRect(origin: .zero, size: CGSize(width: 30, height: 49))
        leftView.frame = CGRect(origin: .zero, size: CGSize(width: 30, height: 49))

        //: let leftImgView = UIImageView.init()
        let leftImgView = UIImageView()
        //: leftImgView.frame = CGRect(x: 16, y: 20, width: 9, height: 9)
        leftImgView.frame = CGRect(x: 16, y: 20, width: 9, height: 9)
        //: leftImgView.image = UIImage.bundleBy(name: "icon_me_feelback_star")
        leftImgView.image = UIImage.bundleBy(name: (String(kStr_sizeTitle.suffix(6)) + "e_feelb" + String(kStr_messageData.suffix(8))))
        //: leftView.addSubview(leftImgView)
        leftView.addSubview(leftImgView)
        //: tf.leftView = leftView
        tf.leftView = leftView
        //: tf.leftViewMode = .always
        tf.leftViewMode = .always
        //: return tf
        return tf
        //: }()
    }()

    //: lazy var doneBtn: UIButton = {
    lazy var doneBtn: UIButton = {
        //: let btn = UIButton.init()
        let btn = UIButton()
        //: btn.layer.cornerRadius = 25
        btn.layer.cornerRadius = 25
        //: btn.setBackgroundColor(color: UIColor.init(hex: "#CCCCCC")!, forState: .disabled)
        btn.colorEffectLoad(color: UIColor(hex: (String(kStr_showTargetName.suffix(7))))!, forState: .disabled)
        //: btn.setBackgroundColor(color: UIColor.fromBuild(), forState: .normal)
        btn.colorEffectLoad(color: UIColor.fromBuild(), forState: .normal)
        //: btn.setTitle("Send".localized, for: .normal)
        btn.setTitle((String(kStr_succeedInputData)).localized, for: .normal)
        //: btn.setTitleColor(.white, for: .normal)
        btn.setTitleColor(.white, for: .normal)
        //: btn.titleLabel?.font = UIFont.pingfangFont(type: .Medium, fontSize: 17)
        btn.titleLabel?.font = UIFont.groupSize(type: .Medium, fontSize: 17)
        //: btn.addTarget(self, action: #selector(doneBtnClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(forenameClick), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()
}

// MARK: - Event

//: extension TalkingFeedbackVC {
extension LawyerClientRelationFieldDelegate {
    //: @objc func TagBtnClick(sender: UIButton) {
    @objc func capacityCard(sender: UIButton) {
        //: seleteBtn?.isSelected = false
        seleteBtn?.isSelected = false
        //: seleteBtn?.layer.borderColor = UIColor.init(hex: "#D0D0D0")?.cgColor
        seleteBtn?.layer.borderColor = UIColor(hex: (String(kStr_touchLabText.suffix(6)) + kStr_modeName.replacingOccurrences(of: "nobody", with: "0")))?.cgColor
        //: sender.isSelected = !sender.isSelected
        sender.isSelected = !sender.isSelected
        //: seleteBtn = sender
        seleteBtn = sender
        //: seleteBtn!.layer.borderColor = UIColor.clear.cgColor
        seleteBtn!.layer.borderColor = UIColor.clear.cgColor
    }

    //: @objc func doneBtnClick() {
    @objc func forenameClick() {
        //: if seleteBtn == nil || textView.text.count<=0 || emailTF.text!.count<=0 {
        if seleteBtn == nil || textView.text.count <= 0 || emailTF.text!.count <= 0 {
            //: self.func__showStatusBarErrorMsg(showMsg: "Please fill in the content".localized)
            self.detailDownArray(showMsg: (String(kStr_languageData)).localized)
            //: return
            return
        }

        //: if LanguageManager.shared.direction == .leftToRight {
        if DeleteClientThen.shared.direction == .leftToRight {
            //: if !Validate.email(emailTF.text!).isRight {
            if !BlockValidate.email(emailTF.text!).isRight {
                //: self.func__showStatusBarErrorMsg(showMsg: "Please enter the correct email address".localized)
                self.detailDownArray(showMsg: String(bytes: kStr_centerText.map{$0^9}, encoding: .utf8)!.localized)
                //: return
                return
            }
        }

        //: var dict = Dictionary<String, Any>()
        var dict = [String: Any]()
        //: dict["content"] = textView.text
        dict[(kStr_modelValue.replacingOccurrences(of: "app", with: "n") + String(kStr_toData))] = textView.text
        //: dict["contactWay"] = emailTF.text
        dict[(String(kStr_topName) + String(kStr_enableHeartTitle.suffix(6)))] = emailTF.text
        //: dict["platform"] = "iphone"
        dict[(kStr_blockTitle.replacingOccurrences(of: "content", with: "p") + kStr_giftPathValue.replacingOccurrences(of: "reading", with: "or"))] = (String(kStr_barValue) + String(kStr_succeedContent))
        //: dict["version"] = AppVersion
        dict[(String(kStr_makeText))] = kLet_inviteText
        //: dict["type"] = String((seleteBtn?.tag ?? 100)-100)
        dict[(String(kStr_toolText))] = String((seleteBtn?.tag ?? 100) - 100)

        //: ProgressHUD.show()
        TintProgressHUD.weight()

        //: TalkingMeRequestTool.req_Feedback(params: dict) { succeed, result, errorModel in
        LoadEqualRequestTool.naturalAction(params: dict) { succeed, _, _ in
            //: ProgressHUD.dismiss()
            TintProgressHUD.inkingPadDismiss()
            //: if succeed {
            if succeed {
                //: self.func__showStatusBarSuccessMsg(showMsg: "Operation succeeded".localized)
                self.property(showMsg: (String(kStr_imageData.prefix(4)) + "ation" + String(kStr_mainOpenText.suffix(5)) + kStr_titleData.replacingOccurrences(of: "camera", with: "ee")).localized)
                //: self.navigationController?.popViewController(animated: true)
                self.navigationController?.popViewController(animated: true)
            }
        }
    }

    //: func addKeyboardNotification() {
    func play() {
        //: NotificationCenter.default.addObserver(self,
        NotificationCenter.default.addObserver(self,
                                               //: selector: #selector(keyboardWillShow(notification:)),
                                               selector: #selector(lineResumeAfter(notification:)),
                                               //: name: UIResponder.keyboardWillShowNotification,
                                               name: UIResponder.keyboardWillShowNotification,
                                               //: object: nil)
                                               object: nil)
        //: NotificationCenter.default.addObserver(self,
        NotificationCenter.default.addObserver(self,
                                               //: selector: #selector(keyboardWillHide(notification:)),
                                               selector: #selector(dataWith(notification:)),
                                               //: name: UIResponder.keyboardWillHideNotification,
                                               name: UIResponder.keyboardWillHideNotification,
                                               //: object: nil)
                                               object: nil)
    }

    //: @objc func keyboardWillShow(notification: Notification) {
    @objc func lineResumeAfter(notification: Notification) {
        //: guard emailTF.isFirstResponder else { return }
        guard emailTF.isFirstResponder else { return }
        //: guard let info = notification.userInfo else { return }
        guard let info = notification.userInfo else { return }
        //: let value = info[UIResponder.keyboardFrameEndUserInfoKey] as? NSValue
        let value = info[UIResponder.keyboardFrameEndUserInfoKey] as? NSValue
        //: let frame = value?.cgRectValue ?? .zero
        let frame = value?.cgRectValue ?? .zero
        //: let duration = info[UIResponder.keyboardAnimationDurationUserInfoKey] as? Double ?? 0.25
        let duration = info[UIResponder.keyboardAnimationDurationUserInfoKey] as? Double ?? 0.25
        //: guard (emailTF.bottom + StatusBarNavigationBarHeight) > frame.minY else { return }
        guard (emailTF.bottom + kLet_netName) > frame.minY else { return }

        //: let y = (emailTF.bottom + StatusBarNavigationBarHeight) - frame.minY
        let y = (emailTF.bottom + kLet_netName) - frame.minY
        //: UIView.animate(withDuration: duration) {
        UIView.animate(withDuration: duration) {
            //: self.backView.transform = CGAffineTransform(translationX: 0, y: -y)
            self.backView.transform = CGAffineTransform(translationX: 0, y: -y)
        }
    }

    //: @objc func keyboardWillHide(notification: Notification) {
    @objc func dataWith(notification: Notification) {
        //: guard let info = notification.userInfo else { return }
        guard let info = notification.userInfo else { return }
        //: let duration = info[UIResponder.keyboardAnimationDurationUserInfoKey] as? Double ?? 0.25
        let duration = info[UIResponder.keyboardAnimationDurationUserInfoKey] as? Double ?? 0.25

        //: UIView.animate(withDuration: duration) {
        UIView.animate(withDuration: duration) {
            //: self.backView.transform = .identity
            self.backView.transform = .identity
        }
    }
}

// MARK: - UITextViewDelegate, UITextFieldDelegate

//: extension TalkingFeedbackVC: UITextViewDelegate, UITextFieldDelegate {
extension LawyerClientRelationFieldDelegate: UITextViewDelegate, UITextFieldDelegate {
    //: public func textViewDidChange(_ textView: UITextView) {
    public func textViewDidChange(_ textView: UITextView) {
        //: if textView.text.count > limitCount {
        if textView.text.count > limitCount {
            // 获得已输出字数与正输入字母数
            //: let selectRange = textView.markedTextRange
            let selectRange = textView.markedTextRange

            // 获取高亮部分 － 如果有联想词则解包成功
            //: if let selectRange = selectRange {
            if let selectRange = selectRange {
                //: let position =  textView.position(from: (selectRange.start), offset: 0)
                let position = textView.position(from: selectRange.start, offset: 0)
                //: if (position != nil) {
                if position != nil {
                    //: return
                    return
                }
            }

            //: let textContent = textView.text ?? ""
            let textContent = textView.text ?? ""
            //: let textNum = textContent.count
            let textNum = textContent.count

            // 截取
            //: if textNum > limitCount && limitCount > 0 {
            if textNum > limitCount && limitCount > 0 {
                //: textView.text = string_prefix(index: limitCount, text: textContent)
                textView.text = price(index: limitCount, text: textContent)
            }
        }
        //: numberLB.text =  "\(textView.text.count)/\(limitCount)"
        numberLB.text = "\(textView.text.count)/\(limitCount)"
    }

    //: public func textViewShouldBeginEditing(_ textView: UITextView) -> Bool {
    public func textViewShouldBeginEditing(_: UITextView) -> Bool {
        //: numberLB.isHidden = false
        numberLB.isHidden = false
        //: return true
        return true
    }

    //: public func textViewDidEndEditing(_ textView: UITextView) {
    public func textViewDidEndEditing(_ textView: UITextView) {
        //: if textView.text.isEmpty {
        if textView.text.isEmpty {
            //: numberLB.isHidden = false
            numberLB.isHidden = false
            //: } else {
        } else {
            //: numberLB.isHidden = true
            numberLB.isHidden = true
        }
    }

    //: public func textView(_ textView: UITextView, shouldChangeTextIn range: NSRange, replacementText text: String) -> Bool {
    public func textView(_ textView: UITextView, shouldChangeTextIn _: NSRange, replacementText text: String) -> Bool {
        //: if textView.returnKeyType == .done {
        if textView.returnKeyType == .done {
            //: if text == "\n" {
            if text == "\n" {
                //: textView.resignFirstResponder()
                textView.resignFirstResponder()
            }
            //: return true
            return true
        }
        //: return true
        return true
    }

    // 字符串的截取 从头截取到指定index
    //: private func string_prefix(index: Int,text:String) -> String {
    private func price(index: Int, text: String) -> String {
        //: if text.count <= index {
        if text.count <= index {
            //: return text
            return text
            //: } else {
        } else {
            //: let index = text.index(text.startIndex, offsetBy: index)
            let index = text.index(text.startIndex, offsetBy: index)
            //: let str = text.prefix(upTo: index)
            let str = text.prefix(upTo: index)
            //: return String(str)
            return String(str)
        }
    }

    //: func textFieldShouldReturn(_ textField: UITextField) -> Bool {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        //: textField.resignFirstResponder()
        textField.resignFirstResponder()

        //: return true
        return true
    }

    //: func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
    func textField(_ textField: UITextField, shouldChangeCharactersIn _: NSRange, replacementString string: String) -> Bool {
        //: if textField.text!.count+string.count>EmialCount || textField.text!.count+string.count <= 0 {
        if textField.text!.count + string.count > EmialCount || textField.text!.count + string.count <= 0 {
            //: return false
            return false
        }
        //: return true
        return true
    }
}

// MARK: - UI

//: extension TalkingFeedbackVC {
extension LawyerClientRelationFieldDelegate {
    //: func designView() {
    func planColor() {
        //: self.view.addSubview(backView)
        self.view.addSubview(backView)
        //: backView.snp.makeConstraints { make in
        backView.snp.makeConstraints { make in
            //: make.edges.equalTo(self.view)
            make.edges.equalTo(self.view)
        }
        //: backView.addSubview(contView)
        backView.addSubview(contView)
        //: contView.snp.makeConstraints { make in
        contView.snp.makeConstraints { make in
            //: make.leading.trailing.top.bottom.equalTo(backView)
            make.leading.trailing.top.bottom.equalTo(backView)
        }

        //: contView.addSubview(inputTView)
        contView.addSubview(inputTView)
        //: inputTView.snp.makeConstraints { make in
        inputTView.snp.makeConstraints { make in
            //: make.leading.equalTo(contView).offset(15)
            make.leading.equalTo(contView).offset(15)
            //: make.trailing.equalTo(contView.snp.trailing).offset(-15)
            make.trailing.equalTo(contView.snp.trailing).offset(-15)
            //: make.top.equalTo(contView).offset(128)
            make.top.equalTo(contView).offset(128)
            //: make.height.equalTo(210)
            make.height.equalTo(210)
        }

        //: inputTView.addSubview(textView)
        inputTView.addSubview(textView)
        //: inputTView.addSubview(numberLB)
        inputTView.addSubview(numberLB)
        //: textView.snp.makeConstraints { make in
        textView.snp.makeConstraints { make in
            //: make.leading.trailing.top.equalTo(inputTView)
            make.leading.trailing.top.equalTo(inputTView)
            //: make.bottom.equalTo(inputTView.snp.bottom).offset(-40)
            make.bottom.equalTo(inputTView.snp.bottom).offset(-40)
        }
        //: numberLB.snp.makeConstraints { make in
        numberLB.snp.makeConstraints { make in
            //: make.trailing.equalTo(inputTView.snp.trailing).offset(-16)
            make.trailing.equalTo(inputTView.snp.trailing).offset(-16)
            //: make.bottom.equalTo(inputTView.snp.bottom).offset(-12)
            make.bottom.equalTo(inputTView.snp.bottom).offset(-12)
            //: make.height.equalTo(20)
            make.height.equalTo(20)
        }
        //: contView.addSubview(emailTF)
        contView.addSubview(emailTF)
        //: emailTF.snp.makeConstraints { make in
        emailTF.snp.makeConstraints { make in
            //: make.leading.equalTo(contView).offset(15)
            make.leading.equalTo(contView).offset(15)
            //: make.trailing.equalTo(contView.snp.trailing).offset(-15)
            make.trailing.equalTo(contView.snp.trailing).offset(-15)
            //: make.top.equalTo(inputTView.snp.bottom).offset(16)
            make.top.equalTo(inputTView.snp.bottom).offset(16)
            //: make.height.equalTo(49)
            make.height.equalTo(49)
        }

        //: contView.addSubview(doneBtn)
        contView.addSubview(doneBtn)
        //: doneBtn.snp.makeConstraints { make in
        doneBtn.snp.makeConstraints { make in
            //: make.leading.equalTo(contView).offset(54)
            make.leading.equalTo(contView).offset(54)
            //: make.trailing.equalTo(contView.snp.trailing).offset(-54)
            make.trailing.equalTo(contView.snp.trailing).offset(-54)
            //: make.top.equalTo(emailTF.snp.bottom).offset(111)
            make.top.equalTo(emailTF.snp.bottom).offset(111)
            //: make.height.equalTo(50)
            make.height.equalTo(50)
        }

        //: let arr = ["Problem statements".localized,
        let arr = [(String(kStr_loadValue.suffix(6)) + "m state" + String(kStr_formatValue)).localized,
                   //: "Feature advice".localized,
                   (String(kStr_sourceDetailValue.prefix(7)) + String(kStr_translateTitle)).localized,
                   //: "Operation questions".localized,
                   (String(kStr_meValue.prefix(7)) + String(kStr_toManagerImportValue) + String(kStr_selectedTitle.suffix(5)) + "tions").localized,
                   //: "Others".localized]
                   (String(kStr_timeContent)).localized]

        //: for i in 0..<arr.count {
        for i in 0 ..< arr.count {
            //: let xz = 15
            let xz = 15
            //: let yz = 16
            let yz = 16
            //: let Width = (Int(ScreenWidth)-xz*3)/2
            let Width = (Int(kLet_halfData) - xz * 3) / 2
            //: let height = 38
            let height = 38
            //: let X = xz+(xz + Width)*(i%2)
            let X = xz + (xz + Width) * (i % 2)
            //: let Y = yz+(yz+height)*(i/2)
            let Y = yz + (yz + height) * (i / 2)

            //: let btn = UIButton.init()
            let btn = UIButton()
            //: btn.frame =  CGRect.init(x: X, y: Y , width: Width, height: height)
            btn.frame = CGRect(x: X, y: Y, width: Width, height: height)
            //: btn.setTitle(arr[i], for: .normal)
            btn.setTitle(arr[i], for: .normal)
            //: btn.setTitleColor(.black, for: .normal)
            btn.setTitleColor(.black, for: .normal)
            //: btn.setTitleColor(.fromBuild(), for: .selected)
            btn.setTitleColor(.fromBuild(), for: .selected)

            //: btn.titleLabel?.font = UIFont.pingfangFont(type: .Regular, fontSize: 15)
            btn.titleLabel?.font = UIFont.groupSize(type: .Regular, fontSize: 15)
            //: if TalkingRequestAddrTool.share.interfaceLang == LangType.es.rawValue || TalkingRequestAddrTool.share.interfaceLang == LangType.pt.rawValue {
            if ViewManagerAddrTool.share.interfaceLang == CountClusterLiteral.es.rawValue || ViewManagerAddrTool.share.interfaceLang == CountClusterLiteral.pt.rawValue {
                //: btn.titleLabel?.font = UIFont.pingfangFont(type: .Regular, fontSize: 13)
                btn.titleLabel?.font = UIFont.groupSize(type: .Regular, fontSize: 13)
            }
            //: btn.layer.cornerRadius = 19
            btn.layer.cornerRadius = 19
            //: btn.layer.borderWidth = 1
            btn.layer.borderWidth = 1
            //: btn.layer.borderColor = UIColor.init(hex: "#D0D0D0")?.cgColor
            btn.layer.borderColor = UIColor(hex: (String(kStr_touchLabText.suffix(6)) + kStr_modeName.replacingOccurrences(of: "nobody", with: "0")))?.cgColor
            //: btn.setBackgroundColor(color: UIColor.init(hex: "#EFEDFF")!, forState: .selected)
            btn.colorEffectLoad(color: UIColor(hex: (String(kStr_picEndValue.prefix(7))))!, forState: .selected)
            //: btn.setBackgroundColor(color: .white, forState: .normal)
            btn.colorEffectLoad(color: .white, forState: .normal)
            //: btn.tag = 100+i
            btn.tag = 100 + i
            //: btn.addTarget( self, action: #selector(TagBtnClick(sender:)), for: .touchUpInside)
            btn.addTarget(self, action: #selector(capacityCard(sender:)), for: .touchUpInside)
            //: contView.addSubview(btn)
            contView.addSubview(btn)
        }

        //: contView.snp.remakeConstraints { make in
        contView.snp.remakeConstraints { make in
            //: make.bottom.equalTo(doneBtn.snp.bottom).offset(50)
            make.bottom.equalTo(doneBtn.snp.bottom).offset(50)
            //: make.width.equalTo(backView)
            make.width.equalTo(backView)
        }
    }
}
