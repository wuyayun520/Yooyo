
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let kStr_errorData:[UInt8] = [0x56,0x51,0x56,0x4b,0x17,0x5c,0x50,0x5b,0x5a,0x4d,0x5,0x16,0x1f,0x57,0x5e,0x4c,0x1f,0x51,0x50,0x4b,0x1f,0x5d,0x5a,0x5a,0x51,0x1f,0x56,0x52,0x4f,0x53,0x5a,0x52,0x5a,0x51,0x4b,0x5a,0x5b]

private func layerLet(succeed num: UInt8) -> UInt8 {
    return num ^ 63
}

/*: "icon_home_v" :*/
fileprivate let kStr_sizeRefreshName:[Character] = ["i","c","o","n","_","h","o","m","e","_","v"]

/*: "icon_lounge" :*/
fileprivate let kStr_lastPlayerValue:String = "nest equalicon_l"
fileprivate let kStr_viewContent:String = "ounlist"

/*: "icon_jianbian_back" :*/
fileprivate let kStr_scaleValue:String = "ICON"
fileprivate let kStr_genderValue:[Character] = ["b","i","a"]
fileprivate let kStr_waitText:String = "n_backlabel make make import"

/*: "Like&Chat" :*/
fileprivate let kStr_countData:[Character] = ["L","i","k","e","&","C","h","a","t"]

/*: "#EFEDFF" :*/
fileprivate let kStr_numberSizeNameTitle:String = "phone at#E"
fileprivate let kStr_genderName:[Character] = ["F","E","D","F","F"]

/*: "Quick Greeting" :*/
fileprivate let kStr_frameTargetValue:[Character] = ["Q","u","i","c","k"," ","G","r","e","e","t"]
fileprivate let kStr_appData:[Character] = ["i","n","g"]

/*: "Nope" :*/
fileprivate let kStr_eventData:String = "Nopegift color true error"

/*: "icon_ender_boy" :*/
fileprivate let kStr_shareName:String = "fatal height pop view dataicon_e"
fileprivate let kStr_actionName:[Character] = ["n"]
fileprivate let kStr_pathValue:String = "content disableder_boy"

/*: "icon_ender_girl" :*/
fileprivate let kStr_statusLiveValue:String = "icon_endedata info detail intimate leading"
fileprivate let kStr_sectionValue:String = "r_girlselected new user else"

/*: "   " :*/
fileprivate let kStr_plusData:[Character] = [" "," "," "]

/*: "crushId" :*/
fileprivate let kStr_makeBarContent:[Character] = ["c","r","u","s","h","I"]
fileprivate let kStr_mediumValue:[Character] = ["d"]

/*: "her" :*/
fileprivate let kStr_searchEqualData:[Character] = ["h","e","r"]

/*: "him" :*/
fileprivate let kStr_viewValue:String = "hblock"

/*: "content" :*/
fileprivate let kStr_frameTitle:String = "cfillnten"
fileprivate let kStr_sizeName:String = "at"

/*: "Why don't you say hello to %@?" :*/
fileprivate let kStr_belowNameContent:[Character] = ["W","h","y"," ","d","o","n","\'","t"," ","y","o","u"," ","s","a","y"," ","h","e"]
fileprivate let kStr_progressValue:[Character] = ["l","l","o"," "]
fileprivate let kStr_textBagData:String = "to %@?view title"

/*: "msgType" :*/
fileprivate let kStr_pathData:[Character] = ["m","s","g","T","y","p"]
fileprivate let kStr_dateName:[Character] = ["e"]

/*: "txt" :*/
fileprivate let kStr_needName:String = "pict"

/*: "msg" :*/
fileprivate let kStr_labelUserData:[UInt8] = [0x8,0x16,0x2]

private func appPremium(error num: UInt8) -> UInt8 {
    return num ^ 101
}

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  BlockLikeCell.swift
//  AbroadTalking
//
//  Created by Charlotte on 2022/9/13.
//

//: import UIKit
import UIKit

//: public protocol WhoLikeDelegate: NSObject {
public protocol TableReactiveCompatible: NSObject {
    //: func quickGreetingSeleteIndex(_ index: IndexPath )
    func equalIndex(_ index: IndexPath)
    //: func likeSeleteIndex(_ index: IndexPath )
    func playStart(_ index: IndexPath)
}

