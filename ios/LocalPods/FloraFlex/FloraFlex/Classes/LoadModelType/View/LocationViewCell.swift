
//: Declare String Begin

/*: "formatType" :*/
fileprivate let kStr_sizeBlockDataTitle:[Character] = ["f","o","r","m","a","t","T","y"]
fileprivate let kStr_detailTitle:[Character] = ["p","e"]

/*: "plain" :*/
fileprivate let kStr_memberTitle:[Character] = ["p","l","a","i","n"]

/*: "init(coder:) has not been implemented" :*/
fileprivate let kStr_attributeName:[UInt8] = [0x7c,0x81,0x7c,0x87,0x3b,0x76,0x82,0x77,0x78,0x85,0x4d,0x3c,0x33,0x7b,0x74,0x86,0x33,0x81,0x82,0x87,0x33,0x75,0x78,0x78,0x81,0x33,0x7c,0x80,0x83,0x7f,0x78,0x80,0x78,0x81,0x87,0x78,0x77]

fileprivate func mainEqual(no num: UInt8) -> UInt8 {
    let value = Int(num) + 237
    if value > 255 {
        return UInt8(value - 256)
    } else {
        return UInt8(value)
    }
}

/*: "#FF2348" :*/
fileprivate let kStr_directionContent:[Character] = ["#","F","F","2","3","4","8"]

/*: "icon_lounge" :*/
fileprivate let kStr_backValue:[Character] = ["i","c","o","n","_","l","o","u","n"]
fileprivate let kStr_equalValue:String = "gsend"

/*: "icon_home_v" :*/
fileprivate let kStr_sizeValue:String = "icon_hbottom shared"

/*: "icon_chat_list_new" :*/
fileprivate let kStr_itemName:[Character] = ["i","c","o","n","_","c","h","a","t","_"]
fileprivate let kStr_countEqualData:String = "inputi"
fileprivate let kStr_popData:[Character] = ["s","t","_","n","e","w"]

/*: "Official" :*/
fileprivate let kStr_sizeName:String = "icon let border index itemOffi"

/*: "#30D00B" :*/
fileprivate let kStr_numberValue:String = "#view"
fileprivate let kStr_makeValue:String = "0D00Bbubble file kit data string"

/*: "iv_message_honey" :*/
fileprivate let kStr_errorRemoveValue:String = "iv_mview string self user"
fileprivate let kStr_customSizeData:String = "let title let_honey"

/*: "#FF60B9" :*/
fileprivate let kStr_currentText:String = "#FF60B9self title"

/*: "#EEEEEE" :*/
fileprivate let kStr_imageTitle:String = "#EEEEEEuser aspect total class white"

/*: "opacity" :*/
fileprivate let kStr_textGroupName:[Character] = ["o","p","a","c","i","t","y"]

/*: "path" :*/
fileprivate let kStr_appLogValue:String = "PATH"

/*: "extra" :*/
fileprivate let kStr_errFillValue:String = "extrsucceed"

/*: "msgInfo" :*/
fileprivate let kStr_upData:[Character] = ["m","s","g","I","n","f","o"]

/*: "content" :*/
fileprivate let kStr_resultData:String = "CONTE"
fileprivate let kStr_barStyleName:String = "npath"

/*: "messageType" :*/
fileprivate let kStr_dataName:[Character] = ["m","e","s"]
fileprivate let kStr_noValue:[Character] = ["s","a","g","e","T","y","p","e"]

/*: "[Reply messages to get points]" :*/
fileprivate let kStr_hiddenData:[Character] = ["[","R","e","p","l","y"," ","m","e","s","s","a","g","e","s"]
fileprivate let kStr_moreData:String = " topush block below"
fileprivate let kStr_makeModelName:String = "key string by get "

/*: "title" :*/
fileprivate let kStr_hiddenValue:[Character] = ["t","i","t","l","e"]

/*: "img" :*/
fileprivate let kStr_countTitle:String = "imframe"

/*: "[Photo]" :*/
fileprivate let kStr_failureTitle:String = "[Photo]view view"

/*: "[Audio]" :*/
fileprivate let kStr_effectData:String = "[Audiself var name"
fileprivate let kStr_promptName:[Character] = ["o","]"]

/*: "rYMsgType" :*/
fileprivate let kStr_removeValue:[Character] = ["r","Y","M","s","g"]
fileprivate let kStr_matchPremiumFileText:[Character] = ["T","y","p","e"]

/*: "GJ:CallCustom" :*/
fileprivate let kStr_colorLineContent:String = "var table keyGJ:Cal"

/*: "callCmd" :*/
fileprivate let kStr_byValue:String = "callCmdhidden data color true"

/*: "missCall" :*/
fileprivate let kStr_sceneValue:[Character] = ["m","i","s"]
fileprivate let kStr_firstName:String = "sCallview else"

/*: "[Missed Call]" :*/
fileprivate let kStr_dataTitle:String = "[Misspick guard progress not"
fileprivate let kStr_titleName:String = "player"
fileprivate let kStr_makeName:String = "d Call]remove view return let"

/*: "logType" :*/
fileprivate let kStr_viewName:[Character] = ["l","o","g","T","y","p"]
fileprivate let kStr_hourValue:String = "enable"

/*: "[Voice Call]" :*/
fileprivate let kStr_alongName:String = "view make some[Voice "
fileprivate let kStr_value:String = "Call]right color"

/*: "[Video Call]" :*/
fileprivate let kStr_colorEnableText:String = "[Videequal self"

/*: "video" :*/
fileprivate let kStr_shareData:String = "vsucceedeo"

/*: "contentType" :*/
fileprivate let kStr_appValue:[Character] = ["c","o","n","t","e","n","t","T","y","p","e"]

/*: "VideoMsg" :*/
fileprivate let kStr_formatValue:[Character] = ["V","i","d","e","o","M","s"]
fileprivate let kStr_leadingText:[Character] = ["g"]

/*: "[Short Video]" :*/
fileprivate let kStr_viewSizeTitle:String = "on normal push live[Sho"
fileprivate let kStr_imageText:[Character] = ["r","t"," ","V","i","d","e","o","]"]

/*: "match" :*/
fileprivate let kStr_layerName:[Character] = ["m","a","t","c","h"]

/*: "[Cupid messaging]" :*/
fileprivate let kStr_addName:String = "number model status[Cu"
fileprivate let kStr_textValue:String = "back equalpid me"
fileprivate let kStr_viewWeightData:String = "ing]style right image"

/*: "GJ:Sess:TxtCustom" :*/
fileprivate let kStr_data:String = "let elseGJ:Ses"
fileprivate let kStr_equalName:String = "equal view totCust"
fileprivate let kStr_labTitle:[Character] = ["o","m"]

/*: "isSend" :*/
fileprivate let kStr_managerValue:String = "isSendto pad stop make load"

/*: "Sent Gift" :*/
fileprivate let kStr_fieldClearName:[Character] = ["S","e","n","t"," ","G","i","f","t"]

/*: "Receive Gift" :*/
fileprivate let kStr_bottomText:String = "Receivself file value moment"

/*: "uid" :*/
fileprivate let kStr_itemTitle:String = "uranged"

/*: "gift" :*/
fileprivate let kStr_viewTitle:String = "GIFT"

/*: "name" :*/
fileprivate let kStr_sexLabelReturnTitle:[Character] = ["n","a","m","e"]

/*: "num" :*/
fileprivate let kStr_shareName:String = "cellm"

/*:   :*/
fileprivate let kStr_messageData:[Character] = [" "]

/*:  x :*/
fileprivate let kStr_toValue:String = " xself add normal size view"

/*: "imageUri" :*/
fileprivate let kStr_styleIndicatorData:[Character] = ["i","m","a","g","e","U","r","i"]

/*: "imageData" :*/
fileprivate let kStr_infoSharedName:String = "equal"
fileprivate let kStr_toolContent:[Character] = ["m","a","g","e","D","a","t","a"]

/*: "<img>" :*/
fileprivate let kStr_userData:String = "true user now expression<img>"

/*: "</img>" :*/
fileprivate let kStr_modelText:String = "</img>view let view gift"

/*: "wantGift" :*/
fileprivate let kStr_iconText:[Character] = ["w","a"]
fileprivate let kStr_norData:[Character] = ["n","t","G","i","f","t"]

/*: "intimatePhoto" :*/
fileprivate let kStr_infoName:[Character] = ["i","n","t","i","m","a","t","e","P","h","o"]
fileprivate let kStr_succeedName:String = "tup"

/*: "audioData" :*/
fileprivate let kStr_originalValue:String = "count"
fileprivate let kStr_activityContent:[Character] = ["u","d","i","o","D","a","t","a"]

/*: "audioUri" :*/
fileprivate let kStr_messageText:String = "apath"
fileprivate let kStr_makeGiftData:String = "dioUritrue in image view post"

/*: "draftContent" :*/
fileprivate let kStr_postData:String = "drate"
fileprivate let kStr_fatalValue:String = "define layer normal size quoteaftCon"

