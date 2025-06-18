
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let kStr_makeData:[UInt8] = [0x5e,0x63,0x5e,0x69,0x1d,0x58,0x64,0x59,0x5a,0x67,0x2f,0x1e,0x15,0x5d,0x56,0x68,0x15,0x63,0x64,0x69,0x15,0x57,0x5a,0x5a,0x63,0x15,0x5e,0x62,0x65,0x61,0x5a,0x62,0x5a,0x63,0x69,0x5a,0x59]

fileprivate func infoText(adjust num: UInt8) -> UInt8 {
    let value = Int(num) - 245
    if value < 0 {
        return UInt8(value + 256)
    } else {
        return UInt8(value)
    }
}

/*: "icon_lounge" :*/
fileprivate let kStr_bubbleName:String = "equal request center blockicon_lo"
fileprivate let kStr_meValue:String = "uphotoge"

/*: "icon_home_v" :*/
fileprivate let kStr_frameTitle:[Character] = ["i","c","o","n","_","h","o","m","e","_","v"]

/*: "My album" :*/
fileprivate let kStr_listFrontValue:String = "My albummake var"

/*: "0A071F" :*/
fileprivate let kStr_finishData:[Character] = ["0","A","0","7","1"]
fileprivate let kStr_failureName:String = "color"

/*: "#C5BEFF" :*/
fileprivate let kStr_appData:String = "#C5BErecord finish view detail"
fileprivate let kStr_imageName:String = "ff"

/*: "🎉congratulations! She may be very interested in you. She's not far from you. \nWhy don't you say hello to her?" :*/
fileprivate let kStr_colorTitle:[UInt8] = [0x5c,0x33,0x22,0x25,0xcf,0xc3,0xc2,0xcb,0xde,0xcd,0xd8,0xd9,0xc0,0xcd,0xd8,0xc5,0xc3,0xc2,0xdf,0x8d,0x8c,0xff,0xc4,0xc9,0x8c,0xc1,0xcd,0xd5,0x8c,0xce,0xc9,0x8c,0xda,0xc9,0xde,0xd5,0x8c,0xc5,0xc2,0xd8,0xc9,0xde,0xc9,0xdf,0xd8,0xc9,0xc8,0x8c,0xc5,0xc2,0x8c,0xd5,0xc3,0xd9,0x82,0x8c,0xff,0xc4,0xc9,0x8b,0xdf,0x8c,0xc2,0xc3,0xd8,0x8c,0xca,0xcd,0xde,0x8c,0xca,0xde,0xc3,0xc1,0x8c,0xd5,0xc3,0xd9,0x82,0x8c,0xa6,0xfb,0xc4,0xd5,0x8c,0xc8,0xc3,0xc2,0x8b,0xd8,0x8c,0xd5,0xc3,0xd9,0x8c,0xdf,0xcd,0xd5,0x8c,0xc4,0xc9,0xc0,0xc0,0xc3,0x8c,0xd8,0xc3,0x8c,0xc4,0xc9,0xde,0x93]

/*: "Why don't you say hello to her?" :*/
fileprivate let kStr_seatData:[UInt8] = [0xca,0xf5,0xe4,0xbd,0xf9,0xf2,0xf3,0xba,0xe9,0xbd,0xe4,0xf2,0xe8,0xbd,0xee,0xfc,0xe4,0xbd,0xf5,0xf8,0xf1,0xf1,0xf2,0xbd,0xe9,0xf2,0xbd,0xf5,0xf8,0xef,0xa2]

/*: "🎉congratulations! He may be very interested in you. He's not far from you. \nWhy don't you say hello to him?" :*/
fileprivate let kStr_cardGreetText:[UInt8] = [0xe9,0x86,0x97,0x90,0x7a,0x76,0x77,0x7e,0x6b,0x78,0x6d,0x6c,0x75,0x78,0x6d,0x70,0x76,0x77,0x6a,0x38,0x39,0x51,0x7c,0x39,0x74,0x78,0x60,0x39,0x7b,0x7c,0x39,0x6f,0x7c,0x6b,0x60,0x39,0x70,0x77,0x6d,0x7c,0x6b,0x7c,0x6a,0x6d,0x7c,0x7d,0x39,0x70,0x77,0x39,0x60,0x76,0x6c,0x37,0x39,0x51,0x7c,0x3e,0x6a,0x39,0x77,0x76,0x6d,0x39,0x7f,0x78,0x6b,0x39,0x7f,0x6b,0x76,0x74,0x39,0x60,0x76,0x6c,0x37,0x39,0x13,0x4e,0x71,0x60,0x39,0x7d,0x76,0x77,0x3e,0x6d,0x39,0x60,0x76,0x6c,0x39,0x6a,0x78,0x60,0x39,0x71,0x7c,0x75,0x75,0x76,0x39,0x6d,0x76,0x39,0x71,0x70,0x74,0x26]