//: class TalkingWhoLikeCell: UITableViewCell {
class BlockLikeCell: UITableViewCell {
    //: var currenModel = TalkingWhoLikeMeModel()
    var currenModel = CottonModelType()
    //: var seleteIndex: IndexPath?
    var seleteIndex: IndexPath?
    //: open weak var delegate: WhoLikeDelegate?
    open weak var delegate: TableReactiveCompatible?

    //: override func awakeFromNib() {
    override func awakeFromNib() {
        //: super.awakeFromNib()
        super.awakeFromNib()
    }

    //: override func setSelected(_ selected: Bool, animated: Bool) {
    override func setSelected(_ selected: Bool, animated: Bool) {
        //: super.setSelected(selected, animated: animated)
        super.setSelected(selected, animated: animated)
    }

    //: override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        //: super.init(style: style, reuseIdentifier: reuseIdentifier)
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        //: selectionStyle = UITableViewCell.SelectionStyle.none
        selectionStyle = UITableViewCell.SelectionStyle.none
        //: self.backgroundColor = UIColor.clear
        self.backgroundColor = UIColor.clear
        //: self.contentView.backgroundColor = UIColor.clear
        self.contentView.backgroundColor = UIColor.clear
        //: contentView.addSubview(backView)
        contentView.addSubview(backView)
        //: backView.addSubview(IconImageV)
        backView.addSubview(IconImageV)
        //: backView.addSubview(iconBorder)
        backView.addSubview(iconBorder)
        //: backView.addSubview(nameLabel)
        backView.addSubview(nameLabel)
        //: backView.addSubview(cardImg)
        backView.addSubview(cardImg)
        //: backView.addSubview(sexBtn)
        backView.addSubview(sexBtn)
        //: backView.addSubview(loungeImgV)
        backView.addSubview(loungeImgV)
        //: backView.addSubview(timeLabel)
        backView.addSubview(timeLabel)
        //: backView.addSubview(messageLabel)
        backView.addSubview(messageLabel)
        //: backView.addSubview(quickGreetingBtn)
        backView.addSubview(quickGreetingBtn)
        //: backView.addSubview(chatBtn)
        backView.addSubview(chatBtn)
        //: layoutSubViewsConstraints()
        ofConstraints()
    }

    //: required init?(coder aDecoder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: kStr_errorData.map{layerLet(succeed: $0)}, encoding: .utf8)!)
    }

    //: override func layoutSubviews() {
    override func layoutSubviews() {
        //: super.layoutSubviews()
        super.layoutSubviews()
    }

    // MARK: - Lazy load

    //: lazy var backView: UIView = {
    lazy var backView: UIView = {
        //: let view = UIView.init()
        let view = UIView()
        //: view.backgroundColor = UIColor.white
        view.backgroundColor = UIColor.white
        //: view.layer.shadowColor = UIColor(red: 0.8, green: 0.8, blue: 0.8, alpha: 0.5).cgColor
        view.layer.shadowColor = UIColor(red: 0.8, green: 0.8, blue: 0.8, alpha: 0.5).cgColor
        //: view.layer.shadowOffset = CGSize(width: 0, height: 1)
        view.layer.shadowOffset = CGSize(width: 0, height: 1)
        //: view.layer.shadowOpacity = 1
        view.layer.shadowOpacity = 1
        //: view.layer.shadowRadius = 4
        view.layer.shadowRadius = 4
        //: view.layer.cornerRadius = 9
        view.layer.cornerRadius = 9
        //: return view
        return view
        //: }()
    }()

    //: lazy var IconImageV: UIImageView = {
    lazy var IconImageV: UIImageView = {
        //: let imageV = UIImageView.init()
        let imageV = UIImageView()
        //: imageV.layer.cornerRadius = 40/2
        imageV.layer.cornerRadius = 40 / 2
        //: imageV.layer.masksToBounds = true
        imageV.layer.masksToBounds = true
        //: imageV.contentMode = .scaleAspectFill
        imageV.contentMode = .scaleAspectFill
        //: return imageV
        return imageV
        //: }()
    }()

    //: lazy var iconBorder: UIButton = {
    lazy var iconBorder: UIButton = {
        //: let btn = UIButton.init()
        let btn = UIButton()
        //: btn.imageView?.contentMode = .scaleAspectFill
        btn.imageView?.contentMode = .scaleAspectFill
        //: btn.isUserInteractionEnabled = false
        btn.isUserInteractionEnabled = false
        //: return btn
        return btn
        //: }()
    }()

    //: lazy var nameLabel: UILabel = {
    lazy var nameLabel: UILabel = {
        //: let label = UILabel.init()
        let label = UILabel()
        //: label.font = .pingfangFont(type: .Medium, fontSize: 16)
        label.font = .groupSize(type: .Medium, fontSize: 16)
        //: label.textColor = .appTitleColor()
        label.textColor = .dataFormat()
        //: return label
        return label
        //: }()
    }()

    //: lazy var cardImg: UIImageView = {
    lazy var cardImg: UIImageView = {
        //: let img = UIImageView.init()
        let img = UIImageView()
        //: img.image = UIImage.bundleBy(name: "icon_home_v")
        img.image = UIImage.bundleBy(name: (String(kStr_sizeRefreshName)))
        //: return img
        return img
        //: }()
    }()

    //: lazy var sexBtn: UIButton = {
    lazy var sexBtn: UIButton = {
        //: let btn = UIButton.init()
        let btn = UIButton()
        //: btn.setTitleColor(UIColor.white, for: .normal)
        btn.setTitleColor(UIColor.white, for: .normal)
        //: btn.isUserInteractionEnabled = false
        btn.isUserInteractionEnabled = false
        //: btn.titleLabel?.font = .pingfangFont(type: .Medium, fontSize: 10)
        btn.titleLabel?.font = .groupSize(type: .Medium, fontSize: 10)
        //: return btn
        return btn
        //: }()
    }()

    //: lazy var loungeImgV: UIImageView = {
    lazy var loungeImgV: UIImageView = {
        //: let img = UIImageView()
        let img = UIImageView()
        //: img.image = UIImage.bundleBy(name: "icon_lounge")
        img.image = UIImage.bundleBy(name: (String(kStr_lastPlayerValue.suffix(6)) + kStr_viewContent.replacingOccurrences(of: "list", with: "ge")))
        //: return img
        return img
        //: }()
    }()

    //: lazy var timeLabel: UILabel = {
    lazy var timeLabel: UILabel = {
        //: let label = UILabel.init()
        let label = UILabel()
        //: label.font = .pingfangFont(type: .Medium, fontSize: 14)
        label.font = .groupSize(type: .Medium, fontSize: 14)
        //: label.textColor = .statusMin()
        label.textColor = .statusMin()
        //: return label
        return label
        //: }()
    }()

    //: lazy var chatBtn: UIButton = {
    lazy var chatBtn: UIButton = {
        //: let btn = UIButton.init()
        let btn = UIButton()
        //: btn.setTitleColor(UIColor.white, for: .normal)
        btn.setTitleColor(UIColor.white, for: .normal)
        //: btn.titleLabel?.font = .pingfangFont(type: .Medium, fontSize: 16)
        btn.titleLabel?.font = .groupSize(type: .Medium, fontSize: 16)
        //: btn.setBackgroundImage(UIImage.bundleBy(name: "icon_jianbian_back"), for: .normal)
        btn.setBackgroundImage(UIImage.bundleBy(name: (kStr_scaleValue.lowercased() + "_jian" + String(kStr_genderValue) + String(kStr_waitText.prefix(6)))), for: .normal)
        //: btn.setTitle(" " + "Like&Chat".localized + " ", for: .normal)
        btn.setTitle(" " + (String(kStr_countData)).localized + " ", for: .normal)
        //: btn.addTarget(self, action: #selector(ChatBtnClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(underway), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()

    //: lazy var quickGreetingBtn: UIButton = {
    lazy var quickGreetingBtn: UIButton = {
        //: let btn = UIButton.init()
        let btn = UIButton()
        //: btn.setTitleColor(UIColor.fromBuild(), for: .normal)
        btn.setTitleColor(UIColor.fromBuild(), for: .normal)
        //: btn.layer.cornerRadius = 37/2
        btn.layer.cornerRadius = 37 / 2
        //: btn.layer.masksToBounds = true
        btn.layer.masksToBounds = true
        //: btn.titleLabel?.font = .pingfangFont(type: .Medium, fontSize: 16)
        btn.titleLabel?.font = .groupSize(type: .Medium, fontSize: 16)
        //: btn.setBackgroundColor(color: UIColor.init(hex: "#EFEDFF")!, forState: .normal)
        btn.colorEffectLoad(color: UIColor(hex: (String(kStr_numberSizeNameTitle.suffix(2)) + String(kStr_genderName)))!, forState: .normal)
        //: btn.addTarget(self, action: #selector(quickGreetingBtnClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(doingDataComment), for: .touchUpInside)
        //: if LocationThen.share.loginUserMode.sex == Gender.female.rawValue {
        if LocationThen.share.loginUserMode.sex == SucceedComparable.female.rawValue { // 女性
            //: btn.setTitle("Quick Greeting".localized, for: .normal)
            btn.setTitle((String(kStr_frameTargetValue) + String(kStr_appData)).localized, for: .normal)
            //: } else {
        } else {
            //: btn.setTitle("Nope".localized, for: .normal)
            btn.setTitle((String(kStr_eventData.prefix(4))).localized, for: .normal)
        }
        //: return btn
        return btn
        //: }()
    }()

    //: lazy var messageLabel: UILabel = {
    lazy var messageLabel: UILabel = {
        //: let label = UILabel.init()
        let label = UILabel()
        //: label.font = .pingfangFont(type: .Medium, fontSize: 16)
        label.font = .groupSize(type: .Medium, fontSize: 16)
        //: label.textColor = .appTitleColor()
        label.textColor = .dataFormat()
        //: label.numberOfLines = 0
        label.numberOfLines = 0
        //: return label
        return label
        //: }()
    }()
}