/*: "[draft]%@" :*/
fileprivate let kStr_bottomName:[Character] = ["[","d","r","a","f","t","]","%","@"]

/*: "99999+" :*/
fileprivate let kStr_dataValue:[UInt8] = [0x45,0x45,0x45,0x45,0x45,0x57]

private func propertySize(wrap num: UInt8) -> UInt8 {
    return num ^ 124
}

/*: "New" :*/
fileprivate let kStr_remoteName:String = "in textNew"

/*: "99+" :*/
fileprivate let kStr_momentAtData:[Character] = ["9","9","+"]

/*: "Account is restricted！" :*/
fileprivate let kStr_viewContent:String = "Accountlet s to"
fileprivate let kStr_titleValue:String = "var empty plain with time is "
fileprivate let kStr_tableText:String = "nameest"

/*: "%@ Online" :*/
fileprivate let kStr_removeData:String = "else add bottom%@ On"

/*: "Messages not been replied here" :*/
fileprivate let kStr_atText:String = "Messashow fragment share self result"
fileprivate let kStr_netName:String = "height status timet be"
fileprivate let kStr_addValue:String = "background let path dismiss centerplied he"
fileprivate let kStr_voiceCellData:String = "rsize"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  LocationViewCell.swift
//  AbroadTalking
//
//  Created by Hemming on 2022/9/12.
//

//: import UIKit
import UIKit

//: let RCSystemFormatType                 = "formatType"
let kLet_warningText = (String(kStr_sizeBlockDataTitle) + String(kStr_detailTitle))
//: let RCSystemFormatTypePlain            = "plain"
let kLet_nameNetAppValue = (String(kStr_memberTitle))

//: class TalkingChatListTableCell: UITableViewCell {
class LocationViewCell: UITableViewCell {
    //: required init?(coder: NSCoder) {
    required init?(coder: NSCoder) {
        //: super.init(coder: coder)
        super.init(coder: coder)
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: kStr_attributeName.map{mainEqual(no: $0)}, encoding: .utf8)!)
    }

    //: override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        //: super.init(style: style, reuseIdentifier: reuseIdentifier)
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        //: createCellUI()
        titleUi()
        //: createCellUIConstraints()
        onConstraints()
    }

    // MARK: - Lazy load

    //: private lazy var headImgView: UIImageView = {
    private lazy var headImgView: UIImageView = {
        //: let imageView = UIImageView.init()
        let imageView = UIImageView()
        //: imageView.layer.cornerRadius = 30
        imageView.layer.cornerRadius = 30
        //: imageView.clipsToBounds = true
        imageView.clipsToBounds = true
        //: imageView.backgroundColor = UIColor.white
        imageView.backgroundColor = UIColor.white
        //: imageView.contentMode = .scaleAspectFill
        imageView.contentMode = .scaleAspectFill
        //: return imageView
        return imageView
        //: }()
    }()

    //: private lazy var iconBorder: UIButton = {
    private lazy var iconBorder: UIButton = {
        //: let btn = UIButton.init()
        let btn = UIButton()
        //: btn.imageView?.contentMode = .scaleAspectFill
        btn.imageView?.contentMode = .scaleAspectFill
        //: btn.isUserInteractionEnabled = false
        btn.isUserInteractionEnabled = false
        //: self.addSubview(btn)
        self.addSubview(btn)
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var badgeLab: UILabel = {
    private lazy var badgeLab: UILabel = {
        //: let label = UILabel.init()
        let label = UILabel()
        //: label.font = .pingfangFont(type: .Medium, fontSize: 13)
        label.font = .groupSize(type: .Medium, fontSize: 13)
        //: label.textAlignment = .center
        label.textAlignment = .center
        //: label.textColor = .white
        label.textColor = .white
        //: label.backgroundColor = UIColor(hex: "#FF2348")
        label.backgroundColor = UIColor(hex: (String(kStr_directionContent)))
        //: label.layer.cornerRadius = 10
        label.layer.cornerRadius = 10
        //: label.layer.masksToBounds = true
        label.layer.masksToBounds = true
        //: label.layer.borderColor = UIColor.white.cgColor
        label.layer.borderColor = UIColor.white.cgColor
        //: label.layer.borderWidth = 1
        label.layer.borderWidth = 1
        //: label.isHidden = true
        label.isHidden = true
        //: return label
        return label
        //: }()
    }()

    //: private lazy var nickNameLabel: UILabel = {
    private lazy var nickNameLabel: UILabel = {
        //: let label = UILabel.init()
        let label = UILabel()
        //: label.font = .pingfangFont(type: .Medium, fontSize: 18)
        label.font = .groupSize(type: .Medium, fontSize: 18)
        //: label.textColor = .appTitleColor()
        label.textColor = .dataFormat()
        //: return label
        return label
        //: }()
    }()

    //: private lazy var msgShowLabel: UILabel = {
    private lazy var msgShowLabel: UILabel = {
        //: let label = UILabel.init()
        let label = UILabel()
        //: label.font = .pingfangFont(type: .Regular, fontSize: 15)
        label.font = .groupSize(type: .Regular, fontSize: 15)
        //: label.textColor = .statusMin()
        label.textColor = .statusMin()
        //: return label
        return label
        //: }()
    }()

    //: private lazy var timeLab: UILabel = {
    private lazy var timeLab: UILabel = {
        //: let label = UILabel.init()
        let label = UILabel()
        //: label.font = .pingfangFont(type: .Medium, fontSize: 12)
        label.font = .groupSize(type: .Medium, fontSize: 12)
        //: label.textColor = .statusMin()
        label.textColor = .statusMin()
        //: return label
        return label
        //: }()
    }()

    //: lazy var loungeImgV: UIImageView = {
    lazy var loungeImgV: UIImageView = {
        //: let img = UIImageView()
        let img = UIImageView()
        //: img.image = UIImage.bundleBy(name: "icon_lounge")
        img.image = UIImage.bundleBy(name: (String(kStr_backValue) + kStr_equalValue.replacingOccurrences(of: "send", with: "e")))
        //: return img
        return img
        //: }()
    }()

    //: private lazy var authImgV: UIImageView = {
    private lazy var authImgV: UIImageView = {
        //: let imgV = UIImageView()
        let imgV = UIImageView()
        //: imgV.image = UIImage.bundleBy(name: "icon_home_v")
        imgV.image = UIImage.bundleBy(name: (String(kStr_sizeValue.prefix(6)) + "ome_v"))
        //: return imgV
        return imgV
        //: }()
    }()

    //: private lazy var newImgV: TalkingButton = {
    private lazy var newImgV: OverdoTalkingButton = {
        //: let imgV = TalkingButton()
        let imgV = OverdoTalkingButton()
        //: imgV.setBackgroundImage(UIImage.bundleBy(name: "icon_chat_list_new"), for: .normal)
        imgV.setBackgroundImage(UIImage.bundleBy(name: (String(kStr_itemName) + kStr_countEqualData.replacingOccurrences(of: "input", with: "l") + String(kStr_popData))), for: .normal)
        //: return imgV
        return imgV
        //: }()
    }()

    //: private lazy var officialImgV: UIButton = {
    private lazy var officialImgV: UIButton = {
        //: let img = UIButton()
        let img = UIButton()
        //: img.setBackgroundColor(color: UIColor.msgTipsColor(), forState: .normal)
        img.colorEffectLoad(color: UIColor.welt(), forState: .normal)
        //: img.setTitle("Official".localized, for: .normal)
        img.setTitle((String(kStr_sizeName.suffix(4)) + "cial").localized, for: .normal)
        //: img.setTitleColor(.white, for: .normal)
        img.setTitleColor(.white, for: .normal)
        //: img.titleLabel?.font = UIFont.messageDown(fontSize: 11)
        img.titleLabel?.font = UIFont.messageDown(fontSize: 11)
        //: img.layer.cornerRadius = 8
        img.layer.cornerRadius = 8
        //: img.layer.masksToBounds = true
        img.layer.masksToBounds = true
        //: return img
        return img
        //: }()
    }()

    //: private lazy var onlineStatus: UIView = {
    private lazy var onlineStatus: UIView = {
        //: let v = UIView()
        let v = UIView()
        //: v.backgroundColor = UIColor(hex: "#30D00B")
        v.backgroundColor = UIColor(hex: (kStr_numberValue.replacingOccurrences(of: "view", with: "3") + String(kStr_makeValue.prefix(5))))
        //: v.layer.cornerRadius = 5
        v.layer.cornerRadius = 5
        //: v.layer.borderColor = UIColor.white.cgColor
        v.layer.borderColor = UIColor.white.cgColor
        //: v.layer.borderWidth = 1
        v.layer.borderWidth = 1
        //: v.isHidden = true
        v.isHidden = true
        //: return v
        return v
        //: }()
    }()

    //: private lazy var imtimateBtn: TalkingButton = {
    private lazy var imtimateBtn: OverdoTalkingButton = {
        //: let btn = TalkingButton.init()
        let btn = OverdoTalkingButton()
        //: btn.setImage(UIImage.bundleBy(name: "iv_message_honey"), for: .normal)
        btn.setImage(UIImage.bundleBy(name: (String(kStr_errorRemoveValue.prefix(4)) + "essage" + String(kStr_customSizeData.suffix(6)))), for: .normal)
        //: btn.spaceBetweenTitleAndImage = 2
        btn.spaceBetweenTitleAndImage = 2
        //: btn.titleLabel?.font = .pingfangFont(type: .Medium, fontSize: 12)
        btn.titleLabel?.font = .groupSize(type: .Medium, fontSize: 12)
        //: btn.setTitleColor(UIColor.init(hex: "#FF60B9"), for: .normal)
        btn.setTitleColor(UIColor(hex: (String(kStr_currentText.prefix(7)))), for: .normal)
        //: btn.contentHorizontalAlignment = .right
        btn.contentHorizontalAlignment = .right
        //: if LanguageManager.shared.direction == .rightToLeft {
        if DeleteClientThen.shared.direction == .rightToLeft {
            //: btn.contentHorizontalAlignment = .left
            btn.contentHorizontalAlignment = .left
        }
        //: return btn
        return btn
        //: }()
    }()
}

//: extension TalkingChatListTableCell {
extension LocationViewCell {
    //: override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        //: let animationColor = UIColor.init(hex: "#EEEEEE")
        let animationColor = UIColor(hex: (String(kStr_imageTitle.prefix(7))))
        //: let animationDuration: Double = 0.4
        let animationDuration = 0.4

        //: super.touchesBegan(touches, with: event)
        super.touchesBegan(touches, with: event)
        //: let coverView = UIView(frame: bounds)
        let coverView = UIView(frame: bounds)
        //: coverView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        coverView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        //: coverView.backgroundColor = UIColor.clear
        coverView.backgroundColor = UIColor.clear
        //: self.addSubview(coverView)
        self.addSubview(coverView)

        //: let touch = touches.first!
        let touch = touches.first!
        //: let point = touch.location(in: self)
        let point = touch.location(in: self)

        //: let ourTouchView = UIView(frame: CGRect(x: point.x - 5, y: point.y - 5, width: 10, height: 10))
        let ourTouchView = UIView(frame: CGRect(x: point.x - 5, y: point.y - 5, width: 10, height: 10))

        //: let circleMaskPathInitial = UIBezierPath(ovalIn: ourTouchView.frame)
        let circleMaskPathInitial = UIBezierPath(ovalIn: ourTouchView.frame)
        //: let pathRect = self.bounds.inset(by: UIEdgeInsets(top: 1, left: 1, bottom: 1, right: 1))
        let pathRect = self.bounds.inset(by: UIEdgeInsets(top: 1, left: 1, bottom: 1, right: 1))
        //: let circleMaskPathFinal = UIBezierPath(roundedRect: pathRect, cornerRadius: 5)
        let circleMaskPathFinal = UIBezierPath(roundedRect: pathRect, cornerRadius: 5)

        //: let rippleLayer = CAShapeLayer()
        let rippleLayer = CAShapeLayer()
        //: rippleLayer.opacity = 1.0
        rippleLayer.opacity = 1.0
        //: rippleLayer.fillColor = animationColor?.cgColor
        rippleLayer.fillColor = animationColor?.cgColor
        //: rippleLayer.path = circleMaskPathFinal.cgPath
        rippleLayer.path = circleMaskPathFinal.cgPath
        //: coverView.layer.addSublayer(rippleLayer)
        coverView.layer.addSublayer(rippleLayer)

        // fade up
        //: let fadeUp = CABasicAnimation(keyPath: "opacity")
        let fadeUp = CABasicAnimation(keyPath: (String(kStr_textGroupName)))
        //: fadeUp.beginTime = CACurrentMediaTime()
        fadeUp.beginTime = CACurrentMediaTime()
        //: fadeUp.duration = 0.1
        fadeUp.duration = 0.1
        //: fadeUp.toValue = 0.8
        fadeUp.toValue = 0.8
        //: fadeUp.timingFunction = CAMediaTimingFunction(name: CAMediaTimingFunctionName.easeOut)
        fadeUp.timingFunction = CAMediaTimingFunction(name: CAMediaTimingFunctionName.easeOut)
        //: fadeUp.fillMode = CAMediaTimingFillMode.forwards
        fadeUp.fillMode = CAMediaTimingFillMode.forwards
        //: fadeUp.isRemovedOnCompletion = false
        fadeUp.isRemovedOnCompletion = false
        //: rippleLayer.add(fadeUp, forKey: nil)
        rippleLayer.add(fadeUp, forKey: nil)

        // fade down
        //: let fade = CABasicAnimation(keyPath: "opacity")
        let fade = CABasicAnimation(keyPath: (String(kStr_textGroupName)))
        //: fade.beginTime = CACurrentMediaTime() + animationDuration * 0.60
        fade.beginTime = CACurrentMediaTime() + animationDuration * 0.60
        //: fade.duration = 0.1
        fade.duration = 0.1
        //: fade.toValue = 0
        fade.toValue = 0
        //: fade.timingFunction = CAMediaTimingFunction(name: CAMediaTimingFunctionName.easeOut)
        fade.timingFunction = CAMediaTimingFunction(name: CAMediaTimingFunctionName.easeOut)
        //: fade.fillMode = CAMediaTimingFillMode.forwards
        fade.fillMode = CAMediaTimingFillMode.forwards
        //: fade.isRemovedOnCompletion = false
        fade.isRemovedOnCompletion = false
        //: rippleLayer.add(fade, forKey: nil)
        rippleLayer.add(fade, forKey: nil)

        // change path
        //: CATransaction.begin()
        CATransaction.begin()
        //: let maskLayerAnimation = CABasicAnimation(keyPath: "path")
        let maskLayerAnimation = CABasicAnimation(keyPath: (kStr_appLogValue.lowercased()))
        //: maskLayerAnimation.fromValue = circleMaskPathInitial.cgPath
        maskLayerAnimation.fromValue = circleMaskPathInitial.cgPath
        //: maskLayerAnimation.toValue = circleMaskPathFinal.cgPath
        maskLayerAnimation.toValue = circleMaskPathFinal.cgPath
        //: maskLayerAnimation.beginTime = CACurrentMediaTime()
        maskLayerAnimation.beginTime = CACurrentMediaTime()
        //: maskLayerAnimation.duration = 0.1
        maskLayerAnimation.duration = 0.1
        //: maskLayerAnimation.timingFunction = CAMediaTimingFunction(name: CAMediaTimingFunctionName.easeOut)
        maskLayerAnimation.timingFunction = CAMediaTimingFunction(name: CAMediaTimingFunctionName.easeOut)
        //: CATransaction.setCompletionBlock({
        CATransaction.setCompletionBlock {
            //: coverView.removeFromSuperview()
            coverView.removeFromSuperview()
            //: })
        }
        //: rippleLayer.add(maskLayerAnimation, forKey: "path")
        rippleLayer.add(maskLayerAnimation, forKey: (kStr_appLogValue.lowercased()))
        //: CATransaction.commit()
        CATransaction.commit()
    }
}