private func matchBlock(bag num: UInt8) -> UInt8 {
    return num ^ 25
}

/*: "Why don't you say hello to him?" :*/
fileprivate let kStr_byValue:[UInt8] = [0x63,0x5c,0x4d,0x14,0x50,0x5b,0x5a,0x13,0x40,0x14,0x4d,0x5b,0x41,0x14,0x47,0x55,0x4d,0x14,0x5c,0x51,0x58,0x58,0x5b,0x14,0x40,0x5b,0x14,0x5c,0x5d,0x59,0xb]

private func colorMake(voice num: UInt8) -> UInt8 {
    return num ^ 52
}

/*: "#FFD13A" :*/
fileprivate let kStr_reasonValue:String = "user error#FFD13A"

/*: "icon_male_default" :*/
fileprivate let kStr_eventValue:[UInt8] = [0x76,0x7c,0x70,0x71,0x40,0x72,0x7e,0x73,0x7a,0x40,0x7b,0x7a,0x79,0x7e,0x6a,0x73,0x6b]

private func userLine(of num: UInt8) -> UInt8 {
    return num ^ 31
}

/*: "icon_female_default" :*/
fileprivate let kStr_errorData:[Character] = ["i","c","o","n","_","f"]
fileprivate let kStr_timeIndexName:String = "speech in itememale_"
fileprivate let kStr_topTitle:[Character] = ["d","e","f","a","u","l","t"]

/*: "   " :*/
fileprivate let kStr_iconData:[Character] = [" "," "," "]

/*: "My interests：" :*/
fileprivate let kStr_blockText:String = "My inteelse model model index"
fileprivate let kStr_toName:String = "rests：max show view make color"

