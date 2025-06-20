
//: Declare String Begin

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  SubPasswordVc.swift
//  AbroadTalking
//
//  Created by young on 2023/11/15.
//

//: import UIKit
import UIKit

//: class TalkingSetNewPasswordVC: TalkingBaseViewController {
class SubPasswordVc: LayerRecognizerDelegate {
    //: var type = LoginType.PhoneLogin
    var type = MiniLoginClusterLiteral.PhoneLogin // 修改类型
    //: var content = ""                // 手机号
    var content = "" // 手机号
    //: var isNewPwd = false
    var isNewPwd = false // 是否新设置密码（修改需要验证码）

    //: override func viewWillAppear(_ animated: Bool) {
    override func viewWillAppear(_ animated: Bool) {
        //: super.viewWillAppear(animated)
        super.viewWillAppear(animated)
        //: self.view.isUserInteractionEnabled = true
        self.view.isUserInteractionEnabled = true
    }

    //: override func viewDidLoad() {
    override func viewDidLoad() {
        //: super.viewDidLoad()
        super.viewDidLoad()
        //: addTapGestureRecognizer()
        makeBy()
        //: setupSubviews()
        will()
        //: setupSubViewsConstraint()
        punctuate()
        //: bindInteraction()
        observerAction()
    }

    // MARK: - Lazy load

    //: private lazy var pwdView: TalkingSetNewPwdView = {
    private lazy var pwdView: RestoreingView = {
        //: let v = TalkingSetNewPwdView(frame: .zero, isNewPwd: self.isNewPwd, loginType: self.type)
        let v = RestoreingView(frame: .zero, isNewPwd: self.isNewPwd, loginType: self.type)
        //: v.phoneLab.text = self.content
        v.phoneLab.text = self.content
        //: return v
        return v
        //: }()
    }()
}

// MARK: - Load Data

//: extension TalkingSetNewPasswordVC {
extension SubPasswordVc {
    /// 修改密码
    //: private func req_modifyPwd(_ pwd: String, _ vcode: String?) {
    private func statusPwd(_ pwd: String, _ vcode: String?) {
        //: ProgressHUD.show()
        TintProgressHUD.weight()
        //: TalkingLoginRequestTool.req_modifyPassword(pwd: pwd, vcode: vcode) { [weak self] succeed, result, errorModel in
        TableThen.section(pwd: pwd, vcode: vcode) { [weak self] succeed, _, _ in
            //: ProgressHUD.dismiss()
            TintProgressHUD.inkingPadDismiss()
            //: guard let self = self else { return }
            guard let self = self else { return }
            //: guard succeed else { return }
            guard succeed else { return }
            /// 有些机子卡顿，防止跳转前还能交互
            //: self.view.isUserInteractionEnabled = false
            self.view.isUserInteractionEnabled = false
            //: if self.isNewPwd == true {
            if self.isNewPwd == true {
                // 获取用户信息
                //: TalkingLoginRequestTool.req_LoginUserInfoData(self.type)
                TableThen.click(self.type)
                //: } else {
            } else {
                //: self.navigationController?.popViewController(animated: true)
                self.navigationController?.popViewController(animated: true)
            }
        }
    }

    /// 获取修改密码验证码
    //: private func req_sendModifyPwdSms() {
    private func enable() {
        //: ProgressHUD.show()
        TintProgressHUD.weight()
        //: TalkingLoginRequestTool.req_sendModifyPwdSms { [weak self] succeed, result, errorModel in
        TableThen.completionShow { [weak self] succeed, _, _ in
            //: ProgressHUD.dismiss()
            TintProgressHUD.inkingPadDismiss()
            //: guard let self = self else { return }
            guard let self = self else { return }
            //: guard succeed else { return }
            guard succeed else { return }
            //: self.pwdView.startReSendTimer()
            self.pwdView.inputHandle()
        }
    }
}

// MARK: - Layout

//: extension TalkingSetNewPasswordVC {
extension SubPasswordVc {
    /// 添加视图
    //: private func setupSubviews() {
    private func will() {
        //: view.addSubview(pwdView)
        view.addSubview(pwdView)
    }

    /// 添加约束
    //: private func setupSubViewsConstraint() {
    private func punctuate() {
        //: pwdView.snp.makeConstraints { make in
        pwdView.snp.makeConstraints { make in
            //: make.edges.equalToSuperview()
            make.edges.equalToSuperview()
        }
    }

    /// 添加事件
    //: private func bindInteraction() {
    private func observerAction() {
        //: pwdView.nextBlock = { [weak self] (_ pwd: String, _ vcode: String?) in
        pwdView.nextBlock = { [weak self] (_ pwd: String, _ vcode: String?) in
            //: guard let self = self else { return }
            guard let self = self else { return }
            //: self.req_modifyPwd(pwd, vcode)
            self.statusPwd(pwd, vcode)
        }

        //: pwdView.sendSmsBlock = { [weak self] in
        pwdView.sendSmsBlock = { [weak self] in
            //: guard let self = self else { return }
            guard let self = self else { return }
            //: self.req_sendModifyPwdSms()
            self.enable()
        }
    }
}
