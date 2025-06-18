
//: Declare String Begin

/*: "#201E50" :*/
fileprivate let kStr_titleFileValue:String = "#make"
fileprivate let kStr_objectName:String = "let premium let style equal01E50"

/*: "#1F1624" :*/
fileprivate let kStr_constraintText:[Character] = ["#","1","F","1","6","2","4"]

/*: "quick_video_topview" :*/
fileprivate let kStr_labName:String = "layerick"
fileprivate let kStr_dataName:String = "succeed tool do requesto_topview"

/*: "btn_back_white" :*/
fileprivate let kStr_hiddenData:[Character] = ["b","t","n","_","b","a","c","k","_"]
fileprivate let kStr_momentValue:String = "whitadd"

/*: "Random Video" :*/
fileprivate let kStr_imageValue:String = "Random Venable table view content"
fileprivate let kStr_tableData:[Character] = ["i","d","e","o"]

/*: "icon_rank_coin" :*/
fileprivate let kStr_makeText:[Character] = ["i","c","o","n","_","r","a","n","k"]
fileprivate let kStr_managerHaveEqualName:[Character] = ["_","c","o","i","n"]

/*: "btn_quick_back_nor" :*/
fileprivate let kStr_appTitle:[Character] = ["b"]
fileprivate let kStr_shareCreateMakeName:String = "tn_quidirection path weight down"
fileprivate let kStr_playerText:String = "k_norresult task equal rank video"

/*: "icon_video_skip" :*/
fileprivate let kStr_aspectValue:[Character] = ["i","c","o","n","_","v","i","d","e","o","_","s","k","i","p"]

/*: "#9610FF" :*/
fileprivate let kStr_succeedValue:String = "#9610FFguard to selected"

/*: "#8566FF" :*/
fileprivate let kStr_photoData:String = "model lab make#8566FF"

/*: "icon_coin_match_line" :*/
fileprivate let kStr_closeTitle:[Character] = ["i","c","o","n","_","c","o","i","n","_","m"]
fileprivate let kStr_indexText:String = "source"
fileprivate let kStr_labelVideoName:[Character] = ["t","c","h","_","l","i","n","e"]

/*: "matchId" :*/
fileprivate let kStr_maxContent:[UInt8] = [0xca,0xc6,0xd3,0xc4,0xcf,0xee,0xc3]

private func titleData(lab num: UInt8) -> UInt8 {
    return num ^ 167
}

/*: "source" :*/
fileprivate let kStr_equalRemindTextValue:[UInt8] = [0xf7,0xeb,0xf1,0xf6,0xe7,0xe1]

private func constraintTiming(image num: UInt8) -> UInt8 {
    return num ^ 132
}

/*: "type" :*/
fileprivate let kStr_inputTopValue:[UInt8] = [0x4f,0x42,0x4b,0x5e]

private func writtenRecord(group num: UInt8) -> UInt8 {
    return num ^ 59
}

/*: "uid" :*/
fileprivate let kStr_maxTitle:String = "ucontent"

/*: "fromFreeCall" :*/
fileprivate let kStr_upName:String = "managero"
fileprivate let kStr_openingStartColorName:[Character] = ["m","F","r","e","e","C","a","l","l"]

/*: "cmd" :*/
fileprivate let kStr_successEmptyData:[UInt8] = [0xb3,0xbd,0xb4]

private func plusService(model num: UInt8) -> UInt8 {
    return num ^ 208
}

/*: "requestCall" :*/
fileprivate let kStr_indexName:[Character] = ["r","e","q","u","e","s","t","C","a","l","l"]

/*: "data" :*/
fileprivate let kStr_kitContent:[UInt8] = [0x61,0x74,0x61,0x64]

