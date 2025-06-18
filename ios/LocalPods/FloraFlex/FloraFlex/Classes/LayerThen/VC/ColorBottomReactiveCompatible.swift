
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let kStr_voiceName:[UInt8] = [0x2c,0x2b,0x2c,0x31,0x6d,0x26,0x2a,0x21,0x20,0x37,0x7f,0x6c,0x65,0x2d,0x24,0x36,0x65,0x2b,0x2a,0x31,0x65,0x27,0x20,0x20,0x2b,0x65,0x2c,0x28,0x35,0x29,0x20,0x28,0x20,0x2b,0x31,0x20,0x21]

/*: "btn_back_white" :*/
fileprivate let kStr_femaleValue:[Character] = ["b","t","n","_","b","a","c"]
fileprivate let kStr_userName:[Character] = ["k","_","w","h","i","t","e"]

/*: (+ :*/
fileprivate let kStr_withText:String = "back+"

/*: )" :*/
fileprivate let kStr_areaName:[Character] = [")"]

/*: "area_icon_ :*/
fileprivate let kStr_centerName:[Character] = ["a","r","e","a","_","i","c","o","n","_"]

/*: @2x" :*/
fileprivate let kStr_addName:String = "to custom row@2x"

/*: "get img error" :*/
fileprivate let kStr_titleValue:String = "get ititle self color"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  ColorBottomReactiveCompatible.swift
//  AbroadTalking
//
//  Created by Hemming on 2022/1/20.
//

//: import UIKit
import UIKit

//: class TalkingLoginViewController: TalkingBaseViewController {
class ColorBottomReactiveCompatible: LayerRecognizerDelegate {
    //: private var areaModel = TalkingLocationTool.share.getDefaltCountry()
    private var areaModel = ComputerFileContentReactiveCompatible.share.doingTask()

    //: private var phoneOrEmailStr = ""
    private var phoneOrEmailStr = ""
    //: private var password: String?
    private var password: String?

    //: public var loginType: TalkingLoginVCType?
    public var loginType: SignalLoginType?

    //: init(type: TalkingLoginVCType) {
    init(type: SignalLoginType) {
        //: super.init(nibName: nil, bundle: nil)
        super.init(nibName: nil, bundle: nil)
        //: loginType = type
        loginType = type
    }

    //: init() {
    init() {
        //: super.init(nibName: nil, bundle: nil)
        super.init(nibName: nil, bundle: nil)
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: kStr_voiceName.map{$0^69}, encoding: .utf8)!)
    }

    //: override func viewWillAppear(_ animated: Bool) {
    override func viewWillAppear(_ animated: Bool) {
        //: super.viewWillAppear(animated)
        super.viewWillAppear(animated)
    }

    //: override func viewDidAppear(_ animated: Bool) {
    override func viewDidAppear(_ animated: Bool) {
        //: super.viewDidAppear(animated)
        super.viewDidAppear(animated)
    }

    //: override func viewDidLoad() {
    override func viewDidLoad() {
        //: super.viewDidLoad()
        super.viewDidLoad()
        //: self.setupSubviews()
        self.voiceOverSubviews()
        //: self.setupSubViewsConstraint()
        self.gift()
        //: self.bindInteraction()
        self.cling()
    }

    //: deinit {
    deinit {}

    //: lazy var loginView: TalkingLoginView = {
    lazy var loginView: ViewNameFieldDelegate = {
        //: let loginView = TalkingLoginView.init(type: self.loginType!)
        let loginView = ViewNameFieldDelegate(type: self.loginType!)
        //: return loginView
        return loginView
        //: }()
    }()

    //: lazy var backBtn: UIButton = {
    lazy var backBtn: UIButton = {
        //: let btn = UIButton.init(frame: CGRect(x: 6, y: StatusBarHeight, width: 44, height: 44))
        let btn = UIButton(frame: CGRect(x: 6, y: kLet_postPartyValue, width: 44, height: 44))
        //: btn.setImage(UIImage.bundleBy(name: "btn_back_white"), for: .normal)
        btn.setImage(UIImage.bundleBy(name: (String(kStr_femaleValue) + String(kStr_userName))), for: .normal)
        //: btn.addTarget(self, action: #selector(backBtnClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(allow), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()
}

