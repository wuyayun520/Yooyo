
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let kStr_layerTitle:[UInt8] = [0x6a,0x6f,0x6a,0x75,0x29,0x64,0x70,0x65,0x66,0x73,0x3b,0x2a,0x21,0x69,0x62,0x74,0x21,0x6f,0x70,0x75,0x21,0x63,0x66,0x66,0x6f,0x21,0x6a,0x6e,0x71,0x6d,0x66,0x6e,0x66,0x6f,0x75,0x66,0x65]

fileprivate func makeAspect(post num: UInt8) -> UInt8 {
    let value = Int(num) + 255
    if value > 255 {
        return UInt8(value - 256)
    } else {
        return UInt8(value)
    }
}

/*: "login_logo_icon" :*/
fileprivate let kStr_acceptData:String = "login_self normal"
fileprivate let kStr_viewName:String = "icappn"

/*: "FFFFFF" :*/
fileprivate let kStr_sayVoiceValue:[Character] = ["F"]
fileprivate let kStr_titleValue:[Character] = ["F","F","F","F","F"]

/*: "128CFF" :*/
fileprivate let kStr_finishModelName:String = "path true user style content128CFF"

/*: "Privacy Policy" :*/
fileprivate let kStr_clearGiftData:String = "Privacyto size position manager"
fileprivate let kStr_appData:String = "let as content Policy"

/*: "Terms of Use" :*/
fileprivate let kStr_padSucceedValue:[Character] = ["T","e","r","m","s"," ","o","f"," "]
fileprivate let kStr_toolData:[Character] = ["U","s","e"]

/*: "Contact Us" :*/
fileprivate let kStr_hiddenData:String = "plus leading viewConta"
fileprivate let kStr_sizeText:String = "label playct Us"

/*: "btn_login_phone_nor" :*/
fileprivate let kStr_shareData:String = "btn_inside title make later"
fileprivate let kStr_hiddenName:[Character] = ["n","_","p","h","o","n","e","_","n","o","r"]

/*: "btn_login_email_nor" :*/
fileprivate let kStr_windowData:[Character] = ["b","t","n","_","l","o","g","i","n","_","e","m","a","i","l"]
fileprivate let kStr_pathFormatMakeName:String = "middle size_nor"

/*: "or" :*/
fileprivate let kStr_removeText:String = "OR"

/*: "btn_login_apple_nor" :*/
fileprivate let kStr_errorDataRowName:String = "btn_lmodel seat self normal"
fileprivate let kStr_nurseTopDataName:String = "le_norobserver string index count"

/*: "Continue with Apple" :*/
fileprivate let kStr_myName:[Character] = ["C","o","n","t","i","n","u","e"," ","w","i","t","h"," ","A"]
fileprivate let kStr_userShareData:String = "PPLE"

/*: "login_last_way_icon" :*/
fileprivate let kStr_onValue:String = "logimodel"
fileprivate let kStr_nameValue:String = "way_icmanager mode original block"
fileprivate let kStr_upperTitle:[Character] = ["o","n"]

/*: "get json error" :*/
fileprivate let kStr_resultModelValue:String = "get view collection var"
fileprivate let kStr_toValue:String = "targetror"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  BottomThen.swift
//  AbroadTalking
//
//  Created by Hemming on 2022/1/20.
//

//: import UIKit
import UIKit

//: class TalkingLoginMainView: UIView {
class BottomThen: UIView {
    //: typealias BtnActionBlock = (_ type: LoginType) -> Void
    typealias BtnActionBlock = (_ type: MiniLoginClusterLiteral) -> Void

