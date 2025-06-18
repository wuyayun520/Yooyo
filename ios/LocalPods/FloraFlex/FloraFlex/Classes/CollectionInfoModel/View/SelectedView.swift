
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let kStr_angleData:[UInt8] = [0xb2,0xb7,0xb2,0xbd,0x71,0xac,0xb8,0xad,0xae,0xbb,0x83,0x72,0x69,0xb1,0xaa,0xbc,0x69,0xb7,0xb8,0xbd,0x69,0xab,0xae,0xae,0xb7,0x69,0xb2,0xb6,0xb9,0xb5,0xae,0xb6,0xae,0xb7,0xbd,0xae,0xad]

fileprivate func chromaticColour(equal num: UInt8) -> UInt8 {
    let value = Int(num) - 73
    if value < 0 {
        return UInt8(value + 256)
    } else {
        return UInt8(value)
    }
}

/*: "btn_me_edit" :*/
fileprivate let kStr_makeValue:[Character] = ["b","t","n"]
fileprivate let kStr_aValue:String = "content size self_me_"

/*: "%@ Gold coins / Message" :*/
fileprivate let kStr_toContent:[Character] = ["%","@"," ","G","o","l","d"," ","c","o","i","n","s"," ","/"," ","M"]
fileprivate let kStr_cornerContent:String = "esslabge"

/*: "To show sincere interest, The other party needs to pay to chat with you, and you will get redeemable points." :*/
fileprivate let kStr_valueName:[UInt8] = [0xf2,0xc9,0x86,0xd5,0xce,0xc9,0xd1,0x86,0xd5,0xcf,0xc8,0xc5,0xc3,0xd4,0xc3,0x86,0xcf,0xc8,0xd2,0xc3,0xd4,0xc3,0xd5,0xd2,0x8a,0x86,0xf2,0xce,0xc3,0x86,0xc9,0xd2,0xce,0xc3,0xd4,0x86,0xd6,0xc7,0xd4,0xd2,0xdf,0x86,0xc8,0xc3,0xc3,0xc2,0xd5,0x86,0xd2,0xc9,0x86,0xd6,0xc7,0xdf,0x86,0xd2,0xc9,0x86,0xc5,0xce,0xc7,0xd2,0x86,0xd1,0xcf,0xd2,0xce,0x86,0xdf,0xc9,0xd3,0x8a,0x86,0xc7,0xc8,0xc2,0x86,0xdf,0xc9,0xd3,0x86,0xd1,0xcf,0xca,0xca,0x86,0xc1,0xc3,0xd2,0x86,0xd4,0xc3,0xc2,0xc3,0xc3,0xcb,0xc7,0xc4,0xca,0xc3,0x86,0xd6,0xc9,0xcf,0xc8,0xd2,0xd5,0x88]

/*: "%@ Gold coins / Min" :*/
fileprivate let kStr_normalText:String = "frame camera%@ Gol"
fileprivate let kStr_dataGroupName:String = "self pan false for anys / Min"

/*: "The price setting for video calls does not work for the Random Video feature.If you hang up within 20 seconds of answering the phone, you will not get Points." :*/
fileprivate let kStr_trackTitle:[UInt8] = [0xd,0x31,0x3c,0x79,0x29,0x2b,0x30,0x3a,0x3c,0x79,0x2a,0x3c,0x2d,0x2d,0x30,0x37,0x3e,0x79,0x3f,0x36,0x2b,0x79,0x2f,0x30,0x3d,0x3c,0x36,0x79,0x3a,0x38,0x35,0x35,0x2a,0x79,0x3d,0x36,0x3c,0x2a,0x79,0x37,0x36,0x2d,0x79,0x2e,0x36,0x2b,0x32,0x79,0x3f,0x36,0x2b,0x79,0x2d,0x31,0x3c,0x79,0xb,0x38,0x37,0x3d,0x36,0x34,0x79,0xf,0x30,0x3d,0x3c,0x36,0x79,0x3f,0x3c,0x38,0x2d,0x2c,0x2b,0x3c,0x77,0x10,0x3f,0x79,0x20,0x36,0x2c,0x79,0x31,0x38,0x37,0x3e,0x79,0x2c,0x29,0x79,0x2e,0x30,0x2d,0x31,0x30,0x37,0x79,0x6b,0x69,0x79,0x2a,0x3c,0x3a,0x36,0x37,0x3d,0x2a,0x79,0x36,0x3f,0x79,0x38,0x37,0x2a,0x2e,0x3c,0x2b,0x30,0x37,0x3e,0x79,0x2d,0x31,0x3c,0x79,0x29,0x31,0x36,0x37,0x3c,0x75,0x79,0x20,0x36,0x2c,0x79,0x2e,0x30,0x35,0x35,0x79,0x37,0x36,0x2d,0x79,0x3e,0x3c,0x2d,0x79,0x9,0x36,0x30,0x37,0x2d,0x2a,0x77]