// MARK: - Public Event

//: extension TalkingChatListTableCell {
extension LocationViewCell {
    /// 刷新cell
    /// - Parameter model: 模型
    //: func refreshCell(model: TalkingConversationModel?) {
    func currentModel(model: ViewConversationModel?) {
        //: guard let model = model else { return }
        guard let model = model else { return }
        //: let isOther = (model.chatType == .system || model.chatType == .service ||
        let isOther = (model.chatType == .system || model.chatType == .service ||
            //: model.chatType == .group || model.chatType == .moreMsg)
            model.chatType == .group || model.chatType == .moreMsg)
        // 更新昵称、头像、vip标识
        //: updateUserInfo(userInfo: model.gj_userInfo, model: model, isOther: isOther)
        person(userInfo: model.gj_userInfo, model: model, isOther: isOther)
        // 未读消息数
        //: updateUnreadNumber(unreadCount: Int(model.unreadCount))
        imageMagnitude(unreadCount: Int(model.unreadCount))
        // 详情消息
        //: handleC2CMessage(model: model)
        takeCareSend(model: model)

        //: if model.chatType == .group || model.chatType == .moreMsg {
        if model.chatType == .group || model.chatType == .moreMsg {
            //: self.accessoryType = .disclosureIndicator
            self.accessoryType = .disclosureIndicator // 添加箭头
            //: } else {
        } else {
            //: self.accessoryType = .none
            self.accessoryType = .none
        }
        // 时间
        //: timeLab.text = nil
        timeLab.text = nil
        //: if isOther == false && model.hasTimestamp {
        if isOther == false, model.hasTimestamp {
            //: let timestamp: Date? = model.timestamp as Date?
            let timestamp: Date? = model.timestamp as Date?
            //: if timestamp != nil && timestamp!.timeIntervalSince1970 > NSTimeIntervalSince1970 {
            if timestamp != nil, timestamp!.timeIntervalSince1970 > NSTimeIntervalSince1970 {
                //: timeLab.text = NSDate.tx_messageTimeString(showDetail: false, date: timestamp!)
                timeLab.text = NSDate.teachingMethodDate(showDetail: false, date: timestamp!)
            }
        }
        // 置顶背景色
        //: if model.isPinned == true {
        if model.isPinned == true {
            //: contentView.backgroundColor = UIColor(hex: "#EEEEEE")
            contentView.backgroundColor = UIColor(hex: (String(kStr_imageTitle.prefix(7))))
            //: } else {
        } else {
            //: contentView.backgroundColor = (LocationThen.share.appStatus == AppSkinStatus.special.rawValue) ? .clear:.white
            contentView.backgroundColor = (LocationThen.share.appStatus == SharedInsetTarget.special.rawValue) ? .clear : .white
        }
        //: self.backgroundColor = contentView.backgroundColor
        self.backgroundColor = contentView.backgroundColor
    }