/*: "btn_me_edit" :*/
fileprivate let kStr_dataViewName:String = "btn_mepoint make photo"
fileprivate let kStr_acrossName:[Character] = ["_","e","d","i","t"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  PathMsgCell.swift
//  AbroadTalking
//
//  Created by Hemming on 2023/3/1.
//

//: import UIKit
import UIKit

//: class TalkingChatMatchMsgCell: TalkingChatBaseMsgCell {
class PathMsgCell: CollectionViewCell {
    //: var matchData: TimeCellData?
    var matchData: TimeCellData?

    //: override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        //: super.init(style: style, reuseIdentifier: reuseIdentifier)
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        //: setupSubviews()
        showHide()
        //: bindInteraction()
        isometric()
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: kStr_makeData.map{infoText(adjust: $0)}, encoding: .utf8)!)
    }

    // MARK: - Lazy Load

    //: private lazy var infoView: UIView = {
    private lazy var infoView: UIView = {
        //: let view = UIView.init()
        let view = UIView()
        //: view.layer.cornerRadius = 12
        view.layer.cornerRadius = 12
        //: view.layer.masksToBounds = true
        view.layer.masksToBounds = true
        //: view.backgroundColor = UIColor.white
        view.backgroundColor = UIColor.white
        //: return view
        return view
        //: }()
    }()

    //: private lazy var vipBgView: UIImageView = {
    private lazy var vipBgView: UIImageView = {
        //: let img = UIImageView()
        let img = UIImageView()
        //: img.isHidden = true
        img.isHidden = true
        //: return img
        return img
        //: }()
    }()

    //: private lazy var headImgView: UIImageView = {
    private lazy var headImgView: UIImageView = {
        //: let imgV = UIImageView()
        let imgV = UIImageView()
        //: imgV.layer.cornerRadius = 54/2
        imgV.layer.cornerRadius = 54 / 2
        //: imgV.layer.masksToBounds = true
        imgV.layer.masksToBounds = true
        //: imgV.contentMode = .scaleAspectFill
        imgV.contentMode = .scaleAspectFill
        //: return imgV
        return imgV
        //: }()
    }()

    //: private lazy var infoNameLab: UILabel = {
    private lazy var infoNameLab: UILabel = {
        //: let label = UILabel()
        let label = UILabel()
        //: label.textColor = UIColor.appTitleColor()
        label.textColor = UIColor.dataFormat()
        //: label.font = UIFont.dorsum(fontSize: 18)
        label.font = UIFont.dorsum(fontSize: 18)
        //: return label
        return label
        //: }()
    }()

    //: private lazy var loungeImgV: UIImageView = {
    private lazy var loungeImgV: UIImageView = {
        //: let img = UIImageView()
        let img = UIImageView()
        //: img.image = UIImage.bundleBy(name: "icon_lounge")
        img.image = UIImage.bundleBy(name: (String(kStr_bubbleName.suffix(7)) + kStr_meValue.replacingOccurrences(of: "photo", with: "n")))
        //: img.isHidden = true
        img.isHidden = true
        //: return img
        return img
        //: }()
    }()

    //: private lazy var authImgview: UIImageView = {
    private lazy var authImgview: UIImageView = {
        //: let imgV = UIImageView()
        let imgV = UIImageView()
        //: imgV.image = UIImage.bundleBy(name: "icon_home_v")
        imgV.image = UIImage.bundleBy(name: (String(kStr_frameTitle)))
        //: return imgV
        return imgV
        //: }()
    }()

    //: private lazy var sexBtn: UIButton = {
    private lazy var sexBtn: UIButton = {
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

    //: private lazy var interestsLab: UILabel = {
    private lazy var interestsLab: UILabel = {
        //: let label = UILabel()
        let label = UILabel()
        //: label.numberOfLines = 0
        label.numberOfLines = 0
        //: return label
        return label
        //: }()
    }()

    //: private lazy var imgTitleLab: UILabel = {
    private lazy var imgTitleLab: UILabel = {
        //: let label = UILabel()
        let label = UILabel()
        //: label.font = UIFont.dorsum(fontSize: 15)
        label.font = UIFont.dorsum(fontSize: 15)
        //: label.textColor = UIColor.appTitleColor()
        label.textColor = UIColor.dataFormat()
        //: label.text = "My album".localized
        label.text = (String(kStr_listFrontValue.prefix(8))).localized
        //: return label
        return label
        //: }()
    }()

    //: private lazy var pictureView: UIView = {
    private lazy var pictureView: UIView = {
        //: let view = UIView()
        let view = UIView()
        //: return view
        return view
        //: }()
    }()

    //: private lazy var bgView: UIView = {
    private lazy var bgView: UIView = {
        //: let view = UIView.init()
        let view = UIView()
        //: view.backgroundColor = UIColor(hex: "0A071F")?.withAlphaComponent(0.3)
        view.backgroundColor = UIColor(hex: (String(kStr_finishData) + kStr_failureName.replacingOccurrences(of: "color", with: "F")))?.withAlphaComponent(0.3)
        //: view.layer.cornerRadius = 12
        view.layer.cornerRadius = 12
        //: view.layer.masksToBounds = true
        view.layer.masksToBounds = true
        //: view.layer.borderWidth = 1
        view.layer.borderWidth = 1
        //: view.layer.borderColor = UIColor(hex: "#C5BEFF")?.cgColor
        view.layer.borderColor = UIColor(hex: (String(kStr_appData.prefix(5)) + kStr_imageName.uppercased()))?.cgColor
        //: return view
        return view
        //: }()
    }()

    //: private lazy var matchLab: UILabel = {
    private lazy var matchLab: UILabel = {
        //: let label = UILabel.init()
        let label = UILabel()
        //: label.numberOfLines = 0
        label.numberOfLines = 0
        //: var str = "🎉congratulations! She may be very interested in you. She's not far from you. \nWhy don't you say hello to her?".localized
        var str = String(bytes: kStr_colorTitle.map{$0^172}, encoding: .utf8)!.localized
        //: var matchStr = "Why don't you say hello to her?".localized
        var matchStr = String(bytes: kStr_seatData.map{$0^157}, encoding: .utf8)!.localized

        //: if LocationThen.share.loginUserMode.sex == "2" {
        if LocationThen.share.loginUserMode.sex == "2" {
            //: str = "🎉congratulations! He may be very interested in you. He's not far from you. \nWhy don't you say hello to him?".localized
            str = String(bytes: kStr_cardGreetText.map{matchBlock(bag: $0)}, encoding: .utf8)!.localized
            //: matchStr = "Why don't you say hello to him?".localized
            matchStr = String(bytes: kStr_byValue.map{colorMake(voice: $0)}, encoding: .utf8)!.localized
        }
        //: var attriString = NSMutableAttributedString.init(string: str as String, attributes: [.font: UIFont.dorsum(fontSize: 15), .foregroundColor: UIColor.white])
        var attriString = NSMutableAttributedString(string: str as String, attributes: [.font: UIFont.dorsum(fontSize: 15), .foregroundColor: UIColor.white])
        //: if let range = str.range(of: matchStr) {
        if let range = str.range(of: matchStr) {
            //: let nsRange = NSRange(range, in: str)
            let nsRange = NSRange(range, in: str)
            //: attriString.addAttributes([NSAttributedString.Key.foregroundColor: UIColor(hex: "#FFD13A")!], range: nsRange)
            attriString.addAttributes([NSAttributedString.Key.foregroundColor: UIColor(hex: (String(kStr_reasonValue.suffix(7))))!], range: nsRange)
        }
        //: label.attributedText = attriString
        label.attributedText = attriString
        //: return label
        return label
        //: }()
    }()
}