private func fromWith(face num: UInt8) -> UInt8 {
    return num ^ 89
}

/*: "You need to pay extra attention that if you hang up within 20 seconds of answering the phone, you will not get Points." :*/
fileprivate let kStr_infoTagData:[UInt8] = [0xfe,0xc8,0xd2,0x87,0xc9,0xc2,0xc2,0xc3,0x87,0xd3,0xc8,0x87,0xd7,0xc6,0xde,0x87,0xc2,0xdf,0xd3,0xd5,0xc6,0x87,0xc6,0xd3,0xd3,0xc2,0xc9,0xd3,0xce,0xc8,0xc9,0x87,0xd3,0xcf,0xc6,0xd3,0x87,0xce,0xc1,0x87,0xde,0xc8,0xd2,0x87,0xcf,0xc6,0xc9,0xc0,0x87,0xd2,0xd7,0x87,0xd0,0xce,0xd3,0xcf,0xce,0xc9,0x87,0x95,0x97,0x87,0xd4,0xc2,0xc4,0xc8,0xc9,0xc3,0xd4,0x87,0xc8,0xc1,0x87,0xc6,0xc9,0xd4,0xd0,0xc2,0xd5,0xce,0xc9,0xc0,0x87,0xd3,0xcf,0xc2,0x87,0xd7,0xcf,0xc8,0xc9,0xc2,0x8b,0x87,0xde,0xc8,0xd2,0x87,0xd0,0xce,0xcb,0xcb,0x87,0xc9,0xc8,0xd3,0x87,0xc0,0xc2,0xd3,0x87,0xf7,0xc8,0xce,0xc9,0xd3,0xd4,0x89]

private func theoreticalAccount(layer num: UInt8) -> UInt8 {
    return num ^ 167
}

/*: "LV.%d" :*/
fileprivate let kStr_mContent:String = "LV.%dview to self"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  SelectedView.swift
//  AbroadTalking
//
//  Created by Charlotte on 2022/12/15.
//

//: import UIKit
import UIKit

//: class TalkingFemalePriceSetCell: UITableViewCell {
class SelectedView: UITableViewCell {
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

    //: override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        //: super.init(style: style, reuseIdentifier: reuseIdentifier)
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        //: selectionStyle = UITableViewCell.SelectionStyle.none
        selectionStyle = UITableViewCell.SelectionStyle.none
        //: self.setupSubviews()
        self.speaker()
        //: self.setupSubViewsConstraint()
        self.giftTask()
        //: self.bindInteraction()
        self.honoursList()
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: kStr_angleData.map{chromaticColour(equal: $0)}, encoding: .utf8)!)
    }

    //: deinit {
    deinit {}

    // 懒加载初始化
    //: lazy var priceTitleLB: UILabel = {
    lazy var priceTitleLB: UILabel = {
        //: let lb = UILabel.init()
        let lb = UILabel()
        //: lb.font = UIFont.pingfangFont(type: .Medium, fontSize: 18)
        lb.font = UIFont.groupSize(type: .Medium, fontSize: 18)
        //: lb.textColor = .appTitleColor()
        lb.textColor = .dataFormat()
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

    //: lazy var arrowsImageView: UIImageView = {
    lazy var arrowsImageView: UIImageView = {
        //: let imgView = UIImageView()
        let imgView = UIImageView()
        //: imgView.image = UIImage.bundleBy(name: "btn_me_edit")
        imgView.image = UIImage.bundleBy(name: (String(kStr_makeValue) + String(kStr_aValue.suffix(4)) + "edit"))
        //: imgView.contentMode = .scaleAspectFit
        imgView.contentMode = .scaleAspectFit
        //: return imgView
        return imgView
        //: }()
    }()

    //: lazy var messageLab: UILabel = {
    lazy var messageLab: UILabel = {
        //: let lb = UILabel()
        let lb = UILabel()
        //: lb.textColor = .appValueColor()
        lb.textColor = .priority()
        //: lb.font = .pingfangFont(type: .Regular, fontSize: 15)
        lb.font = .groupSize(type: .Regular, fontSize: 15)
        //: lb.numberOfLines = 0
        lb.numberOfLines = 0
        //: return lb
        return lb
        //: }()
    }()
}

