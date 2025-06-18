
//: Declare String Begin

/*: "mfBean" :*/
fileprivate let kStr_modelValue:[UInt8] = [0x9f,0x98,0x74,0x97,0x93,0xa0]

fileprivate func dataConverter(time num: UInt8) -> UInt8 {
    let value = Int(num) + 206
    if value > 255 {
        return UInt8(value - 256)
    } else {
        return UInt8(value)
    }
}

/*: "bannerList" :*/
fileprivate let kStr_pastSharedStatusValue:String = "succeednn"
fileprivate let kStr_textName:[Character] = ["e","r","L","i","s","t"]

/*: "icon_me_chatsettings" :*/
fileprivate let kStr_infoTitle:String = "social coloricon_m"
fileprivate let kStr_equalName:String = "sfinishtt"

/*: "icon_me_automatic" :*/
fileprivate let kStr_valueData:String = "in manager error selficon_m"
fileprivate let kStr_cornerName:String = "omaimage"
fileprivate let kStr_insideTitle:String = "iborder"

/*: "icon_me_settings" :*/
fileprivate let kStr_valueTitle:String = "icon_white model need"
fileprivate let kStr_regularViewData:String = "NGS"

/*: "icon_me_tc" :*/
fileprivate let kStr_dataText:String = "iremoven"
fileprivate let kStr_frameContent:String = "break label send maybe_me_tc"

/*: "icon_me_videoSet" :*/
fileprivate let kStr_amData:[Character] = ["i","c","o","n","_","m","e","_","v","i","d","e"]
fileprivate let kStr_ofData:[Character] = ["o","S","e","t"]

/*: "icon_me_bs" :*/
fileprivate let kStr_succeedValue:String = "icon_push to equal name"
fileprivate let kStr_currentValue:[Character] = ["m","e","_","b","s"]

/*: "Enter " :*/
fileprivate let kStr_giftShareData:[Character] = ["E","n","t","e","r"," "]

/*: "Settings" :*/
fileprivate let kStr_picData:String = "Settingscolor with i make"

/*: " and open " :*/
fileprivate let kStr_textMinAlwaysName:String = "manager yet request video and "
fileprivate let kStr_detailName:[Character] = ["o","p","e","n"," "]

/*: "Camera" :*/
fileprivate let kStr_labelData:[Character] = ["C","a","m","e","r","a"]

/*: " permission to use this function normally" :*/
fileprivate let kStr_signTitle:[UInt8] = [0xea,0x3a,0x2f,0x3c,0x37,0x33,0x3d,0x3d,0x33,0x39,0x38,0xea,0x3e,0x39,0xea,0x3f,0x3d,0x2f,0xea,0x3e,0x32,0x33,0x3d,0xea,0x30,0x3f,0x38,0x2d,0x3e,0x33,0x39,0x38,0xea,0x38,0x39,0x3c,0x37,0x2b,0x36,0x36,0x43]

fileprivate func topName(signature num: UInt8) -> UInt8 {
    let value = Int(num) + 54
    if value > 255 {
        return UInt8(value - 256)
    } else {
        return UInt8(value)
    }
}

/*: "Cancel" :*/
fileprivate let kStr_currentIconData:String = "Cancelelse video"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  ControllerMeForefrontQualityViewDelegate.swift
//  AbroadTalking
//
//  Created by young on 2023/4/25.
//

//: import UIKit
import UIKit