// MARK: - 刷新

//: extension TalkingChatMatchMsgCell {
extension PathMsgCell {
    //: override func fill(with data: TCommonCellData) {
    override func fill(with data: TCommonCellData) {
        //: super.fill(with: data)
        super.fill(with: data)
        //: self.matchData = data as? TimeCellData
        self.matchData = data as? TimeCellData
        //: self.avatarView.isHidden = true
        self.avatarView.isHidden = true
        //: self.isReadImg.isHidden = true
        self.isReadImg.isHidden = true
        //: self.coinIconImg.isHidden = true
        self.coinIconImg.isHidden = true
        //: self.coinLabel.isHidden = true
        self.coinLabel.isHidden = true
        //: self.retryView.isHidden = true
        self.retryView.isHidden = true
        //: self.iconBorder.isHidden = true
        self.iconBorder.isHidden = true
        //: self.bubbleImgView.isHidden = true
        self.bubbleImgView.isHidden = true
        //: self.imgTitleLab.isHidden = true
        self.imgTitleLab.isHidden = true
        //: self.pictureView.isHidden = true
        self.pictureView.isHidden = true

        // 为空时必须初始化
        //: let userInfoModel = self.matchData?.msgModel.userInfoModel ?? FailureReactiveCompatible.init()
        let userInfoModel = self.matchData?.msgModel.userInfoModel ?? FailureReactiveCompatible()
        //: guard userInfoModel.uid.isEmpty == false else {
        guard userInfoModel.uid.isEmpty == false else {
            //: self.bubbleImgView.isHidden = true
            self.bubbleImgView.isHidden = true
            //: return
            return
        }

        //: self.vipBgView.isHidden = !userInfoModel.loungePlus
        self.vipBgView.isHidden = !userInfoModel.loungePlus
        //: if self.vipBgView.isHidden == false {
        if self.vipBgView.isHidden == false {
            //: if let vipModel = LocationThen.share.appUserConfigMode.vipSetting.filter({$0.vipSkinId == userInfoModel.vipSkinId}).first {
            if let vipModel = LocationThen.share.appUserConfigMode.vipSetting.filter({ $0.vipSkinId == userInfoModel.vipSkinId }).first {
                //: self.vipBgView.setUrlImage(urlStr: vipModel.vipChatSkin, placeImg: nil)
                self.vipBgView.timeFinish(urlStr: vipModel.vipChatSkin, placeImg: nil)
            }
        }
        //: self.headImgView.setUrlImage(urlStr: userInfoModel.headPic)
        self.headImgView.timeFinish(urlStr: userInfoModel.headPic)
        //: self.infoNameLab.textColor = userInfoModel.loungePlus ? .userVipColor():.appTitleColor()
        self.infoNameLab.textColor = userInfoModel.loungePlus ? .makeColor() : .dataFormat()
        //: self.infoNameLab.text = userInfoModel.nickname
        self.infoNameLab.text = userInfoModel.nickname
        //: self.loungeImgV.isHidden = !userInfoModel.loungePlus
        self.loungeImgV.isHidden = !userInfoModel.loungePlus
        //: self.authImgview.isHidden = !userInfoModel.tpAuth
        self.authImgview.isHidden = !userInfoModel.tpAuth
        //: let imgStr = userInfoModel.sex == Gender.male.rawValue ? "icon_male_default" : "icon_female_default"
        let imgStr = userInfoModel.sex == SucceedComparable.male.rawValue ? String(bytes: kStr_eventValue.map{userLine(of: $0)}, encoding: .utf8)! : (String(kStr_errorData) + String(kStr_timeIndexName.suffix(6)) + String(kStr_topTitle))
        //: sexBtn.setBackgroundImage(UIImage.bundleBy(name: imgStr), for: .normal)
        sexBtn.setBackgroundImage(UIImage.bundleBy(name: imgStr), for: .normal)
        //: sexBtn.setTitle("   " + String(userInfoModel.age), for: .normal)
        sexBtn.setTitle("   " + String(userInfoModel.age), for: .normal)

        //: if (userInfoModel.interest.count > 0) {
        if userInfoModel.interest.count > 0 {
            //: self.interestsLab.isHidden = false
            self.interestsLab.isHidden = false
            //: let matchStr = "My interests：".localized
            let matchStr = (String(kStr_blockText.prefix(7)) + String(kStr_toName.prefix(6))).localized
            //: let arr_1: NSArray = userInfoModel.interest as NSArray
            let arr_1: NSArray = userInfoModel.interest as NSArray
            //: let str_1 = arr_1.componentsJoined(by: "，")
            let str_1 = arr_1.componentsJoined(by: "，")
            //: let str: NSString = "\(matchStr)\(str_1 as String)" as NSString
            let str: NSString = "\(matchStr)\(str_1 as String)" as NSString
            //: let attributes = [.font: UIFont.dorsum(fontSize: 15), .foregroundColor: UIColor.fromBuild()] as [NSAttributedString.Key: Any]
            let attributes = [.font: UIFont.dorsum(fontSize: 15), .foregroundColor: UIColor.fromBuild()] as [NSAttributedString.Key: Any]
            //: let attrString = NSMutableAttributedString.init(string: str as String, attributes: attributes)
            let attrString = NSMutableAttributedString(string: str as String, attributes: attributes)
            //: attrString.addAttributes([NSAttributedString.Key.foregroundColor: UIColor.appTitleColor()], range: str.range(of: matchStr))
            attrString.addAttributes([NSAttributedString.Key.foregroundColor: UIColor.dataFormat()], range: str.range(of: matchStr))
            //: self.interestsLab.attributedText = attrString
            self.interestsLab.attributedText = attrString
            //: } else {
        } else {
            //: self.interestsLab.isHidden = true
            self.interestsLab.isHidden = true
        }
        //: if userInfoModel.picture.count > 0 {
        if userInfoModel.picture.count > 0 {
            //: self.imgTitleLab.isHidden = false
            self.imgTitleLab.isHidden = false
            //: self.pictureView.isHidden = false
            self.pictureView.isHidden = false
            //: self.updateUserImgView()
            self.errorView()
        }
    }

