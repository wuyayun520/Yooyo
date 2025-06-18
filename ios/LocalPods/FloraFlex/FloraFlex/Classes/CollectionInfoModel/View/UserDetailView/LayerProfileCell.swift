
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let kStr_voiceViewName:[UInt8] = [0x27,0x2c,0x27,0x32,0xe6,0x21,0x2d,0x22,0x23,0x30,0xf8,0xe7,0xde,0x26,0x1f,0x31,0xde,0x2c,0x2d,0x32,0xde,0x20,0x23,0x23,0x2c,0xde,0x27,0x2b,0x2e,0x2a,0x23,0x2b,0x23,0x2c,0x32,0x23,0x22]

fileprivate func pathFrame(remark num: UInt8) -> UInt8 {
    let value = Int(num) + 66
    if value > 255 {
        return UInt8(value - 256)
    } else {
        return UInt8(value)
    }
}

/*: "icon_ziliao_id_default" :*/
fileprivate let kStr_partTitle:String = "by true self background equalicon_"
fileprivate let kStr_fromContent:String = "_id_dsize selected intimate"
fileprivate let kStr_frameCreateValue:String = "application"

/*: "icon_ziliao_xingzuo_default" :*/
fileprivate let kStr_translateTitle:String = "icon_text visible"
fileprivate let kStr_pastName:String = "zindexlindex"
fileprivate let kStr_genderValue:String = "nglineu"
fileprivate let kStr_aValue:String = "aucount"

/*: "icon_ziliao_qianming_default" :*/
fileprivate let kStr_titleName:[Character] = ["i","c","o","n","_","z","i","l","i","a","o","_","q","i","a","n","m","i","n"]
fileprivate let kStr_shareMakeTitle:String = "g_deffor length text"

/*: "btn_me_copy" :*/
fileprivate let kStr_centerAfterAppValue:String = "bleading"
fileprivate let kStr_imageText:String = "_me_price reply any"

/*: "icon_data_man" :*/
fileprivate let kStr_sendData:[Character] = ["i","c","o","n"]
fileprivate let kStr_kitMakeName:String = "_data_mancenter result"

/*: "icon_data_position" :*/
fileprivate let kStr_textData:[Character] = ["i","c","o","n","_","d","a"]
fileprivate let kStr_detailUserValue:String = "lab"
fileprivate let kStr_dataTitle:String = "a_poprice false path"

/*: "UID Copied" :*/
fileprivate let kStr_premiumDestroyData:[Character] = ["U","I","D"," ","C","o"]
fileprivate let kStr_conversationContent:[Character] = ["p","i","e","d"]

/*: "icon_data_woman" :*/
fileprivate let kStr_buttonPathValue:[UInt8] = [0x6e,0x61,0x6d,0x6f,0x77,0x5f,0x61,0x74,0x61,0x64,0x5f,0x6e,0x6f,0x63,0x69]

/*: "  :*/
fileprivate let kStr_managerValue:[Character] = [" "]

/*: "666666" :*/
fileprivate let kStr_labelName:[Character] = ["6","6","6","6","6","6"]

/*: "No personal signature was completed" :*/
fileprivate let kStr_priceData:[UInt8] = [0x7e,0x5f,0x10,0x40,0x55,0x42,0x43,0x5f,0x5e,0x51,0x5c,0x10,0x43,0x59,0x57,0x5e,0x51,0x44,0x45,0x42,0x55,0x10,0x47,0x51,0x43,0x10,0x53,0x5f,0x5d,0x40,0x5c,0x55,0x44,0x55,0x54]

private func insideColor(color num: UInt8) -> UInt8 {
    return num ^ 48
}

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  LayerProfileCell.swift
//  AbroadTalking
//
//  Created by Bolo on 2022/9/6.
//

//: import UIKit
import UIKit