// MARK: - Event

//: extension TalkingWhoLikeCell {
extension BlockLikeCell {
    //: func setCell(model: TalkingWhoLikeMeModel, index: IndexPath) {
    func snuggleShow(model: CottonModelType, index: IndexPath) {
        //: currenModel = model
        currenModel = model
        //: seleteIndex = index
        seleteIndex = index
        //: IconImageV.setUrlImage(urlStr: model.headPic ?? "", placeImg: UIImage.placeHolderImage(sex: String(model.sex ?? 1 )))
        IconImageV.failureFinish(urlStr: model.headPic ?? "", placeImg: UIImage.deliver(sex: String(model.sex ?? 1)))
        //: if !model.headPicFrame.isEmptyString {
        if !model.headPicFrame.isEmptyString {
            //: IconImageV.snp.remakeConstraints { make in
            IconImageV.snp.remakeConstraints { make in
                //: make.leading.equalTo(backView).offset(12)
                make.leading.equalTo(backView).offset(12)
                //: make.top.equalTo(backView).offset(12)
                make.top.equalTo(backView).offset(12)
                //: make.width.height.equalTo(36)
                make.width.height.equalTo(36)
            }
            //: iconBorder.isHidden = false
            iconBorder.isHidden = false
            //: iconBorder.setHeadFrameUrlImage(urlStr: model.headPicFrame)
            iconBorder.dataFile(urlStr: model.headPicFrame)
            //: }else {
        } else {
            //: iconBorder.isHidden = true
            iconBorder.isHidden = true
        }

        //: nameLabel.textColor = model.loungePlus ? .userVipColor():.appTitleColor()
        nameLabel.textColor = model.loungePlus ? .makeColor() : .dataFormat()
        //: nameLabel.text = model.nickname
        nameLabel.text = model.nickname
        //: if !(model.isTPAuth ?? false) {
        if !(model.isTPAuth ?? false) {
            //: cardImg.isHidden = true
            cardImg.isHidden = true
            //: cardImg.snp.updateConstraints { make in
            cardImg.snp.updateConstraints { make in
                //: make.width.equalTo(1)
                make.width.equalTo(1)
                //: make.leading.equalTo(nameLabel.snp.trailing).offset(0)
                make.leading.equalTo(nameLabel.snp.trailing).offset(0)
            }
            //: } else {
        } else {
            //: cardImg.isHidden = false
            cardImg.isHidden = false
            //: cardImg.snp.updateConstraints { make in
            cardImg.snp.updateConstraints { make in
                //: make.width.equalTo(16)
                make.width.equalTo(16)
                //: make.leading.equalTo(nameLabel.snp.trailing).offset(4)
                make.leading.equalTo(nameLabel.snp.trailing).offset(4)
            }
        }

        //: switch model.sex {
        switch model.sex {
        //: case 1:
        case 1:
            //: sexBtn.setBackgroundImage(UIImage.bundleBy(name: "icon_ender_boy"), for: .normal)
            sexBtn.setBackgroundImage(UIImage.bundleBy(name: (String(kStr_shareName.suffix(6)) + String(kStr_actionName) + String(kStr_pathValue.suffix(7)))), for: .normal)
        //: break
        //: case 2:
        case 2:
            //: sexBtn.setBackgroundImage(UIImage.bundleBy(name: "icon_ender_girl"), for: .normal)
            sexBtn.setBackgroundImage(UIImage.bundleBy(name: (String(kStr_statusLiveValue.prefix(9)) + String(kStr_sectionValue.prefix(6)))), for: .normal)
        //: break
        //: default:
        default:
            //: break
            break
        }
        //: sexBtn.setTitle("   " + String(model.age ?? 0), for: .normal)
        sexBtn.setTitle("   " + String(model.age ?? 0), for: .normal)
        //: timeLabel.text = model.timeFormat
        timeLabel.text = model.timeFormat
        //: messageLabel.text = model.message
        messageLabel.text = model.message

        //: loungeImgV.isHidden = !model.loungePlus
        loungeImgV.isHidden = !model.loungePlus
        //: if loungeImgV.isHidden == false {
        if loungeImgV.isHidden == false {
            //: loungeImgV.snp.makeConstraints { make in
            loungeImgV.snp.makeConstraints { make in
                //: make.centerY.equalTo(nameLabel)
                make.centerY.equalTo(nameLabel)
                //: make.leading.equalTo(sexBtn.snp.trailing).offset(3)
                make.leading.equalTo(sexBtn.snp.trailing).offset(3)
                //: make.size.equalTo(CGSize(width: 20, height: 20))
                make.size.equalTo(CGSize(width: 20, height: 20))
                //: make.trailing.lessThanOrEqualToSuperview().offset(-10)
                make.trailing.lessThanOrEqualToSuperview().offset(-10)
            }
        }
    }