    /// 布局相册
    //: func updateUserImgView() {
    func errorView() {
        //: self.pictureView.subviews.forEach { $0.removeFromSuperview() }
        self.pictureView.subviews.forEach { $0.removeFromSuperview() }
        //: guard let matchData = self.matchData else { return }
        guard let matchData = self.matchData else { return }

        //: let maxCount = Int((ScreenWidth-60) / 62)
        let maxCount = Int((kLet_halfData - 60) / 62)
        //: for index in 0 ..< min(maxCount, matchData.msgModel.userInfoModel.picture.count) {
        for index in 0 ..< min(maxCount, matchData.msgModel.userInfoModel.picture.count) {
            //: let imgV = UIImageView()
            let imgV = UIImageView()
            //: imgV.layer.cornerRadius = 5
            imgV.layer.cornerRadius = 5
            //: imgV.layer.masksToBounds = true
            imgV.layer.masksToBounds = true
            //: imgV.contentMode = .scaleAspectFill
            imgV.contentMode = .scaleAspectFill
            //: imgV.setUrlImage(urlStr: matchData.msgModel.userInfoModel.picture[index])
            imgV.timeFinish(urlStr: matchData.msgModel.userInfoModel.picture[index])
            //: self.pictureView.addSubview(imgV)
            self.pictureView.addSubview(imgV)
            //: imgV.snp.remakeConstraints { make in
            imgV.snp.remakeConstraints { make in
                //: make.leading.equalTo(index*62)
                make.leading.equalTo(index * 62)
                //: make.top.equalToSuperview()
                make.top.equalToSuperview()
                //: make.width.height.equalTo(54)
                make.width.height.equalTo(54)
            }
        }
        //: if matchData.msgModel.userInfoModel.picture.count > maxCount {
        if matchData.msgModel.userInfoModel.picture.count > maxCount {
            //: let imgV = UIImageView()
            let imgV = UIImageView()
            //: imgV.image = UIImage.bundleBy(name: "btn_me_edit")
            imgV.image = UIImage.bundleBy(name: (String(kStr_dataViewName.prefix(6)) + String(kStr_acrossName)))
            //: self.pictureView.addSubview(imgV)
            self.pictureView.addSubview(imgV)
            //: imgV.snp.remakeConstraints { make in
            imgV.snp.remakeConstraints { make in
                //: make.leading.equalTo(self.pictureView.snp.trailing).offset(-12)
                make.leading.equalTo(self.pictureView.snp.trailing).offset(-12)
                //: make.centerY.equalToSuperview()
                make.centerY.equalToSuperview()
                //: make.width.equalTo(8)
                make.width.equalTo(8)
                //: make.height.equalTo(12)
                make.height.equalTo(12)
            }
        }
    }