//: class TalkingMeViewController: TalkingBaseViewController {
class ControllerMeForefrontQualityViewDelegate: LayerRecognizerDelegate {
    //: private var tupleData = [(CenterItemType, String)]()
    private var tupleData = [(BlockTextCounterpolation, String)]()
    //: override func viewDidLoad() {
    override func viewDidLoad() {
        //: super.viewDidLoad()
        super.viewDidLoad()
        //: self.hideNavi = true
        self.hideNavi = true
        //: self.view.backgroundColor = UIColor.appBgColor()
        self.view.backgroundColor = UIColor.bottomValue()
        //: reloadLocalData()
        tertiaryUpAggregation()
        //: func__reqBanner()
        imageThat()
        //: setupSubviews()
        itemSubviews()
        //: setupSubViewsConstraint()
        harvestConstraint()

        //: NotificationCenter.default.addObserver(self,
        NotificationCenter.default.addObserver(self,
                                               //: selector: #selector(pushEdit),
                                               selector: #selector(titleScope),
                                               //: name: PUSH_MEEDIT_NOTIFICATION,
                                               name: kLet_barDisplayFinishData,
                                               //: object: nil)
                                               object: nil)
        //: NotificationCenter.default.addObserver(self,
        NotificationCenter.default.addObserver(self,
                                               //: selector: #selector(func__requestUserInfo),
                                               selector: #selector(pickVoice),
                                               //: name: USER_UPDATE_LOUNGEPLUSINFO_NOTIFICATION,
                                               name: kLet_viewData,
                                               //: object: nil)
                                               object: nil)
    }

    //: override func viewWillAppear(_ animated: Bool) {
    override func viewWillAppear(_ animated: Bool) {
        //: super.viewWillAppear(animated)
        super.viewWillAppear(animated)
        //: func__requestUserInfo()
        pickVoice()
    }

    //: override func viewDidAppear(_ animated: Bool) {
    override func viewDidAppear(_ animated: Bool) {
        //: super.viewDidAppear(animated)
        super.viewDidAppear(animated)
    }

    // MARK: - Lazy Load

    //: private lazy var tableView: UITableView = {
    private lazy var tableView: UITableView = {
        //: let table = UITableView(frame: .zero, style: .plain)
        let table = UITableView(frame: .zero, style: .plain)
        //: table.backgroundColor = .clear
        table.backgroundColor = .clear
        //: table.separatorStyle = .none
        table.separatorStyle = .none
        //: table.tableHeaderView = UIView()
        table.tableHeaderView = UIView()
        //: table.sectionHeaderHeight = 0
        table.sectionHeaderHeight = 0
        //: table.sectionFooterHeight = 0
        table.sectionFooterHeight = 0
        //: table.dataSource = self
        table.dataSource = self
        //: table.delegate = self
        table.delegate = self
        //: table.contentInset = UIEdgeInsets(top: 0, left: 0, bottom: 12, right: 0)
        table.contentInset = UIEdgeInsets(top: 0, left: 0, bottom: 12, right: 0)
        //: if #available(iOS 11.0, *) {
        if #available(iOS 11.0, *) {
            //: table.contentInsetAdjustmentBehavior = .never
            table.contentInsetAdjustmentBehavior = .never
            //: if #available(iOS 15.0, *) {
            if #available(iOS 15.0, *) {
                //: UITableView.appearance().sectionHeaderTopPadding = 0
                UITableView.appearance().sectionHeaderTopPadding = 0
            }
            //: } else {
        } else {
            //: self.automaticallyAdjustsScrollViewInsets = false
            self.automaticallyAdjustsScrollViewInsets = false
        }
        //: table.register(UITableViewCell.self, forCellReuseIdentifier: UITableViewCell.className())
        table.register(UITableViewCell.self, forCellReuseIdentifier: UITableViewCell.className())
        //: table.register(TalkingMeTopCell.self, forCellReuseIdentifier: TalkingMeTopCell.className())
        table.register(CrownViewCell.self, forCellReuseIdentifier: CrownViewCell.className())
        //: table.register(TalkingMeBannerCell.self, forCellReuseIdentifier: TalkingMeBannerCell.className())
        table.register(CompartmentBannerCell.self, forCellReuseIdentifier: CompartmentBannerCell.className())
        //: table.register(TalkingMeTwoColumnsCell.self, forCellReuseIdentifier: TalkingMeTwoColumnsCell.className())
        table.register(ForefrontViewCell.self, forCellReuseIdentifier: ForefrontViewCell.className())
        //: table.register(TalkingMeThreeColumnsCell.self, forCellReuseIdentifier: TalkingMeThreeColumnsCell.className())
        table.register(InputViewCell.self, forCellReuseIdentifier: InputViewCell.className())
        //: table.register(TalkingUserCenterCell.self, forCellReuseIdentifier: TalkingUserCenterCell.className())
        table.register(WithShadowCenterCell.self, forCellReuseIdentifier: WithShadowCenterCell.className())
        //: table.addHeaderRefresh { [weak self] in
        table.subReload { [weak self] in
            //: guard let self = self else { return }
            guard let self = self else { return }
            //: self.headerRefresh()
            self.tableFlush()
        }
        //: return table
        return table
        //: }()
    }()

    //: lazy var bannerListData: [SocialAdBannerModel] = {
    lazy var bannerListData: [RawDataBannerModel] = //: return Array<RawDataBannerModel>()
        .init()
    //: }()
}