// MARK: - Public Event

//: extension TalkingLoginViewController {
extension ColorBottomReactiveCompatible {
    //: @objc func backBtnClick() {
    @objc func allow() {
        //: self.navigationController?.popViewController(animated: true)
        self.navigationController?.popViewController(animated: true)
    }

    //: func func__getPhoneCodeAction() {
    func state() {
        //: view.endEditing(true)
        view.endEditing(true)
        //: ProgressHUD.show()
        TintProgressHUD.weight()
        //: if self.loginType == .LoginPhone {
        if self.loginType == .LoginPhone {
            //: TalkingLoginRequestTool.req_getPhoneCode(phoneStr: phoneOrEmailStr, areaStr: areaModel.areaCode, completion: { succeed, result, errorModel in
            TableThen.objectDrop(phoneStr: phoneOrEmailStr, areaStr: areaModel.areaCode, completion: { succeed, _, _ in
                //: ProgressHUD.dismiss()
                TintProgressHUD.inkingPadDismiss()
                //: if succeed {
                if succeed {
                    //: self.func__pushToPhoneCodeVC()
                    self.allShow()
                }
                //: })
            })
            //: }else{
        } else {
            //: TalkingLoginRequestTool.req_getBindEmailCode(emailStr: phoneOrEmailStr, isBind: false) { succeed, result, errorModel in
            TableThen.up(emailStr: phoneOrEmailStr, isBind: false) { succeed, _, _ in
                //: ProgressHUD.dismiss()
                TintProgressHUD.inkingPadDismiss()
                //: if succeed {
                if succeed {
                    //: self.func__pushToPhoneCodeVC()
                    self.allShow()
                }
            }
        }
    }

    /// 密码登录
    //: private func func__passwordLogin() {
    private func themeLogin() {
        //: view.endEditing(true)
        view.endEditing(true)
        //: guard let pwd = password else { return }
        guard let pwd = password else { return }
        //: ProgressHUD.show()
        TintProgressHUD.weight()
        //: if self.loginType == .LoginPhone {
        if self.loginType == .LoginPhone {
            //: TalkingLoginRequestTool.req_passwordLogin(phoneStr: phoneOrEmailStr, areaStr: areaModel.areaCode, pwd: pwd) { succeed, result, errorModel in
            TableThen.to(phoneStr: phoneOrEmailStr, areaStr: areaModel.areaCode, pwd: pwd) { _, _, _ in
                //: ProgressHUD.dismiss()
                TintProgressHUD.inkingPadDismiss()
            }
            //: }else{
        } else {
            //: TalkingLoginRequestTool.req_passwordEmailLogin(emailStr: phoneOrEmailStr, pwd: pwd) { succeed, result, errorModel in
            TableThen.leach(emailStr: phoneOrEmailStr, pwd: pwd) { _, _, _ in
                //: ProgressHUD.dismiss()
                TintProgressHUD.inkingPadDismiss()
            }
        }
    }

    //: func func__pushToAreaCodeVC() {
    func whenVc() {
        //: let vc = TalkingAreaCodeChoiceVC()
        let vc = CaseViewDelegate()
        //: navigationController?.pushViewController(vc, animated: true)
        navigationController?.pushViewController(vc, animated: true)
        //: vc.backCountryCode = { [weak self] areaModel in
        vc.backCountryCode = { [weak self] areaModel in
            //: guard let self = self else {return}
            guard let self = self else { return }
            //: self.areaModel = areaModel
            self.areaModel = areaModel
            //: self.func__updateAreaView()
            self.start()
        }
    }

    //: func func__pushToPhoneCodeVC() {
    func allShow() {
        //: let vc = TalkingLoginCodeVC(type: self.loginType!)
        let vc = SharedReactiveCompatible(type: self.loginType!)
        //: if self.loginType == .LoginPhone {
        if self.loginType == .LoginPhone {
            //: vc.areaCodeNum = areaModel.areaCode
            vc.areaCodeNum = areaModel.areaCode
        }
        //: vc.phoneOrEmailStr = phoneOrEmailStr
        vc.phoneOrEmailStr = phoneOrEmailStr
        //: navigationController?.pushViewController(vc, animated: true)
        navigationController?.pushViewController(vc, animated: true)
    }