    /// 处理最新消息
    //: static func handleShowC2CDetailTextOfMessage(model: TalkingConversationModel) -> NSMutableAttributedString? {
    static func withFit(model: ViewConversationModel) -> NSMutableAttributedString? {
//        messageType 消息类型：1系统消息 2官方小秘 3自动打招呼 4主动打招呼 5付费消息 6普通消息 7主动打招呼未回复 8.主打招呼回复 9，自动打招呼未回复 10, 自动打招呼回复11.发送礼物消息 12互相关注消息 13 取消关注 22家族邀请跳转消息 25索要礼物
        //: var detailAttrString: NSMutableAttributedString?
        var detailAttrString: NSMutableAttributedString?
        //: let change = false
        let change = false
        //: var speColor = [NSValue: UIColor]()
        var speColor = [NSValue: UIColor]()
        //: let showUnread = model.isShowMsgUnread && model.unreadCount > 0
        let showUnread = model.isShowMsgUnread && model.unreadCount > 0
        //: let direction: TMsgDirection = (model.listShowMessage?.isSelf ?? false) ? .MsgDirectionOutgoing:.MsgDirectionIncoming
        let direction: TMsgDirection = (model.listShowMessage?.isSelf ?? false) ? .MsgDirectionOutgoing : .MsgDirectionIncoming
        //: var voice_msgInfo: JSON?
        var voice_msgInfo: JSON?

        //: guard model.draftText.isEmptyString else {
        guard model.draftText.isEmptyString else { // 草稿
            //: detailAttrString = self.getDraftString(draft: &model.draftText)
            detailAttrString = self.modelDraft(draft: &model.draftText)
            //: detailAttrString?.addAttribute(.font, value: UIFont.pingfangFont(type: .Regular, fontSize: 15), range: NSRange(location: 0, length: detailAttrString?.length ?? 0))
            detailAttrString?.addAttribute(.font, value: UIFont.groupSize(type: .Regular, fontSize: 15), range: NSRange(location: 0, length: detailAttrString?.length ?? 0))
            //: return detailAttrString
            return detailAttrString
        }

        //: let extra = String(data: (model.listShowMessage?.customElem.data)!, encoding: .utf8)
        let extra = String(data: (model.listShowMessage?.customElem.data)!, encoding: .utf8)
        //: let json = JSON(parseJSON: extra!)
        let json = JSON(parseJSON: extra!)
        //: let extraDic = json["extra"]
        let extraDic = json[(kStr_errFillValue.replacingOccurrences(of: "succeed", with: "a"))]
        //: let msgInfo = extraDic["msgInfo"]
        let msgInfo = extraDic[(String(kStr_upData))]
        //: var content = msgInfo["content"].stringValue.deleteHtmlTips()
        var content = msgInfo[(kStr_resultData.lowercased() + kStr_barStyleName.replacingOccurrences(of: "path", with: "t"))].stringValue.addFromTips()
        //: let messageType = msgInfo["messageType"].intValue
        let messageType = msgInfo[(String(kStr_dataName) + String(kStr_noValue))].intValue
        //: let formatTypeStr = extraDic["formatType"].stringValue
        let formatTypeStr = extraDic[(String(kStr_sizeBlockDataTitle) + String(kStr_detailTitle))].stringValue

        //: if TalkingPrivateChatManager.isReplyToGetPointsMsg(direction, messageType, msgTime: model.listShowMessage?.timestamp) {
        if FillPathChatManager.straddleTime(direction, messageType, msgTime: model.listShowMessage?.timestamp) { // 回复获取积分消息
            //: let content = "[Reply messages to get points]".localized
            let content = (String(kStr_hiddenData) + String(kStr_moreData.prefix(3)) + String(kStr_makeModelName.suffix(5)) + "points]").localized
            //: let color  = UIColor.appValueColor()
            let color = UIColor.priority()
            //: detailAttrString = NSMutableAttributedString(string: content)
            detailAttrString = NSMutableAttributedString(string: content)
            //: speColor = [NSValue(range: NSRange(location: 0, length: detailAttrString?.length ?? 0)): color]
            speColor = [NSValue(range: NSRange(location: 0, length: detailAttrString?.length ?? 0)): color]

            //: } else if model.chatType == .system {
        } else if model.chatType == .system { // 官方消息，只展示文本
            //: var content = extraDic["title"].stringValue
            var content = extraDic[(String(kStr_hiddenValue))].stringValue
            //: let sysContent = extraDic["content"].stringValue
            let sysContent = extraDic[(kStr_resultData.lowercased() + kStr_barStyleName.replacingOccurrences(of: "path", with: "t"))].stringValue
            //: let sysImg = extraDic["img"].stringValue
            let sysImg = extraDic[(kStr_countTitle.replacingOccurrences(of: "frame", with: "g"))].stringValue
            //: if content.count > 0 || sysContent.count > 0 || sysImg.count > 0 {
            if content.count > 0 || sysContent.count > 0 || sysImg.count > 0 { // 跳转系统消息
                //: if content.count == 0 {
                if content.count == 0 {
                    //: content.append(sysContent)
                    content.append(sysContent)
                }
                //: if sysImg.count > 0 {
                if sysImg.count > 0 {
                    //: content.append("[Photo]".localized)
                    content.append((String(kStr_failureTitle.prefix(7))).localized)
                }

                //: } else {
            } else { // 默认系统消息
                //: content = msgInfo["content"].stringValue
                content = msgInfo[(kStr_resultData.lowercased() + kStr_barStyleName.replacingOccurrences(of: "path", with: "t"))].stringValue
                //: if content.isEmptyString {
                if content.isEmptyString {
                    //: content = json["content"].stringValue
                    content = json[(kStr_resultData.lowercased() + kStr_barStyleName.replacingOccurrences(of: "path", with: "t"))].stringValue
                }
                //: content = content.deleteHtmlTips()
                content = content.addFromTips()
            }
            //: detailAttrString = NSMutableAttributedString(string: content)
            detailAttrString = NSMutableAttributedString(string: content)

            //: } else if TUIMsgChatManager.checkVoiceJsonMsg(msginfo: msgInfo.dictionaryValue) {
        } else if TUIMsgChatManager.checkVoiceJsonMsg(msginfo: msgInfo.dictionaryValue) { // 语音
            //: voice_msgInfo = msgInfo
            voice_msgInfo = msgInfo
            //: content = "[Audio]".localized
            content = (String(kStr_effectData.prefix(5)) + String(kStr_promptName)).localized
            //: detailAttrString = NSMutableAttributedString(string: content)
            detailAttrString = NSMutableAttributedString(string: content)

            //: } else if json["rYMsgType"].stringValue == "GJ:CallCustom" { // 音视频通话
        } else if json[(String(kStr_removeValue) + String(kStr_matchPremiumFileText))].stringValue == (String(kStr_colorLineContent.suffix(6)) + "lCustom") { // 音视频通话
            if msgInfo["callCmd"] == "missCall" { // 未接来电
                //: content = "[Missed Call]".localized
                content = (String(kStr_dataTitle.prefix(5)) + kStr_titleName.replacingOccurrences(of: "player", with: "e") + String(kStr_makeName.prefix(7))).localized
                //: } else {
            } else {
                //: if msgInfo["logType"].intValue == 1 { // 音频
                if msgInfo[(String(kStr_viewName) + kStr_hourValue.replacingOccurrences(of: "enable", with: "e"))].intValue == 1 { // 音频
                    //: content = "[Voice Call]".localized
                    content = (String(kStr_alongName.suffix(7)) + String(kStr_value.prefix(5))).localized
                    //: } else {
                } else {
                    //: content = "[Video Call]".localized
                    content = (String(kStr_colorEnableText.prefix(5)) + "o Call]").localized
                }
            }

            //: detailAttrString = NSMutableAttributedString(string: content)
            detailAttrString = NSMutableAttributedString(string: content)

        } else if msgInfo["video"].exists() || msgInfo["contentType"] == "VideoMsg" { // 短视频
            //: content = "[Short Video]".localized
            content = (String(kStr_viewSizeTitle.suffix(4)) + String(kStr_imageText)).localized
            //: detailAttrString = NSMutableAttributedString(string: content)
            detailAttrString = NSMutableAttributedString(string: content)

            //: } else if (extraDic["match"].stringValue == "1" || msgInfo["match"].stringValue == "1") { // 匹配消息
        } else if extraDic[(String(kStr_layerName))].stringValue == "1" || msgInfo[(String(kStr_layerName))].stringValue == "1" { // 匹配消息
            //: content = "[Cupid messaging]".localized
            content = (String(kStr_addName.suffix(3)) + String(kStr_textValue.suffix(6)) + "ssag" + String(kStr_viewWeightData.prefix(4))).localized
            //: detailAttrString = NSMutableAttributedString(string: content)
            detailAttrString = NSMutableAttributedString(string: content)

            //: } else if json["rYMsgType"].stringValue == "GJ:Sess:TxtCustom" { // 提示消息
        } else if json[(String(kStr_removeValue) + String(kStr_matchPremiumFileText))].stringValue == (String(kStr_data.suffix(6)) + "s:Tx" + String(kStr_equalName.suffix(5)) + String(kStr_labTitle)) { // 提示消息
            //: content = json["content"].stringValue
            content = json[(kStr_resultData.lowercased() + kStr_barStyleName.replacingOccurrences(of: "path", with: "t"))].stringValue
            //: detailAttrString = NSMutableAttributedString(string: content)
            detailAttrString = NSMutableAttributedString(string: content)

            //: } else if messageType == 11 {
        } else if messageType == 11 { // 送礼
            //: let isSend = msgInfo["isSend"].string
            let isSend = msgInfo[(String(kStr_managerValue.prefix(6)))].string
            //: var string1: String?
            var string1: String?
            //: if isSend != nil {
            if isSend != nil {
                //: string1 = isSend!.boolValue ? "Sent Gift".localized:"Receive Gift".localized
                string1 = isSend!.boolValue ? (String(kStr_fieldClearName)).localized : (String(kStr_bottomText.prefix(6)) + "e Gift").localized
                //: } else {
            } else {
                //: let uid = msgInfo["uid"].stringValue
                let uid = msgInfo[(kStr_itemTitle.replacingOccurrences(of: "range", with: "i"))].stringValue
                //: string1 = (uid == LocationThen.share.loginUserMode.userID) ? "Sent Gift".localized:"Receive Gift".localized
                string1 = (uid == LocationThen.share.loginUserMode.userID) ? (String(kStr_fieldClearName)).localized : (String(kStr_bottomText.prefix(6)) + "e Gift").localized
            }
            //: let name = extraDic["gift"]["name"].stringValue
            let name = extraDic[(kStr_viewTitle.lowercased())][(String(kStr_sexLabelReturnTitle))].stringValue
            //: let num = extraDic["gift"]["num"].stringValue
            let num = extraDic[(kStr_viewTitle.lowercased())][(kStr_shareName.replacingOccurrences(of: "cell", with: "nu"))].stringValue

            //: content = "\(string1!) \(name) x\(num)"
            content = "\(string1!) \(name) x\(num)"
            //: detailAttrString = NSMutableAttributedString(string: content)
            detailAttrString = NSMutableAttributedString(string: content)

            //: } else if messageType == 4 {
        } else if messageType == 4 { // 主动打招呼
//            let uid = msgInfo["uid"].stringValue
//            let toUid = msgInfo["toUid"].stringValue
            //: detailAttrString = NSMutableAttributedString(string: content)
            detailAttrString = NSMutableAttributedString(string: content)

            //: } else if messageType == 3 {
        } else if messageType == 3 { // 自动打招呼
            //: let imageUri = msgInfo["imageUri"].stringValue
            let imageUri = msgInfo[(String(kStr_styleIndicatorData))].stringValue
            //: let imageData = msgInfo["imageData"].stringValue
            let imageData = msgInfo[(kStr_infoSharedName.replacingOccurrences(of: "equal", with: "i") + String(kStr_toolContent))].stringValue

            //: if TUIMsgChatManager.checkVoiceJsonMsg(msginfo: msgInfo.dictionaryValue) {
            if TUIMsgChatManager.checkVoiceJsonMsg(msginfo: msgInfo.dictionaryValue) {
                //: content = "[Audio]".localized
                content = (String(kStr_effectData.prefix(5)) + String(kStr_promptName)).localized
                //: } else if (imageUri.count > 0 || imageData.count > 0) {
            } else if imageUri.count > 0 || imageData.count > 0 {
                //: content = "[Photo]".localized
                content = (String(kStr_failureTitle.prefix(7))).localized
            }
            //: detailAttrString = NSMutableAttributedString(string: content)
            detailAttrString = NSMutableAttributedString(string: content)

            //: } else if formatTypeStr == RCSystemFormatTypePlain {
        } else if formatTypeStr == kLet_nameNetAppValue {
            //: var content  = msgInfo["content"].stringValue
            var content = msgInfo[(kStr_resultData.lowercased() + kStr_barStyleName.replacingOccurrences(of: "path", with: "t"))].stringValue
            //: var imageUrl = extraDic["imageUri"].stringValue
            var imageUrl = extraDic[(String(kStr_styleIndicatorData))].stringValue
            //: let imageData = extraDic["imageData"].stringValue
            let imageData = extraDic[(kStr_infoSharedName.replacingOccurrences(of: "equal", with: "i") + String(kStr_toolContent))].stringValue
            //: if imageUrl.count == 0 || imageData.count > 0 {
            if imageUrl.count == 0 || imageData.count > 0 {
                //: if content.hasPrefix("<img>") && content.hasSuffix("</img>") {
                if content.hasPrefix((String(kStr_userData.suffix(5)))), content.hasSuffix((String(kStr_modelText.prefix(6)))) {
                    //: var str = NSString(string: content)
                    var str = NSString(string: content)
                    //: str = str.replacingOccurrences(of: "<img>", with: "") as NSString
                    str = str.replacingOccurrences(of: (String(kStr_userData.suffix(5))), with: "") as NSString
                    //: str = str.replacingOccurrences(of: "</img>", with: "") as NSString
                    str = str.replacingOccurrences(of: (String(kStr_modelText.prefix(6))), with: "") as NSString
                    //: imageUrl = str as String
                    imageUrl = str as String
                }
            }

            //: if (imageUrl.count > 0 || imageData.count > 0) {
            if imageUrl.count > 0 || imageData.count > 0 {
                //: content = "[Photo]".localized
                content = (String(kStr_failureTitle.prefix(7))).localized
                //: } else {
            } else {
                //: content = content.deleteHtmlTips()
                content = content.addFromTips()
            }

            //: detailAttrString = NSMutableAttributedString(string: content)
            detailAttrString = NSMutableAttributedString(string: content)

            //: } else if messageType == 25 {
        } else if messageType == 25 { // 索要礼物
            //: if let wantGift  = msgInfo["wantGift"].dictionary {
            if let wantGift = msgInfo[(String(kStr_iconText) + String(kStr_norData))].dictionary {
                //: let content = wantGift["content"]?.string ?? ""
                let content = wantGift[(kStr_resultData.lowercased() + kStr_barStyleName.replacingOccurrences(of: "path", with: "t"))]?.string ?? ""
                //: detailAttrString = NSMutableAttributedString(string: content)
                detailAttrString = NSMutableAttributedString(string: content)
            }

            //: } else {
        } else {
            // 图片

            //: let imageUri             = msgInfo["imageUri"].stringValue
            let imageUri = msgInfo[(String(kStr_styleIndicatorData))].stringValue
            //: let imageData            = msgInfo["imageData"].stringValue
            let imageData = msgInfo[(kStr_infoSharedName.replacingOccurrences(of: "equal", with: "i") + String(kStr_toolContent))].stringValue
            //: let intimatePhotoDict    = msgInfo["intimatePhoto"].dictionaryValue // 私密照片
            let intimatePhotoDict = msgInfo[(String(kStr_infoName) + kStr_succeedName.replacingOccurrences(of: "up", with: "o"))].dictionaryValue // 私密照片
            //: if (imageUri.count > 0 || imageData.count > 0 || intimatePhotoDict.keys.count > 0) {
            if imageUri.count > 0 || imageData.count > 0 || intimatePhotoDict.keys.count > 0 {
                //: content = "[Photo]".localized
                content = (String(kStr_failureTitle.prefix(7))).localized
            }
            // 语音消息
            //: if TUIMsgChatManager.checkVoiceJsonMsg(msginfo: msgInfo.dictionaryValue) {
            if TUIMsgChatManager.checkVoiceJsonMsg(msginfo: msgInfo.dictionaryValue) {
                //: content = "[Audio]".localized
                content = (String(kStr_effectData.prefix(5)) + String(kStr_promptName)).localized
            }

            //: detailAttrString = NSMutableAttributedString(string: content)
            detailAttrString = NSMutableAttributedString(string: content)
        }

        //: if (!change) {
        if !change {
            //: if detailAttrString?.string == "[Audio]".localized {
            if detailAttrString?.string == (String(kStr_effectData.prefix(5)) + String(kStr_promptName)).localized {
                //: let sendUid = model.sender
                let sendUid = model.sender
                //: let mid = LocationThen.share.loginUserMode.userID
                let mid = LocationThen.share.loginUserMode.userID
                //: if sendUid == mid {
                if sendUid == mid { // 我发送的
                    //: } else {
                } else { // 别人发的
                    //: var downurl = ""
                    var downurl = ""
                    //: if (voice_msgInfo?["audioData"].stringValue.isEmptyString) != nil {
                    if (voice_msgInfo?[(kStr_originalValue.replacingOccurrences(of: "count", with: "a") + String(kStr_activityContent))].stringValue.isEmptyString) != nil {
                        //: downurl = voice_msgInfo!["audioData"].stringValue
                        downurl = voice_msgInfo![(kStr_originalValue.replacingOccurrences(of: "count", with: "a") + String(kStr_activityContent))].stringValue
                        //: } else if (voice_msgInfo?["audioUri"].stringValue.isEmptyString) != nil {
                    } else if (voice_msgInfo?[(kStr_messageText.replacingOccurrences(of: "path", with: "u") + String(kStr_makeGiftData.prefix(6)))].stringValue.isEmptyString) != nil {
                        //: downurl = voice_msgInfo!["audioUri"].stringValue
                        downurl = voice_msgInfo![(kStr_messageText.replacingOccurrences(of: "path", with: "u") + String(kStr_makeGiftData.prefix(6)))].stringValue
                    }
                }
                //: let unreadColor = UIColor.statusMin()
                let unreadColor = UIColor.statusMin()
                //: detailAttrString?.addAttribute(.foregroundColor, value: unreadColor, range: NSRange(location: 0, length: detailAttrString?.length ?? 0))
                detailAttrString?.addAttribute(.foregroundColor, value: unreadColor, range: NSRange(location: 0, length: detailAttrString?.length ?? 0))

                //: } else {
            } else {
                //: let unreadColor = UIColor.statusMin()
                let unreadColor = UIColor.statusMin()
                //: detailAttrString?.addAttribute(.foregroundColor, value: unreadColor, range: NSRange(location: 0, length: detailAttrString?.length ?? 0))
                detailAttrString?.addAttribute(.foregroundColor, value: unreadColor, range: NSRange(location: 0, length: detailAttrString?.length ?? 0))
            }
        }
        //: if speColor.keys.count > 0 {
        if speColor.keys.count > 0 {
            //: for (key, value) in speColor {
            for (key, value) in speColor {
                //: detailAttrString?.addAttribute(.foregroundColor, value: value, range: key.rangeValue)
                detailAttrString?.addAttribute(.foregroundColor, value: value, range: key.rangeValue)
            }
        }
        //: detailAttrString?.addAttribute(.font, value: UIFont.pingfangFont(type: .Regular, fontSize: 15), range: NSRange(location: 0, length: detailAttrString?.length ?? 0))
        detailAttrString?.addAttribute(.font, value: UIFont.groupSize(type: .Regular, fontSize: 15), range: NSRange(location: 0, length: detailAttrString?.length ?? 0))

        //: return detailAttrString
        return detailAttrString
    }