// MARK: - Request

//: extension TalkingMeViewController {
extension ControllerMeForefrontQualityViewDelegate {
    /// 下拉刷新
    //: private func headerRefresh() {
    private func tableFlush() {
        //: tableView.mj_header?.beginRefreshing()
        tableView.mj_header?.beginRefreshing()
        //: func__requestUserInfo()
        pickVoice()
    }

    /// 刷新个人资料接口
    //: @objc private func func__requestUserInfo() {
    @objc private func pickVoice() {
        //: AppManagerRequest.func__requestUserInfo { succeed, result, errorModel in
        SubThen.channel { _, _, _ in
            //: self.reloadLocalData()
            self.tertiaryUpAggregation()
            //: self.tableView.endRefresh()
            self.tableView.takeUp()
            //: self.tableView.reloadData()
            self.tableView.reloadData()

            //: if TalkingLiveManager.shared().isLive {
            if VideoPushListener.isGesture().isLive {
                //: NotificationCenter.default.post(name: LIVE_USER_POINT_CHANGE, object: nil, userInfo: ["mfBean": 0.0])
                NotificationCenter.default.post(name: kLet_countData, object: nil, userInfo: [String(bytes: kStr_modelValue.map{dataConverter(time: $0)}, encoding: .utf8)!: 0.0])
            }
        }
    }

    /// banner
    //: func func__reqBanner() {
    func imageThat() {
        //: SocialRequestManager.init().req_adBanner(position: 2) { [weak self] succeed, result, errorModel in
        ManageressFillRequestManager().timeCompletion(position: 2) { [weak self] _, result, _ in
            //: guard let self = self else { return }
            guard let self = self else { return }
            //: guard let result = result as? Dictionary<String, Any> else {
            guard let result = result as? [String: Any] else {
                //: return
                return
            }
            //: let array = JSON(result["bannerList"] ?? []).arrayValue
            let array = JSON(result[(kStr_pastSharedStatusValue.replacingOccurrences(of: "succeed", with: "ba") + String(kStr_textName))] ?? []).arrayValue
            //: self.bannerListData.removeAll()
            self.bannerListData.removeAll()
            //: for dict in array {
            for dict in array {
                //: if let model = SocialAdBannerModel.deserialize(from: dict.dictionaryObject) {
                if let model = RawDataBannerModel.deserialize(from: dict.dictionaryObject) {
                    //: self.bannerListData.append(model)
                    self.bannerListData.append(model)
                }
            }
            //: self.tableView.reloadData()
            self.tableView.reloadData()
        }
    }

