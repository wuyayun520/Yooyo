
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let kStr_onValue:[UInt8] = [0xd7,0xd0,0xd7,0xca,0x96,0xdd,0xd1,0xda,0xdb,0xcc,0x84,0x97,0x9e,0xd6,0xdf,0xcd,0x9e,0xd0,0xd1,0xca,0x9e,0xdc,0xdb,0xdb,0xd0,0x9e,0xd7,0xd3,0xce,0xd2,0xdb,0xd3,0xdb,0xd0,0xca,0xdb,0xda]

private func toTime(now num: UInt8) -> UInt8 {
    return num ^ 190
}

/*: "Welcome to my room" :*/
fileprivate let kStr_pathContent:String = "Welcview height to model"
fileprivate let kStr_countText:String = " myview enter app margin"
fileprivate let kStr_cookieMakeName:String = "hung manager let room"

/*: "%@'s room" :*/
fileprivate let kStr_voiceRenderData:String = "%@\'s roo"
fileprivate let kStr_frameName:String = "M"

/*: "CCCCCC" :*/
fileprivate let kStr_valueName:String = "cccccc"

/*: "#E1D0FC" :*/
fileprivate let kStr_name:[Character] = ["#","E","1","D","0"]
fileprivate let kStr_numberUpgradeTitle:[Character] = ["F","C"]

/*: "#FFE3E5" :*/
fileprivate let kStr_videoValue:[Character] = ["#","F","F","E","3"]
fileprivate let kStr_customName:[Character] = ["E","5"]

/*: "get json error" :*/
fileprivate let kStr_bottomMatchValue:[Character] = ["g","e","t"," ","j","s","o"]
fileprivate let kStr_momentText:String = "n errorself add image"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  IntervalReactiveCompatible.swift
//  FloraFlex
//
//  Created by Hemming on 2024/9/24.
//

//: import UIKit
import UIKit

//: class PartyListCell: UITableViewCell {
class IntervalReactiveCompatible: UITableViewCell {
    //: override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        //: super.init(style: style, reuseIdentifier: reuseIdentifier)
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        //: self.backgroundColor = .clear
        self.backgroundColor = .clear
        //: self.selectionStyle = .none
        self.selectionStyle = .none

