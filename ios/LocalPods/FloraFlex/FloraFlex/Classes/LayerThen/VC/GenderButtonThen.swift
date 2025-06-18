
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let kStr_redData:[UInt8] = [0x8,0xd,0x8,0x13,0xc7,0x2,0xe,0x3,0x4,0x11,0xd9,0xc8,0xbf,0x7,0x0,0x12,0xbf,0xd,0xe,0x13,0xbf,0x1,0x4,0x4,0xd,0xbf,0x8,0xc,0xf,0xb,0x4,0xc,0x4,0xd,0x13,0x4,0x3]

fileprivate func showYear(index num: UInt8) -> UInt8 {
    let value = Int(num) - 159
    if value < 0 {
        return UInt8(value + 256)
    } else {
        return UInt8(value)
    }
}

/*: "Personal information" :*/
fileprivate let kStr_equalValue:String = "Personcontainer make"
fileprivate let kStr_blockName:String = "removeorma"

/*: "SucceedComparable" :*/
fileprivate let kStr_imageName:[Character] = ["G"]
fileprivate let kStr_buttonData:[Character] = ["e","n","d","e","r"]

/*: "Once gender is set, it Cannot be changed." :*/
fileprivate let kStr_picContent:[UInt8] = [0x2e,0x64,0x65,0x67,0x6e,0x61,0x68,0x63,0x20,0x65,0x62,0x20,0x74,0x6f,0x6e,0x6e,0x61,0x43,0x20,0x74,0x69,0x20,0x2c,0x74,0x65,0x73,0x20,0x73,0x69,0x20,0x72,0x65,0x64,0x6e,0x65,0x67,0x20,0x65,0x63,0x6e,0x4f]

/*: "#2ABBFF" :*/
fileprivate let kStr_insideValue:[Character] = ["#","2","A","B","B","F","F"]

/*: "btn_male_nv_nor" :*/
fileprivate let kStr_data:String = "btn_mview index"
fileprivate let kStr_infoFlushInputData:[Character] = ["a","l","e","_","n","v","_","n","o","r"]

/*: "btn_male_nv_sel" :*/
fileprivate let kStr_noData:String = "top tobtn_male"
fileprivate let kStr_tableTitle:String = "when disappear_nv_sel"

/*: "Male" :*/
fileprivate let kStr_equalTotalName:String = "return var selected ofMale"

/*: "#FF5372" :*/
fileprivate let kStr_textTitle:String = "#FF5372color key"

/*: "btn_female_nv_nor" :*/
fileprivate let kStr_appValue:[Character] = ["b","t","n","_","f","e","m","a","l","e","_","n","v","_","n","o","r"]

/*: "btn_female_nv_sel" :*/
fileprivate let kStr_sizeName:String = "view true table makebtn_fe"
fileprivate let kStr_imageText:String = "semodel"

/*: "Female" :*/
fileprivate let kStr_atData:String = "conversation"
fileprivate let kStr_targetName:String = "eresultale"