    /// 重载本地数据
    //: private func reloadLocalData() {
    private func tertiaryUpAggregation() {
        //: if LocationThen.share.loginUserMode.sex == Gender.female.rawValue && LocationThen.share.appStatus != AppSkinStatus.special.rawValue {
        if LocationThen.share.loginUserMode.sex == SucceedComparable.female.rawValue, LocationThen.share.appStatus != SharedInsetTarget.special.rawValue { // 女性 && 非审核模式
            //: tupleData = [(.My_Chat_Settings, "icon_me_chatsettings"),
            tupleData = [(.My_Chat_Settings, (String(kStr_infoTitle.suffix(6)) + "e_chat" + kStr_equalName.replacingOccurrences(of: "finish", with: "e") + "ings")),
                         //: (.My_Automatic, "icon_me_automatic"),
                         (.My_Automatic, (String(kStr_valueData.suffix(6)) + "e_aut" + kStr_cornerName.replacingOccurrences(of: "image", with: "t") + kStr_insideTitle.replacingOccurrences(of: "border", with: "c"))),
                         //: (.My_Settings, "icon_me_settings")]
                         (.My_Settings, (String(kStr_valueTitle.prefix(5)) + "me_setti" + kStr_regularViewData.lowercased()))]

            //: } else {
        } else {
            //: tupleData = [(.My_Settings, "icon_me_settings")]
            tupleData = [(.My_Settings, (String(kStr_valueTitle.prefix(5)) + "me_setti" + kStr_regularViewData.lowercased()))]
        }
        //: if LocationThen.share.appUserConfigMode.showTaskCenter {
        if LocationThen.share.appUserConfigMode.showTaskCenter {
            //: tupleData.insert((.Task_Center, "icon_me_tc"), at: 0)
            tupleData.insert((.Task_Center, (kStr_dataText.replacingOccurrences(of: "remove", with: "co") + String(kStr_frameContent.suffix(6)))), at: 0)
        }
        //: if LocationThen.share.loginUserMode.sex == Gender.female.rawValue {
        if LocationThen.share.loginUserMode.sex == SucceedComparable.female.rawValue {
            //: tupleData.insert((.My_VideoSetting, "icon_me_videoSet"), at: tupleData.count-1)
            tupleData.insert((.My_VideoSetting, (String(kStr_amData) + String(kStr_ofData))), at: tupleData.count - 1)
            //: } else {
        } else {
            //: if SenseTime_Use && tupleData.count > 0 {
            if kLet_intervalName, tupleData.count > 0 {
                //: tupleData.insert((.My_Beautify, "icon_me_bs"), at: tupleData.count-1)
                tupleData.insert((.My_Beautify, (String(kStr_succeedValue.prefix(5)) + String(kStr_currentValue))), at: tupleData.count - 1)
            }
        }
    }
}

//: extension TalkingMeViewController {
extension ControllerMeForefrontQualityViewDelegate {
    //: @objc func pushEdit() {
    @objc func titleScope() {
        //: let editvc = TalkingEditProfilesVC()
        let editvc = SizeThen()
        //: self.navigationController?.pushViewController(editvc, animated: true)
        self.navigationController?.pushViewController(editvc, animated: true)
    }

    //: func judgeCameraAuthorization() {
    func arrayObjectAuthorization() {
        //: TalkingPermissionTool.func__openCaptureDeviceServiceWithBlock(false) { (isOpen: Bool) in
        PerspectiveThen.leadershipMore(false) { (isOpen: Bool) in
            //: if isOpen {
            if isOpen {
                //: guard TalkingSocketManager.shared.isTalking == false else {
                guard ToSocketManager.shared.isTalking == false else {
                    //: self.func__showStatusBarErrorMsg(showMsg: kMessage_videoTalking_limit)
                    self.detailDownArray(showMsg: kLet_tableEndValue)
                    //: return
                    return
                }
                //: let vc = TalkingMyBeautyVC()
                let vc = QualityBeautyVc()
                //: self.navigationController?.pushViewController(vc, animated: true)
                self.navigationController?.pushViewController(vc, animated: true)
                //: } else {
            } else {
                //: TalkingAlertShow.alert(title: nil, message: "Enter \"Settings\" and open \"Camera\" permission to use this function normally".localized, leftBtnTitle: "Cancel".localized, rightBtnTitle: "Settings".localized) {
                ClickReactiveCompatible.follow(title: nil, message: (String(kStr_giftShareData)) + "\"" + (String(kStr_picData.prefix(8))) + "\"" + (String(kStr_textMinAlwaysName.suffix(5)) + String(kStr_detailName)) + "\"" + (String(kStr_labelData)) + "\"" + String(bytes: kStr_signTitle.map{topName(signature: $0)}, encoding: .utf8)!.localized, leftBtnTitle: (String(kStr_currentIconData.prefix(6))).localized, rightBtnTitle: (String(kStr_picData.prefix(8))).localized) {
                    //: TalkingAlertShow.hideAlert()
                    ClickReactiveCompatible.closeHideRelease()
                    //: } rightBlock: {
                } rightBlock: {
                    //: TalkingAlertShow.hideAlert()
                    ClickReactiveCompatible.closeHideRelease()
                    //: let url = URL(string: UIApplication.openSettingsURLString)
                    let url = URL(string: UIApplication.openSettingsURLString)
                    //: if  UIApplication.shared.canOpenURL(url!) {
                    if UIApplication.shared.canOpenURL(url!) {
                        //: if #available(iOS 10, *) {
                        if #available(iOS 10, *) {
                            //: UIApplication.shared.open(url!, options: [:], completionHandler: {(success) in})
                            UIApplication.shared.open(url!, options: [:], completionHandler: { _ in })
                            //: } else {
                        } else {
                            //: UIApplication.shared.openURL(url!)
                            UIApplication.shared.openURL(url!)
                        }
                    }
                }
            }
        }
    }
}