    //: let disposeBag = DisposeBag()
    let disposeBag = DisposeBag()
    //: var btnBlock: BtnActionBlock?
    var btnBlock: BtnActionBlock?
    //: deinit {
    deinit {
        //: NotificationCenter.default.removeObserver(self)
        NotificationCenter.default.removeObserver(self)
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: kStr_layerTitle.map{makeAspect(post: $0)}, encoding: .utf8)!)
    }

    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: self.backgroundColor = UIColor.white
        self.backgroundColor = UIColor.white
        //: self.setupSubviews()
        self.star()
        //: self.setupSubViewsConstraint()
        self.standIn()
        //: self.bindInteraction()
        self.nameStatus()
    }

    // MARK: - Lazy load

    //: lazy var bgPlayer: SVGAPlayer = {
    lazy var bgPlayer: SVGAPlayer = {
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
        //: return player
        return player
        //: }()
    }()

    //: lazy var logoView: UIImageView = {
    lazy var logoView: UIImageView = {
        //: let imageView = UIImageView(image: UIImage.bundleBy(name: "login_logo_icon"))
        let imageView = UIImageView(image: UIImage.bundleBy(name: (String(kStr_acceptData.prefix(6)) + "logo_" + kStr_viewName.replacingOccurrences(of: "app", with: "o"))))
        //: return imageView
        return imageView
        //: }()
    }()

    //: lazy var logoTitleLabel: UILabel = {
    lazy var logoTitleLabel: UILabel = {
        //: let label = UILabel()
        let label = UILabel()
        //: label.font = .pingfangFont(type: .Semibold, fontSize: 28.0)
        label.font = .groupSize(type: .Semibold, fontSize: 28.0)
        //: label.textColor = UIColor(hex: "FFFFFF")
        label.textColor = UIColor(hex: (String(kStr_sayVoiceValue) + String(kStr_titleValue)))
        //: label.textAlignment = .center
        label.textAlignment = .center
        //: label.text = AppName
        label.text = kLet_pageContent
        //: return label
        return label
        //: }()
    }()

    //: lazy var privacyBtn: UIButton = {
    lazy var privacyBtn: UIButton = {
        //: let btn = UIButton(type: .custom)
        let btn = UIButton(type: .custom)
        //: let attributes = [.foregroundColor: UIColor(hex: "128CFF")!, .font: UIFont.pingfangFont(type: .Regular, fontSize: 14), .underlineStyle: 1] as [NSAttributedString.Key: Any]
        let attributes = [.foregroundColor: UIColor(hex: (String(kStr_finishModelName.suffix(6))))!, .font: UIFont.groupSize(type: .Regular, fontSize: 14), .underlineStyle: 1] as [NSAttributedString.Key: Any]
        //: let attributeString = NSAttributedString(string: "Privacy Policy".localized, attributes: attributes)
        let attributeString = NSAttributedString(string: (String(kStr_clearGiftData.prefix(7)) + String(kStr_appData.suffix(7))).localized, attributes: attributes)
        //: btn.setAttributedTitle(attributeString, for: .normal)
        btn.setAttributedTitle(attributeString, for: .normal)
        //: return btn
        return btn
        //: }()
    }()

    //: lazy var termsUserBtn: UIButton = {
    lazy var termsUserBtn: UIButton = {
        //: let btn = UIButton(type: .custom)
        let btn = UIButton(type: .custom)

        //: let attributes = [.foregroundColor: UIColor(hex: "128CFF")!, .font: UIFont.pingfangFont(type: .Regular, fontSize: 14), .underlineStyle: 1] as [NSAttributedString.Key: Any]
        let attributes = [.foregroundColor: UIColor(hex: (String(kStr_finishModelName.suffix(6))))!, .font: UIFont.groupSize(type: .Regular, fontSize: 14), .underlineStyle: 1] as [NSAttributedString.Key: Any]
        //: let attributeString = NSAttributedString(string: "Terms of Use".localized, attributes: attributes)
        let attributeString = NSAttributedString(string: (String(kStr_padSucceedValue) + String(kStr_toolData)).localized, attributes: attributes)
        //: btn.setAttributedTitle(attributeString, for: .normal)
        btn.setAttributedTitle(attributeString, for: .normal)
        //: return btn
        return btn
        //: }()
    }()

    //: lazy var contactBtn: UIButton = {
    lazy var contactBtn: UIButton = {
        //: let btn = UIButton(type: .custom)
        let btn = UIButton(type: .custom)

        //: let attributes = [.foregroundColor: UIColor(hex: "128CFF")!, .font: UIFont.pingfangFont(type: .Regular, fontSize: 14), .underlineStyle: 1] as [NSAttributedString.Key: Any]
        let attributes = [.foregroundColor: UIColor(hex: (String(kStr_finishModelName.suffix(6))))!, .font: UIFont.groupSize(type: .Regular, fontSize: 14), .underlineStyle: 1] as [NSAttributedString.Key: Any]
        //: let attributeString = NSAttributedString(string: "Contact Us".localized, attributes: attributes)
        let attributeString = NSAttributedString(string: (String(kStr_hiddenData.suffix(5)) + String(kStr_sizeText.suffix(5))).localized, attributes: attributes)
        //: btn.setAttributedTitle(attributeString, for: .normal)
        btn.setAttributedTitle(attributeString, for: .normal)
        //: return btn
        return btn
        //: }()
    }()

    //: lazy var stackView: UIStackView = {
    lazy var stackView: UIStackView = {
        //: let v = UIStackView()
        let v = UIStackView()
        //: v.axis = .horizontal
        v.axis = .horizontal
        //: v.alignment = .center
        v.alignment = .center
        //: v.distribution = .equalSpacing
        v.distribution = .equalSpacing
        //: v.spacing = 60.0
        v.spacing = 60.0
        //: return v
        return v
        //: }()
    }()

    //: lazy var phoneLoginBtn: UIButton = {
    lazy var phoneLoginBtn: UIButton = {
        //: let btn = UIButton(type: .custom)
        let btn = UIButton(type: .custom)
        //: btn.setImage(UIImage.bundleBy(name: "btn_login_phone_nor"), for: .normal)
        btn.setImage(UIImage.bundleBy(name: (String(kStr_shareData.prefix(4)) + "logi" + String(kStr_hiddenName))), for: .normal)
        //: btn.setImage(UIImage.bundleBy(name: "btn_login_phone_nor"), for: .highlighted)
        btn.setImage(UIImage.bundleBy(name: (String(kStr_shareData.prefix(4)) + "logi" + String(kStr_hiddenName))), for: .highlighted)
        //: return btn
        return btn
        //: }()
    }()

    //: lazy var emailLoginBtn: UIButton = {
    lazy var emailLoginBtn: UIButton = {
        //: let btn = UIButton(type: .custom)
        let btn = UIButton(type: .custom)
        //: btn.setImage(UIImage.bundleBy(name: "btn_login_email_nor"), for: .normal)
        btn.setImage(UIImage.bundleBy(name: (String(kStr_windowData) + String(kStr_pathFormatMakeName.suffix(4)))), for: .normal)
        //: btn.setImage(UIImage.bundleBy(name: "btn_login_email_nor"), for: .highlighted)
        btn.setImage(UIImage.bundleBy(name: (String(kStr_windowData) + String(kStr_pathFormatMakeName.suffix(4)))), for: .highlighted)
        //: return btn
        return btn
        //: }()
    }()

    //: lazy var otherLabel: UILabel = {
    lazy var otherLabel: UILabel = {
        //: let label = UILabel()
        let label = UILabel()
        //: label.font =  .pingfangFont(type: .Regular, fontSize: 20)
        label.font = .groupSize(type: .Regular, fontSize: 20)
        //: label.textColor =  UIColor(hex: "FFFFFF")
        label.textColor = UIColor(hex: (String(kStr_sayVoiceValue) + String(kStr_titleValue)))
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
        //: view.backgroundColor = UIColor(hex: "FFFFFF")?.withAlphaComponent(0.7)
        view.backgroundColor = UIColor(hex: (String(kStr_sayVoiceValue) + String(kStr_titleValue)))?.withAlphaComponent(0.7)
        //: return view
        return view
        //: }()
    }()

    //: lazy var otherRightLine: UIView = {
    lazy var otherRightLine: UIView = {
        //: let view = UIView()
        let view = UIView()
        //: view.backgroundColor = UIColor(hex: "FFFFFF")?.withAlphaComponent(0.7)
        view.backgroundColor = UIColor(hex: (String(kStr_sayVoiceValue) + String(kStr_titleValue)))?.withAlphaComponent(0.7)
        //: return view
        return view
        //: }()
    }()

    //: lazy var appleLoginBtn: TalkingButton = {
    lazy var appleLoginBtn: OverdoTalkingButton = {
        //: let btn = TalkingButton(type: .custom)
        let btn = OverdoTalkingButton(type: .custom)
        //: btn.setBackgroundImage(UIImage.imageFillColor(color: UIColor(hex: "FFFFFF")!), for: .normal)
        btn.setBackgroundImage(UIImage.locationAcross(color: UIColor(hex: (String(kStr_sayVoiceValue) + String(kStr_titleValue)))!), for: .normal)
        //: btn.setImage(UIImage.bundleBy(name: "btn_login_apple_nor"), for: .normal)
        btn.setImage(UIImage.bundleBy(name: (String(kStr_errorDataRowName.prefix(5)) + "ogin_app" + String(kStr_nurseTopDataName.prefix(6)))), for: .normal)
        //: btn.setImage(UIImage.bundleBy(name: "btn_login_apple_nor"), for: .highlighted)
        btn.setImage(UIImage.bundleBy(name: (String(kStr_errorDataRowName.prefix(5)) + "ogin_app" + String(kStr_nurseTopDataName.prefix(6)))), for: .highlighted)
        //: btn.setTitle("Continue with Apple".localized, for: .normal)
        btn.setTitle((String(kStr_myName) + kStr_userShareData.lowercased()).localized, for: .normal)
        //: btn.setTitleColor(.appTitleColor(), for: .normal)
        btn.setTitleColor(.dataFormat(), for: .normal)
        //: btn.titleLabel?.textAlignment = .center
        btn.titleLabel?.textAlignment = .center
        //: btn.layer.cornerRadius = 25
        btn.layer.cornerRadius = 25
        //: btn.clipsToBounds = true
        btn.clipsToBounds = true
        //: btn.titleLabel?.font = .pingfangFont(type: .Medium, fontSize: 17)
        btn.titleLabel?.font = .groupSize(type: .Medium, fontSize: 17)
        //: if #available(iOS 13.0, *) {
        if #available(iOS 13.0, *) {
            //: btn.isHidden = false
            btn.isHidden = false
            //: } else {
        } else {
            //: btn.isHidden = true
            btn.isHidden = true
        }
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var lastLoginImgV: TalkingButton = {
    private lazy var lastLoginImgV: OverdoTalkingButton = {
        //: let btn = TalkingButton()
        let btn = OverdoTalkingButton()
        //: let ret = UIImage.bundleBy(name: "login_last_way_icon")
        let ret = UIImage.bundleBy(name: (kStr_onValue.replacingOccurrences(of: "model", with: "n") + "_last_" + String(kStr_nameValue.prefix(6)) + String(kStr_upperTitle)))
        //: btn.setImage(ret, for: .normal)
        btn.setImage(ret, for: .normal)
//        btn.titleLabel?.font = UIFont.pingfangFont(type: .Semibold, fontSize: 13)
//        btn.setTitleColor(.white, for: .normal)
//        btn.setTitle("Last Login".localized, for: .normal)
        //: return btn
        return btn
        //: }()
    }()
}

