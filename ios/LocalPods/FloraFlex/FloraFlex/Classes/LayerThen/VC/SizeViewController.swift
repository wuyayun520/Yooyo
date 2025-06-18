
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let kStr_femaleText:[UInt8] = [0xbd,0xba,0xbd,0xa0,0xfc,0xb7,0xbb,0xb0,0xb1,0xa6,0xee,0xfd,0xf4,0xbc,0xb5,0xa7,0xf4,0xba,0xbb,0xa0,0xf4,0xb6,0xb1,0xb1,0xba,0xf4,0xbd,0xb9,0xa4,0xb8,0xb1,0xb9,0xb1,0xba,0xa0,0xb1,0xb0]

/*: "apple 授权失败，请稍后再试" :*/
fileprivate let kStr_succeedColorName:[Character] = ["a","p","p","l","e"," ","授","权","失","败"]
fileprivate let kStr_contentValue:[Character] = ["，","请","\u{7a0d}","后","再","试"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  SizeViewController.swift
//  AbroadTalking
//
//  Created by Hemming on 2022/1/20.
//

//: import UIKit
import UIKit

//: class TalkingLoginMainViewController: TalkingBaseViewController {
class SizeViewController: LayerRecognizerDelegate {
    //: init() {
    init() {
        //: super.init(nibName: nil, bundle: nil)
        super.init(nibName: nil, bundle: nil)
        //: hideNavi = true
        hideNavi = true
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: kStr_femaleText.map{$0^212}, encoding: .utf8)!)
    }

    //: override func viewWillAppear(_ animated: Bool) {
    override func viewWillAppear(_ animated: Bool) {
        //: super.viewWillAppear(animated)
        super.viewWillAppear(animated)
        //: navigationController?.isNavigationBarHidden = hideNavi
        navigationController?.isNavigationBarHidden = hideNavi
        //: tabBarController?.tabBar.isHidden = true
        tabBarController?.tabBar.isHidden = true
    }

    //: override func viewDidLoad() {
    override func viewDidLoad() {
        //: super.viewDidLoad()
        super.viewDidLoad()
        //: self.setupSubviews()
        self.collection()
        //: self.setupSubViewsConstraint()
        self.insideInformationConstraint()
        //: self.bindInteraction()
        self.count()
    }

    //: deinit {
    deinit {}

    // MARK: - Lazy Load

    //: lazy var loginMainView: TalkingLoginMainView = {
    lazy var loginMainView: BottomThen = {
        //: let loginView = TalkingLoginMainView.init()
        let loginView = BottomThen()
        //: return loginView
        return loginView
        //: }()
    }()
}

// MARK: - Public Event

//: extension TalkingLoginMainViewController {
extension SizeViewController {
    //: func req_thirdLogin(_ type: LoginType) {
    func towardLogin(_ type: MiniLoginClusterLiteral) {
        //: switch type {
        switch type {
        //: case .AppleLogin:
        case .AppleLogin:
            //: AppleLoginManager.shared.login { dict in
            LayerThen.shared.loginToAtClosure { dict in
                //: guard let dict = dict else {
                guard let dict = dict else {
                    //: printLog(message: "apple 授权失败，请稍后再试")
                    pathLine(message: (String(kStr_succeedColorName) + String(kStr_contentValue)))
                    //: return
                    return
                }
                //: ProgressHUD.show()
                TintProgressHUD.weight()
                //: TalkingLoginRequestTool.req_thirdLogin(type: .AppleLogin, params: dict) { succeed, result, errorModel in
                TableThen.make(type: .AppleLogin, params: dict) { _, _, _ in
                    //: ProgressHUD.dismiss()
                    TintProgressHUD.inkingPadDismiss()
                }
            }
        //: case .PhoneLogin:
        case .PhoneLogin:
            //: let vc = TalkingLoginViewController.init(type: .LoginPhone)
            let vc = ColorBottomReactiveCompatible(type: .LoginPhone)
            //: self.navigationController?.pushViewController(vc, animated: true)
            self.navigationController?.pushViewController(vc, animated: true)

        //: case .EmailLogin:
        case .EmailLogin:
            //: let vc = TalkingLoginViewController.init(type: .LoginEmail)
            let vc = ColorBottomReactiveCompatible(type: .LoginEmail)
            //: navigationController?.pushViewController(vc, animated: true)
            navigationController?.pushViewController(vc, animated: true)

        //: default:
        default:
            //: break
            break
        }
    }
}

// MARK: - Privete Event

//: extension TalkingLoginMainViewController {
extension SizeViewController {
    //: func loginAction(type: LoginType) {
    func effectMedium(type: MiniLoginClusterLiteral) {
        //: LoginPrivacyPolicyView().showView {
        FromView().sizeCell {
            //: self.req_thirdLogin(type)
            self.towardLogin(type)
        }
    }
}

// MARK: - Layout

//: extension TalkingLoginMainViewController {
extension SizeViewController {
    // 添加视图
    //: private func setupSubviews() {
    private func collection() {
        //: view.addSubview(loginMainView)
        view.addSubview(loginMainView)
        //: loginMainView.btnBlock = {[weak self] (type: LoginType) in
        loginMainView.btnBlock = { [weak self] (type: MiniLoginClusterLiteral) in
            //: guard let self = self else {return}
            guard let self = self else { return }
            //: self.loginAction(type: type)
            self.effectMedium(type: type)
            //: return
        }
    }

    // 添加约束
    //: private func setupSubViewsConstraint() {
    private func insideInformationConstraint() {
        //: loginMainView.snp.makeConstraints { make in
        loginMainView.snp.makeConstraints { make in
            //: make.edges.equalToSuperview()
            make.edges.equalToSuperview()
        }
    }

    // 添加事件
    //: private func bindInteraction() {
    private func count() {}
}