    /// 处理草稿消息
    //: static func getDraftString(draft: inout String) -> NSMutableAttributedString {
    static func modelDraft(draft: inout String) -> NSMutableAttributedString {
        //: if draft.contains("draftContent") {
        if draft.contains((kStr_postData.replacingOccurrences(of: "rate", with: "r") + String(kStr_fatalValue.suffix(6)) + "tent")) {
            //: let dict = NSDictionary.init(jsonString: draft)
            let dict = NSDictionary(jsonString: draft)
            //: draft = "\(String(describing: dict["draftContent"]))"
            draft = "\(String(describing: dict[(kStr_postData.replacingOccurrences(of: "rate", with: "r") + String(kStr_fatalValue.suffix(6)) + "tent")]))"
        }
        //: let draftString = NSMutableAttributedString.init(string: "[draft]%@".localizedArguments(draft))
        let draftString = NSMutableAttributedString(string: (String(kStr_bottomName)).imageArguments(draft))
        //: draftString.addAttribute(.foregroundColor, value: UIColor.msgTipsColor(), range: NSRange(location: 0, length: 7))
        draftString.addAttribute(.foregroundColor, value: UIColor.welt(), range: NSRange(location: 0, length: 7))
        //: return draftString
        return draftString
    }
}

// MARK: - Private Event

