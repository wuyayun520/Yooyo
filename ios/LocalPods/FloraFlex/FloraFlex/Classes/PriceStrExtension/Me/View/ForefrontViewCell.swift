
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let kStr_mainContent:[UInt8] = [0x13,0x18,0x13,0x1e,0xd2,0xd,0x19,0xe,0xf,0x1c,0xe4,0xd3,0xca,0x12,0xb,0x1d,0xca,0x18,0x19,0x1e,0xca,0xc,0xf,0xf,0x18,0xca,0x13,0x17,0x1a,0x16,0xf,0x17,0xf,0x18,0x1e,0xf,0xe]

fileprivate func toView(direction num: UInt8) -> UInt8 {
    let value = Int(num) + 86
    if value > 255 {
        return UInt8(value - 256)
    } else {
        return UInt8(value)
    }
}

/*: "icon_me_income" :*/
fileprivate let kStr_nameAppInValue:[Character] = ["i","c","o","n","_","m","e","_","i"]
fileprivate let kStr_byName:String = "ncommanager"

/*: "Income" :*/
fileprivate let kStr_messageAreaContent:String = "button var name minimize whiteIncome"

/*: "icon_me_male_wallet" :*/
fileprivate let kStr_tabValue:String = "iaton"
fileprivate let kStr_modelValue:String = "guard container number letle_walle"
fileprivate let kStr_blockValue:String = "app"

/*: "Wallet" :*/
fileprivate let kStr_bottomExistQuoteName:String = "Walletplayer be equal hidden status"

/*: "#7189F7" :*/
fileprivate let kStr_withValue:String = "shared make file#7189F7"

/*: "Level" :*/
fileprivate let kStr_sizeTitle:[Character] = ["L","e","v","e","l"]

/*: "icon_me_level" :*/
fileprivate let kStr_labelColorTitle:String = "icon_memake false view if icon"
fileprivate let kStr_intervalValue:String = "let class text lab lab_level"

/*: "$ :*/
fileprivate let kStr_equalManagerValue:String = "style"

/*: "Verification needed before balance check" :*/
fileprivate let kStr_dataValue:[UInt8] = [0x0,0x33,0x24,0x3f,0x30,0x3f,0x35,0x37,0x22,0x3f,0x39,0x38,0x76,0x38,0x33,0x33,0x32,0x33,0x32,0x76,0x34,0x33,0x30,0x39,0x24,0x33,0x76,0x34,0x37,0x3a,0x37,0x38,0x35,0x33,0x76,0x35,0x3e,0x33,0x35,0x3d]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  ForefrontViewCell.swift
//  AbroadTalking
//
//  Created by young on 2023/4/25.
//

//: import UIKit
import UIKit

//: class TalkingMeTwoColumnsCell: UITableViewCell {
class ForefrontViewCell: UITableViewCell {
    //: override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        //: super.init(style: style, reuseIdentifier: reuseIdentifier)
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        //: self.backgroundColor = .clear
        self.backgroundColor = .clear
        //: self.selectionStyle = .none
        self.selectionStyle = .none