/*: "onRequestCall" :*/
fileprivate let kStr_cellContent:String = "page video make transformonRequ"
fileprivate let kStr_textName:String = "temp"
fileprivate let kStr_centerContent:[Character] = ["t","C","a","l","l"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  BackgroundReactiveCompatible.swift
//  AbroadTalking
//
//  Created by young on 2022/11/7.
//

//: import UIKit
import UIKit

//: class TalkingMatchResultViewController: TalkingBaseViewController {
class BackgroundReactiveCompatible: LayerRecognizerDelegate {
    //: private var currentModel = TalkingMatchResultModel()
    private var currentModel = BottomResultModel() // 当前展示的model

    //: override func viewWillAppear(_ animated: Bool) {
    override func viewWillAppear(_ animated: Bool) {
        //: super.viewWillAppear(animated)
        super.viewWillAppear(animated)
        // 每次打开更新金额
        //: refreshCoin()
        quitsRow()
    }

    //: override func viewWillDisappear(_ animated: Bool) {
    override func viewWillDisappear(_ animated: Bool) {
        //: super.viewWillDisappear(animated)
        super.viewWillDisappear(animated)
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
        //: self.hideNavi = true
        self.hideNavi = true

        //: setupSubviews()
        collectionError()
        //: setupSubViewsConstraint()
        addRestrictionConstraint()
        //: refreshUI()
        everyPop()

        /// 添加刷新余额的通知
        //: NotificationCenter.default.addObserver(self,
        NotificationCenter.default.addObserver(self,
                                               //: selector: #selector(refreshCoin),
                                               selector: #selector(quitsRow),
                                               //: name: UPDATE_USER_GETINFOCOLUMN_NOTIFICATION,
                                               name: kLet_lineValue,
                                               //: object: nil)
                                               object: nil)
    }

    //: deinit {
    deinit {
        //: TalkingSocketManager.shared.videoMatchDelegate = nil
        ToSocketManager.shared.videoMatchDelegate = nil
        //: TalkingSocketManager.shared.errorDelegate = nil
        ToSocketManager.shared.errorDelegate = nil
        //: NotificationCenter.default.removeObserver(self)
        NotificationCenter.default.removeObserver(self)
    }

    // MARK: - Lazy Load

    //: private lazy var backView: UIImageView = {
    private lazy var backView: UIImageView = {
        //: let view = UIImageView.init()
        let view = UIImageView()
        //: view.image = UIImage.imageGradientTopToBottonColor(colors: [UIColor.init(hex: "#201E50")!.cgColor, UIColor.init(hex: "#1F1624")!.cgColor], size: CGSize(width: ScreenWidth, height: ScreenHeight))
        view.image = UIImage.gradient(colors: [UIColor(hex: (kStr_titleFileValue.replacingOccurrences(of: "make", with: "2") + String(kStr_objectName.suffix(5))))!.cgColor, UIColor(hex: (String(kStr_constraintText)))!.cgColor], size: CGSize(width: kLet_halfData, height: kLet_noSeatName))
        //: view.isUserInteractionEnabled = true
        view.isUserInteractionEnabled = true

        //: let topView = UIImageView.init()
        let topView = UIImageView()
        //: topView.image = UIImage.bundleBy(name: "quick_video_topview")
        topView.image = UIImage.bundleBy(name: (kStr_labName.replacingOccurrences(of: "layer", with: "qu") + "_vide" + String(kStr_dataName.suffix(9))))
        //: topView.isUserInteractionEnabled = true
        topView.isUserInteractionEnabled = true
        //: view.addSubview(topView)
        view.addSubview(topView)
        //: topView.snp.makeConstraints { make in
        topView.snp.makeConstraints { make in
            //: make.leading.top.equalTo(0)
            make.leading.top.equalTo(0)
            //: make.width.height.equalTo(actualWidth(w: 218))
            make.width.height.equalTo(originalScene(w: 218))
        }
        //: return view
        return view
        //: }()
    }()

    //: private lazy var navView: UIView = {
    private lazy var navView: UIView = {
        //: let nav = UIView()
        let nav = UIView()
        //: nav.backgroundColor = .clear
        nav.backgroundColor = .clear
        // 返回
        //: let backBtn = UIButton(type: .custom)
        let backBtn = UIButton(type: .custom)
        //: backBtn.setImage(UIImage.bundleBy(name: "btn_back_white"), for: .normal)
        backBtn.setImage(UIImage.bundleBy(name: (String(kStr_hiddenData) + kStr_momentValue.replacingOccurrences(of: "add", with: "e"))), for: .normal)
        //: backBtn.addTarget(self, action: #selector(clickBackButtonAction), for: .touchUpInside)
        backBtn.addTarget(self, action: #selector(drawnOut), for: .touchUpInside)
        //: nav.addSubview(backBtn)
        nav.addSubview(backBtn)
        //: backBtn.snp.makeConstraints { make in
        backBtn.snp.makeConstraints { make in
            //: make.leading.equalTo(20)
            make.leading.equalTo(20)
            //: make.width.equalTo(20)
            make.width.equalTo(20)
            //: make.height.equalTo(20)
            make.height.equalTo(20)
            //: make.top.equalTo(StatusBarHeight+12)
            make.top.equalTo(kLet_postPartyValue + 12)
        }
        // 标题
        //: let titleLab = UILabel()
        let titleLab = UILabel()
        //: titleLab.font = UIFont.dorsum(fontSize: 17)
        titleLab.font = UIFont.dorsum(fontSize: 17)
        //: titleLab.textColor = UIColor.white
        titleLab.textColor = UIColor.white
        //: titleLab.textAlignment = .center
        titleLab.textAlignment = .center
        //: titleLab.text = "Random Video".localized
        titleLab.text = (String(kStr_imageValue.prefix(8)) + String(kStr_tableData)).localized
        //: nav.addSubview(titleLab)
        nav.addSubview(titleLab)
        //: titleLab.snp.makeConstraints { make in
        titleLab.snp.makeConstraints { make in
            //: make.centerY.equalTo(backBtn)
            make.centerY.equalTo(backBtn)
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
        }
        // 余额
        //: let coinBtn = TalkingButton()
        let coinBtn = OverdoTalkingButton()
        //: coinBtn.tag = 1001
        coinBtn.tag = 1001
        //: coinBtn.setImage(UIImage.bundleBy(name: "icon_rank_coin"), for: .normal)
        coinBtn.setImage(UIImage.bundleBy(name: (String(kStr_makeText) + String(kStr_managerHaveEqualName))), for: .normal)
        //: coinBtn.setImage(UIImage.bundleBy(name: "icon_rank_coin"), for: .disabled)
        coinBtn.setImage(UIImage.bundleBy(name: (String(kStr_makeText) + String(kStr_managerHaveEqualName))), for: .disabled)
        //: coinBtn.isEnabled = false
        coinBtn.isEnabled = false
        //: coinBtn.setTitleColor(UIColor.appTitleColor(), for: .normal)
        coinBtn.setTitleColor(UIColor.dataFormat(), for: .normal)
        //: coinBtn.setTitle("\(LocationThen.share.loginUserMode.mf_coin)", for: .normal)
        coinBtn.setTitle("\(LocationThen.share.loginUserMode.mf_coin)", for: .normal)
        //: coinBtn.titleLabel?.font = UIFont.pingfangFont(type: .Semibold, fontSize: 15)
        coinBtn.titleLabel?.font = UIFont.groupSize(type: .Semibold, fontSize: 15)
        //: coinBtn.backgroundColor = UIColor.white
        coinBtn.backgroundColor = UIColor.white
        //: coinBtn.layer.cornerRadius = 12
        coinBtn.layer.cornerRadius = 12
        //: coinBtn.imageAlignment = .left
        coinBtn.imageAlignment = .left
//        coinBtn.spaceBetweenTitleAndImage = 3
        //: nav.addSubview(coinBtn)
        nav.addSubview(coinBtn)
        //: coinBtn.snp.makeConstraints { make in
        coinBtn.snp.makeConstraints { make in
            //: make.trailing.equalTo(-19)
            make.trailing.equalTo(-19)
            //: make.centerY.equalTo(backBtn)
            make.centerY.equalTo(backBtn)
            //: make.height.equalTo(24)
            make.height.equalTo(24)
        }

        //: return nav
        return nav
        //: }()
    }()

    //: private lazy var picturesView: TalkingMatchResultPicturesView = {
    private lazy var picturesView: CourseThen = {
        //: let v = TalkingMatchResultPicturesView(frame: .zero)
        let v = CourseThen(frame: .zero)
        //: v.matchBackBlock = { [weak self] in
        v.matchBackBlock = { [weak self] in
            //: guard let self = self else {
            guard let self = self else {
                //: return
                return
            }
            //: self.clickBackButtonAction()
            self.drawnOut()
        }
        //: return v
        return v
        //: }()
    }()

    //: private lazy var showLastBtn: UIButton = {
    private lazy var showLastBtn: UIButton = {
        //: let btn = UIButton()
        let btn = UIButton()
        //: btn.setBackgroundImage(UIImage.bundleBy(name: "btn_quick_back_nor"), for: .normal)
        btn.setBackgroundImage(UIImage.bundleBy(name: (String(kStr_appTitle) + String(kStr_shareCreateMakeName.prefix(6)) + "ck_bac" + String(kStr_playerText.prefix(5)))), for: .normal)
        //: btn.addTarget(self, action: #selector(showLastButtonClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(snapRecord), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var skipBtn: UIButton = {
    private lazy var skipBtn: UIButton = {
        //: let btn = UIButton()
        let btn = UIButton()
        //: btn.setImage(UIImage.bundleBy(name: "icon_video_skip"), for: .normal)
        btn.setImage(UIImage.bundleBy(name: (String(kStr_aspectValue))), for: .normal)
        //: btn.addTarget(self, action: #selector(clickBackButtonAction), for: .touchUpInside)
        btn.addTarget(self, action: #selector(drawnOut), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var callBtn: UIButton = {
    private lazy var callBtn: UIButton = {
        //: let btn = UIButton()
        let btn = UIButton()
        //: btn.addTarget(self, action: #selector(callButtonClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(upData), for: .touchUpInside)
        //: btn.setBackgroundImage(UIImage.imageGradientColor(colors: [UIColor.init(hex: "#9610FF")!.cgColor, UIColor.init(hex: "#8566FF")!.cgColor], size: CGSize(width: 140, height: 69)), for: .normal)
        btn.setBackgroundImage(UIImage.upTo(colors: [UIColor(hex: (String(kStr_succeedValue.prefix(7))))!.cgColor, UIColor(hex: (String(kStr_photoData.suffix(7))))!.cgColor], size: CGSize(width: 140, height: 69)), for: .normal)
        //: btn.layer.cornerRadius = 69/2
        btn.layer.cornerRadius = 69 / 2
        //: btn.clipsToBounds = true
        btn.clipsToBounds = true
        //: btn.titleLabel?.numberOfLines = 2
        btn.titleLabel?.numberOfLines = 2

        //: return btn
        return btn
        //: }()
    }()

    //: lazy var showLastArr: [TalkingMatchResultModel] = {
    lazy var showLastArr: [BottomResultModel] = //: return Array<BottomResultModel>()
        .init()
    //: }()

    //: lazy var dzView: UIImageView = {
    lazy var dzView: UIImageView = {
        //: let view = UIImageView.init()
        let view = UIImageView()
        //: view.image = UIImage.bundleBy(name: "icon_coin_match_line")
        view.image = UIImage.bundleBy(name: (String(kStr_closeTitle) + kStr_indexText.replacingOccurrences(of: "source", with: "a") + String(kStr_labelVideoName)))
        //: view.isHidden = true
        view.isHidden = true
        //: return view
        return view
        //: }()
    }()
}

// MARK: - Event

//: extension TalkingMatchResultViewController {
extension BackgroundReactiveCompatible {
    /// 返回按钮
    //: @objc private func clickBackButtonAction() {
    @objc private func drawnOut() {
        //: if self.presentedViewController != nil {
        if self.presentedViewController != nil { // 可能有重置弹窗未消除的情况，许手动消除
            //: self.presentedViewController?.dismiss(animated: true)
            self.presentedViewController?.dismiss(animated: true)
        }
        //: self.navigationController?.popViewController(animated: true)
        self.navigationController?.popViewController(animated: true)
    }

    /// 拨打视频通话socket
    //: @objc private func callButtonClick() {
    @objc private func upData() {
        //: var data: [String: Any] = ["matchId": self.currentModel.matchId,
        var data: [String: Any] = [String(bytes: kStr_maxContent.map{titleData(lab: $0)}, encoding: .utf8)!: self.currentModel.matchId,
                                   //: "source": self.currentModel.source,
                                   String(bytes: kStr_equalRemindTextValue.map{constraintTiming(image: $0)}, encoding: .utf8)!: self.currentModel.source,
                                   //: "type": self.currentModel.type,
                                   String(bytes: kStr_inputTopValue.map{writtenRecord(group: $0)}, encoding: .utf8)!: self.currentModel.type,
                                   //: "uid": self.currentModel.uid]
                                   (kStr_maxTitle.replacingOccurrences(of: "content", with: "id")): self.currentModel.uid]
        //: if LocationThen.share.loginUserMode.freeCallTimes > 0 && LocationThen.share.loginUserMode.sex == Gender.male.rawValue {
        if LocationThen.share.loginUserMode.freeCallTimes > 0, LocationThen.share.loginUserMode.sex == SucceedComparable.male.rawValue {
            //: data.updateValue(1, forKey: "fromFreeCall")
            data.updateValue(1, forKey: (kStr_upName.replacingOccurrences(of: "manager", with: "fr") + String(kStr_openingStartColorName)))
        }
        //: let info: [String: Any] = ["cmd": "requestCall", "data": data]
        let info: [String: Any] = [String(bytes: kStr_successEmptyData.map{plusService(model: $0)}, encoding: .utf8)!: (String(kStr_indexName)), String(bytes: kStr_kitContent.reversed(), encoding: .utf8)!: data]
        //: TalkingSocketManager.shared.sendMessage(info: info)
        ToSocketManager.shared.lessNutsAndBolts(info: info)
        //: TalkingSocketManager.shared.videoMatchDelegate = self
        ToSocketManager.shared.videoMatchDelegate = self
        //: TalkingSocketManager.shared.errorDelegate = self
        ToSocketManager.shared.errorDelegate = self
    }

    /// 通知刷新余额
    //: @objc private func refreshCoin() {
    @objc private func quitsRow() {
        //: AppManagerRequest.func__getInfoColumn { succeed, result, errorModel in
        SubThen.noViewCompletion { succeed, _, _ in
            //: guard succeed == true else { return }
            guard succeed == true else { return }

            //: let coinBtn = self.navView.viewWithTag(1001) as! TalkingButton
            let coinBtn = self.navView.viewWithTag(1001) as! OverdoTalkingButton
            //: coinBtn.setTitle(LocationThen.share.loginUserMode.mf_coin, for: .normal)
            coinBtn.setTitle(LocationThen.share.loginUserMode.mf_coin, for: .normal)
        }
    }

    /// 展示上一个视频速配结果
    //: @objc private func showLastButtonClick() {
    @objc private func snapRecord() {
        //: showLastArr.removeLast()
        showLastArr.removeLast()
        //: refreshUI()
        everyPop()
    }
}

// MARK: - SocketManagerMatchResultDelegate

//: extension TalkingMatchResultViewController: SocketManagerVideoMatchDelegate {
extension BackgroundReactiveCompatible: BackgroundMatchDelegate {
    //: func socket_match_onVideoMatch(data: [String: Any]) {}
    func tableData(data _: [String: Any]) {}

    /// 匹配成功，可以拨打通话（此处跳转特殊处理）
    //: func socket_match_onRequestCall(data: [String: Any]) {
    func socketSpringTask(data: [String: Any]) {
        //: var arrM = self.navigationController!.viewControllers
        var arrM = self.navigationController!.viewControllers
        //: for (index, vc) in self.navigationController!.viewControllers.enumerated() {
        for (index, vc) in self.navigationController!.viewControllers.enumerated() {
            //: if vc.isKind(of: TalkingMatchResultViewController.self) {
            if vc.isKind(of: BackgroundReactiveCompatible.self) {
                //: arrM.remove(at: index)
                arrM.remove(at: index)
                //: break
                break
            }
        }
        //: var newData = data
        var newData = data
        //: newData["uid"] = self.currentModel.uid
        newData[(kStr_maxTitle.replacingOccurrences(of: "content", with: "id"))] = self.currentModel.uid
        //: let vc = TalkingVideoChatViewController()
        let vc = ShadowErrorDelegate()
        //: vc.chatModel = TalkingVideoChatModel.getVideoModel(info: newData, situation: .Start)
        vc.chatModel = TitleGiftChatModel.colorLoad(info: newData, situation: .Start)

        //: vc.hidesBottomBarWhenPushed = true
        vc.hidesBottomBarWhenPushed = true
        //: arrM.append(vc)
        arrM.append(vc)
        //: self.navigationController?.setViewControllers(arrM, animated: true)
        self.navigationController?.setViewControllers(arrM, animated: true)
    }
}

// MARK: - CanErrorDelegate

//: extension TalkingMatchResultViewController: TalkingSocketManagerErrorDelegate {
extension BackgroundReactiveCompatible: CanErrorDelegate {
    /// socket收到失败消息
    //: func socket_didRecieveError(errorNo: Int, cmd: String, msg: String, data: [String: Any]) {
    func recieve(errorNo: Int, cmd: String, msg: String, data _: [String: Any]) {
        //: if cmd == "onRequestCall" {
        if cmd == (String(kStr_cellContent.suffix(6)) + kStr_textName.replacingOccurrences(of: "temp", with: "es") + String(kStr_centerContent)) {
            //: self.func__showStatusBarErrorMsg(showMsg: msg)
            self.detailDownArray(showMsg: msg)
            //: if errorNo == VideoChatErrorCode.CallEnd.rawValue {
            if errorNo == CollectionNameConvertible.CallEnd.rawValue {
                //: clickBackButtonAction()
                drawnOut()
                //: } else if errorNo == VideoChatErrorCode.MoneyLack.rawValue {
            } else if errorNo == CollectionNameConvertible.MoneyLack.rawValue {
                //: guard LocationThen.share.appStatus == AppSkinStatus.normal.rawValue else { return }
                guard LocationThen.share.appStatus == SharedInsetTarget.normal.rawValue else { return }
                //: EffectPushManager.share.func__jumpToWebRecharge(sufficient: false)
                EffectPushManager.share.physicsLab(sufficient: false)
            }
        }
    }
}

// MARK: - Layout

//: extension TalkingMatchResultViewController {
extension BackgroundReactiveCompatible {
    /// 添加视图
    //: private func setupSubviews() {
    private func collectionError() {
        //: self.view.addSubview(backView)
        self.view.addSubview(backView)
        //: backView.addSubview(navView)
        backView.addSubview(navView)
        //: backView.addSubview(picturesView)
        backView.addSubview(picturesView)
        //: backView.addSubview(showLastBtn)
        backView.addSubview(showLastBtn)
        //: backView.addSubview(skipBtn)
        backView.addSubview(skipBtn)
        //: backView.addSubview(callBtn)
        backView.addSubview(callBtn)
        //: callBtn.addSubview(dzView)
        callBtn.addSubview(dzView)
    }

    /// 添加约束
    //: private func setupSubViewsConstraint() {
    private func addRestrictionConstraint() {
        //: backView.snp.makeConstraints { make in
        backView.snp.makeConstraints { make in
            //: make.edges.equalToSuperview()
            make.edges.equalToSuperview()
        }
        //: navView.snp.makeConstraints { make in
        navView.snp.makeConstraints { make in
            //: make.leading.top.width.equalToSuperview()
            make.leading.top.width.equalToSuperview()
            //: make.height.equalTo(StatusBarNavigationBarHeight)
            make.height.equalTo(kLet_netName)
        }
        //: callBtn.snp.makeConstraints { make in
        callBtn.snp.makeConstraints { make in
            //: make.bottom.equalTo(-(kDeviceSafeBottomHeight+36))
            make.bottom.equalTo(-(kLet_formatNetValue + 36))
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.height.equalTo(69)
            make.height.equalTo(69)
            //: make.width.equalTo(140)
            make.width.equalTo(140)
        }

        //: picturesView.snp.makeConstraints { make in
        picturesView.snp.makeConstraints { make in
            //: make.top.equalTo(navView.snp.bottom).offset(actualWidth(w: 17))
            make.top.equalTo(navView.snp.bottom).offset(originalScene(w: 17))
            //: make.leading.equalTo(18)
            make.leading.equalTo(18)
            //: make.trailing.equalTo(-22)
            make.trailing.equalTo(-22)
            //: make.bottom.equalTo(callBtn.snp.top).offset(-32)
            make.bottom.equalTo(callBtn.snp.top).offset(-32)
        }
        //: showLastBtn.snp.makeConstraints { make in
        showLastBtn.snp.makeConstraints { make in
            //: make.trailing.equalTo(callBtn.snp.leading).offset(-20)
            make.trailing.equalTo(callBtn.snp.leading).offset(-20)
            //: make.centerY.equalTo(callBtn)
            make.centerY.equalTo(callBtn)
            //: make.size.equalTo(CGSize(width: 50, height: 50))
            make.size.equalTo(CGSize(width: 50, height: 50))
        }

        //: dzView.snp.makeConstraints { make in
        dzView.snp.makeConstraints { make in
            //: make.leading.equalTo(146)
            make.leading.equalTo(146)
            //: make.centerY.equalToSuperview()
            make.centerY.equalToSuperview()
            //: make.height.equalTo(8)
            make.height.equalTo(8)
            //: make.width.equalTo(42)
            make.width.equalTo(42)
        }
        //: skipBtn.snp.makeConstraints { make in
        skipBtn.snp.makeConstraints { make in
            //: make.leading.equalTo(callBtn.snp.trailing).offset(21)
            make.leading.equalTo(callBtn.snp.trailing).offset(21)
            //: make.centerY.equalTo(callBtn)
            make.centerY.equalTo(callBtn)
            //: make.size.equalTo(50)
            make.size.equalTo(50)
        }
    }

    /// 刷新UI
    //: private func refreshUI() {
    private func everyPop() {
        //: if showLastArr.count > 0 {
        if showLastArr.count > 0 { // 最后一个是最新数据
            //: currentModel = showLastArr.last!
            currentModel = showLastArr.last!
        }
        //: setPriceBtn()
        modelConstraintRow()
        //: picturesView.updatePicturesView(model: currentModel)
        picturesView.errorAdd(model: currentModel)
        //: picturesView.matchPlayVideoBlock = { [weak self] (videoUrl) in
        picturesView.matchPlayVideoBlock = { [weak self] videoUrl in
            //: guard let self = self else {return}
            guard let self = self else { return }
            //: let vc = TalkingMomentVideoVC.init(videoPath: videoUrl)
            let vc = QueryQualityViewDelegate(videoPath: videoUrl)
            //: self.currentViewController()?.navigationController?.pushViewController(vc, animated: true)
            self.giftFew()?.navigationController?.pushViewController(vc, animated: true)
        }

        //: showLastBtn.isHidden = (showLastArr.count >= 2) ? false:true
        showLastBtn.isHidden = (showLastArr.count >= 2) ? false : true

        // 审核模式隐藏金币
        //: if LocationThen.share.appStatus != AppSkinStatus.normal.rawValue {
        if LocationThen.share.appStatus != SharedInsetTarget.normal.rawValue {
            //: let coinBtn = self.navView.viewWithTag(1001) as! TalkingButton
            let coinBtn = self.navView.viewWithTag(1001) as! OverdoTalkingButton
            //: coinBtn.isHidden = true
            coinBtn.isHidden = true
            //: setPriceBtn()
            modelConstraintRow()
        }
    }

    //: func setPriceBtn() {
    func modelConstraintRow() {
        //: let attrString = String.setPriceStr(fee: currentModel.fee, originalFee: currentModel.originalFee, freeCallTimes: LocationThen.share.loginUserMode.freeCallTimes)
        let attrString = String.overText(fee: currentModel.fee, originalFee: currentModel.originalFee, freeCallTimes: LocationThen.share.loginUserMode.freeCallTimes)
        //: callBtn.isHidden = false
        callBtn.isHidden = false
        //: callBtn.setAttributedTitle(attrString, for: .normal)
        callBtn.setAttributedTitle(attrString, for: .normal)
    }
}