//: extension TalkingChatListTableCell {
extension LocationViewCell {
    /// 更新昵称、头像
    /// - Parameters:
    ///   - userInfo: 数据库信息
    ///   - model: tx数据
    ///   - isOther: 是否其他消息
    //: private func updateUserInfo(userInfo: FailureReactiveCompatible?, model: TalkingConversationModel, isOther: Bool) {
    private func person(userInfo: FailureReactiveCompatible?, model: ViewConversationModel, isOther: Bool) {
        // 在线状态
        //: onlineStatus.isHidden = (model.listOnlineStatus == 0)
        onlineStatus.isHidden = (model.listOnlineStatus == 0)
        //: newImgV.isHidden = !model.isNewUser
        newImgV.isHidden = !model.isNewUser
        // 是否存在用户信息
        //: if userInfo == nil || userInfo?.uid == TableMacroDefine.getXiaoMiID() || userInfo?.uid == TableMacroDefine.getCustomerServiceID() {
        if userInfo == nil || userInfo?.uid == TableMacroDefine.toVoice() || userInfo?.uid == TableMacroDefine.isothermal() {
            //: nickNameLabel.textColor = .appTitleColor()
            nickNameLabel.textColor = .dataFormat()
            //: nickNameLabel.text = model.showName
            nickNameLabel.text = model.showName
            //: nickNameLabel.snp.updateConstraints { make in
            nickNameLabel.snp.updateConstraints { make in
                //: make.trailing.lessThanOrEqualToSuperview().offset(-40)
                make.trailing.lessThanOrEqualToSuperview().offset(-40)
            }
            //: if model.chatType == .group || model.chatType == .moreMsg {
            if model.chatType == .group || model.chatType == .moreMsg {
                //: headImgView.image = UIImage.bundleBy(name: model.faceUrl)
                headImgView.image = UIImage.bundleBy(name: model.faceUrl)
                //: } else {
            } else {
                //: headImgView.setUrlImage(urlStr: model.faceUrl, placeImg: UIImage.placeSquareBigImgBanner())
                headImgView.failureFinish(urlStr: model.faceUrl, placeImg: UIImage.infoPlayer())
            }
            //: iconBorder.isHidden = true
            iconBorder.isHidden = true
            //: loungeImgV.isHidden = true
            loungeImgV.isHidden = true
            //: authImgV.isHidden = true
            authImgV.isHidden = true
            //: officialImgV.isHidden = true
            officialImgV.isHidden = true
            //: imtimateBtn.isHidden = true
            imtimateBtn.isHidden = true
            //: return
            return
        }
        //: guard let userInfo = userInfo else {
        guard let userInfo = userInfo else {
            //: return
            return
        }
        // 昵称
        //: nickNameLabel.textColor = userInfo.loungePlus ? .userVipColor():.appTitleColor()
        nickNameLabel.textColor = userInfo.loungePlus ? .makeColor() : .dataFormat()
        //: nickNameLabel.text = userInfo.nickname.count > 0 ? userInfo.nickname:model.userID
        nickNameLabel.text = userInfo.nickname.count > 0 ? userInfo.nickname : model.userID
        // 头像
        //: headImgView.setUrlImage(urlStr: userInfo.headPic, placeImg: UIImage.placeHolderImage(sex: userInfo.sex))
        headImgView.failureFinish(urlStr: userInfo.headPic, placeImg: UIImage.deliver(sex: userInfo.sex))
        // VIP头像框
        //: if isOther == false && !userInfo.headPicFrame.isEmptyString {
        if isOther == false, !userInfo.headPicFrame.isEmptyString {
            //: iconBorder.isHidden = false
            iconBorder.isHidden = false
            //: iconBorder.setHeadFrameUrlImage(urlStr: userInfo.headPicFrame)
            iconBorder.dataFile(urlStr: userInfo.headPicFrame)
            //: } else {
        } else {
            //: iconBorder.isHidden = true
            iconBorder.isHidden = true
        }
        //: imtimateBtn.setTitle(model.totalIntimate > 99999 ? "99999+": "\(model.totalIntimate)", for: .normal)
        imtimateBtn.setTitle(model.totalIntimate > 99999 ? String(bytes: kStr_dataValue.map{propertySize(wrap: $0)}, encoding: .utf8)! : "\(model.totalIntimate)", for: .normal)
        //: imtimateBtn.isHidden = model.totalIntimate <= 0
        imtimateBtn.isHidden = model.totalIntimate <= 0
        //: if model.totalIntimate > 0 {
        if model.totalIntimate > 0 {
            //: let size = imtimateBtn.titleLabel?.text?.boundingRect(with: CGSize(width: CGFloat(MAXFLOAT), height: 0.0), options: .usesLineFragmentOrigin, attributes: [NSAttributedString.Key.font: imtimateBtn.titleLabel?.font ?? .pingfangFont(type: .Medium, fontSize: 12)], context: nil)
            let size = imtimateBtn.titleLabel?.text?.boundingRect(with: CGSize(width: CGFloat(MAXFLOAT), height: 0.0), options: .usesLineFragmentOrigin, attributes: [NSAttributedString.Key.font: imtimateBtn.titleLabel?.font ?? .groupSize(type: .Medium, fontSize: 12)], context: nil)
            //: imtimateBtn.snp.updateConstraints { make in
            imtimateBtn.snp.updateConstraints { make in
                //: make.width.equalTo((size?.width ?? 50) + 20)
                make.width.equalTo((size?.width ?? 50) + 20)
            }
        }
        // 是否其他消息
        //: if isOther == false {
        if isOther == false {
            //: loungeImgV.isHidden = !userInfo.loungePlus
            loungeImgV.isHidden = !userInfo.loungePlus
            //: authImgV.isHidden = !userInfo.tpAuth
            authImgV.isHidden = !userInfo.tpAuth
            //: officialImgV.isHidden = !userInfo.isOfficial
            officialImgV.isHidden = !userInfo.isOfficial
            //: } else {
        } else {
            //: loungeImgV.isHidden = true
            loungeImgV.isHidden = true
            //: authImgV.isHidden = true
            authImgV.isHidden = true
            //: officialImgV.isHidden = true
            officialImgV.isHidden = true
        }

        //: nickNameLabel.snp.updateConstraints { make in
        nickNameLabel.snp.updateConstraints { make in
            //: make.trailing.lessThanOrEqualToSuperview().offset( isOther == true ? -40 : -130)
            make.trailing.lessThanOrEqualToSuperview().offset(isOther == true ? -40 : -130)
        }
        //: loungeImgV.snp.updateConstraints { make in
        loungeImgV.snp.updateConstraints { make in
            //: make.leading.equalTo(nickNameLabel.snp.trailing).offset(loungeImgV.isHidden == true ? 0:4)
            make.leading.equalTo(nickNameLabel.snp.trailing).offset(loungeImgV.isHidden == true ? 0 : 4)
            //: make.width.equalTo(loungeImgV.isHidden == true ? 0:20)
            make.width.equalTo(loungeImgV.isHidden == true ? 0 : 20)
        }
        //: authImgV.snp.updateConstraints { make in
        authImgV.snp.updateConstraints { make in
            //: make.leading.equalTo(loungeImgV.snp.trailing).offset(authImgV.isHidden == true ? 0:4)
            make.leading.equalTo(loungeImgV.snp.trailing).offset(authImgV.isHidden == true ? 0 : 4)
            //: make.width.equalTo(authImgV.isHidden == true ? 0:16)
            make.width.equalTo(authImgV.isHidden == true ? 0 : 16)
        }
        //: let text = "New".localized
        let text = (String(kStr_remoteName.suffix(3))).localized
        //: let rect = text.boundingRect(with: .zero, options: .usesLineFragmentOrigin, attributes: [.font: UIFont.dorsum(fontSize: 11)], context: nil)
        let rect = text.boundingRect(with: .zero, options: .usesLineFragmentOrigin, attributes: [.font: UIFont.dorsum(fontSize: 11)], context: nil)
        //: newImgV.snp.updateConstraints { make in
        newImgV.snp.updateConstraints { make in
            //: make.leading.equalTo(authImgV.snp.trailing).offset(newImgV.isHidden == true ? 0:4)
            make.leading.equalTo(authImgV.snp.trailing).offset(newImgV.isHidden == true ? 0 : 4)
            //: make.width.equalTo(newImgV.isHidden == true ? 0:rect.width+10)
            make.width.equalTo(newImgV.isHidden == true ? 0 : rect.width + 10)
        }
        //: officialImgV.snp.remakeConstraints { make in
        officialImgV.snp.remakeConstraints { make in
            //: make.centerY.equalTo(nickNameLabel)
            make.centerY.equalTo(nickNameLabel)
            //: make.height.equalTo(15)
            make.height.equalTo(15)
            //: make.leading.equalTo(newImgV.snp.trailing).offset(officialImgV.isHidden == true ? 0:4)
            make.leading.equalTo(newImgV.snp.trailing).offset(officialImgV.isHidden == true ? 0 : 4)
            //: if officialImgV.isHidden {
            if officialImgV.isHidden {
                //: make.width.equalTo(0)
                make.width.equalTo(0)
                //: } else {
            } else {
                //: make.width.greaterThanOrEqualTo(50)
                make.width.greaterThanOrEqualTo(50)
            }
        }
    }

