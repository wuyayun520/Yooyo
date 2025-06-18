
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let kStr_backName:[UInt8] = [0xc,0xb,0xc,0x11,0x4d,0x6,0xa,0x1,0x0,0x17,0x5f,0x4c,0x45,0xd,0x4,0x16,0x45,0xb,0xa,0x11,0x45,0x7,0x0,0x0,0xb,0x45,0xc,0x8,0x15,0x9,0x0,0x8,0x0,0xb,0x11,0x0,0x1]

private func centralCity(pic num: UInt8) -> UInt8 {
    return num ^ 101
}

/*: "btn_daily_todayBg_nor" :*/
fileprivate let kStr_contentText:String = "after view centerbtn_da"
fileprivate let kStr_normalTitleMessageName:String = "dayBg_nobottom pair lab self"
fileprivate let kStr_transformVideoData:[Character] = ["r"]

/*: "btn_daily_style1_nor" :*/
fileprivate let kStr_cornerName:String = "btn_var next activity"
fileprivate let kStr_actionContent:String = "YLE"
fileprivate let kStr_replacementContent:String = "1_nortap return if size interval"

/*: "btn_daily_todayLight_nor" :*/
fileprivate let kStr_positionPathData:[Character] = ["b","t","n","_","d","a","i","l","y","_","t","o","d","a","y","L","i","g","h","t","_","n","o"]
fileprivate let kStr_giftDownName:String = "icon"

/*: "btn_daily_notSignIn_nor" :*/
fileprivate let kStr_errorData:[Character] = ["b","t","n","_","d","a","i","l","y","_","n","o","t","S","i","g","n","I","n","_","n"]
fileprivate let kStr_serverData:String = "oindex"

/*: "btn_daily_signIn_nor" :*/
fileprivate let kStr_giftValue:String = "index camera text frombtn_"
fileprivate let kStr_popContent:String = "of user down count texty_si"
fileprivate let kStr_proveValue:String = "transaction deadline bottom indexgnIn"

/*: "btn_daily_today_nor" :*/
fileprivate let kStr_colorName:String = "btn_daimode table"
fileprivate let kStr_attributeName:String = "ly_todam self make let make"
fileprivate let kStr_myText:[Character] = ["y","_","n","o","r"]

/*: "#FF8F1A" :*/
fileprivate let kStr_nameText:String = "#FF8F1Ablock camera to return"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  CompartmentItemCell.swift
//  AbroadTalking
//
//  Created by young on 2022/12/5.
//

//: import UIKit
import UIKit

//: class TalkingDailyItemCell: UICollectionViewCell {
class CompartmentItemCell: UICollectionViewCell {
    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: kStr_backName.map{centralCity(pic: $0)}, encoding: .utf8)!)
    }

    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: self.contentView.backgroundColor = .white
        self.contentView.backgroundColor = .white
        //: self.setupSubviews()
        self.deal()
        //: self.setupSubViewsConstraint()
        self.finishUp()
    }

    // MARK: - Lazy Load

    //: private lazy var iconImgBgV: UIImageView = {
    private lazy var iconImgBgV: UIImageView = {
        //: let img = UIImageView()
        let img = UIImageView()
        //: img.image = UIImage.bundleBy(name: "btn_daily_todayBg_nor")
        img.image = UIImage.bundleBy(name: (String(kStr_contentText.suffix(6)) + "ily_to" + String(kStr_normalTitleMessageName.prefix(8)) + String(kStr_transformVideoData)))
        //: img.isHidden = true
        img.isHidden = true
        //: img.contentMode = .scaleAspectFill
        img.contentMode = .scaleAspectFill
        //: return img
        return img
        //: }()
    }()

    //: private lazy var iconImgV: UIImageView = {
    private lazy var iconImgV: UIImageView = {
        //: let img = UIImageView()
        let img = UIImageView()
        //: img.image = UIImage.bundleBy(name: "btn_daily_style1_nor")
        img.image = UIImage.bundleBy(name: (String(kStr_cornerName.prefix(4)) + "daily_st" + kStr_actionContent.lowercased() + String(kStr_replacementContent.prefix(5))))
        //: img.contentMode = .scaleAspectFill
        img.contentMode = .scaleAspectFill
        //: return img
        return img
        //: }()
    }()

    //: private lazy var iconLightV: UIImageView = {
    private lazy var iconLightV: UIImageView = {
        //: let img = UIImageView()
        let img = UIImageView()
        //: img.image = UIImage.bundleBy(name: "btn_daily_todayLight_nor")
        img.image = UIImage.bundleBy(name: (String(kStr_positionPathData) + kStr_giftDownName.replacingOccurrences(of: "icon", with: "r")))
        //: img.isHidden = true
        img.isHidden = true
        //: img.contentMode = .scaleAspectFill
        img.contentMode = .scaleAspectFill
        //: return img
        return img
        //: }()
    }()

    //: private lazy var dayLab: UILabel = {
    private lazy var dayLab: UILabel = {
        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.textAlignment = .center
        lab.textAlignment = .center
        //: return lab
        return lab
        //: }()
    }()

    //: private lazy var addIconLab: UILabel = {
    private lazy var addIconLab: UILabel = {
        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.font = UIFont.dorsum(fontSize: 14)
        lab.font = UIFont.dorsum(fontSize: 14)
        //: lab.textColor = .white
        lab.textColor = .white
        //: lab.textAlignment = .center
        lab.textAlignment = .center
        //: return lab
        return lab
        //: }()
    }()
}