// MARK: - UITableViewDelegate, UITableViewDataSource

//: extension TalkingMeViewController: UITableViewDelegate, UITableViewDataSource {
extension ControllerMeForefrontQualityViewDelegate: UITableViewDelegate, UITableViewDataSource {
    //: func numberOfSections(in tableView: UITableView) -> Int {
    func numberOfSections(in _: UITableView) -> Int {
        //: return 2
        return 2
    }

    //: func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    func tableView(_: UITableView, numberOfRowsInSection section: Int) -> Int {
        //: if section == 0 {
        if section == 0 {
            //: return 4
            return 4
        }
        //: return tupleData.count
        return tupleData.count
    }

    //: func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //: guard indexPath.section == 0 else {
        guard indexPath.section == 0 else {
            //: let cell = tableView.dequeueReusableCell(withIdentifier: TalkingUserCenterCell.className(), for: indexPath) as! TalkingUserCenterCell
            let cell = tableView.dequeueReusableCell(withIdentifier: WithShadowCenterCell.className(), for: indexPath) as! WithShadowCenterCell
            //: let data = tupleData[indexPath.row]
            let data = tupleData[indexPath.row]
            //: let isLast = tupleData.count == (indexPath.row+1)
            let isLast = tupleData.count == (indexPath.row + 1)
            //: cell.setViewData(title: data.0.rawValue, icon: data.1, row: indexPath.row, isLast: isLast)
            cell.squareBlock(title: data.0.rawValue, icon: data.1, row: indexPath.row, isLast: isLast)
            //: if data.0 ==  .Task_Center {
            if data.0 == .Task_Center {
                //: cell.setTaskCenterBtn()
                cell.stormCentre()
            }
            //: return cell
            return cell
        }

        //: switch(indexPath.row) {
        switch indexPath.row {
        //: case 0:
        case 0:
            //: let cell = tableView.dequeueReusableCell(withIdentifier: TalkingMeTopCell.className(), for: indexPath) as! TalkingMeTopCell
            let cell = tableView.dequeueReusableCell(withIdentifier: CrownViewCell.className(), for: indexPath) as! CrownViewCell
            //: cell.setViewData()
            cell.stateFuturism()
            //: return cell
            return cell
        //: case 1:
        case 1:
            //: let cell = tableView.dequeueReusableCell(withIdentifier: TalkingMeBannerCell.className(), for: indexPath) as! TalkingMeBannerCell
            let cell = tableView.dequeueReusableCell(withIdentifier: CompartmentBannerCell.className(), for: indexPath) as! CompartmentBannerCell
            //: cell.setViewData(bannerData: self.bannerListData)
            cell.birthday(bannerData: self.bannerListData)
            //: return cell
            return cell
        //: case 2:
        case 2:
            //: let cell = tableView.dequeueReusableCell(withIdentifier: TalkingMeTwoColumnsCell.className(), for: indexPath) as! TalkingMeTwoColumnsCell
            let cell = tableView.dequeueReusableCell(withIdentifier: ForefrontViewCell.className(), for: indexPath) as! ForefrontViewCell
            //: cell.setViewData()
            cell.atCell()
            //: return cell
            return cell
        //: case 3:
        case 3:
            //: let cell = tableView.dequeueReusableCell(withIdentifier: TalkingMeThreeColumnsCell.className(), for: indexPath) as! TalkingMeThreeColumnsCell
            let cell = tableView.dequeueReusableCell(withIdentifier: InputViewCell.className(), for: indexPath) as! InputViewCell
            //: cell.setViewData()
            cell.indexData()
            //: return cell
            return cell

        //: default:
        default:
            //: break
            break
        }

        //: let cell = tableView.dequeueReusableCell(withIdentifier: UITableViewCell.className(), for: indexPath)
        let cell = tableView.dequeueReusableCell(withIdentifier: UITableViewCell.className(), for: indexPath)
        //: cell.backgroundColor = .clear
        cell.backgroundColor = .clear
        //: cell.selectionStyle = .none
        cell.selectionStyle = .none
        //: return cell
        return cell
    }

    //: func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
    func tableView(_: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        //: if indexPath.section == 0 && indexPath.row == 1 && self.bannerListData.count <= 0 {
        if indexPath.section == 0 && indexPath.row == 1 && self.bannerListData.count <= 0 {
            //: return 0
            return 0
        }
        //: return UITableView.automaticDimension
        return UITableView.automaticDimension
    }

    //: func tableView(_ tableView: UITableView, estimatedHeightForRowAt indexPath: IndexPath) -> CGFloat {
    func tableView(_: UITableView, estimatedHeightForRowAt _: IndexPath) -> CGFloat {
        //: return 80
        return 80
    }

    //: func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    func tableView(_: UITableView, didSelectRowAt indexPath: IndexPath) {
        //: guard indexPath.section == 1 else { return }
        guard indexPath.section == 1 else { return }
        //: let data = tupleData[indexPath.row]
        let data = tupleData[indexPath.row]
        //: switch data.0 {
        switch data.0 {
        //: case .My_Chat_Settings:
        case .My_Chat_Settings:
            //: let vc = TalkingFemalePriceSetVC()
            let vc = LayerItemViewDelegate()
            //: navigationController?.pushViewController(vc, animated: true)
            navigationController?.pushViewController(vc, animated: true)

        //: case .My_Automatic:
        case .My_Automatic:
            //: let vc = TalkingAutoGreetSettingVC()
            let vc = CaseReactiveCompatible()
            //: navigationController?.pushViewController(vc, animated: true)
            navigationController?.pushViewController(vc, animated: true)

        //: case .My_Settings:
        case .My_Settings:
            //: let vc = TalkingSettingsVC()
            let vc = CoequalDataSource()
            //: navigationController?.pushViewController(vc, animated: true)
            navigationController?.pushViewController(vc, animated: true)

        //: case .Task_Center:
        case .Task_Center:
            //: EffectPushManager.share.func__pushToWebVC(webViewType: .TaskCenter)
            EffectPushManager.share.selectUp(webViewType: .TaskCenter)

        //: case .My_Beautify:
        case .My_Beautify:
            //: judgeCameraAuthorization()
            arrayObjectAuthorization()

        //: case .My_VideoSetting:
        case .My_VideoSetting:
            //: let vc = TalkingVideoSettingsVC.init()
            let vc = SettingsBlockThen()
            //: navigationController?.pushViewController(vc, animated: true)
            navigationController?.pushViewController(vc, animated: true)

        //: default: break
        default: break
        }
    }
}

// MARK: - Layout

//: extension TalkingMeViewController {
extension ControllerMeForefrontQualityViewDelegate {
    /// 添加视图
    //: private func setupSubviews() {
    private func itemSubviews() {
        //: self.view.addSubview(tableView)
        self.view.addSubview(tableView)
    }

    /// 添加约束
    //: private func setupSubViewsConstraint() {
    private func harvestConstraint() {
        //: tableView.snp.makeConstraints { make in
        tableView.snp.makeConstraints { make in
            //: make.edges.equalToSuperview()
            make.edges.equalToSuperview()
        }
    }
}