//: extension TalkingLoginMainView {
extension BottomThen {
    // 添加视图
    //: private func setupSubviews() {
    private func star() {
        //: addSubview(bgPlayer)
        addSubview(bgPlayer)
        //: addSubview(logoView)
        addSubview(logoView)
        //: addSubview(logoTitleLabel)
        addSubview(logoTitleLabel)
        //: addSubview(privacyBtn)
        addSubview(privacyBtn)
        //: addSubview(termsUserBtn)
        addSubview(termsUserBtn)
        //: addSubview(contactBtn)
        addSubview(contactBtn)

        //: addSubview(stackView)
        addSubview(stackView)
        //: addSubview(phoneLoginBtn)
        addSubview(phoneLoginBtn)
        //: stackView.addArrangedSubview(phoneLoginBtn)
        stackView.addArrangedSubview(phoneLoginBtn)
        //: if LocationThen.share.appConfigMode.enableEmailLogin == true {
        if LocationThen.share.appConfigMode.enableEmailLogin == true {
            //: addSubview(emailLoginBtn)
            addSubview(emailLoginBtn)
            //: stackView.addArrangedSubview(emailLoginBtn)
            stackView.addArrangedSubview(emailLoginBtn)
        }

        //: addSubview(otherLabel)
        addSubview(otherLabel)
        //: addSubview(otherLeftLine)
        addSubview(otherLeftLine)
        //: addSubview(otherRightLine)
        addSubview(otherRightLine)
        //: addSubview(appleLoginBtn)
        addSubview(appleLoginBtn)
        //: addSubview(lastLoginImgV)
        addSubview(lastLoginImgV)
    }