    /// quick Greeting 按钮点击事件（女性）
    //: @objc func quickGreetingBtnClick() {
    @objc func doingDataComment() {
        //: let dict: [String: Any] = ["crushId": currenModel.likeId ?? ""]
        let dict: [String: Any] = [(String(kStr_makeBarContent) + String(kStr_mediumValue)): currenModel.likeId ?? ""]
        //: if LocationThen.share.loginUserMode.sex == Gender.female.rawValue {
        if LocationThen.share.loginUserMode.sex == SucceedComparable.female.rawValue { // 女性
            //: TalkingPrivateChatManager.chat_sendQuickGreeting(toUserId: currenModel.uid) { errorCode, errorMsg, textDict, audioDict in
            FillPathChatManager.beauty(toUserId: currenModel.uid) { errorCode, errorMsg, textDict, audioDict in
                //: if (textDict?.count ?? 0 > 0) || (audioDict?.count ?? 0 > 0) {
                if (textDict?.count ?? 0 > 0) || (audioDict?.count ?? 0 > 0) { // 跳转私聊，发送一键打招呼
                    //: EffectPushManager.share.func__pushToPriveteChatVC(chatID: self.currenModel.uid) { vc in
                    EffectPushManager.share.fromCompletion(chatID: self.currenModel.uid) { vc in
                        //: vc.quickGreetingTextDict = textDict
                        vc.quickGreetingTextDict = textDict
                        //: vc.quickGreetingAudioDict = audioDict
                        vc.quickGreetingAudioDict = audioDict
                    }
                    //: } else {
                } else {
                    //: if errorMsg?.count ?? 0 > 0 {
                    if errorMsg?.count ?? 0 > 0 {
                        //: self.func__showStatusBarErrorMsg(showMsg: errorMsg!)
                        self.detailDownArray(showMsg: errorMsg!)
                    }
                    //: if errorCode == 2 { return }
                    if errorCode == 2 { return }
                }

                // 删除当前cell
                //: UpsetCountRequestTool.req_whoLikeMeIgnore(params: dict) { succeed, result, errorModel in
                UpsetCountRequestTool.startCompletion(params: dict) { succeed, _, _ in
                    //: if succeed {
                    if succeed {
                        //: if self.delegate != nil {
                        if self.delegate != nil {
                            //: self.delegate?.quickGreetingSeleteIndex(self.seleteIndex!)
                            self.delegate?.equalIndex(self.seleteIndex!)
                        }
                    }
                }
            }

            //: } else {
        } else { // 男性只有删除
            //: UpsetCountRequestTool.req_whoLikeMeIgnore(params: dict) { succeed, result, errorModel in
            UpsetCountRequestTool.startCompletion(params: dict) { succeed, _, _ in
                //: if succeed {
                if succeed {
                    //: if self.delegate != nil {
                    if self.delegate != nil {
                        //: self.delegate?.quickGreetingSeleteIndex(self.seleteIndex!)
                        self.delegate?.equalIndex(self.seleteIndex!)
                    }
                }
            }
        }
    }