    /// 更新未读数
    /// - Parameter unreadCount: 未读消息数
    //: private func updateUnreadNumber(unreadCount: Int) {
    private func imageMagnitude(unreadCount: Int) {
        //: guard unreadCount > 0 else {
        guard unreadCount > 0 else {
            //: self.badgeLab.isHidden = true
            self.badgeLab.isHidden = true
            //: return
            return
        }

        //: self.badgeLab.isHidden = false
        self.badgeLab.isHidden = false
        //: var unreadCountStr = String(unreadCount)
        var unreadCountStr = String(unreadCount)
        //: if unreadCount > 99 {
        if unreadCount > 99 {
            //: unreadCountStr = String(unreadCount) + "+"
            unreadCountStr = String(unreadCount) + "+"
            //: badgeLab.text = "99+"
            badgeLab.text = "99+"
            //: } else {
        } else {
            //: badgeLab.text = unreadCountStr
            badgeLab.text = unreadCountStr
        }
        //: var width = badgeLab.text!.size(withAttributes: [.font: self.badgeLab.font!]).width + 12
        var width = badgeLab.text!.size(withAttributes: [.font: self.badgeLab.font!]).width + 12
        //: if width < 20 { width = 20 }
        if width < 20 { width = 20 }
        //: badgeLab.snp.updateConstraints { make in
        badgeLab.snp.updateConstraints { make in
            //: make.width.greaterThanOrEqualTo(width)
            make.width.greaterThanOrEqualTo(width)
        }
    }

    /// 处理详情消息
    //: private func handleC2CMessage(model: TalkingConversationModel) {
    private func takeCareSend(model: ViewConversationModel) {
        //: if model.userStatus == 5 {
        if model.userStatus == 5 {
            //: let str = "Account is restricted！".localized
            let str = (String(kStr_viewContent.prefix(7)) + String(kStr_titleValue.suffix(4)) + kStr_tableText.replacingOccurrences(of: "name", with: "r") + "ricted！").localized
            //: let attributes: [NSAttributedString.Key: Any] = [
            let attributes: [NSAttributedString.Key: Any] = [
                //: NSAttributedString.Key.font: UIFont.pingfangFont(type: .Regular, fontSize: 15),
                NSAttributedString.Key.font: UIFont.groupSize(type: .Regular, fontSize: 15),
                //: NSAttributedString.Key.foregroundColor: UIColor.statusMin()
                NSAttributedString.Key.foregroundColor: UIColor.statusMin(),
            ]
            //: msgShowLabel.attributedText = NSAttributedString(string: str, attributes: attributes)
            msgShowLabel.attributedText = NSAttributedString(string: str, attributes: attributes)
            //: return
            return
        }
        //: if model.listShowMessage != nil {
        if model.listShowMessage != nil {
            //: msgShowLabel.attributedText = TalkingChatListTableCell.handleShowC2CDetailTextOfMessage(model: model)
            msgShowLabel.attributedText = LocationViewCell.withFit(model: model)
            //: } else if model.chatType == .group {
        } else if model.chatType == .group { // 公共聊天室入口
            //: let str = "%@ Online".localizedArguments(model.num)
            let str = (String(kStr_removeData.suffix(5)) + "line").imageArguments(model.num)
            //: let attributes: [NSAttributedString.Key: Any] = [
            let attributes: [NSAttributedString.Key: Any] = [
                //: NSAttributedString.Key.font: UIFont.pingfangFont(type: .Regular, fontSize: 15),
                NSAttributedString.Key.font: UIFont.groupSize(type: .Regular, fontSize: 15),
                //: NSAttributedString.Key.foregroundColor: UIColor.statusMin()
                NSAttributedString.Key.foregroundColor: UIColor.statusMin(),
            ]
            //: msgShowLabel.attributedText = NSAttributedString(string: str, attributes: attributes)
            msgShowLabel.attributedText = NSAttributedString(string: str, attributes: attributes)

            //: } else if model.chatType == .moreMsg {
        } else if model.chatType == .moreMsg { // 更多消息入口，无数据时，占位文案
            //: let str = "Messages not been replied here".localized
            let str = (String(kStr_atText.prefix(5)) + "ges no" + String(kStr_netName.suffix(4)) + "en re" + String(kStr_addValue.suffix(8)) + kStr_voiceCellData.replacingOccurrences(of: "size", with: "e")).localized
            //: let attributes: [NSAttributedString.Key: Any] = [
            let attributes: [NSAttributedString.Key: Any] = [
                //: NSAttributedString.Key.font: UIFont.pingfangFont(type: .Regular, fontSize: 15),
                NSAttributedString.Key.font: UIFont.groupSize(type: .Regular, fontSize: 15),
                //: NSAttributedString.Key.foregroundColor: UIColor.statusMin()
                NSAttributedString.Key.foregroundColor: UIColor.statusMin(),
            ]
            //: msgShowLabel.attributedText = NSAttributedString(string: str, attributes: attributes)
            msgShowLabel.attributedText = NSAttributedString(string: str, attributes: attributes)

            //: } else {
        } else { // 草稿箱
            //: var attrStr: NSMutableAttributedString?
            var attrStr: NSMutableAttributedString?
            //: if !model.draftText.isEmptyString {
            if !model.draftText.isEmptyString {
                //: attrStr = TalkingChatListTableCell.getDraftString(draft: &model.draftText)
                attrStr = LocationViewCell.modelDraft(draft: &model.draftText)
            }
            //: attrStr?.addAttribute(.font, value: UIFont.pingfangFont(type: .Regular, fontSize: 15), range: NSRange(location: 0, length: attrStr?.length ?? 0))
            attrStr?.addAttribute(.font, value: UIFont.groupSize(type: .Regular, fontSize: 15), range: NSRange(location: 0, length: attrStr?.length ?? 0))
            //: msgShowLabel.attributedText = attrStr
            msgShowLabel.attributedText = attrStr
        }
    }
}