    //: override public func updateConstraints() {
    override public func updateConstraints() {
        //: super.updateConstraints()
        super.updateConstraints()
        //: self.container.snp.remakeConstraints { make in
        self.container.snp.remakeConstraints { make in
            //: make.edges.equalToSuperview()
            make.edges.equalToSuperview()
        }
        //: let userInfoModel = self.matchData?.msgModel.userInfoModel ?? FailureReactiveCompatible.init()
        let userInfoModel = self.matchData?.msgModel.userInfoModel ?? FailureReactiveCompatible()
        //: if userInfoModel.uid.isEmptyString {
        if userInfoModel.uid.isEmptyString {
            //: self.infoView.isHidden = true
            self.infoView.isHidden = true
            //: self.infoView.snp.remakeConstraints { make in
            self.infoView.snp.remakeConstraints { make in
                //: make.leading.equalTo(15)
                make.leading.equalTo(15)
                //: make.top.width.height.equalTo(0)
                make.top.width.height.equalTo(0)
            }

            //: } else {
        } else {
            //: self.infoView.isHidden = false
            self.infoView.isHidden = false
            //: self.infoView.snp.remakeConstraints { make in
            self.infoView.snp.remakeConstraints { make in
                //: make.leading.equalTo(15)
                make.leading.equalTo(15)
                //: make.top.equalTo(5)
                make.top.equalTo(5)
                //: make.width.equalTo(ScreenWidth-30)
                make.width.equalTo(kLet_halfData - 30)
                //: make.height.equalTo(100)
                make.height.equalTo(100)
            }

            //: vipBgView.snp.remakeConstraints { make in
            vipBgView.snp.remakeConstraints { make in
                //: make.leading.top.width.equalToSuperview()
                make.leading.top.width.equalToSuperview()
                //: make.height.equalTo(actualWidth(w: 78))
                make.height.equalTo(originalScene(w: 78))
            }

            //: headImgView.snp.remakeConstraints { make in
            headImgView.snp.remakeConstraints { make in
                //: make.leading.top.equalTo(12)
                make.leading.top.equalTo(12)
                //: make.width.height.equalTo(54)
                make.width.height.equalTo(54)
            }

            //: infoNameLab.snp.remakeConstraints { make in
            infoNameLab.snp.remakeConstraints { make in
                //: make.leading.equalTo(headImgView.snp.trailing).offset(12)
                make.leading.equalTo(headImgView.snp.trailing).offset(12)
                //: make.top.equalTo(12)
                make.top.equalTo(12)
                //: make.height.equalTo(30)
                make.height.equalTo(30)
            }
            //: loungeImgV.snp.remakeConstraints { make in
            loungeImgV.snp.remakeConstraints { make in
                //: make.leading.equalTo(infoNameLab.snp.trailing).offset(4)
                make.leading.equalTo(infoNameLab.snp.trailing).offset(4)
                //: make.centerY.equalTo(infoNameLab)
                make.centerY.equalTo(infoNameLab)
                //: make.width.height.equalTo(20)
                make.width.height.equalTo(20)
                //: make.trailing.lessThanOrEqualToSuperview().offset(-12)
                make.trailing.lessThanOrEqualToSuperview().offset(-12)
            }

            //: authImgview.snp.remakeConstraints { make in
            authImgview.snp.remakeConstraints { make in
                //: make.leading.equalTo(infoNameLab)
                make.leading.equalTo(infoNameLab)
                //: make.top.equalTo(infoNameLab.snp.bottom)
                make.top.equalTo(infoNameLab.snp.bottom)
                //: make.width.equalTo(16)
                make.width.equalTo(16)
                //: make.height.equalTo(16)
                make.height.equalTo(16)
            }
            //: sexBtn.snp.remakeConstraints { make in
            sexBtn.snp.remakeConstraints { make in
                //: if userInfoModel.tpAuth {
                if userInfoModel.tpAuth {
                    //: make.leading.equalTo(authImgview.snp.trailing).offset(4)
                    make.leading.equalTo(authImgview.snp.trailing).offset(4)
                    //: } else {
                } else {
                    //: make.leading.equalTo(self.authImgview)
                    make.leading.equalTo(self.authImgview)
                }
                //: make.top.equalTo(authImgview)
                make.top.equalTo(authImgview)
                //: make.width.equalTo(34)
                make.width.equalTo(34)
                //: make.height.equalTo(16)
                make.height.equalTo(16)
            }

            //: var YHeight: CGFloat = 80
            var YHeight: CGFloat = 80
            //: if userInfoModel.interest.count > 0 {
            if userInfoModel.interest.count > 0 {
                //: let inTheight = self.interestsLab.sizeThatFits(CGSize(width: ScreenWidth-54, height: CGFLOAT_MAX)).height
                let inTheight = self.interestsLab.sizeThatFits(CGSize(width: kLet_halfData - 54, height: CGFLOAT_MAX)).height
                //: self.interestsLab.snp.remakeConstraints { make in
                self.interestsLab.snp.remakeConstraints { make in
                    //: make.leading.equalTo(12)
                    make.leading.equalTo(12)
                    //: make.top.equalTo(YHeight)
                    make.top.equalTo(YHeight)
                    //: make.width.equalTo(ScreenWidth-54)
                    make.width.equalTo(kLet_halfData - 54)
                    //: make.height.equalTo(inTheight)
                    make.height.equalTo(inTheight)
                }
                //: YHeight += (inTheight + 8)
                YHeight += (inTheight + 8)
            }
            //: if userInfoModel.picture.count > 0 {
            if userInfoModel.picture.count > 0 {
                //: self.imgTitleLab.snp.remakeConstraints { make in
                self.imgTitleLab.snp.remakeConstraints { make in
                    //: make.leading.equalTo(12)
                    make.leading.equalTo(12)
                    //: make.top.equalTo(YHeight)
                    make.top.equalTo(YHeight)
                    //: make.width.equalTo(ScreenWidth-54)
                    make.width.equalTo(kLet_halfData - 54)
                    //: make.height.equalTo(18)
                    make.height.equalTo(18)
                }
                //: self.pictureView.snp.remakeConstraints { make in
                self.pictureView.snp.remakeConstraints { make in
                    //: make.leading.width.equalTo(imgTitleLab)
                    make.leading.width.equalTo(imgTitleLab)
                    //: make.top.equalTo(imgTitleLab.snp.bottom).offset(6)
                    make.top.equalTo(imgTitleLab.snp.bottom).offset(6)
                    //: make.height.equalTo(54)
                    make.height.equalTo(54)
                }
                //: YHeight += 92
                YHeight += 92
            }
            //: self.infoView.snp.updateConstraints { make in
            self.infoView.snp.updateConstraints { make in
                //: make.height.equalTo(YHeight)
                make.height.equalTo(YHeight)
            }
        }

        //: self.bgView.snp.remakeConstraints { make in
        self.bgView.snp.remakeConstraints { make in
            //: make.leading.equalTo(15)
            make.leading.equalTo(15)
            //: make.top.equalTo(self.infoView.snp.bottom).offset(10)
            make.top.equalTo(self.infoView.snp.bottom).offset(10)
            //: make.width.equalTo(ScreenWidth-30)
            make.width.equalTo(kLet_halfData - 30)
            //: make.height.equalTo(70)
            make.height.equalTo(70)
        }
        //: let labelSize = self.matchLab.sizeThatFits(CGSize(width: (ScreenWidth-30-24), height: CGFLOAT_MAX))
        let labelSize = self.matchLab.sizeThatFits(CGSize(width: kLet_halfData - 30 - 24, height: CGFLOAT_MAX))
        //: self.matchLab.snp.remakeConstraints { make in
        self.matchLab.snp.remakeConstraints { make in
            //: make.leading.equalTo(12)
            make.leading.equalTo(12)
            //: make.center.equalToSuperview()
            make.center.equalToSuperview()
            //: make.size.equalTo(labelSize)
            make.size.equalTo(labelSize)
        }
    }
}