    /// Like&Chat 按钮点击事件
    //: @objc func ChatBtnClick() {
    @objc func underway() {
        //: if currenModel.status == 0 {
        if currenModel.status == 0 {
            //: EffectPushManager.share.func__pushToPriveteChatVC(chatID: currenModel.uid)
            EffectPushManager.share.fromCompletion(chatID: currenModel.uid)
            //: var dict = Dictionary<String, Any>()
            var dict = [String: Any]()
            //: dict["crushId"] = currenModel.likeId
            dict[(String(kStr_makeBarContent) + String(kStr_mediumValue))] = currenModel.likeId
            //: ProgressHUD.show()
            TintProgressHUD.weight()
            //: UpsetCountRequestTool.req_whoLikeMelike(params: dict) { succeed, result, errorModel in
            UpsetCountRequestTool.clip(params: dict) { succeed, _, _ in
                //: ProgressHUD.dismiss()
                TintProgressHUD.inkingPadDismiss()
                //: if succeed {
                if succeed {
                    //: self.currenModel.status = 1
                    self.currenModel.status = 1
                    //: if self.delegate != nil {
                    if self.delegate != nil {
                        //: self.delegate?.likeSeleteIndex(self.seleteIndex!)
                        self.delegate?.playStart(self.seleteIndex!)
                    }
                }
            }

            //: DispatchQueue.main.asyncAfter(deadline: DispatchTime.now()+1) {
            DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 1) {
                //: var msgInfo = Dictionary<String, Any>()
                var msgInfo = [String: Any]()
                //: let gender = self.currenModel.sex == Int(Gender.female.rawValue) ? "her".localized:"him".localized
                let gender = self.currenModel.sex == Int(SucceedComparable.female.rawValue) ? (String(kStr_searchEqualData)).localized : (kStr_viewValue.replacingOccurrences(of: "block", with: "im")).localized
                //: msgInfo["content"] = "Why don't you say hello to %@?".localizedArguments(gender)
                msgInfo[(kStr_frameTitle.replacingOccurrences(of: "fill", with: "o") + kStr_sizeName.replacingOccurrences(of: "at", with: "t"))] = (String(kStr_belowNameContent) + String(kStr_progressValue) + String(kStr_textBagData.prefix(6))).imageArguments(gender)
                //: msgInfo["msgType"] = "txt"
                msgInfo[(String(kStr_pathData) + String(kStr_dateName))] = (kStr_needName.replacingOccurrences(of: "pic", with: "tx"))

                //: let message = TUISocialChatManager.insertTXMessageModel(withExtral: msgInfo,
                let message = TUISocialChatManager.insertTXMessageModel(withExtral: msgInfo,
                                                                        //: toUid: self.currenModel.uid,
                                                                        toUid: self.currenModel.uid,
                                                                        //: isSender: true,
                                                                        isSender: true,
                                                                        //: isTip: true)
                                                                        isTip: true)
                //: NotificationCenter.default.post(name: CHAT_TIPS_TEXT_NOTIFICATION, object: self, userInfo: ["msg": message])
                NotificationCenter.default.post(name: kLet_pingTitle, object: self, userInfo: [String(bytes: kStr_labelUserData.map{appPremium(error: $0)}, encoding: .utf8)!: message])
            }
        }
    }
}

