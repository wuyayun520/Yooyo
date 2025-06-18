
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let kStr_viewContent:[UInt8] = [0x48,0x4f,0x48,0x55,0x9,0x42,0x4e,0x45,0x44,0x53,0x1b,0x8,0x1,0x49,0x40,0x52,0x1,0x4f,0x4e,0x55,0x1,0x43,0x44,0x44,0x4f,0x1,0x48,0x4c,0x51,0x4d,0x44,0x4c,0x44,0x4f,0x55,0x44,0x45]

/*: "btn_chatsettings_unchoice" :*/
fileprivate let kStr_makeText:[Character] = ["b","t","n","_","c","h","a","t","s","e","t","t","i"]
fileprivate let kStr_shareText:String = "line giftngs_un"
fileprivate let kStr_ofContent:String = "choicseat"

/*: "Free" :*/
fileprivate let kStr_dataValue:String = "Freeequal size resent"

/*: "%@ Gold coins / Message" :*/
fileprivate let kStr_trackData:[Character] = ["%","@"," ","G","o","l","d"," ","c","o","i","n","s"," ","/"," ","M","e","s","s","a","g","e"]

/*: "%@ Gold coins / Min" :*/
fileprivate let kStr_addName:[Character] = ["%","@"," ","G","o","l","d"," ","c","o","i","n","s"," "]
fileprivate let kStr_reportStyleValue:String = "/ Minview current leading video original"

/*: "btn_chatsettings_choiced" :*/
fileprivate let kStr_userSizeValue:String = "btn_cgift result up false for"
fileprivate let kStr_blackClearName:String = "texting"
fileprivate let kStr_soundTitle:String = "remoteed"

/*: "LV.%d" :*/
fileprivate let kStr_lessName:[Character] = ["L","V",".","%","d"]

/*: "#E9E9E9" :*/
fileprivate let kStr_backData:String = "#"
fileprivate let kStr_buttonValue:String = "e9e9e9"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  RemoveSetCell.swift
//  AbroadTalking
//
//  Created by Bolo on 2022/9/1.
//

//: import UIKit
import UIKit

//: class ChatPriceModel: HandyJSON {
class ToMeasurable: HandyJSON {
    //: var price: Int = 0
    var price: Int = 0
    //: var levelLimit: Int = 0
    var levelLimit: Int = 0
    //: var isSelected: Bool = false
    var isSelected: Bool = false

    //: required init() {}
    required init() {}
}

//: class TalkingFemaleChatSetCell: UITableViewCell {
class RemoveSetCell: UITableViewCell {
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
        //: self.setupSubviews()
        self.contrive()
        //: self.setupSubViewsConstraint()
        self.withConstraint()
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: kStr_viewContent.map{$0^33}, encoding: .utf8)!)
    }

    // MARK: - Lazy load

    //: lazy var desLabel: UILabel = {
    lazy var desLabel: UILabel = {
        //: let lb = UILabel()
        let lb = UILabel()
        //: lb.textColor = .appTitleColor()
        lb.textColor = .dataFormat()
        //: lb.font = .pingfangFont(type: .Regular, fontSize: 16)
        lb.font = .groupSize(type: .Regular, fontSize: 16)
        //: return lb
        return lb
        //: }()
    }()

    //: lazy var levelView: UIView = {
    lazy var levelView: UIView = {
        //: let view = UIView()
        let view = UIView()
        //: view.backgroundColor = UIColor.fromBuild()
        view.backgroundColor = UIColor.fromBuild()
        //: view.layer.cornerRadius = 10
        view.layer.cornerRadius = 10
        //: view.layer.masksToBounds = true
        view.layer.masksToBounds = true
        //: return view
        return view
        //: }()
    }()

    //: lazy var levelLab: UILabel = {
    lazy var levelLab: UILabel = {
        //: let lb = UILabel()
        let lb = UILabel()
        //: lb.textColor = UIColor.white
        lb.textColor = UIColor.white
        //: lb.font = .pingfangFont(type: .Regular, fontSize: 12)
        lb.font = .groupSize(type: .Regular, fontSize: 12)
        //: lb.textAlignment = .center
        lb.textAlignment = .center
        //: return lb
        return lb
        //: }()
    }()

    //: lazy var selectedImageView: UIImageView = {
    lazy var selectedImageView: UIImageView = {
        //: let imgView = UIImageView()
        let imgView = UIImageView()
        //: imgView.image = UIImage.bundleBy(name: "btn_chatsettings_unchoice")
        imgView.image = UIImage.bundleBy(name: (String(kStr_makeText) + String(kStr_shareText.suffix(6)) + kStr_ofContent.replacingOccurrences(of: "seat", with: "e")))
        //: return imgView
        return imgView
        //: }()
    }()
}

// MARK: - update || fitHeight