    // 添加约束
    //: private func setupSubViewsConstraint() {
    private func standIn() {
        //: bgPlayer.snp.makeConstraints { make in
        bgPlayer.snp.makeConstraints { make in
            //: make.top.bottom.leading.trailing.equalToSuperview()
            make.top.bottom.leading.trailing.equalToSuperview()
        }
        //: logoView.snp.makeConstraints { make in
        logoView.snp.makeConstraints { make in
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.width.height.equalTo(77)
            make.width.height.equalTo(77)
            //: make.top.equalTo(StatusBarHeight + actualHeight(h: 80))
            make.top.equalTo(kLet_postPartyValue + mediaBlock(h: 80))
        }
        //: logoTitleLabel.snp.makeConstraints { make in
        logoTitleLabel.snp.makeConstraints { make in
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.top.equalTo(logoView.snp.bottom).offset(9)
            make.top.equalTo(logoView.snp.bottom).offset(9)
        }
        //: privacyBtn.snp.makeConstraints { make in
        privacyBtn.snp.makeConstraints { make in
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.height.equalTo(33)
            make.height.equalTo(33)
            //: make.bottom.equalToSuperview().offset(-kDeviceSafeBottomHeight-10)
            make.bottom.equalToSuperview().offset(-kLet_formatNetValue - 10)
        }
        //: termsUserBtn.snp.makeConstraints { make in
        termsUserBtn.snp.makeConstraints { make in
            //: make.centerY.equalTo(privacyBtn)
            make.centerY.equalTo(privacyBtn)
            //: make.height.equalTo(33)
            make.height.equalTo(33)
            //: make.trailing.equalTo(privacyBtn.snp.leading).offset(-24)
            make.trailing.equalTo(privacyBtn.snp.leading).offset(-24)
        }
        //: contactBtn.snp.makeConstraints { make in
        contactBtn.snp.makeConstraints { make in
            //: make.centerY.equalTo(privacyBtn)
            make.centerY.equalTo(privacyBtn)
            //: make.height.equalTo(33)
            make.height.equalTo(33)
            //: make.leading.equalTo(privacyBtn.snp.trailing).offset(24)
            make.leading.equalTo(privacyBtn.snp.trailing).offset(24)
        }

        //: stackView.snp.makeConstraints { make in
        stackView.snp.makeConstraints { make in
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.bottom.equalTo(privacyBtn.snp.top).offset(-20)
            make.bottom.equalTo(privacyBtn.snp.top).offset(-20)
        }
        //: phoneLoginBtn.snp.makeConstraints { make in
        phoneLoginBtn.snp.makeConstraints { make in
            //: make.size.equalTo(CGSize(width: 51, height: 51))
            make.size.equalTo(CGSize(width: 51, height: 51))
        }
        //: if LocationThen.share.appConfigMode.enableEmailLogin == true {
        if LocationThen.share.appConfigMode.enableEmailLogin == true {
            //: emailLoginBtn.snp.makeConstraints { make in
            emailLoginBtn.snp.makeConstraints { make in
                //: make.size.equalTo(phoneLoginBtn)
                make.size.equalTo(phoneLoginBtn)
            }
        }

        //: otherLabel.snp.makeConstraints { make in
        otherLabel.snp.makeConstraints { make in
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.bottom.equalTo(phoneLoginBtn.snp.top).offset(-18)
            make.bottom.equalTo(phoneLoginBtn.snp.top).offset(-18)
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
        //: appleLoginBtn.snp.makeConstraints { make in
        appleLoginBtn.snp.makeConstraints { make in
            //: make.leading.equalTo(40)
            make.leading.equalTo(40)
            //: make.trailing.equalTo(-40)
            make.trailing.equalTo(-40)
            //: make.height.equalTo(50)
            make.height.equalTo(50)
            //: make.bottom.equalTo(otherLeftLine.snp.top).offset(-54)
            make.bottom.equalTo(otherLeftLine.snp.top).offset(-54)
        }

        //: appleLoginBtn.imageRectBlock = { (rect: CGRect) in
        appleLoginBtn.imageRectBlock = { (rect: CGRect) in
            //: if LanguageManager.shared.direction == .rightToLeft {
            if DeleteClientThen.shared.direction == .rightToLeft {
                //: return CGRect(x: rect.width-30-9, y: (rect.height-37)/2, width: 30, height: 37)
                return CGRect(x: rect.width - 30 - 9, y: (rect.height - 37) / 2, width: 30, height: 37)
                //: } else {
            } else {
                //: return CGRect(x: 9, y: (rect.height-37)/2, width: 30, height: 37)
                return CGRect(x: 9, y: (rect.height - 37) / 2, width: 30, height: 37)
            }
        }
        //: appleLoginBtn.titleRectBlock = { (rect: CGRect) in
        appleLoginBtn.titleRectBlock = { (rect: CGRect) in
            //: return rect
            rect
        }

        // 展示上次登录提示
        //: let lastLogin = Defaults.string(forKey: TalkingLastLoginTypeCacheKey)
        let lastLogin = kLet_managerValue.string(forKey: kLet_seatPlayData)
        //: guard lastLogin != nil else {
        guard lastLogin != nil else {
            //: lastLoginImgV.isHidden = true
            lastLoginImgV.isHidden = true
            //: return
            return
        }
        //: switch LoginType(rawValue: lastLogin!) {
        switch MiniLoginClusterLiteral(rawValue: lastLogin!) {
        //: case .AppleLogin:
        case .AppleLogin:
            //: lastLoginImgV.isHidden = appleLoginBtn.isHidden
            lastLoginImgV.isHidden = appleLoginBtn.isHidden
            //: lastLoginImgV.snp.makeConstraints { make in
            lastLoginImgV.snp.makeConstraints { make in
                //: make.trailing.equalTo(-15)
                make.trailing.equalTo(-15)
                //: make.bottom.equalTo(appleLoginBtn.snp.top).offset(17)
                make.bottom.equalTo(appleLoginBtn.snp.top).offset(17)
                //: if LanguageManager.shared.direction == .rightToLeft {
                if DeleteClientThen.shared.direction == .rightToLeft {
                    //: make.height.equalTo(40)
                    make.height.equalTo(40)
                    //: make.width.equalTo(120)
                    make.width.equalTo(120)
                }
            }

        //: case .EmailLogin, .PwdEmailLogin:
        case .EmailLogin, .PwdEmailLogin:
            //: guard LocationThen.share.appConfigMode.enableEmailLogin == true else {
            guard LocationThen.share.appConfigMode.enableEmailLogin == true else {
                //: return }
                return
            }

            //: lastLoginImgV.snp.makeConstraints { make in
            lastLoginImgV.snp.makeConstraints { make in
                //: make.leading.equalTo(emailLoginBtn.snp.centerX).offset(-10)
                make.leading.equalTo(emailLoginBtn.snp.centerX).offset(-10)
                //: make.bottom.equalTo(emailLoginBtn.snp.top).offset(17)
                make.bottom.equalTo(emailLoginBtn.snp.top).offset(17)
                //: if LanguageManager.shared.direction == .rightToLeft {
                if DeleteClientThen.shared.direction == .rightToLeft {
                    //: make.height.equalTo(40)
                    make.height.equalTo(40)
                    //: make.width.equalTo(120)
                    make.width.equalTo(120)
                }
            }

        //: case .PhoneLogin, .PwdPhoneLogin:
        case .PhoneLogin, .PwdPhoneLogin:
            //: lastLoginImgV.snp.makeConstraints { make in
            lastLoginImgV.snp.makeConstraints { make in
                //: make.leading.equalTo(phoneLoginBtn.snp.centerX).offset(-10)
                make.leading.equalTo(phoneLoginBtn.snp.centerX).offset(-10)
                //: make.bottom.equalTo(phoneLoginBtn.snp.top).offset(17)
                make.bottom.equalTo(phoneLoginBtn.snp.top).offset(17)
                //: if LanguageManager.shared.direction == .rightToLeft {
                if DeleteClientThen.shared.direction == .rightToLeft {
                    //: make.height.equalTo(40)
                    make.height.equalTo(40)
                    //: make.width.equalTo(120)
                    make.width.equalTo(120)
                }
            }

        //: default:
        default:
            //: break
            break
        }
    }

    // 添加事件
    //: private func bindInteraction() {
    private func nameStatus() {
        //: let url = SVGAEffectTool.default.getZipEffectPath(type: .Login_Main_BG)
        let url = LoadGrappleEffectTool.default.sunnahType(type: .Login_Main_BG)
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
                //: self.bgPlayer.videoItem = videoItem
                self.bgPlayer.videoItem = videoItem
                //: self.bgPlayer.startAnimation()
                self.bgPlayer.startAnimation()
            }
            //: } catch _ as Error? {
        } catch _ as Error? {
            //: printLog(message: "get json error")
            pathLine(message: (String(kStr_resultModelValue.prefix(4)) + "json " + kStr_toValue.replacingOccurrences(of: "target", with: "er")))
        }

