
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let kStr_buildName:[UInt8] = [0x8a,0x8d,0x8a,0x97,0xcb,0x80,0x8c,0x87,0x86,0x91,0xd9,0xca,0xc3,0x8b,0x82,0x90,0xc3,0x8d,0x8c,0x97,0xc3,0x81,0x86,0x86,0x8d,0xc3,0x8a,0x8e,0x93,0x8f,0x86,0x8e,0x86,0x8d,0x97,0x86,0x87]

private func photographicPrint(equal num: UInt8) -> UInt8 {
    return num ^ 227
}

/*: "bg_others_shadow_up" :*/
fileprivate let kStr_viewValue:[Character] = ["b","g","_","o","t","h","e","r","s","_","s","h","a","d","o","w","_","u","p"]

/*: "nav_back_black_nor" :*/
fileprivate let kStr_incomeName:String = "nav_bgo path case"
fileprivate let kStr_topName:[Character] = ["l","a","c","k","_","n","o","r"]

/*: "btn_detail_more" :*/
fileprivate let kStr_userData:[Character] = ["b","t","n","_","d","e"]
fileprivate let kStr_hiddenName:String = "tail_self type"

/*: "Shielding Success" :*/
fileprivate let kStr_sharedTitle:String = "size to group text touchShie"
fileprivate let kStr_mData:String = "record let pop Suc"
fileprivate let kStr_deadlineText:[Character] = ["c","e","s","s"]

/*: "Unmasking Succeeded" :*/
fileprivate let kStr_actionModelManagerTitle:String = "Unmasreturn point lab model size"
fileprivate let kStr_backContent:String = " Succetype head index"
fileprivate let kStr_fillTitle:[Character] = ["e","d","e","d"]

/*: "Report" :*/
fileprivate let kStr_sizeTitle:[Character] = ["R","e","p","o","r","t"]

/*: "Remvoe Block" :*/
fileprivate let kStr_meetingValue:String = "Remvcontent icon"

/*: "Block" :*/
fileprivate let kStr_titleName:String = "will name copyBlock"

/*: "Cancel" :*/
fileprivate let kStr_locationTitle:[Character] = ["C","a","n","c","e","l"]

/*: "OK" :*/
fileprivate let kStr_sharedValue:String = "Omake"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  PathView.swift
//  AbroadTalking
//
//  Created by Bolo on 2022/9/9.
//

//: import UIKit
import UIKit