        //: setupSubviews()
        cornerMakeSubviewsRich()
        //: setupSubViewsConstraint()
        foursquare()
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: kStr_mainContent.map{toView(direction: $0)}, encoding: .utf8)!)
    }

    // MARK: - Lazy Load

    //: private lazy var goldCoinsBtn: UIButton = {
    private lazy var goldCoinsBtn: UIButton = {
        //: let btn = UIButton()
        let btn = UIButton()
        //: btn.backgroundColor = .white
        btn.backgroundColor = .white
        //: btn.layer.cornerRadius = 6
        btn.layer.cornerRadius = 6
        //: btn.layer.masksToBounds = true
        btn.layer.masksToBounds = true
        //: btn.addTarget(self, action: #selector(goldCoinsButtonClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(resignWith), for: .touchUpInside)

        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.font = UIFont.pingfangFont(type: .Medium, fontSize: 16)
        lab.font = UIFont.groupSize(type: .Medium, fontSize: 16)
        //: lab.textColor = UIColor.appTitleColor()
        lab.textColor = UIColor.dataFormat()
        //: lab.textAlignment = .center
        lab.textAlignment = .center
        //: btn.addSubview(lab)
        btn.addSubview(lab)
        //: lab.snp.makeConstraints { make in
        lab.snp.makeConstraints { make in
            //: make.top.equalTo(11)
            make.top.equalTo(11)
            //: make.leading.equalTo(11)
            make.leading.equalTo(11)
        }

        //: let icon = UIImageView()
        let icon = UIImageView()
        //: icon.contentMode = .scaleAspectFill
        icon.contentMode = .scaleAspectFill
        //: btn.addSubview(icon)
        btn.addSubview(icon)
        //: icon.snp.makeConstraints { make in
        icon.snp.makeConstraints { make in
            //: make.centerY.equalToSuperview()
            make.centerY.equalToSuperview()
            //: make.trailing.equalTo(-12)
            make.trailing.equalTo(-12)
            //: make.size.equalTo(CGSize(width: 38, height: 37))
            make.size.equalTo(CGSize(width: 38, height: 37))
        }
        //: if LocationThen.share.loginUserMode.sex == Gender.female.rawValue && LocationThen.share.appStatus != AppSkinStatus.special.rawValue {
        if LocationThen.share.loginUserMode.sex == SucceedComparable.female.rawValue && LocationThen.share.appStatus != SharedInsetTarget.special.rawValue {
            //: icon.image = UIImage.bundleBy(name: "icon_me_income")
            icon.image = UIImage.bundleBy(name: (String(kStr_nameAppInValue) + kStr_byName.replacingOccurrences(of: "manager", with: "e")))
            //: lab.text = "Income".localized
            lab.text = (String(kStr_messageAreaContent.suffix(6))).localized
            //: } else {
        } else {
            //: icon.image = UIImage.bundleBy(name: "icon_me_male_wallet")
            icon.image = UIImage.bundleBy(name: (kStr_tabValue.replacingOccurrences(of: "at", with: "c") + "_me_ma" + String(kStr_modelValue.suffix(8)) + kStr_blockValue.replacingOccurrences(of: "app", with: "t")))
            //: lab.text = "Wallet".localized
            lab.text = (String(kStr_bottomExistQuoteName.prefix(6))).localized
        }
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var goldCoinsNum: UILabel = {
    private lazy var goldCoinsNum: UILabel = {
        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.font = UIFont.pingfangFont(type: .Medium, fontSize: 18)
        lab.font = UIFont.groupSize(type: .Medium, fontSize: 18)
        //: lab.textColor = UIColor(hex: "#7189F7")
        lab.textColor = UIColor(hex: (String(kStr_withValue.suffix(7))))
        //: lab.textAlignment = .center
        lab.textAlignment = .center
        //: lab.text = "0"
        lab.text = "0"
        //: return lab
        return lab
        //: }()
    }()

    //: private lazy var myLevelBtn: UIButton = {
    private lazy var myLevelBtn: UIButton = {
        //: let btn = UIButton()
        let btn = UIButton()
        //: btn.backgroundColor = .white
        btn.backgroundColor = .white
        //: btn.layer.cornerRadius = 6
        btn.layer.cornerRadius = 6
        //: btn.layer.masksToBounds = true
        btn.layer.masksToBounds = true
        //: btn.addTarget(self, action: #selector(myLevelButtonClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(policyWithClick), for: .touchUpInside)

        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.font = UIFont.pingfangFont(type: .Medium, fontSize: 16)
        lab.font = UIFont.groupSize(type: .Medium, fontSize: 16)
        //: lab.textColor = UIColor.appTitleColor()
        lab.textColor = UIColor.dataFormat()
        //: lab.textAlignment = .center
        lab.textAlignment = .center
        //: lab.text = "Level".localized
        lab.text = (String(kStr_sizeTitle)).localized
        //: btn.addSubview(lab)
        btn.addSubview(lab)
        //: lab.snp.makeConstraints { make in
        lab.snp.makeConstraints { make in
            //: make.top.equalTo(11)
            make.top.equalTo(11)
            //: make.leading.equalTo(11)
            make.leading.equalTo(11)
        }

        //: let icon = UIImageView()
        let icon = UIImageView()
        //: icon.image = UIImage.bundleBy(name: "icon_me_level")
        icon.image = UIImage.bundleBy(name: (String(kStr_labelColorTitle.prefix(7)) + String(kStr_intervalValue.suffix(6))))
        //: icon.contentMode = .scaleAspectFill
        icon.contentMode = .scaleAspectFill
        //: btn.addSubview(icon)
        btn.addSubview(icon)
        //: icon.snp.makeConstraints { make in
        icon.snp.makeConstraints { make in
            //: make.centerY.equalToSuperview()
            make.centerY.equalToSuperview()
            //: make.trailing.equalTo(-12)
            make.trailing.equalTo(-12)
            //: make.size.equalTo(CGSize(width: 39, height: 37))
            make.size.equalTo(CGSize(width: 39, height: 37))
        }
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var myLevelNum: UILabel = {
    private lazy var myLevelNum: UILabel = {
        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.font = UIFont.pingfangFont(type: .Medium, fontSize: 18)
        lab.font = UIFont.groupSize(type: .Medium, fontSize: 18)
        //: lab.textColor = UIColor(hex: "#7189F7")
        lab.textColor = UIColor(hex: (String(kStr_withValue.suffix(7))))
        //: lab.textAlignment = .center
        lab.textAlignment = .center
        //: lab.text = "0"
        lab.text = "0"
        //: return lab
        return lab
        //: }()
    }()
}

// MARK: - Event

//: extension TalkingMeTwoColumnsCell {
extension ForefrontViewCell {
    //: func setViewData() {
    func atCell() {
        //: if LocationThen.share.loginUserMode.sex == Gender.female.rawValue && LocationThen.share.appStatus != AppSkinStatus.special.rawValue {
        if LocationThen.share.loginUserMode.sex == SucceedComparable.female.rawValue, LocationThen.share.appStatus != SharedInsetTarget.special.rawValue {
            //: goldCoinsNum.text = "$\(LocationThen.share.loginUserMode.mf_income)"
            goldCoinsNum.text = "$\(LocationThen.share.loginUserMode.mf_income)"
            //: } else {
        } else {
            //: goldCoinsNum.text = "\(LocationThen.share.loginUserMode.mf_coin)"
            goldCoinsNum.text = "\(LocationThen.share.loginUserMode.mf_coin)"
        }
        //: myLevelNum.text = LocationThen.share.loginUserMode.level
        myLevelNum.text = LocationThen.share.loginUserMode.level
    }

    /// gold coins
    //: @objc private func goldCoinsButtonClick() {
    @objc private func resignWith() {
        //: incomeClick()
        agendaClick()
    }

    /// my level
    //: @objc private func myLevelButtonClick() {
    @objc private func policyWithClick() {
        //: EffectPushManager.share.func__pushToWebVC(webViewType: .Level)
        EffectPushManager.share.selectUp(webViewType: .Level)
    }

    /// income
    //: @objc func incomeClick() {
    @objc func agendaClick() {
        //: if LocationThen.share.loginUserMode.sex == Gender.female.rawValue && LocationThen.share.appStatus != AppSkinStatus.special.rawValue {
        if LocationThen.share.loginUserMode.sex == SucceedComparable.female.rawValue, LocationThen.share.appStatus != SharedInsetTarget.special.rawValue {
            //: if LocationThen.share.loginUserMode.isTPAuth == TPUserAuth.unknown.rawValue || LocationThen.share.loginUserMode.isTPAuth == TPUserAuth.isRefused.rawValue {
            if LocationThen.share.loginUserMode.isTPAuth == FillContiguousBytes.unknown.rawValue || LocationThen.share.loginUserMode.isTPAuth == FillContiguousBytes.isRefused.rawValue {
                //: self.func__showStatusBarSuccessMsg(showMsg: "Verification needed before balance check")
                self.property(showMsg: String(bytes: kStr_dataValue.map{$0^86}, encoding: .utf8)!)
                //: let vc = TalkingFaceVerificationVC()
                let vc = EngineViewController()
                //: self.currentViewController()?.navigationController?.pushViewController(vc, animated: true)
                self.giftFew()?.navigationController?.pushViewController(vc, animated: true)
                //: } else if LocationThen.share.loginUserMode.isTPAuth == TPUserAuth.isOnGoing.rawValue {
            } else if LocationThen.share.loginUserMode.isTPAuth == FillContiguousBytes.isOnGoing.rawValue {
                //: self.func__showStatusBarSuccessMsg(showMsg: "Verification needed before balance check")
                self.property(showMsg: String(bytes: kStr_dataValue.map{$0^86}, encoding: .utf8)!)
                //: let vc = TalkingFinalVerificationVC()
                let vc = ClientPathViewController()
                //: self.currentViewController()?.navigationController?.pushViewController(vc, animated: true)
                self.giftFew()?.navigationController?.pushViewController(vc, animated: true)

                //: } else {
            } else {
                //: EffectPushManager.share.func__pushToWebVC(webViewType: .Balance)
                EffectPushManager.share.selectUp(webViewType: .Balance)
            }

            //: } else {
        } else {
            //: EffectPushManager.share.func__pushToWebVC(webViewType: .RechargeFullPage)
            EffectPushManager.share.selectUp(webViewType: .RechargeFullPage)
        }
    }
}

// MARK: - Layout

//: extension TalkingMeTwoColumnsCell {
extension ForefrontViewCell {
    /// 添加视图
    //: private func setupSubviews() {
    private func cornerMakeSubviewsRich() {
        //: self.contentView.addSubview(goldCoinsBtn)
        self.contentView.addSubview(goldCoinsBtn)
        //: goldCoinsBtn.addSubview(goldCoinsNum)
        goldCoinsBtn.addSubview(goldCoinsNum)
        //: self.contentView.addSubview(myLevelBtn)
        self.contentView.addSubview(myLevelBtn)
        //: myLevelBtn.addSubview(myLevelNum)
        myLevelBtn.addSubview(myLevelNum)
    }

    /// 添加约束
    //: private func setupSubViewsConstraint() {
    private func foursquare() {
        //: let btn_width = (ScreenWidth-30-8)/2
        let btn_width = (kLet_halfData - 30 - 8) / 2
        //: goldCoinsBtn.snp.makeConstraints { make in
        goldCoinsBtn.snp.makeConstraints { make in
            //: make.top.equalToSuperview()
            make.top.equalToSuperview()
            //: make.leading.equalTo(15)
            make.leading.equalTo(15)
            //: make.size.equalTo(CGSize(width: btn_width, height: 70))
            make.size.equalTo(CGSize(width: btn_width, height: 70))
            //: make.bottom.equalToSuperview().offset(-12)
            make.bottom.equalToSuperview().offset(-12)
        }
        //: goldCoinsNum.snp.makeConstraints { make in
        goldCoinsNum.snp.makeConstraints { make in
            //: make.leading.equalTo(11)
            make.leading.equalTo(11)
            //: make.bottom.equalTo(-10)
            make.bottom.equalTo(-10)
        }

        //: myLevelBtn.snp.makeConstraints { make in
        myLevelBtn.snp.makeConstraints { make in
            //: make.trailing.equalTo(-15)
            make.trailing.equalTo(-15)
            //: make.top.size.bottom.equalTo(goldCoinsBtn)
            make.top.size.bottom.equalTo(goldCoinsBtn)
        }
        //: myLevelNum.snp.makeConstraints { make in
        myLevelNum.snp.makeConstraints { make in
            //: make.leading.equalTo(11)
            make.leading.equalTo(11)
            //: make.bottom.equalTo(-10)
            make.bottom.equalTo(-10)
        }
    }
}