//: class TalkingUserDetailProfileCell: UITableViewCell {
class LayerProfileCell: UITableViewCell {
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
        //: self.selectionStyle = .none
        self.selectionStyle = .none
        //: self.backgroundColor = .clear
        self.backgroundColor = .clear
        //: self.contentView.backgroundColor = .clear
        self.contentView.backgroundColor = .clear

        //: self.setupSubviews()
        self.presentSetup()
        //: self.setupSubViewsConstraint()
        self.toConstraint()
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: kStr_voiceViewName.map{pathFrame(remark: $0)}, encoding: .utf8)!)
    }

    // MARK: - Lazy load

    //: private lazy var uidImgView: UIImageView = {
    private lazy var uidImgView: UIImageView = {
        //: let imgV = UIImageView()
        let imgV = UIImageView()
        //: imgV.image = UIImage.bundleBy(name: "icon_ziliao_id_default")
        imgV.image = UIImage.bundleBy(name: (String(kStr_partTitle.suffix(5)) + "ziliao" + String(kStr_fromContent.prefix(5)) + "efaul" + kStr_frameCreateValue.replacingOccurrences(of: "application", with: "t")))
        //: return imgV
        return imgV
        //: }()
    }()

    //: private lazy var constellationImgView: UIImageView = {
    private lazy var constellationImgView: UIImageView = {
        //: let imgV = UIImageView()
        let imgV = UIImageView()
        //: imgV.image = UIImage.bundleBy(name: "icon_ziliao_xingzuo_default")
        imgV.image = UIImage.bundleBy(name: (String(kStr_translateTitle.prefix(5)) + kStr_pastName.replacingOccurrences(of: "index", with: "i") + "ao_xi" + kStr_genderValue.replacingOccurrences(of: "line", with: "z") + "o_def" + kStr_aValue.replacingOccurrences(of: "count", with: "lt")))
        //: return imgV
        return imgV
        //: }()
    }()

    //: private lazy var signImgView: UIImageView = {
    private lazy var signImgView: UIImageView = {
        //: let imgV = UIImageView()
        let imgV = UIImageView()
        //: imgV.image = UIImage.bundleBy(name: "icon_ziliao_qianming_default")
        imgV.image = UIImage.bundleBy(name: (String(kStr_titleName) + String(kStr_shareMakeTitle.prefix(5)) + "ault"))
        //: return imgV
        return imgV
        //: }()
    }()

    //: private lazy var uidLab: UILabel = {
    private lazy var uidLab: UILabel = {
        //: let lb = UILabel()
        let lb = UILabel()
        //: lb.font = .pingfangFont(type: .Regular, fontSize: 15)
        lb.font = .groupSize(type: .Regular, fontSize: 15)
        //: lb.textColor = .appValueColor()
        lb.textColor = .priority()
        //: return lb
        return lb
        //: }()
    }()

    //: private lazy var constellationLab: UILabel = {
    private lazy var constellationLab: UILabel = {
        //: let lb = UILabel()
        let lb = UILabel()
        //: lb.font = .pingfangFont(type: .Regular, fontSize: 15)
        lb.font = .groupSize(type: .Regular, fontSize: 15)
        //: lb.textColor = .appValueColor()
        lb.textColor = .priority()
        //: return lb
        return lb
        //: }()
    }()

    //: lazy var signLab: UILabel = {
    lazy var signLab: UILabel = {
        //: let lb = UILabel()
        let lb = UILabel()
        //: lb.font = .pingfangFont(type: .Regular, fontSize: 15)
        lb.font = .groupSize(type: .Regular, fontSize: 15)
        //: lb.textColor = .appValueColor()
        lb.textColor = .priority()
        //: lb.numberOfLines = 0
        lb.numberOfLines = 0
        //: return lb
        return lb
        //: }()
    }()

    //: private lazy var copyButton: UIButton = {
    private lazy var copyButton: UIButton = {
        //: let btn = UIButton(type: .custom)
        let btn = UIButton(type: .custom)
        //: btn.setImage(UIImage.bundleBy(name: "btn_me_copy"), for: .normal)
        btn.setImage(UIImage.bundleBy(name: (kStr_centerAfterAppValue.replacingOccurrences(of: "leading", with: "tn") + String(kStr_imageText.prefix(4)) + "copy")), for: .normal)
        //: btn.addTarget(self, action: #selector(clickCopyButtonAction), for: .touchUpInside)
        btn.addTarget(self, action: #selector(leftHandednessMake), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var sexIcon: UIImageView = {
    private lazy var sexIcon: UIImageView = {
        //: let imgV = UIImageView()
        let imgV = UIImageView()
        //: imgV.image = UIImage.bundleBy(name: "icon_data_man")
        imgV.image = UIImage.bundleBy(name: (String(kStr_sendData) + String(kStr_kitMakeName.prefix(9))))
        //: return imgV
        return imgV
        //: }()
    }()

    //: private lazy var ageLab: UILabel = {
    private lazy var ageLab: UILabel = {
        //: let lb = UILabel()
        let lb = UILabel()
        //: lb.font = .pingfangFont(type: .Regular, fontSize: 15)
        lb.font = .groupSize(type: .Regular, fontSize: 15)
        //: lb.textColor = .appValueColor()
        lb.textColor = .priority()
        //: return lb
        return lb
        //: }()
    }()

    //: private lazy var locationButton: TalkingButton = {
    private lazy var locationButton: OverdoTalkingButton = {
        //: let btn = TalkingButton(type: .custom)
        let btn = OverdoTalkingButton(type: .custom)
        //: btn.spaceBetweenTitleAndImage = 4
        btn.spaceBetweenTitleAndImage = 4
        //: btn.setImage(UIImage.bundleBy(name: "icon_data_position"), for: .normal)
        btn.setImage(UIImage.bundleBy(name: (String(kStr_textData) + kStr_detailUserValue.replacingOccurrences(of: "lab", with: "t") + String(kStr_dataTitle.prefix(4)) + "sition")), for: .normal)
        //: btn.setTitleColor(UIColor.appValueColor(), for: .normal)
        btn.setTitleColor(UIColor.priority(), for: .normal)
        //: btn.titleLabel?.font = UIFont.messageDown(fontSize: 15)
        btn.titleLabel?.font = UIFont.messageDown(fontSize: 15)
        //: btn.titleLabel?.lineBreakMode = .byTruncatingTail
        btn.titleLabel?.lineBreakMode = .byTruncatingTail
        //: return btn
        return btn
        //: }()
    }()
}

// MARK: - Event

//: extension TalkingUserDetailProfileCell {
extension LayerProfileCell {
    //: @objc func clickCopyButtonAction() {
    @objc func leftHandednessMake() {
        //: UIPasteboard.general.string = uidLab.text
        UIPasteboard.general.string = uidLab.text
        //: ProgressHUD.toast("UID Copied".localized)
        TintProgressHUD.errorToast((String(kStr_premiumDestroyData) + String(kStr_conversationContent)).localized)
    }
}

// MARK: - update

//: extension TalkingUserDetailProfileCell {
extension LayerProfileCell {
    /// 刷新个人资料cell
    /// - Parameter userModel: 用户模型
    //: func configWithDataModel(userModel: TalkingUserInfoModel) {
    func location(userModel: LoadMeasurable) {
        //: uidLab.text = userModel.uid
        uidLab.text = userModel.uid
        //: constellationLab.text = userModel.constellation
        constellationLab.text = userModel.constellation
        //: let sexImgStr = (userModel.sex == Gender.female.rawValue) ? "icon_data_woman":"icon_data_man"
        let sexImgStr = (userModel.sex == SucceedComparable.female.rawValue) ? String(bytes: kStr_buttonPathValue.reversed(), encoding: .utf8)! : (String(kStr_sendData) + String(kStr_kitMakeName.prefix(9)))
        //: sexIcon.image = UIImage.bundleBy(name: sexImgStr)
        sexIcon.image = UIImage.bundleBy(name: sexImgStr)
        //: ageLab.text = "\(userModel.age)"
        ageLab.text = "\(userModel.age)"
        //: locationButton.isHidden = userModel.location.count <= 0
        locationButton.isHidden = userModel.location.count <= 0
        //: locationButton.setTitle(" \(userModel.location)", for: .normal)
        locationButton.setTitle(" \(userModel.location)", for: .normal)
        //: if userModel.signature?.isEmptyString == false {
        if userModel.signature?.isEmptyString == false {
            //: let attributes = [.foregroundColor: UIColor(hex: "666666")!, .font: UIFont.pingfangFont(type: .Regular, fontSize: 15)] as [NSAttributedString.Key: Any]
            let attributes = [.foregroundColor: UIColor(hex: (String(kStr_labelName)))!, .font: UIFont.groupSize(type: .Regular, fontSize: 15)] as [NSAttributedString.Key: Any]
            //: let attributeStr = NSMutableAttributedString(string: userModel.signature ?? "No personal signature was completed".localized)
            let attributeStr = NSMutableAttributedString(string: userModel.signature ?? String(bytes: kStr_priceData.map{insideColor(color: $0)}, encoding: .utf8)!.localized)
            //: attributeStr.addAttributes(attributes, range: NSRange(location: 0, length: attributeStr.length))
            attributeStr.addAttributes(attributes, range: NSRange(location: 0, length: attributeStr.length))
            //: let paragraph = NSMutableParagraphStyle()
            let paragraph = NSMutableParagraphStyle()
            //: paragraph.lineSpacing = 2
            paragraph.lineSpacing = 2
            //: attributeStr.addAttribute(.paragraphStyle, value: paragraph, range: NSRange(location: 0, length: attributeStr.length))
            attributeStr.addAttribute(.paragraphStyle, value: paragraph, range: NSRange(location: 0, length: attributeStr.length))

            //: signLab.isHidden = false
            signLab.isHidden = false
            //: signImgView.isHidden = false
            signImgView.isHidden = false
            //: signLab.attributedText = attributeStr
            signLab.attributedText = attributeStr
            //: } else {
        } else {
            //: signLab.isHidden = true
            signLab.isHidden = true
            //: signImgView.isHidden = true
            signImgView.isHidden = true
        }
        //: if locationButton.isHidden && userModel.uid.count > 0 {
        if locationButton.isHidden, userModel.uid.count > 0 {
            //: sexIcon.snp.remakeConstraints { make in
            sexIcon.snp.remakeConstraints { make in
                //: make.top.equalTo(uidImgView.snp.bottom).offset(10)
                make.top.equalTo(uidImgView.snp.bottom).offset(10)
                //: make.leading.size.equalTo(uidImgView)
                make.leading.size.equalTo(uidImgView)
            }
        }
    }
}

// MARK: Layout

//: extension TalkingUserDetailProfileCell {
extension LayerProfileCell {
    //: private func setupSubviews() {
    private func presentSetup() {
        //: contentView.addSubview(uidImgView)
        contentView.addSubview(uidImgView)
        //: contentView.addSubview(uidLab)
        contentView.addSubview(uidLab)
        //: contentView.addSubview(copyButton)
        contentView.addSubview(copyButton)
        //: contentView.addSubview(constellationImgView)
        contentView.addSubview(constellationImgView)
        //: contentView.addSubview(constellationLab)
        contentView.addSubview(constellationLab)
        //: contentView.addSubview(sexIcon)
        contentView.addSubview(sexIcon)
        //: contentView.addSubview(ageLab)
        contentView.addSubview(ageLab)
        //: contentView.addSubview(signImgView)
        contentView.addSubview(signImgView)
        //: contentView.addSubview(signLab)
        contentView.addSubview(signLab)
        //: contentView.addSubview(locationButton)
        contentView.addSubview(locationButton)
    }

    //: private func setupSubViewsConstraint() {
    private func toConstraint() {
        //: uidImgView.snp.makeConstraints { make in
        uidImgView.snp.makeConstraints { make in
            //: make.top.leading.equalTo(15)
            make.top.leading.equalTo(15)
            //: make.size.equalTo(CGSize(width: 22, height: 22))
            make.size.equalTo(CGSize(width: 22, height: 22))
        }
        //: uidLab.snp.makeConstraints { make in
        uidLab.snp.makeConstraints { make in
            //: make.leading.equalTo(uidImgView.snp.trailing).offset(6)
            make.leading.equalTo(uidImgView.snp.trailing).offset(6)
            //: make.centerY.equalTo(uidImgView)
            make.centerY.equalTo(uidImgView)
        }
        //: copyButton.snp.makeConstraints { make in
        copyButton.snp.makeConstraints { make in
            //: make.leading.equalTo(uidLab.snp.trailing).offset(4)
            make.leading.equalTo(uidLab.snp.trailing).offset(4)
            //: make.centerY.equalTo(uidImgView)
            make.centerY.equalTo(uidImgView)
            //: make.size.equalTo(CGSize(width: 22, height: 22))
            make.size.equalTo(CGSize(width: 22, height: 22))
        }
        //: locationButton.snp.makeConstraints { make in
        locationButton.snp.makeConstraints { make in
            //: make.leading.equalTo(uidImgView)
            make.leading.equalTo(uidImgView)
            //: make.top.equalTo(uidImgView.snp.bottom).offset(9)
            make.top.equalTo(uidImgView.snp.bottom).offset(9)
            //: make.height.equalTo(22)
            make.height.equalTo(22)
        }
        //: sexIcon.snp.makeConstraints { make in
        sexIcon.snp.makeConstraints { make in
            //: make.leading.size.equalTo(uidImgView)
            make.leading.size.equalTo(uidImgView)
            //: make.top.equalTo(locationButton.snp.bottom).offset(10)
            make.top.equalTo(locationButton.snp.bottom).offset(10)
        }
        //: ageLab.snp.makeConstraints { make in
        ageLab.snp.makeConstraints { make in
            //: make.leading.equalTo(sexIcon.snp.trailing).offset(6)
            make.leading.equalTo(sexIcon.snp.trailing).offset(6)
            //: make.centerY.equalTo(sexIcon)
            make.centerY.equalTo(sexIcon)
        }
        //: constellationImgView.snp.makeConstraints { make in
        constellationImgView.snp.makeConstraints { make in
            //: make.leading.size.equalTo(uidImgView)
            make.leading.size.equalTo(uidImgView)
            //: make.top.equalTo(sexIcon.snp.bottom).offset(10)
            make.top.equalTo(sexIcon.snp.bottom).offset(10)
        }
        //: constellationLab.snp.makeConstraints { make in
        constellationLab.snp.makeConstraints { make in
            //: make.leading.equalTo(constellationImgView.snp.trailing).offset(6)
            make.leading.equalTo(constellationImgView.snp.trailing).offset(6)
            //: make.centerY.equalTo(constellationImgView)
            make.centerY.equalTo(constellationImgView)
        }
        //: signImgView.snp.makeConstraints { make in
        signImgView.snp.makeConstraints { make in
            //: make.leading.size.equalTo(uidImgView)
            make.leading.size.equalTo(uidImgView)
            //: make.top.equalTo(constellationImgView.snp.bottom).offset(10)
            make.top.equalTo(constellationImgView.snp.bottom).offset(10)
        }
        //: signLab.snp.makeConstraints { make in
        signLab.snp.makeConstraints { make in
            //: make.leading.equalTo(signImgView.snp.trailing).offset(6)
            make.leading.equalTo(signImgView.snp.trailing).offset(6)
            //: make.trailing.equalTo(-15)
            make.trailing.equalTo(-15)
            //: make.top.equalTo(constellationLab.snp.bottom).offset(12)
            make.top.equalTo(constellationLab.snp.bottom).offset(12)
        }
    }
}