//: extension TalkingFemaleChatSetCell {
extension RemoveSetCell {
    //: public func updateCellModel(cellModel: ChatPriceModel, index: Int) {
    public func account(cellModel: ToMeasurable, index: Int) {
        //: switch index {
        switch index {
        //: case 0:
        case 0:
            //: desLabel.text = cellModel.price == 0 ? "Free".localized : "%@ Gold coins / Message".localizedArguments(cellModel.price)
            desLabel.text = cellModel.price == 0 ? (String(kStr_dataValue.prefix(4))).localized : (String(kStr_trackData)).imageArguments(cellModel.price)
        //: case 1, 2:
        case 1, 2:
            //: desLabel.text = "%@ Gold coins / Min".localizedArguments(cellModel.price)
            desLabel.text = (String(kStr_addName) + String(kStr_reportStyleValue.prefix(5))).imageArguments(cellModel.price)
        //: default:
        default:
            //: break
            break
        }

        //: selectedImageView.image = cellModel.isSelected == true ? UIImage.bundleBy(name: "btn_chatsettings_choiced") : UIImage.bundleBy(name: "btn_chatsettings_unchoice")
        selectedImageView.image = cellModel.isSelected == true ? UIImage.bundleBy(name: (String(kStr_userSizeValue.prefix(5)) + "hatse" + kStr_blackClearName.replacingOccurrences(of: "text", with: "tt") + "s_cho" + kStr_soundTitle.replacingOccurrences(of: "remote", with: "ic"))) : UIImage.bundleBy(name: (String(kStr_makeText) + String(kStr_shareText.suffix(6)) + kStr_ofContent.replacingOccurrences(of: "seat", with: "e")))

        //: levelLab.text = String(format: "LV.%d", cellModel.levelLimit)
        levelLab.text = String(format: "LV.%d", cellModel.levelLimit)
        //: levelView.isHidden = cellModel.levelLimit == 0
        levelView.isHidden = cellModel.levelLimit == 0
        //: levelLab.isHidden = cellModel.levelLimit == 0
        levelLab.isHidden = cellModel.levelLimit == 0

        //: contentView.backgroundColor = cellModel.levelLimit > (Int(LocationThen.share.loginUserMode.level) ?? 1) ? UIColor(hex: "#E9E9E9") : .white
        contentView.backgroundColor = cellModel.levelLimit > (Int(LocationThen.share.loginUserMode.level) ?? 1) ? UIColor(hex: (kStr_backData.capitalized + kStr_buttonValue.uppercased())) : .white
    }
}

// MARK: Layout

//: extension TalkingFemaleChatSetCell {
extension RemoveSetCell {
    //: private func setupSubviews() {
    private func contrive() {
        //: contentView.addSubview(desLabel)
        contentView.addSubview(desLabel)
        //: contentView.addSubview(levelView)
        contentView.addSubview(levelView)
        //: contentView.addSubview(levelLab)
        contentView.addSubview(levelLab)
        //: contentView.addSubview(selectedImageView)
        contentView.addSubview(selectedImageView)
    }

    //: private func setupSubViewsConstraint() {
    private func withConstraint() {
        //: desLabel.snp.makeConstraints { make in
        desLabel.snp.makeConstraints { make in
            //: make.leading.equalTo(15)
            make.leading.equalTo(15)
            //: make.top.equalTo(17)
            make.top.equalTo(17)
            //: make.height.equalTo(20)
            make.height.equalTo(20)
        }
        //: levelView.snp.makeConstraints { make in
        levelView.snp.makeConstraints { make in
            //: make.leading.equalTo(desLabel.snp.trailing).offset(4)
            make.leading.equalTo(desLabel.snp.trailing).offset(4)
            //: make.trailing.equalTo(levelLab.snp.trailing).offset(7)
            make.trailing.equalTo(levelLab.snp.trailing).offset(7)
            //: make.centerY.equalTo(desLabel.snp.centerY)
            make.centerY.equalTo(desLabel.snp.centerY)
            //: make.height.equalTo(20)
            make.height.equalTo(20)
        }
        //: levelLab.snp.makeConstraints { make in
        levelLab.snp.makeConstraints { make in
            //: make.leading.equalTo(levelView.snp.leading).offset(7)
            make.leading.equalTo(levelView.snp.leading).offset(7)
            //: make.centerY.equalTo(levelView.snp.centerY)
            make.centerY.equalTo(levelView.snp.centerY)
            //: make.centerX.equalTo(levelView.snp.centerX)
            make.centerX.equalTo(levelView.snp.centerX)
        }
        //: selectedImageView.snp.makeConstraints { make in
        selectedImageView.snp.makeConstraints { make in
            //: make.trailing.equalTo(-15)
            make.trailing.equalTo(-15)
            //: make.centerY.equalTo(desLabel.snp.centerY)
            make.centerY.equalTo(desLabel.snp.centerY)
            //: make.size.equalTo(CGSize(width: 21.0, height: 21.0))
            make.size.equalTo(CGSize(width: 21.0, height: 21.0))
        }
    }
}