        //: appleLoginBtn.rx.controlEvent(.touchUpInside)
        appleLoginBtn.rx.controlEvent(.touchUpInside)
            //: .asObservable().throttle(RxTimeInterval.seconds(2), scheduler: MainScheduler.instance)
            .asObservable().throttle(RxTimeInterval.seconds(2), scheduler: MainScheduler.instance) // 2s内只处理第一次点击
            //: .subscribe(onNext: { [weak self] in
            .subscribe(onNext: { [weak self] in
                //: guard let self = self else {return}
                guard let self = self else { return }
                //: self.btnBlock!(.AppleLogin)
                self.btnBlock!(.AppleLogin)
                //: })
            })
            //: .disposed(by: disposeBag)
            .disposed(by: disposeBag)

        //: phoneLoginBtn.rx.controlEvent(.touchUpInside)
        phoneLoginBtn.rx.controlEvent(.touchUpInside)
            //: .subscribe(onNext: { [weak self] in
            .subscribe(onNext: { [weak self] in
                //: guard let self = self else {return}
                guard let self = self else { return }
                //: self.btnBlock!(.PhoneLogin)
                self.btnBlock!(.PhoneLogin)
                //: })
            })
            //: .disposed(by: disposeBag)
            .disposed(by: disposeBag)

        //: emailLoginBtn.rx.controlEvent(.touchUpInside)
        emailLoginBtn.rx.controlEvent(.touchUpInside)
            //: .subscribe(onNext: { [weak self] in
            .subscribe(onNext: { [weak self] in
                //: guard let self = self else {return}
                guard let self = self else { return }
                //: self.btnBlock!(.EmailLogin)
                self.btnBlock!(.EmailLogin)
                //: })
            })
            //: .disposed(by: disposeBag)
            .disposed(by: disposeBag)