//: extension TalkingFemalePriceSetCell {
extension SelectedView {
    //: func setCellData(index: Int, price: Int, leve: Int) {
    func remainDownSub(index: Int, price: Int, leve: Int) {
        //: switch index {
        switch index {
        //: case 0:
        case 0:
            //: priceTitleLB.text = "%@ Gold coins / Message".localizedArguments(price)
            priceTitleLB.text = (String(kStr_toContent) + kStr_cornerContent.replacingOccurrences(of: "lab", with: "a")).imageArguments(price)
            //: messageLab.text =  "To show sincere interest, The other party needs to pay to chat with you, and you will get redeemable points.".localized
            messageLab.text = String(bytes: kStr_valueName.map{$0^166}, encoding: .utf8)!.localized
        //: break
        //: case 1:
        case 1:
            //: priceTitleLB.text = "%@ Gold coins / Min".localizedArguments(price)
            priceTitleLB.text = (String(kStr_normalText.suffix(6)) + "d coin" + String(kStr_dataGroupName.suffix(7))).imageArguments(price)
            //: messageLab.text =  "The price setting for video calls does not work for the Random Video feature.If you hang up within 20 seconds of answering the phone, you will not get Points.".localized
            messageLab.text = String(bytes: kStr_trackTitle.map{fromWith(face: $0)}, encoding: .utf8)!.localized
        //: break
        //: case 2:
        case 2:
            //: priceTitleLB.text = "%@ Gold coins / Min".localizedArguments(price)
            priceTitleLB.text = (String(kStr_normalText.suffix(6)) + "d coin" + String(kStr_dataGroupName.suffix(7))).imageArguments(price)
            //: messageLab.text =  "You need to pay extra attention that if you hang up within 20 seconds of answering the phone, you will not get Points.".localized
            messageLab.text = String(bytes: kStr_infoTagData.map{theoreticalAccount(layer: $0)}, encoding: .utf8)!.localized
        //: break
        //: default:
        default:
            //: break
            break
        }
        //: levelLab.text = String(format: "LV.%d", leve)
        levelLab.text = String(format: "LV.%d", leve)
        //: levelView.isHidden = leve == 0
        levelView.isHidden = leve == 0
        //: levelLab.isHidden = leve == 0
        levelLab.isHidden = leve == 0
    }
}

//: extension TalkingFemalePriceSetCell {
extension SelectedView {
    // 添加视图
    //: private func setupSubviews() {
    private func speaker() {
        //: self.addSubview(priceTitleLB)
        self.addSubview(priceTitleLB)
        //: self.addSubview(levelView)
        self.addSubview(levelView)
        //: self.addSubview(levelLab)
        self.addSubview(levelLab)
        //: self.addSubview(arrowsImageView)
        self.addSubview(arrowsImageView)
        //: self.addSubview(messageLab)
        self.addSubview(messageLab)
    }

    // 添加约束
    //: private func setupSubViewsConstraint() {
    private func giftTask() {
        //: priceTitleLB.snp.makeConstraints { make in
        priceTitleLB.snp.makeConstraints { make in
            //: make.leading.equalTo(15)
            make.leading.equalTo(15)
            //: make.top.equalTo(20)
            make.top.equalTo(20)
            //: make.height.equalTo(20)
            make.height.equalTo(20)
        }
        //: levelView.snp.makeConstraints { make in
        levelView.snp.makeConstraints { make in
            //: make.leading.equalTo(priceTitleLB.snp.trailing).offset(4)
            make.leading.equalTo(priceTitleLB.snp.trailing).offset(4)
            //: make.trailing.equalTo(levelLab.snp.trailing).offset(7)
            make.trailing.equalTo(levelLab.snp.trailing).offset(7)
            //: make.centerY.equalTo(priceTitleLB.snp.centerY)
            make.centerY.equalTo(priceTitleLB.snp.centerY)
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
        //: arrowsImageView.snp.makeConstraints { make in
        arrowsImageView.snp.makeConstraints { make in
            //: make.trailing.equalTo(-15)
            make.trailing.equalTo(-15)
            //: make.centerY.equalTo(priceTitleLB.snp.centerY)
            make.centerY.equalTo(priceTitleLB.snp.centerY)
            //: make.size.equalTo(CGSize(width: 12, height: 12))
            make.size.equalTo(CGSize(width: 12, height: 12))
        }
        //: messageLab.snp.makeConstraints { make in
        messageLab.snp.makeConstraints { make in
            //: make.top.equalTo(priceTitleLB.snp.bottom).offset(8)
            make.top.equalTo(priceTitleLB.snp.bottom).offset(8)
            //: make.leading.equalTo(priceTitleLB)
            make.leading.equalTo(priceTitleLB)
            //: make.trailing.equalTo(-15)
            make.trailing.equalTo(-15)
        }
    }

    // 添加事件
    //: private func bindInteraction() {
    private func honoursList() {}
}