// MARK: - 布局

//: extension TalkingChatMatchMsgCell {
extension PathMsgCell {
    // 添加视图
    //: private func setupSubviews() {
    private func showHide() {
        //: self.container.addSubview(infoView)
        self.container.addSubview(infoView)
        //: self.infoView.addSubview(vipBgView)
        self.infoView.addSubview(vipBgView)
        //: self.infoView.addSubview(headImgView)
        self.infoView.addSubview(headImgView)
        //: self.infoView.addSubview(infoNameLab)
        self.infoView.addSubview(infoNameLab)
        //: self.infoView.addSubview(loungeImgV)
        self.infoView.addSubview(loungeImgV)
        //: self.infoView.addSubview(authImgview)
        self.infoView.addSubview(authImgview)
        //: self.infoView.addSubview(sexBtn)
        self.infoView.addSubview(sexBtn)
        //: self.infoView.addSubview(interestsLab)
        self.infoView.addSubview(interestsLab)
        //: self.infoView.addSubview(imgTitleLab)
        self.infoView.addSubview(imgTitleLab)
        //: self.infoView.addSubview(pictureView)
        self.infoView.addSubview(pictureView)
        //: self.container.addSubview(bgView)
        self.container.addSubview(bgView)
        //: self.bgView.addSubview(matchLab)
        self.bgView.addSubview(matchLab)
    }