        //: termsUserBtn.rx.controlEvent(.touchUpInside)
        termsUserBtn.rx.controlEvent(.touchUpInside)
            //: .subscribe(onNext: {
            .subscribe(onNext: {
                //: EffectPushManager.share.func__pushToWebVC(webViewType: .TermsofUse)
                EffectPushManager.share.selectUp(webViewType: .TermsofUse)
                //: })
            })
            //: .disposed(by: disposeBag)
            .disposed(by: disposeBag)
        //: privacyBtn.rx.controlEvent(.touchUpInside)
        privacyBtn.rx.controlEvent(.touchUpInside)
            //: .subscribe(onNext: {
            .subscribe(onNext: {
                //: EffectPushManager.share.func__pushToWebVC(webViewType: .PrivacyPolicy)
                EffectPushManager.share.selectUp(webViewType: .PrivacyPolicy)
                //: })
            })
            //: .disposed(by: disposeBag)
            .disposed(by: disposeBag)
        //: contactBtn.rx.controlEvent(.touchUpInside)
        contactBtn.rx.controlEvent(.touchUpInside)
            //: .subscribe(onNext: {
            .subscribe(onNext: {
                //: EffectPushManager.share.func__pushFeedbackVC()
                EffectPushManager.share.bindVc()
                //: })
            })
            //: .disposed(by: disposeBag)
            .disposed(by: disposeBag)
    }
}