    //: func func__updateAreaView() {
    func start() {
        //: self.loginView.areaCodeLabel.text = "\(areaModel.areaName)(+\(areaModel.areaCode))"
        self.loginView.areaCodeLabel.text = "\(areaModel.areaName)(+\(areaModel.areaCode))"
        //: if areaModel.url.isEmptyString {
        if areaModel.url.isEmptyString {
            //: var imageName = areaModel.areaName.replacingOccurrences(of: " ", with: "")
            var imageName = areaModel.areaName.replacingOccurrences(of: " ", with: "")
            //: imageName = imageName.replacingOccurrences(of: ",", with: "")
            imageName = imageName.replacingOccurrences(of: ",", with: "")
            //: imageName = imageName.replacingOccurrences(of: ")", with: "")
            imageName = imageName.replacingOccurrences(of: ")", with: "")
            //: imageName = imageName.replacingOccurrences(of: "(", with: "")
            imageName = imageName.replacingOccurrences(of: "(", with: "")
            //: imageName = "area_icon_\(imageName)@2x"
            imageName = (String(kStr_centerName)) + "\(imageName)@2x"
            //: do {
            do {
                //: let url = SVGAEffectTool.default.getZipAreaIconPath(iconName: imageName)
                let url = LoadGrappleEffectTool.default.readOf(iconName: imageName)
                //: let data = try Data(contentsOf: url)
                let data = try Data(contentsOf: url)
                //: self.loginView.areaImageView.image = UIImage(data: data)
                self.loginView.areaImageView.image = UIImage(data: data)
                //: } catch _ as Error? {
            } catch _ as Error? {
                //: self.loginView.areaImageView.image = UIImage.placeImgSquare()
                self.loginView.areaImageView.image = UIImage.elect()
                //: printLog(message: "get img error")
                pathLine(message: (String(kStr_titleValue.prefix(5)) + "mg error"))
            }
            //: } else {
        } else {
            //: self.loginView.areaImageView.setUrlImage(urlStr: areaModel.url)
            self.loginView.areaImageView.timeFinish(urlStr: areaModel.url)
        }
    }
}

// MARK: - Layout

//: extension TalkingLoginViewController {
extension ColorBottomReactiveCompatible {
    // 添加视图
    //: private func setupSubviews() {
    private func voiceOverSubviews() {
        //: view.addSubview(backBtn)
        view.addSubview(backBtn)
        //: view.addSubview(loginView)
        view.addSubview(loginView)
        //: func__updateAreaView()
        start()
        //: view.bringSubviewToFront(backBtn)
        view.bringSubviewToFront(backBtn)
    }

    // 添加约束
    //: private func setupSubViewsConstraint() {
    private func gift() {
        //: loginView.snp.makeConstraints { make in
        loginView.snp.makeConstraints { make in
            //: make.edges.equalToSuperview()
            make.edges.equalToSuperview()
        }
    }

    // 添加事件
    //: private func bindInteraction() {
    private func cling() {
        //: loginView.commitBlock = { [weak self] (_ phone: String, _ pwd: String?) -> Void in
        loginView.commitBlock = { [weak self] (_ phone: String, _ pwd: String?) in
            //: guard let self = self else { return }
            guard let self = self else { return }
            //: self.phoneOrEmailStr = phone
            self.phoneOrEmailStr = phone
            //: self.password = pwd
            self.password = pwd
            //: if pwd?.count ?? 0 > 0 {
            if pwd?.count ?? 0 > 0 { // pwd
                //: self.func__passwordLogin()
                self.themeLogin()
                //: } else {
            } else { // OTP
                //: self.func__getPhoneCodeAction()
                self.state()
            }
        }

        //: loginView.areaCodeBlock = { [weak self] in
        loginView.areaCodeBlock = { [weak self] in
            //: guard let self = self else { return }
            guard let self = self else { return }
            //: self.func__pushToAreaCodeVC()
            self.whenVc()
        }

        //: addTapGestureRecognizer()
        makeBy()
    }
}