// MARK: - UI

//: extension TalkingChatListTableCell {
extension LocationViewCell {
    //: private func createCellUI() {
    private func titleUi() {
        //: contentView.addSubview(headImgView)
        contentView.addSubview(headImgView)
        //: contentView.addSubview(iconBorder)
        contentView.addSubview(iconBorder)
        //: contentView.addSubview(onlineStatus)
        contentView.addSubview(onlineStatus)
        //: contentView.addSubview(badgeLab)
        contentView.addSubview(badgeLab)
        //: contentView.addSubview(nickNameLabel)
        contentView.addSubview(nickNameLabel)
        //: contentView.addSubview(loungeImgV)
        contentView.addSubview(loungeImgV)
        //: contentView.addSubview(authImgV)
        contentView.addSubview(authImgV)
        //: contentView.addSubview(newImgV)
        contentView.addSubview(newImgV)
        //: contentView.addSubview(officialImgV)
        contentView.addSubview(officialImgV)
        //: contentView.addSubview(msgShowLabel)
        contentView.addSubview(msgShowLabel)
        //: contentView.addSubview(timeLab)
        contentView.addSubview(timeLab)
        //: contentView.addSubview(imtimateBtn)
        contentView.addSubview(imtimateBtn)
    }

    //: private func createCellUIConstraints() {
    private func onConstraints() {
        //: headImgView.snp.makeConstraints { make in
        headImgView.snp.makeConstraints { make in
            //: make.centerY.equalToSuperview()
            make.centerY.equalToSuperview()
            //: make.leading.equalTo(15)
            make.leading.equalTo(15)
            //: make.width.height.equalTo(60)
            make.width.height.equalTo(60)
        }
        //: iconBorder.snp.makeConstraints { make in
        iconBorder.snp.makeConstraints { make in
            //: make.centerY.equalToSuperview()
            make.centerY.equalToSuperview()
            //: make.leading.equalTo(10)
            make.leading.equalTo(10)
            //: make.width.height.equalTo(69.5)
            make.width.height.equalTo(69.5)
        }
        //: onlineStatus.snp.makeConstraints { make in
        onlineStatus.snp.makeConstraints { make in
            //: make.trailing.equalTo(headImgView.snp.trailing).offset(-3)
            make.trailing.equalTo(headImgView.snp.trailing).offset(-3)
            //: make.bottom.equalTo(headImgView.snp.bottom).offset(-3)
            make.bottom.equalTo(headImgView.snp.bottom).offset(-3)
            //: make.width.height.equalTo(10)
            make.width.height.equalTo(10)
        }
        //: badgeLab.snp.makeConstraints { make in
        badgeLab.snp.makeConstraints { make in
            //: make.top.equalTo(self.headImgView.snp.top).offset(-5)
            make.top.equalTo(self.headImgView.snp.top).offset(-5)
            //: make.trailing.equalTo(self.headImgView.snp.trailing).offset(6)
            make.trailing.equalTo(self.headImgView.snp.trailing).offset(6)
            //: make.height.equalTo(20)
            make.height.equalTo(20)
            //: make.width.greaterThanOrEqualTo(20)
            make.width.greaterThanOrEqualTo(20)
        }
        //: nickNameLabel.snp.makeConstraints { make in
        nickNameLabel.snp.makeConstraints { make in
            //: make.top.equalTo(headImgView).offset(6)
            make.top.equalTo(headImgView).offset(6)
            //: make.leading.equalTo(headImgView.snp.trailing).offset(10)
            make.leading.equalTo(headImgView.snp.trailing).offset(10)
            //: make.trailing.lessThanOrEqualToSuperview().offset(-40)
            make.trailing.lessThanOrEqualToSuperview().offset(-40)
            //: make.height.equalTo(21)
            make.height.equalTo(21)
        }
        //: loungeImgV.snp.makeConstraints { make in
        loungeImgV.snp.makeConstraints { make in
            //: make.centerY.equalTo(nickNameLabel)
            make.centerY.equalTo(nickNameLabel)
            //: make.leading.equalTo(nickNameLabel.snp.trailing).offset(4)
            make.leading.equalTo(nickNameLabel.snp.trailing).offset(4)
            //: make.height.width.equalTo(20)
            make.height.width.equalTo(20)
        }
        //: authImgV.snp.makeConstraints { make in
        authImgV.snp.makeConstraints { make in
            //: make.centerY.equalTo(nickNameLabel)
            make.centerY.equalTo(nickNameLabel)
            //: make.leading.equalTo(loungeImgV.snp.trailing).offset(4)
            make.leading.equalTo(loungeImgV.snp.trailing).offset(4)
            //: make.width.equalTo(16)
            make.width.equalTo(16)
            //: make.height.equalTo(16)
            make.height.equalTo(16)
        }
        //: newImgV.snp.makeConstraints { make in
        newImgV.snp.makeConstraints { make in
            //: make.centerY.equalTo(nickNameLabel)
            make.centerY.equalTo(nickNameLabel)
            //: make.leading.equalTo(authImgV.snp.trailing).offset(4)
            make.leading.equalTo(authImgV.snp.trailing).offset(4)
            //: make.width.equalTo(26)
            make.width.equalTo(26)
            //: if LanguageManager.shared.direction == .rightToLeft {
            if DeleteClientThen.shared.direction == .rightToLeft {
                //: make.height.equalTo(16)
                make.height.equalTo(16)
                //: } else {
            } else {
                //: make.height.equalTo(14)
                make.height.equalTo(14)
            }
        }
        //: officialImgV.snp.makeConstraints { make in
        officialImgV.snp.makeConstraints { make in
            //: make.centerY.equalTo(nickNameLabel)
            make.centerY.equalTo(nickNameLabel)
            //: make.leading.equalTo(newImgV.snp.trailing).offset(4)
            make.leading.equalTo(newImgV.snp.trailing).offset(4)
            //: make.width.greaterThanOrEqualTo(50)
            make.width.greaterThanOrEqualTo(50)
            //: make.height.equalTo(16)
            make.height.equalTo(16)
        }
        //: timeLab.snp.makeConstraints { make in
        timeLab.snp.makeConstraints { make in
            //: make.centerY.equalTo(nickNameLabel)
            make.centerY.equalTo(nickNameLabel)
            //: make.trailing.equalToSuperview().offset(-15)
            make.trailing.equalToSuperview().offset(-15)
        }
        //: imtimateBtn.snp.makeConstraints { make in
        imtimateBtn.snp.makeConstraints { make in
            //: make.centerY.equalTo(msgShowLabel)
            make.centerY.equalTo(msgShowLabel)
            //: make.width .equalTo(50)
            make.width.equalTo(50)
            //: make.trailing.equalToSuperview().offset(-15)
            make.trailing.equalToSuperview().offset(-15)
        }
        //: msgShowLabel.snp.makeConstraints { make in
        msgShowLabel.snp.makeConstraints { make in
            //: make.bottom.equalTo(headImgView.snp.bottom).offset(-6)
            make.bottom.equalTo(headImgView.snp.bottom).offset(-6)
            //: make.leading.equalTo(nickNameLabel)
            make.leading.equalTo(nickNameLabel)
            //: make.trailing.equalTo(imtimateBtn.snp.leading).offset(-10)
            make.trailing.equalTo(imtimateBtn.snp.leading).offset(-10)
        }
    }
}