    //: private func bindInteraction() {
    private func isometric() {
        //: for  ges in self.container.gestureRecognizers! {
        for ges in self.container.gestureRecognizers! {
            //: self.container.removeGestureRecognizer(ges)
            self.container.removeGestureRecognizer(ges)
        }

        //: let tapGes = UITapGestureRecognizer(target: self, action: #selector(tapCellMessage(_:)))
        let tapGes = UITapGestureRecognizer(target: self, action: #selector(rillName(_:)))
        //: tapGes.numberOfTapsRequired = 1
        tapGes.numberOfTapsRequired = 1
        //: tapGes.numberOfTouchesRequired = 1
        tapGes.numberOfTouchesRequired = 1
        //: self.infoView.addGestureRecognizer(tapGes)
        self.infoView.addGestureRecognizer(tapGes)
        //: self.infoView.isUserInteractionEnabled = true
        self.infoView.isUserInteractionEnabled = true
        //: self.bgView.isUserInteractionEnabled = false
        self.bgView.isUserInteractionEnabled = false
    }

    //: @objc func tapCellMessage(_ tapGes: UITapGestureRecognizer) {
    @objc func rillName(_: UITapGestureRecognizer) {
        //: if self.delegate != nil {
        if self.delegate != nil {
            //: self.delegate?.onSelectMessage(cell: self)
            self.delegate?.onSelectMessage(cell: self)
        }
    }
}