// MARK: - UI

//: extension TalkingWhoLikeCell {
extension BlockLikeCell {
    //: func layoutSubViewsConstraints() {
    func ofConstraints() {
        //: backView.snp.makeConstraints { make in
        backView.snp.makeConstraints { make in
            //: make.leading.equalTo(15)
            make.leading.equalTo(15)
            //: make.trailing.equalTo(-15)
            make.trailing.equalTo(-15)
            //: make.top.equalToSuperview()
            make.top.equalToSuperview()
            //: make.bottom.equalTo(-12)
            make.bottom.equalTo(-12)
        }
        //: IconImageV.snp.makeConstraints { make in
        IconImageV.snp.makeConstraints { make in
            //: make.leading.equalTo(backView).offset(10)
            make.leading.equalTo(backView).offset(10)
            //: make.top.equalTo(backView).offset(10)
            make.top.equalTo(backView).offset(10)
            //: make.width.height.equalTo(40)
            make.width.height.equalTo(40)
        }
        //: iconBorder.snp.makeConstraints { make in
        iconBorder.snp.makeConstraints { make in
            //: make.leading.equalTo(backView).offset(7)
            make.leading.equalTo(backView).offset(7)
            //: make.top.equalTo(backView).offset(7)
            make.top.equalTo(backView).offset(7)
            //: make.width.height.equalTo(46)
            make.width.height.equalTo(46)
        }

        //: nameLabel.snp.makeConstraints { make in
        nameLabel.snp.makeConstraints { make in
            //: make.leading.equalTo(IconImageV.snp.trailing).offset(10)
            make.leading.equalTo(IconImageV.snp.trailing).offset(10)
            //: make.top.equalTo(IconImageV.snp.top)
            make.top.equalTo(IconImageV.snp.top)
        }
        //: cardImg.snp.makeConstraints { make in
        cardImg.snp.makeConstraints { make in
            //: make.leading.equalTo(nameLabel.snp.trailing).offset(4)
            make.leading.equalTo(nameLabel.snp.trailing).offset(4)
            //: make.centerY.equalTo(nameLabel)
            make.centerY.equalTo(nameLabel)
            //: make.height.equalTo(16)
            make.height.equalTo(16)
            //: make.width.equalTo(16)
            make.width.equalTo(16)
        }
        //: sexBtn.snp.makeConstraints { make in
        sexBtn.snp.makeConstraints { make in
            //: make.leading.equalTo(cardImg.snp.trailing).offset(3)
            make.leading.equalTo(cardImg.snp.trailing).offset(3)
            //: make.centerY.equalTo(nameLabel)
            make.centerY.equalTo(nameLabel)
            //: make.height.equalTo(16)
            make.height.equalTo(16)
            //: make.width.equalTo(33)
            make.width.equalTo(33)
            //: make.trailing.lessThanOrEqualToSuperview().offset(-10)
            make.trailing.lessThanOrEqualToSuperview().offset(-10)
        }
        //: timeLabel.snp.makeConstraints { make in
        timeLabel.snp.makeConstraints { make in
            //: make.leading.equalTo(IconImageV.snp.trailing).offset(10)
            make.leading.equalTo(IconImageV.snp.trailing).offset(10)
            //: make.top.equalTo(nameLabel.snp.bottom).offset(2)
            make.top.equalTo(nameLabel.snp.bottom).offset(2)
        }
        //: messageLabel.snp.makeConstraints { make in
        messageLabel.snp.makeConstraints { make in
            //: make.top.equalTo(IconImageV.snp.bottom).offset(10)
            make.top.equalTo(IconImageV.snp.bottom).offset(10)
            //: make.leading.equalTo(backView).offset(10)
            make.leading.equalTo(backView).offset(10)
            //: make.trailing.equalTo(backView.snp.trailing).offset(-10)
            make.trailing.equalTo(backView.snp.trailing).offset(-10)
        }

        //: chatBtn.snp.makeConstraints { make in
        chatBtn.snp.makeConstraints { make in
            //: make.top.equalTo(messageLabel.snp.bottom).offset(10)
            make.top.equalTo(messageLabel.snp.bottom).offset(10)
            //: make.trailing.equalTo(backView.snp.trailing).offset(-10)
            make.trailing.equalTo(backView.snp.trailing).offset(-10)
            //: make.height.equalTo(37)
            make.height.equalTo(37)
            //: make.bottom.equalTo(backView.snp.bottom).offset(-10)
            make.bottom.equalTo(backView.snp.bottom).offset(-10)
        }
        //: quickGreetingBtn.snp.makeConstraints { make in
        quickGreetingBtn.snp.makeConstraints { make in
            //: make.centerY.equalTo(chatBtn)
            make.centerY.equalTo(chatBtn)
            //: make.trailing.equalTo(chatBtn.snp.leading).offset(-12)
            make.trailing.equalTo(chatBtn.snp.leading).offset(-12)
            //: make.height.equalTo(37)
            make.height.equalTo(37)
            //: make.width.equalTo((LocationThen.share.loginUserMode.sex == Gender.female.rawValue) ? 148:76)
            make.width.equalTo((LocationThen.share.loginUserMode.sex == SucceedComparable.female.rawValue) ? 148 : 76)
        }
    }
}