        //: setupSubviews()
        upSetupSubviews()
        //: setupSubViewsConstraint()
        subData()
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: kStr_onValue.map{toTime(now: $0)}, encoding: .utf8)!)
    }

    //: override func awakeFromNib() {
    override func awakeFromNib() {
        //: super.awakeFromNib()
        super.awakeFromNib()
        // Initialization code
    }

    //: override func setSelected(_ selected: Bool, animated: Bool) {
    override func setSelected(_ selected: Bool, animated: Bool) {
        //: super.setSelected(selected, animated: animated)
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

    //: var listModel: PartyListModel? {
    var listModel: TimeListModel? {
        //: didSet {
        didSet {
            //: guard let listModel else { return }
            guard let listModel else { return }

            //: if String(listModel.uid) == LocationThen.share.loginUid {
            if String(listModel.uid) == LocationThen.share.loginUid {
                //: bgvlayer.isHidden = false
                bgvlayer.isHidden = false
                //: countryImgView.isHidden = true
                countryImgView.isHidden = true
                //: countryLab.text = "Welcome to my room".localized
                countryLab.text = (String(kStr_pathContent.prefix(4)) + "ome to" + String(kStr_countText.prefix(3)) + String(kStr_cookieMakeName.suffix(5))).localized
                //: countryLab.textColor = .appValueColor()
                countryLab.textColor = .priority()
                //: countryLab.font = UIFont.pingfangFont(type: .Medium, fontSize: 15)
                countryLab.font = UIFont.groupSize(type: .Medium, fontSize: 15)
                //: countryLab.snp.updateConstraints { make in
                countryLab.snp.updateConstraints { make in
                    //: make.leading.equalTo(headPicImgV.snp.trailing).offset(10)
                    make.leading.equalTo(headPicImgV.snp.trailing).offset(10)
                }
                //: }else{
            } else {
                //: bgvlayer.isHidden = true
                bgvlayer.isHidden = true
                //: countryImgView.isHidden = false
                countryImgView.isHidden = false
                //: countryLab.text = "\(listModel.country)"
                countryLab.text = "\(listModel.country)"
                //: countryLab.textColor = .statusMin()
                countryLab.textColor = .statusMin()
                //: countryLab.font = UIFont.pingfangFont(type: .Regular, fontSize: 15)
                countryLab.font = UIFont.groupSize(type: .Regular, fontSize: 15)
                //: countryLab.snp.updateConstraints { make in
                countryLab.snp.updateConstraints { make in
                    //: make.leading.equalTo(headPicImgV.snp.trailing).offset(32)
                    make.leading.equalTo(headPicImgV.snp.trailing).offset(32)
                }
            }
            //: headPicImgV.setUrlImage(urlStr: listModel.pic)
            headPicImgV.timeFinish(urlStr: listModel.pic)
            //: nameLab.text = "%@'s room".localizedArguments(listModel.name)
            nameLab.text = (kStr_voiceRenderData + kStr_frameName.lowercased()).imageArguments(listModel.name)
            //: countryImgView.setUrlImage(urlStr: listModel.flag)
            countryImgView.timeFinish(urlStr: listModel.flag)
            //: hotLab.text = "\(listModel.score)"
            hotLab.text = "\(listModel.score)"

            //: let hotWidth  = hotLab.sizeThatFits(CGSize(width: ScreenWidth, height: 20)).width
            let hotWidth = hotLab.sizeThatFits(CGSize(width: kLet_halfData, height: 20)).width

            //: hotLab.snp.updateConstraints { make in
            hotLab.snp.updateConstraints { make in
                //: make.width.equalTo(hotWidth)
                make.width.equalTo(hotWidth)
            }
        }
    }

    // MARK: - Lazy load

    //: private lazy var bgView: UIView = {
    private lazy var bgView: UIView = {
        //: let v = UIView()
        let v = UIView()
        //: v.backgroundColor = UIColor.white
        v.backgroundColor = UIColor.white
        //: v.layer.cornerRadius = 9
        v.layer.cornerRadius = 9
        //: v.layer.shadowColor = UIColor(hex: "CCCCCC")?.withAlphaComponent(0.5).cgColor
        v.layer.shadowColor = UIColor(hex: (kStr_valueName.uppercased()))?.withAlphaComponent(0.5).cgColor
        //: v.layer.shadowOffset = CGSize(width: 0, height: 1)
        v.layer.shadowOffset = CGSize(width: 0, height: 1)
        //: v.layer.shadowOpacity = 1
        v.layer.shadowOpacity = 1
        //: v.layer.shadowRadius = 4
        v.layer.shadowRadius = 4
        //: return v
        return v
        //: }()
    }()

    //: private lazy var bgvlayer: CAGradientLayer = {
    private lazy var bgvlayer: CAGradientLayer = {
        // 渐变色
        //: let layer = CAGradientLayer()
        let layer = CAGradientLayer()
        //: layer.frame = CGRect(x: 0, y: 0, width: ScreenWidth - 24, height: 76)
        layer.frame = CGRect(x: 0, y: 0, width: kLet_halfData - 24, height: 76)
        //: layer.startPoint = CGPoint(x: 0, y: 0)
        layer.startPoint = CGPoint(x: 0, y: 0)
        //: layer.endPoint = CGPoint(x: 1, y: 0.5)
        layer.endPoint = CGPoint(x: 1, y: 0.5)
        //: layer.colors = [UIColor(hex: "#E1D0FC")?.cgColor, UIColor(hex: "#FFE3E5")?.cgColor]
        layer.colors = [UIColor(hex: (String(kStr_name) + String(kStr_numberUpgradeTitle)))?.cgColor, UIColor(hex: (String(kStr_videoValue) + String(kStr_customName)))?.cgColor]
        //: layer.cornerRadius = 9
        layer.cornerRadius = 9
        //: layer.locations = [0, 1]
        layer.locations = [0, 1]
        //: return layer
        return layer
        //: }()
    }()

    //: private lazy var headPicImgV: UIImageView = {
    private lazy var headPicImgV: UIImageView = {
        //: let img = UIImageView()
        let img = UIImageView()
        //: img.contentMode = .scaleAspectFill
        img.contentMode = .scaleAspectFill
        //: img.layer.cornerRadius = 60/2
        img.layer.cornerRadius = 60 / 2
        //: img.layer.masksToBounds = true
        img.layer.masksToBounds = true
        //: img.image = .placeImgSquare()
        img.image = .elect()
        //: return img
        return img
        //: }()
    }()

    //: private lazy var nameLab: UILabel = {
    private lazy var nameLab: UILabel = {
        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.font = UIFont.pingfangFont(type: .Medium, fontSize: 18)
        lab.font = UIFont.groupSize(type: .Medium, fontSize: 18)
        //: lab.textColor = .appTitleColor()
        lab.textColor = .dataFormat()
        //: if LanguageManager.shared.direction == .rightToLeft {
        if DeleteClientThen.shared.direction == .rightToLeft {
            //: lab.textAlignment = .right
            lab.textAlignment = .right
            //: lab.lineBreakMode = .byTruncatingHead
            lab.lineBreakMode = .byTruncatingHead
        }
        //: return lab
        return lab
        //: }()
    }()

    //: private lazy var countryImgView: UIImageView = {
    private lazy var countryImgView: UIImageView = {
        //: let imag = UIImageView.init()
        let imag = UIImageView()
        //: return imag
        return imag
        //: }()
    }()

    //: private lazy var countryLab: UILabel = {
    private lazy var countryLab: UILabel = {
        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.font = UIFont.pingfangFont(type: .Regular, fontSize: 15)
        lab.font = UIFont.groupSize(type: .Regular, fontSize: 15)
        //: lab.textColor = .statusMin()
        lab.textColor = .statusMin()

        //: if LanguageManager.shared.direction == .rightToLeft {
        if DeleteClientThen.shared.direction == .rightToLeft {
            //: lab.textAlignment = .right
            lab.textAlignment = .right
            //: lab.lineBreakMode = .byTruncatingHead
            lab.lineBreakMode = .byTruncatingHead
        }
        //: return lab
        return lab
        //: }()
    }()

    //: private lazy var liveSvga: SVGAPlayer = {
    private lazy var liveSvga: SVGAPlayer = {
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
        //: do {
        do {
            //: let url = SVGAEffectTool.default.getZipEffectPath(type: .Party_List)
            let url = LoadGrappleEffectTool.default.sunnahType(type: .Party_List)
            //: let data = try Data(contentsOf: url)
            let data = try Data(contentsOf: url)
            //: let parser = SVGAParser.init()
            let parser = SVGAParser()
            //: parser.parse(with: data, cacheKey: "") { [weak self] videoItem in
            parser.parse(with: data, cacheKey: "") { [weak self] videoItem in
                //: guard let self = self else {return}
                guard let self = self else { return }
                //: player.videoItem = videoItem
                player.videoItem = videoItem
                //: player.startAnimation()
                player.startAnimation()
            }
            //: } catch {
        } catch {
            //: printLog(message: "get json error")
            pathLine(message: (String(kStr_bottomMatchValue) + String(kStr_momentText.prefix(7))))
        }

        //: return player
        return player
        //: }()
    }()

    //: private lazy var hotLab: UILabel = {
    private lazy var hotLab: UILabel = {
        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.font = UIFont.pingfangFont(type: .Medium, fontSize: 13)
        lab.font = UIFont.groupSize(type: .Medium, fontSize: 13)
        //: lab.textColor = .appValueColor()
        lab.textColor = .priority()
        //: if LanguageManager.shared.direction == .rightToLeft {
        if DeleteClientThen.shared.direction == .rightToLeft {
            //: lab.textAlignment = .left
            lab.textAlignment = .left
            //: lab.lineBreakMode = .byTruncatingHead
            lab.lineBreakMode = .byTruncatingHead
            //: }else{
        } else {
            //: lab.textAlignment = .right
            lab.textAlignment = .right
        }
        //: return lab
        return lab
        //: }()
    }()
}