// MARK: - Event

//: extension TalkingDailyItemCell {
extension CompartmentItemCell {
    /// 刷新cell
    /// - Parameter model: 数据模型
    //: func refreshDailyItemCell(model: TalkingDailyItemModel) {
    func isochronalImage(model: LayerReactiveCompatible) {
        //: iconImgBgV.isHidden = true
        iconImgBgV.isHidden = true
        //: addIconLab.isHidden = true
        addIconLab.isHidden = true
        //: iconLightV.isHidden = true
        iconLightV.isHidden = true

        //: addIconLab.text = model.addIcon
        addIconLab.text = model.addIcon
        //: dayLab.font = UIFont.messageDown(fontSize: 17)
        dayLab.font = UIFont.messageDown(fontSize: 17)
        //: dayLab.text = model.day
        dayLab.text = model.day

        //: switch(model.type) {
        switch model.type {
        //: case .Overdue_NotSignIn:
        case .Overdue_NotSignIn:
            //: iconImgV.image = UIImage.bundleBy(name: "btn_daily_notSignIn_nor")
            iconImgV.image = UIImage.bundleBy(name: (String(kStr_errorData) + kStr_serverData.replacingOccurrences(of: "index", with: "r")))
            //: dayLab.textColor = UIColor.statusMin()
            dayLab.textColor = UIColor.statusMin()

        //: case .Overdue_SignIn:
        case .Overdue_SignIn:
            //: iconImgV.image = UIImage.bundleBy(name: "btn_daily_signIn_nor")
            iconImgV.image = UIImage.bundleBy(name: (String(kStr_giftValue.suffix(4)) + "dail" + String(kStr_popContent.suffix(4)) + String(kStr_proveValue.suffix(4)) + "_nor"))
            //: dayLab.textColor = UIColor.statusMin()
            dayLab.textColor = UIColor.statusMin()

        //: case .Today:
        case .Today:
            //: iconImgBgV.isHidden = false
            iconImgBgV.isHidden = false
            //: addIconLab.isHidden = false
            addIconLab.isHidden = false
            //: iconLightV.isHidden = false
            iconLightV.isHidden = false

            //: iconImgV.image = UIImage.bundleBy(name: "btn_daily_today_nor")
            iconImgV.image = UIImage.bundleBy(name: (String(kStr_colorName.prefix(7)) + String(kStr_attributeName.prefix(7)) + String(kStr_myText)))
            //: dayLab.font = UIFont.dorsum(fontSize: 17)
            dayLab.font = UIFont.dorsum(fontSize: 17)
            //: dayLab.textColor = UIColor(hex: "#FF8F1A")
            dayLab.textColor = UIColor(hex: (String(kStr_nameText.prefix(7))))

        //: case .Future:
        case .Future:
            //: addIconLab.isHidden = false
            addIconLab.isHidden = false
            //: iconImgV.image = UIImage.bundleBy(name: "btn_daily_today_nor")
            iconImgV.image = UIImage.bundleBy(name: (String(kStr_colorName.prefix(7)) + String(kStr_attributeName.prefix(7)) + String(kStr_myText)))
            //: dayLab.textColor = UIColor.appValueColor()
            dayLab.textColor = UIColor.priority()
        }
    }
}

// MARK: - Layout

//: extension TalkingDailyItemCell {
extension CompartmentItemCell {
    // 添加视图
    //: private func setupSubviews() {
    private func deal() {
        //: contentView.addSubview(iconImgBgV)
        contentView.addSubview(iconImgBgV)
        //: contentView.addSubview(iconImgV)
        contentView.addSubview(iconImgV)
        //: contentView.addSubview(addIconLab)
        contentView.addSubview(addIconLab)
        //: contentView.addSubview(iconLightV)
        contentView.addSubview(iconLightV)
        //: contentView.addSubview(dayLab)
        contentView.addSubview(dayLab)
    }

    // 添加约束
    //: private func setupSubViewsConstraint() {
    private func finishUp() {
        //: iconImgBgV.snp.makeConstraints { make in
        iconImgBgV.snp.makeConstraints { make in
            //: make.top.centerX.equalToSuperview()
            make.top.centerX.equalToSuperview()
            //: make.size.equalTo(CGSize(width: 65, height: 65))
            make.size.equalTo(CGSize(width: 65, height: 65))
        }
        //: iconImgV.snp.makeConstraints { make in
        iconImgV.snp.makeConstraints { make in
            //: make.center.equalTo(iconImgBgV)
            make.center.equalTo(iconImgBgV)
            //: make.size.equalTo(CGSize(width: 42, height: 42))
            make.size.equalTo(CGSize(width: 42, height: 42))
        }
        //: addIconLab.snp.makeConstraints { make in
        addIconLab.snp.makeConstraints { make in
            //: make.centerX.equalTo(iconImgV)
            make.centerX.equalTo(iconImgV)
            //: make.centerY.equalTo(iconImgV).offset(-2)
            make.centerY.equalTo(iconImgV).offset(-2)
        }
        //: iconLightV.snp.makeConstraints { make in
        iconLightV.snp.makeConstraints { make in
            //: make.top.equalTo(1)
            make.top.equalTo(1)
            //: make.trailing.equalToSuperview().offset(-4)
            make.trailing.equalToSuperview().offset(-4)
        }
        //: dayLab.snp.makeConstraints { make in
        dayLab.snp.makeConstraints { make in
            //: make.top.equalTo(53)
            make.top.equalTo(53)
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
        }
    }
}