/*: "Next" :*/
fileprivate let kStr_inviteTitle:[Character] = ["N","e","x","t"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  GenderButtonThen.swift
//  AbroadTalking
//
//  Created by Hemming on 2022/8/30.
//

//: import UIKit
import UIKit

//: class TalkingLoginGenderVC: TalkingBaseViewController {
class GenderButtonThen: LayerRecognizerDelegate {
    //: let disposeBag = DisposeBag()
    let disposeBag = DisposeBag()

    //: init() {
    init() {
        //: super.init(nibName: nil, bundle: nil)
        super.init(nibName: nil, bundle: nil)
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: kStr_redData.map{showYear(index: $0)}, encoding: .utf8)!)
    }

    //: override func viewDidAppear(_ animated: Bool) {
    override func viewDidAppear(_ animated: Bool) {
        //: super.viewDidAppear(animated)
        super.viewDidAppear(animated)
        //: popGesture(isOpen: false)
        unAgencyOn(isOpen: false)
    }

    //: override func viewDidLoad() {
    override func viewDidLoad() {
        //: super.viewDidLoad()
        super.viewDidLoad()
        //: self.title = "Personal information".localized
        self.title = (String(kStr_equalValue.prefix(6)) + "al in" + kStr_blockName.replacingOccurrences(of: "remove", with: "f") + "tion").localized
        //: LocationThen.share.userFillInfoMode.sex = "1"
        LocationThen.share.userFillInfoMode.sex = "1"
        //: self.setupSubviews()
        self.first()
        //: self.setupSubViewsConstraint()
        self.views()
        //: self.bindInteraction()
        self.holdFastErrSumeraction()
        //: func__checkNextBtnState()
        message()
    }

    //: deinit {
    deinit {}

    //: private lazy var logoTitleLabel: UILabel = {
    private lazy var logoTitleLabel: UILabel = {
        //: let label = UILabel()
        let label = UILabel()
        //: label.font = .pingfangFont(type: .Semibold, fontSize: 17)
        label.font = .groupSize(type: .Semibold, fontSize: 17)
        //: label.textColor = .appTitleColor()
        label.textColor = .dataFormat()
        //: label.textAlignment = .center
        label.textAlignment = .center
        //: label.text = "Gender".localized
        label.text = (String(kStr_imageName) + String(kStr_buttonData)).localized
        //: return label
        return label
        //: }()
    }()

    //: private lazy var genderTipLabel: UILabel = {
    private lazy var genderTipLabel: UILabel = {
        //: let label = UILabel()
        let label = UILabel()
        //: label.font = .pingfangFont(type: .Regular, fontSize: 15)
        label.font = .groupSize(type: .Regular, fontSize: 15)
        //: label.textColor = .appValueColor()
        label.textColor = .priority()
        //: label.numberOfLines = 0
        label.numberOfLines = 0
        //: label.text = "Once gender is set, it Cannot be changed.".localized
        label.text = String(bytes: kStr_picContent.reversed(), encoding: .utf8)!.localized
        //: return label
        return label
        //: }()
    }()

    //: private lazy var maleButton: TalkingButton = {
    private lazy var maleButton: OverdoTalkingButton = {
        //: let btn = TalkingButton(type: .custom)
        let btn = OverdoTalkingButton(type: .custom)
        //: btn.isSelected = false
        btn.isSelected = false
        //: btn.spaceBetweenTitleAndImage = 20
        btn.spaceBetweenTitleAndImage = 20
        //: btn.setBackgroundColor(color: UIColor.init(red: 244/255.0, green: 244/255.0, blue: 244/255.0, alpha: 1.0), forState: .normal)
        btn.colorEffectLoad(color: UIColor(red: 244 / 255.0, green: 244 / 255.0, blue: 244 / 255.0, alpha: 1.0), forState: .normal)
        //: btn.setBackgroundColor(color: UIColor.init(hex: "#2ABBFF")!, forState: .selected)
        btn.colorEffectLoad(color: UIColor(hex: (String(kStr_insideValue)))!, forState: .selected)
        //: btn.setImage(UIImage.bundleBy(name: "btn_male_nv_nor"), for: .normal)
        btn.setImage(UIImage.bundleBy(name: (String(kStr_data.prefix(5)) + String(kStr_infoFlushInputData))), for: .normal)
        //: btn.setImage(UIImage.bundleBy(name: "btn_male_nv_sel"), for: .selected)
        btn.setImage(UIImage.bundleBy(name: (String(kStr_noData.suffix(8)) + String(kStr_tableTitle.suffix(7)))), for: .selected)
        //: btn.setTitle("Male".localized, for: .normal)
        btn.setTitle((String(kStr_equalTotalName.suffix(4))).localized, for: .normal)
        //: btn.setTitle("Male".localized, for: .selected)
        btn.setTitle((String(kStr_equalTotalName.suffix(4))).localized, for: .selected)
        //: btn.setTitleColor(.black, for: .normal)
        btn.setTitleColor(.black, for: .normal)
        //: btn.setTitleColor(.white, for: .selected)
        btn.setTitleColor(.white, for: .selected)
        //: btn.layer.cornerRadius = 25
        btn.layer.cornerRadius = 25
        //: btn.titleLabel?.font = UIFont.messageDown(fontSize: 17)
        btn.titleLabel?.font = UIFont.messageDown(fontSize: 17)
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var femaleButton: TalkingButton = {
    private lazy var femaleButton: OverdoTalkingButton = {
        //: let btn = TalkingButton(type: .custom)
        let btn = OverdoTalkingButton(type: .custom)
        //: btn.isSelected = false
        btn.isSelected = false
        //: btn.spaceBetweenTitleAndImage = 20
        btn.spaceBetweenTitleAndImage = 20
        //: btn.setBackgroundColor(color: UIColor.init(red: 244/255.0, green: 244/255.0, blue: 244/255.0, alpha: 1.0), forState: .normal)
        btn.colorEffectLoad(color: UIColor(red: 244 / 255.0, green: 244 / 255.0, blue: 244 / 255.0, alpha: 1.0), forState: .normal)
        //: btn.setBackgroundColor(color: UIColor.init(hex: "#FF5372")!, forState: .selected)
        btn.colorEffectLoad(color: UIColor(hex: (String(kStr_textTitle.prefix(7))))!, forState: .selected)
        //: btn.setImage(UIImage.bundleBy(name: "btn_female_nv_nor"), for: .normal)
        btn.setImage(UIImage.bundleBy(name: (String(kStr_appValue))), for: .normal)
        //: btn.setImage(UIImage.bundleBy(name: "btn_female_nv_sel"), for: .selected)
        btn.setImage(UIImage.bundleBy(name: (String(kStr_sizeName.suffix(6)) + "male_nv_" + kStr_imageText.replacingOccurrences(of: "model", with: "l"))), for: .selected)
        //: btn.setTitle("Female".localized, for: .normal)
        btn.setTitle((kStr_atData.replacingOccurrences(of: "conversation", with: "F") + kStr_targetName.replacingOccurrences(of: "result", with: "m")).localized, for: .normal)
        //: btn.setTitle("Female".localized, for: .selected)
        btn.setTitle((kStr_atData.replacingOccurrences(of: "conversation", with: "F") + kStr_targetName.replacingOccurrences(of: "result", with: "m")).localized, for: .selected)
        //: btn.setTitleColor(.black, for: .normal)
        btn.setTitleColor(.black, for: .normal)
        //: btn.setTitleColor(.white, for: .selected)
        btn.setTitleColor(.white, for: .selected)
        //: btn.layer.cornerRadius = 25
        btn.layer.cornerRadius = 25
        //: btn.titleLabel?.font = UIFont.messageDown(fontSize: 17)
        btn.titleLabel?.font = UIFont.messageDown(fontSize: 17)
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var commitButton: UIButton = {
    private lazy var commitButton: UIButton = {
        //: let btn = UIButton(type: .custom)
        let btn = UIButton(type: .custom)
        //: btn.isEnabled = false
        btn.isEnabled = false
        //: btn.setTitleColor(UIColor.white, for: .normal)
        btn.setTitleColor(UIColor.white, for: .normal)
        //: btn.titleLabel?.font = UIFont.pingfangFont(type: .Medium, fontSize: 17)
        btn.titleLabel?.font = UIFont.groupSize(type: .Medium, fontSize: 17)
        //: btn.setTitle("Next".localized, for: .normal)
        btn.setTitle((String(kStr_inviteTitle)).localized, for: .normal)
        //: btn.setBackgroundImage(UIImage.imageGradientColor(colors: UIColor.appGradientColor(), size: CGSize(width: ScreenWidth-60, height: 50)), for: .normal)
        btn.setBackgroundImage(UIImage.upTo(colors: UIColor.thirdColor(), size: CGSize(width: kLet_halfData - 60, height: 50)), for: .normal)
        //: btn.layer.cornerRadius = 25
        btn.layer.cornerRadius = 25
        //: btn.clipsToBounds = true
        btn.clipsToBounds = true
        //: return btn
        return btn
        //: }()
    }()
}

// MARK: - Public Event

//: extension TalkingLoginGenderVC {
extension GenderButtonThen {
    //: private func func__checkNextBtnState() {
    private func message() {
        //: if LocationThen.share.userFillInfoMode.sex == "1" {
        if LocationThen.share.userFillInfoMode.sex == "1" {
            //: self.commitButton.isEnabled = true
            self.commitButton.isEnabled = true
            //: self.maleButton.isSelected = true
            self.maleButton.isSelected = true
            //: self.femaleButton.isSelected = false
            self.femaleButton.isSelected = false
            //: } else if LocationThen.share.userFillInfoMode.sex == "2"{
        } else if LocationThen.share.userFillInfoMode.sex == "2" {
            //: self.commitButton.isEnabled = true
            self.commitButton.isEnabled = true
            //: self.maleButton.isSelected = false
            self.maleButton.isSelected = false
            //: self.femaleButton.isSelected = true
            self.femaleButton.isSelected = true
            //: } else {
        } else {
            //: self.commitButton.isEnabled = false
            self.commitButton.isEnabled = false
            //: self.maleButton.isSelected = false
            self.maleButton.isSelected = false
            //: self.femaleButton.isSelected = false
            self.femaleButton.isSelected = false
        }
    }

    //: private func func__pushToNextProgress() {
    private func filename() {
        //        // 1.3 判断用户设备SIM卡归属地是否来自被剔除的国家或地区
        //        // 1.4 判断用户设备是否开启VPN
//        if LocationThen.share.appConfigMode.vpnSimCardCheck {
//
//            guard  !ViewManagerAddrTool.isUsedProxy() && !ViewManagerAddrTool.isUsedVPN() else {
//                self.func__showStatusBarErrorMsg(showMsg: "Network error. Check it and try again.".localized)
//                self.navigationController?.popToRootViewController(animated: true)
//                NotificationCenter.default.post(name: DID_LOGIN_OUT_SUCCESS_NOTIFICATION, object: nil, userInfo: nil)
//                SubThen.func__reportDeviceID()
//                return
//            }
//        }
        /// 清除后面已填写过资料
        //: let sex = LocationThen.share.userFillInfoMode.sex
        let sex = LocationThen.share.userFillInfoMode.sex
        //: LocationThen.share.userFillInfoMode = UserFillInfoModel.init()
        LocationThen.share.userFillInfoMode = LoadInfoModel()
        //: LocationThen.share.userFillInfoMode.sex = sex
        LocationThen.share.userFillInfoMode.sex = sex
        //: let VC = TalkingLoginEditInfoVC()
        let VC = ButtonUpViewController()
        //: self.navigationController?.pushViewController(VC, animated: true)
        self.navigationController?.pushViewController(VC, animated: true)
    }
}

// MARK: - Layout

//: extension TalkingLoginGenderVC {
extension GenderButtonThen {
    // 添加视图
    //: private func setupSubviews() {
    private func first() {
        //: view.backgroundColor = .white
        view.backgroundColor = .white
        //: view.addSubview(logoTitleLabel)
        view.addSubview(logoTitleLabel)
        //: view.addSubview(genderTipLabel)
        view.addSubview(genderTipLabel)
        //: view.addSubview(maleButton)
        view.addSubview(maleButton)
        //: view.addSubview(femaleButton)
        view.addSubview(femaleButton)
        //: view.addSubview(commitButton)
        view.addSubview(commitButton)
    }

    // 添加约束
    //: private func setupSubViewsConstraint() {
    private func views() {
        //: logoTitleLabel.snp.makeConstraints { make in
        logoTitleLabel.snp.makeConstraints { make in
            //: make.top.equalTo(34)
            make.top.equalTo(34)
            //: make.leading.equalTo(30)
            make.leading.equalTo(30)
        }
        //: genderTipLabel.snp.makeConstraints { make in
        genderTipLabel.snp.makeConstraints { make in
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.width.equalTo(ScreenWidth-60)
            make.width.equalTo(kLet_halfData - 60)
            //: make.top.equalTo(logoTitleLabel.snp.bottom).offset(6)
            make.top.equalTo(logoTitleLabel.snp.bottom).offset(6)
        }
        //: maleButton.snp.makeConstraints { make in
        maleButton.snp.makeConstraints { make in
            //: make.leading.equalTo(30)
            make.leading.equalTo(30)
            //: make.width.equalTo(actualWidth(w: 140))
            make.width.equalTo(originalScene(w: 140))
            //: make.height.equalTo(actualWidth(w: 50))
            make.height.equalTo(originalScene(w: 50))
            //: make.top.equalTo(genderTipLabel.snp.bottom).offset(20)
            make.top.equalTo(genderTipLabel.snp.bottom).offset(20)
        }
        //: femaleButton.snp.makeConstraints { make in
        femaleButton.snp.makeConstraints { make in
            //: make.trailing.equalTo(-30)
            make.trailing.equalTo(-30)
            //: make.width.equalTo(actualWidth(w: 140))
            make.width.equalTo(originalScene(w: 140))
            //: make.height.equalTo(actualWidth(w: 50))
            make.height.equalTo(originalScene(w: 50))
            //: make.top.equalTo(genderTipLabel.snp.bottom).offset(20)
            make.top.equalTo(genderTipLabel.snp.bottom).offset(20)
        }
        //: commitButton.snp.makeConstraints { make in
        commitButton.snp.makeConstraints { make in
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.width.equalTo(ScreenWidth-60)
            make.width.equalTo(kLet_halfData - 60)
            //: make.height.equalTo(50)
            make.height.equalTo(50)
            //: make.top.equalTo(maleButton.snp.bottom).offset(40)
            make.top.equalTo(maleButton.snp.bottom).offset(40)
        }
    }

    // 添加事件
    //: private func bindInteraction() {
    private func holdFastErrSumeraction() {
        //: commitButton.rx.tap
        commitButton.rx.tap
            //: .subscribe(onNext: { [weak self] in
            .subscribe(onNext: { [weak self] in
                //: guard let self = self else {return}
                guard let self = self else { return }
                //: self.func__pushToNextProgress()
                self.filename()

                //: })
            })
            //: .disposed(by: disposeBag)
            .disposed(by: disposeBag)
        //: femaleButton.rx.tap
        femaleButton.rx.tap
            //: .subscribe(onNext: { [weak self] in
            .subscribe(onNext: { [weak self] in
                //: guard let self = self else {return}
                guard let self = self else { return }
                //: LocationThen.share.userFillInfoMode.sex = "2"
                LocationThen.share.userFillInfoMode.sex = "2"
                //: self.func__checkNextBtnState()
                self.message()
                //: })
            })
            //: .disposed(by: disposeBag)
            .disposed(by: disposeBag)
        //: maleButton.rx.tap
        maleButton.rx.tap
            //: .subscribe(onNext: { [weak self] in
            .subscribe(onNext: { [weak self] in
                //: guard let self = self else {return}
                guard let self = self else { return }
                //: LocationThen.share.userFillInfoMode.sex = "1"
                LocationThen.share.userFillInfoMode.sex = "1"
                //: self.func__checkNextBtnState()
                self.message()
                //: })
            })
            //: .disposed(by: disposeBag)
            .disposed(by: disposeBag)
    }
}