// MARK: - Layout

//: extension PartyListCell {
extension IntervalReactiveCompatible {
    // 添加视图
    //: private func setupSubviews() {
    private func upSetupSubviews() {
        //: self.contentView .addSubview(bgView)
        self.contentView.addSubview(bgView)
        //: bgView.layer.addSublayer(bgvlayer)
        bgView.layer.addSublayer(bgvlayer)
        //: bgView.addSubview(headPicImgV)
        bgView.addSubview(headPicImgV)
        //: bgView.addSubview(nameLab)
        bgView.addSubview(nameLab)
        //: bgView.addSubview(countryImgView)
        bgView.addSubview(countryImgView)
        //: bgView.addSubview(countryLab)
        bgView.addSubview(countryLab)
        //: bgView.addSubview(hotLab)
        bgView.addSubview(hotLab)
        //: bgView.addSubview(liveSvga)
        bgView.addSubview(liveSvga)
    }

    // 添加约束
    //: private func setupSubViewsConstraint() {
    private func subData() {
        //: bgView.snp.makeConstraints { make in
        bgView.snp.makeConstraints { make in
            //: make.leading.trailing.equalToSuperview().inset(12)
            make.leading.trailing.equalToSuperview().inset(12)
            //: make.bottom.top.equalToSuperview().inset(6)
            make.bottom.top.equalToSuperview().inset(6)
        }
        //: headPicImgV.snp.makeConstraints { make in
        headPicImgV.snp.makeConstraints { make in
            //: make.centerY.equalToSuperview()
            make.centerY.equalToSuperview()
            //: make.leading.top.bottom.equalToSuperview().inset(8)
            make.leading.top.bottom.equalToSuperview().inset(8)
            //: make.width.equalTo(60)
            make.width.equalTo(60)
        }
        //: nameLab.snp.makeConstraints { make in
        nameLab.snp.makeConstraints { make in
            //: make.leading.equalTo(headPicImgV.snp.trailing).offset(10)
            make.leading.equalTo(headPicImgV.snp.trailing).offset(10)
            //: make.top.equalTo(headPicImgV.snp.top).offset(6)
            make.top.equalTo(headPicImgV.snp.top).offset(6)
            //: make.trailing.equalToSuperview().inset(10)
            make.trailing.equalToSuperview().inset(10)
        }
        //: countryImgView.snp.makeConstraints { make in
        countryImgView.snp.makeConstraints { make in
            //: make.leading.equalTo(headPicImgV.snp.trailing).offset(10)
            make.leading.equalTo(headPicImgV.snp.trailing).offset(10)
            //: make.top.equalTo(nameLab.snp.bottom).offset(8)
            make.top.equalTo(nameLab.snp.bottom).offset(8)
            //: make.width.height.equalTo(18)
            make.width.height.equalTo(18)
        }
        //: countryLab.snp.makeConstraints { make in
        countryLab.snp.makeConstraints { make in
            //: make.centerY.equalTo(countryImgView)
            make.centerY.equalTo(countryImgView)
            //: make.leading.equalTo(headPicImgV.snp.trailing).offset(32)
            make.leading.equalTo(headPicImgV.snp.trailing).offset(32)
            //: make.trailing.equalTo(liveSvga.snp.leading).offset(-5)
            make.trailing.equalTo(liveSvga.snp.leading).offset(-5)
        }
        //: hotLab.snp.makeConstraints { make in
        hotLab.snp.makeConstraints { make in
            //: make.centerY.equalTo(countryImgView).offset(2)
            make.centerY.equalTo(countryImgView).offset(2)
            //: make.trailing.equalToSuperview().inset(10)
            make.trailing.equalToSuperview().inset(10)
            //: make.width.equalTo(40)
            make.width.equalTo(40)
        }

        //: liveSvga.snp.makeConstraints { make in
        liveSvga.snp.makeConstraints { make in
            //: make.centerY.equalTo(countryImgView)
            make.centerY.equalTo(countryImgView)
            //: make.trailing.equalTo(hotLab.snp.leading).offset(-4)
            make.trailing.equalTo(hotLab.snp.leading).offset(-4)
            //: make.width.equalTo(17)
            make.width.equalTo(17)
            //: make.height.equalTo(15)
            make.height.equalTo(15)
        }
    }
}