//: class TalkingUserDetailNaviBarView: UIView {
class PathView: UIView {
    //: private let disposeBag = DisposeBag()
    private let disposeBag = DisposeBag()
    //: private var isBlack = false
    private var isBlack = false // 是否已拉黑
    //: private var userInfoModel = TalkingUserInfoModel()
    private var userInfoModel = LoadMeasurable() // 用户资料

    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)

        //: setupSubviews()
        theory()
        //: setupSubViewsConstraint()
        presentation()
        //: bindInteraction()
        standInTotaleraction()
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: kStr_buildName.map{photographicPrint(equal: $0)}, encoding: .utf8)!)
    }

    // MARK: - Lazy load

    //: private lazy var bgImgView: UIImageView = {
    private lazy var bgImgView: UIImageView = {
        //: let imgV = UIImageView()
        let imgV = UIImageView()
        //: imgV.image = UIImage.bundleBy(name: "bg_others_shadow_up")
        imgV.image = UIImage.bundleBy(name: (String(kStr_viewValue)))
        //: return imgV
        return imgV
        //: }()
    }()

    //: lazy var whiteBgView: UIView = {
    lazy var whiteBgView: UIView = {
        //: let v = UIView()
        let v = UIView()
        //: v.backgroundColor = .white
        v.backgroundColor = .white
        //: v.alpha = 0
        v.alpha = 0
        //: return v
        return v
        //: }()
    }()

    //: private lazy var titleLab: UILabel = {
    private lazy var titleLab: UILabel = {
        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.font = UIFont.pingfangFont(type: .Medium, fontSize: 17)
        lab.font = UIFont.groupSize(type: .Medium, fontSize: 17)
        //: lab.textColor = .appTitleColor()
        lab.textColor = .dataFormat()
        //: lab.textAlignment = .center
        lab.textAlignment = .center
        //: if LanguageManager.shared.direction == .rightToLeft {
        if DeleteClientThen.shared.direction == .rightToLeft {
            //: lab.lineBreakMode = .byTruncatingHead
            lab.lineBreakMode = .byTruncatingHead
        }
        //: return lab
        return lab
        //: }()
    }()

    //: lazy var backButton: UIButton = {
    lazy var backButton: UIButton = {
        //: let btn = UIButton(type: .custom)
        let btn = UIButton(type: .custom)
        //: let img = UIImage.bundleBy(name: "nav_back_black_nor").withRenderingMode(.alwaysTemplate)
        let img = UIImage.bundleBy(name: (String(kStr_incomeName.prefix(5)) + "ack_b" + String(kStr_topName))).withRenderingMode(.alwaysTemplate)
        //: btn.setImage(img, for: .normal)
        btn.setImage(img, for: .normal)
        //: btn.tintColor = .white
        btn.tintColor = .white
        //: btn.addTarget(self, action: #selector(clickBackButtonAction), for: .touchUpInside)
        btn.addTarget(self, action: #selector(imageSize), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()

    //: lazy var moreButton: UIButton = {
    lazy var moreButton: UIButton = {
        //: let btn = UIButton(type: .custom)
        let btn = UIButton(type: .custom)
        //: let img = UIImage.bundleBy(name: "btn_detail_more").withRenderingMode(.alwaysTemplate)
        let img = UIImage.bundleBy(name: (String(kStr_userData) + String(kStr_hiddenName.prefix(5)) + "more")).withRenderingMode(.alwaysTemplate)
        //: btn.setImage(img, for: .normal)
        btn.setImage(img, for: .normal)
        //: btn.tintColor = .white
        btn.tintColor = .white
        //: btn.isHidden = true
        btn.isHidden = true
        //: return btn
        return btn
        //: }()
    }()
}

// MARK: - Request

//: extension TalkingUserDetailNaviBarView {
extension PathView {
    /// 拉黑和取消拉黑
    //: private func req_pullBlackRequest() {
    private func search() {
        //: TalkingUserRequestManager.func__pullBlackWithUserId(uid: self.userInfoModel.uid, isBlack: !self.isBlack) { succeed, result, errorModel in
        SomeoneThen.viewUser(uid: self.userInfoModel.uid, isBlack: !self.isBlack) { succeed, _, _ in
            //: if succeed == true {
            if succeed == true {
                //: self.isBlack = !self.isBlack
                self.isBlack = !self.isBlack
                let toastStr = self.isBlack == true ? "Shielding Success".localized : "Unmasking Succeeded".localized
                //: ProgressHUD.toast(toastStr)
                TintProgressHUD.errorToast(toastStr)
            }
        }
    }
}

// MARK: - Event

//: extension TalkingUserDetailNaviBarView {
extension PathView {
    //: @objc private func clickBackButtonAction() {
    @objc private func imageSize() {
        //: EffectPushManager.share.func__getCurrentActivityVC()?.navigationController?.popViewController(animated: true)
        EffectPushManager.share.quantityimateTarget()?.navigationController?.popViewController(animated: true)
    }

    //: @objc private func registerMoreButtonAction() {
    @objc private func fastener() {
        //: let vc = TalkingMunuPopView.init(frame: UIScreen.main.bounds)
        let vc = FillView(frame: UIScreen.main.bounds)
        //: var titleArr = ["Report".localized]
        var titleArr = [(String(kStr_sizeTitle)).localized]
        //: let uid = Int(userInfoModel.uid) ?? 0
        let uid = Int(userInfoModel.uid) ?? 0

        //: titleArr.append(self.isBlack ? "Remvoe Block".localized : "Block".localized)
        titleArr.append(self.isBlack ? (String(kStr_meetingValue.prefix(4)) + "oe Block").localized : (String(kStr_titleName.suffix(5))).localized)

        //: vc.initwithList(cellTitleList: titleArr)
        vc.compartmentList(cellTitleList: titleArr)
        //: vc.munuBlock = { index, str in
        vc.munuBlock = { index, _ in
            //: if index==0 {
            if index == 0 {
                //: self.reportAction()
                self.capWith()
                //: } else if index==1 {
            } else if index == 1 {
                //: self.pullBlackAction()
                self.sparkQueryAction()
            }
        }
    }

    /// 举报用户
    //: private func reportAction() {
    private func capWith() {
        //: let reportView = TalkingReportAlertView(frame: UIScreen.main.bounds, type: .reportUserType, rId: userInfoModel.uid)
        let reportView = EquivalentReactiveCompatible(frame: UIScreen.main.bounds, type: .reportUserType, rId: userInfoModel.uid)
        //: reportView.showReportViewIn(view: nil)
        reportView.showAppView(view: nil)
    }

    /// 拉黑用户
    //: private func pullBlackAction() {
    private func sparkQueryAction() {
        //: guard self.isBlack == false else {
        guard self.isBlack == false else {
            //: req_pullBlackRequest()
            search()
            //: return
            return
        }

        //: TalkingAlertShow.alert(title: nil, message: kMessage_blocking, leftBtnTitle: "Cancel".localized, rightBtnTitle: "OK".localized) {
        ClickReactiveCompatible.follow(title: nil, message: kLet_clickTitle, leftBtnTitle: (String(kStr_locationTitle)).localized, rightBtnTitle: "OK".localized) {
            //: TalkingAlertShow.hideAlert()
            ClickReactiveCompatible.closeHideRelease()
            //: } rightBlock: {
        } rightBlock: {
            //: TalkingAlertShow.hideAlert()
            ClickReactiveCompatible.closeHideRelease()
            //: self.req_pullBlackRequest()
            self.search()
        }
    }
}

// MARK: Layout

//: extension TalkingUserDetailNaviBarView {
extension PathView {
    /// 刷新
    //: func refreshView(_ userModel: TalkingUserInfoModel) {
    func eventFrom(_ userModel: LoadMeasurable) {
        //: self.userInfoModel = userModel
        self.userInfoModel = userModel
        //: self.isBlack = userModel.inMyBlackList
        self.isBlack = userModel.inMyBlackList
        //: self.moreButton.isHidden = (userModel.uid == LocationThen.share.loginUid)
        self.moreButton.isHidden = (userModel.uid == LocationThen.share.loginUid)
        //: titleLab.text = userModel.nickname
        titleLab.text = userModel.nickname
    }

    //: private func setupSubviews() {
    private func theory() {
        //: self.backgroundColor = .clear
        self.backgroundColor = .clear
        //: addSubview(bgImgView)
        addSubview(bgImgView)
        //: addSubview(whiteBgView)
        addSubview(whiteBgView)
        //: whiteBgView.addSubview(titleLab)
        whiteBgView.addSubview(titleLab)
        //: addSubview(backButton)
        addSubview(backButton)
        //: addSubview(moreButton)
        addSubview(moreButton)
    }

    //: private func setupSubViewsConstraint() {
    private func presentation() {
        //: bgImgView.snp.makeConstraints { make in
        bgImgView.snp.makeConstraints { make in
            //: make.edges.equalToSuperview()
            make.edges.equalToSuperview()
        }

        //: whiteBgView.snp.makeConstraints { make in
        whiteBgView.snp.makeConstraints { make in
            //: make.edges.equalToSuperview()
            make.edges.equalToSuperview()
        }
        //: titleLab.snp.makeConstraints { make in
        titleLab.snp.makeConstraints { make in
            //: make.top.equalTo(StatusBarHeight)
            make.top.equalTo(kLet_postPartyValue)
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.height.equalTo(NavigationBarHeight)
            make.height.equalTo(kLet_senseFormatValue)
            //: make.width.equalTo(200)
            make.width.equalTo(200)
        }

        //: backButton.snp.makeConstraints { make in
        backButton.snp.makeConstraints { make in
            //: make.leading.equalTo(0)
            make.leading.equalTo(0)
            //: make.width.equalTo(40)
            make.width.equalTo(40)
            //: make.height.equalTo(NavigationBarHeight)
            make.height.equalTo(kLet_senseFormatValue)
            //: make.top.equalTo(StatusBarHeight)
            make.top.equalTo(kLet_postPartyValue)
        }

        //: moreButton.snp.makeConstraints { make in
        moreButton.snp.makeConstraints { make in
            //: make.trailing.equalTo(0)
            make.trailing.equalTo(0)
            //: make.centerY.equalTo(backButton.snp.centerY)
            make.centerY.equalTo(backButton.snp.centerY)
            //: make.size.equalTo(CGSize(width: 45, height: NavigationBarHeight))
            make.size.equalTo(CGSize(width: 45, height: kLet_senseFormatValue))
        }
    }

    //: private func bindInteraction() {
    private func standInTotaleraction() {
        //: moreButton.rx.controlEvent(.touchUpInside).subscribe(onNext: { [weak self] in
        moreButton.rx.controlEvent(.touchUpInside).subscribe(onNext: { [weak self] in
            //: guard let self = self else {return}
            guard let self = self else { return }
            //: self.registerMoreButtonAction()
            self.fastener()
            //: }).disposed(by: disposeBag)
        }).disposed(by: disposeBag)
    }
}
