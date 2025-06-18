
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let kStr_femaleFirstPriorityValue:[UInt8] = [0x64,0x65,0x74,0x6e,0x65,0x6d,0x65,0x6c,0x70,0x6d,0x69,0x20,0x6e,0x65,0x65,0x62,0x20,0x74,0x6f,0x6e,0x20,0x73,0x61,0x68,0x20,0x29,0x3a,0x72,0x65,0x64,0x6f,0x63,0x28,0x74,0x69,0x6e,0x69]

/*: "Settings" :*/
fileprivate let kStr_withPageTitle:String = "Settinimage label height thumb color"
fileprivate let kStr_talkValue:String = "gseat"

/*: "Security" :*/
fileprivate let kStr_refuseData:String = "view ifSecurity"

/*: "More" :*/
fileprivate let kStr_modelTitle:String = "view shareMore"

/*: "Logout succeeded!" :*/
fileprivate let kStr_sizeValue:[Character] = ["L","o","g","o","u","t"," ","s","u","c","c","e","e","d","e"]
fileprivate let kStr_pushData:String = "d!home case make height"

/*: "NameViewCell" :*/
fileprivate let kStr_kitText:String = "Talknow add false gift top"
fileprivate let kStr_fewCornerText:String = "ETTIN"

/*: "Please communicate with online service first and then upload logs, logs are used to analyze problems you encountered in the use of the App!" :*/
fileprivate let kStr_equalValue:[UInt8] = [0x63,0x5f,0x56,0x52,0x40,0x56,0x13,0x50,0x5c,0x5e,0x5e,0x46,0x5d,0x5a,0x50,0x52,0x47,0x56,0x13,0x44,0x5a,0x47,0x5b,0x13,0x5c,0x5d,0x5f,0x5a,0x5d,0x56,0x13,0x40,0x56,0x41,0x45,0x5a,0x50,0x56,0x13,0x55,0x5a,0x41,0x40,0x47,0x13,0x52,0x5d,0x57,0x13,0x47,0x5b,0x56,0x5d,0x13,0x46,0x43,0x5f,0x5c,0x52,0x57,0x13,0x5f,0x5c,0x54,0x40,0x1f,0x13,0x5f,0x5c,0x54,0x40,0x13,0x52,0x41,0x56,0x13,0x46,0x40,0x56,0x57,0x13,0x47,0x5c,0x13,0x52,0x5d,0x52,0x5f,0x4a,0x49,0x56,0x13,0x43,0x41,0x5c,0x51,0x5f,0x56,0x5e,0x40,0x13,0x4a,0x5c,0x46,0x13,0x56,0x5d,0x50,0x5c,0x46,0x5d,0x47,0x56,0x41,0x56,0x57,0x13,0x5a,0x5d,0x13,0x47,0x5b,0x56,0x13,0x46,0x40,0x56,0x13,0x5c,0x55,0x13,0x47,0x5b,0x56,0x13,0x72,0x43,0x43,0x12]

/*: "Cancel" :*/
fileprivate let kStr_labelName:[Character] = ["C","a","n","c","e"]
fileprivate let kStr_showValue:String = "color"

/*: "OK" :*/
fileprivate let kStr_modelAcceptText:String = "Omake"

/*: "#999999" :*/
fileprivate let kStr_reportMiniData:[Character] = ["#","9","9","9","9"]
fileprivate let kStr_colorText:String = "99"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  CoequalDataSource.swift
//  AbroadTalking
//
//  Created by Charlotte on 2022/9/5.
//

//: import SwiftUI
import SwiftUI
//: import UIKit
import UIKit

//: enum SettingsType: String {
enum FillSeekCustomReflectable: String {
    //: case Contact_information   = "Contact information"
    case Contact_information = "Contact information"
    //: case Turnon_Notif          = "Notifications"
    case Turnon_Notif = "Notifications"
    //: case Social_Preferences    = "Social Preferences"
    case Social_Preferences = "Social Preferences"
    //: case Announcement_Settings = "Announcement Settings"
    case Announcement_Settings = "Announcement Settings"
    //: case Terms                 = "Terms of Use"
    case Terms = "Terms of Use"
    //: case Privacy               = "Privacy Policy"
    case Privacy = "Privacy Policy"
    //: case Aboutus               = "About us"
    case Aboutus = "About us"
    //: case Upload_Log            = "Upload Log"
    case Upload_Log = "Upload Log"
    //: case Black_List            = "Blacklist"
    case Black_List = "Blacklist"
    //: case Feedback              = "Feedback"
    case Feedback
    //: case Logout                = "Logout"
    case Logout
}

//: class TalkingSettingsVC: TalkingBaseViewController {
class CoequalDataSource: LayerRecognizerDelegate {
    //: fileprivate lazy var bag = DisposeBag()
    fileprivate lazy var bag = DisposeBag()

    //: override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
    override init(nibName _: String?, bundle _: Bundle?) {
        //: super.init(nibName: nil, bundle: nil)
        super.init(nibName: nil, bundle: nil)
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: kStr_femaleFirstPriorityValue.reversed(), encoding: .utf8)!)
    }

    //: override func viewDidAppear(_ animated: Bool) {
    override func viewDidAppear(_ animated: Bool) {
        //: super.viewDidAppear(animated)
        super.viewDidAppear(animated)
    }

    //: override func viewDidDisappear(_ animated: Bool) {
    override func viewDidDisappear(_ animated: Bool) {
        //: super.viewDidDisappear(animated)
        super.viewDidDisappear(animated)
    }

    //: override func viewDidLoad() {
    override func viewDidLoad() {
        //: super.viewDidLoad()
        super.viewDidLoad()
        //: self.title = "Settings".localized
        self.title = (String(kStr_withPageTitle.prefix(6)) + kStr_talkValue.replacingOccurrences(of: "seat", with: "s")).localized
        //: self.view.backgroundColor = UIColor.appBgColor()
        self.view.backgroundColor = UIColor.bottomValue()
        //: designView()
        sizeView()
    }

    // MARK: - Lazy load

    //: private lazy var DataSource: [[SettingsType]] = {
    private lazy var DataSource: [[FillSeekCustomReflectable]] = {
        //: var array = [[SettingsType]]()
        var array = [[FillSeekCustomReflectable]]()
        //: var array1: [SettingsType] = [.Contact_information]
        var array1: [FillSeekCustomReflectable] = [.Contact_information]
        //: var array2: [SettingsType] = [.Turnon_Notif]
        var array2: [FillSeekCustomReflectable] = [.Turnon_Notif]
        //: var array3: [SettingsType] = [.Social_Preferences, .Announcement_Settings]
        var array3: [FillSeekCustomReflectable] = [.Social_Preferences, .Announcement_Settings]

        //: var array4: [SettingsType] = [.Terms, .Privacy]
        var array4: [FillSeekCustomReflectable] = [.Terms, .Privacy]
        //: var array5: [SettingsType] = [.Aboutus, .Upload_Log, .Black_List, .Feedback]
        var array5: [FillSeekCustomReflectable] = [.Aboutus, .Upload_Log, .Black_List, .Feedback]
        //: var array6: [SettingsType] = [.Logout]
        var array6: [FillSeekCustomReflectable] = [.Logout]

        //: array.append(array1)
        array.append(array1)
        //: array.append(array2)
        array.append(array2)
        //: array.append(array3)
        array.append(array3)
        //: array.append(array4)
        array.append(array4)
        //: array.append(array5)
        array.append(array5)
        //: array.append(array6)
        array.append(array6)
        //: return array
        return array
        //: }()
    }()

    //: lazy var MainTable: UITableView = {
    lazy var MainTable: UITableView = {
        //: let table = UITableView(frame: CGRect(x: 0, y: 0, width: ScreenWidth, height: ScreenHeight-TabBarViewHeight), style: UITableView.Style.plain)
        let table = UITableView(frame: CGRect(x: 0, y: 0, width: kLet_halfData, height: kLet_noSeatName - kLet_screenContent), style: UITableView.Style.plain)
        //: table.backgroundColor = UIColor.clear
        table.backgroundColor = UIColor.clear
        //: return table
        return table
        //: }()
    }()

    //: private lazy var headerSource: [String] = {
    private lazy var headerSource: [String] = {
        //: var array = ["", "", "", "Security".localized, "More".localized, ""]
        var array = ["", "", "", (String(kStr_refuseData.suffix(8))).localized, (String(kStr_modelTitle.suffix(4))).localized, ""]
        //: return array
        return array
        //: }()
    }()
}

// MARK: - Load data

//: extension TalkingSettingsVC {
extension CoequalDataSource {
    /// logout
    //: func logoutTool() {
    func onTool() {
        //: guard TalkingPermissionTool.isLiveOrPartyActive() == false else { return }
        guard PerspectiveThen.blockMonth() == false else { return }
        //: guard TalkingSocketManager.shared.isTalking == false else {
        guard ToSocketManager.shared.isTalking == false else { // 音视频通话中
            //: self.func__showStatusBarErrorMsg(showMsg: kMessage_videoTalking_limit)
            self.detailDownArray(showMsg: kLet_tableEndValue)
            //: return
            return
        }

        //: ProgressHUD.show()
        TintProgressHUD.weight()
        //: TalkingLoginRequestTool.req_loginOut { t in
        TableThen.equal { t in
            //: ProgressHUD.dismiss()
            TintProgressHUD.inkingPadDismiss()
            //: if t {
            if t {
                //: NotificationCenter.default.post(name: DID_LOGIN_OUT_SUCCESS_NOTIFICATION, object: nil, userInfo: nil)
                NotificationCenter.default.post(name: kLet_statusFailData, object: nil, userInfo: nil)
            }
        }
    }

    //: func LockAccount() {
    func medium() {
        //: ProgressHUD.show()
        TintProgressHUD.weight()
        //: TalkingMeRequestTool.req_LockAccount(params: [:]) { succeed, result, errorModel in
        LoadEqualRequestTool.pointDoing(params: [:]) { succeed, _, _ in
            //: ProgressHUD.dismiss()
            TintProgressHUD.inkingPadDismiss()
            //: if succeed {
            if succeed {
                //: self.logoutTool()
                self.onTool()
                //: self.func__showStatusBarSuccessMsg(showMsg: "Logout succeeded!".localized)
                self.property(showMsg: (String(kStr_sizeValue) + String(kStr_pushData.prefix(2))).localized)
            }
        }
    }
}

// MARK: - UITableViewDelegate, UITableViewDataSource

//: extension TalkingSettingsVC: UITableViewDelegate, UITableViewDataSource {
extension CoequalDataSource: UITableViewDelegate, UITableViewDataSource {
    //: func numberOfSections(in tableView: UITableView) -> Int {
    func numberOfSections(in _: UITableView) -> Int {
        //: return headerSource.count
        return headerSource.count
    }

    //: func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    func tableView(_: UITableView, numberOfRowsInSection section: Int) -> Int {
        //: let verr: [SettingsType] = DataSource[section]
        let verr: [FillSeekCustomReflectable] = DataSource[section]
        //: return verr.count
        return verr.count
    }

    //: func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
    func tableView(_: UITableView, heightForRowAt _: IndexPath) -> CGFloat {
        //: return actualHeight(h: 50)
        return mediaBlock(h: 50)
    }

    //: func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
    func tableView(_: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        //: if section == 3 || section == 4 {
        if section == 3 || section == 4 {
            //: return 41
            return 41
        }
        //: return 12
        return 12
    }

    //: func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //: let identifier = "TalkingSettingCell"
        let identifier = (String(kStr_kitText.prefix(4)) + "ingS" + kStr_fewCornerText.lowercased() + "gCell")
        //: let cell: TalkingSettingCell = tableView.dequeueReusableCell(withIdentifier: identifier, for: indexPath) as! TalkingSettingCell
        let cell: NameViewCell = tableView.dequeueReusableCell(withIdentifier: identifier, for: indexPath) as! NameViewCell

        //: let verr: [SettingsType] = DataSource[indexPath.section]
        let verr: [FillSeekCustomReflectable] = DataSource[indexPath.section]

        //: if indexPath.section == DataSource.count - 1 {
        if indexPath.section == DataSource.count - 1 {
            //: cell.setLogout(detail: verr[indexPath.row].rawValue)
            cell.detail(detail: verr[indexPath.row].rawValue)

            //: cell.logutBtn.rx.tap.subscribe { [weak self] (event) in
            cell.logutBtn.rx.tap.subscribe { [weak self] _ in
                //: guard let self = self else {return}
                guard let self = self else { return }
                //: self.logoutTool()
                self.onTool()
                //: }.disposed(by: bag)
            }.disposed(by: bag)

            //: } else {
        } else {
            //: cell.setCellMessage(titile: verr[indexPath.row].rawValue, row: indexPath.row, isLast: indexPath.row == verr.count-1 )
            cell.onObject(titile: verr[indexPath.row].rawValue, row: indexPath.row, isLast: indexPath.row == verr.count - 1)
        }

        //: return cell
        return cell
    }

    //: func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    func tableView(_: UITableView, didSelectRowAt indexPath: IndexPath) {
        //: let verr: [SettingsType] = DataSource[indexPath.section]
        let verr: [FillSeekCustomReflectable] = DataSource[indexPath.section]
        //: if verr[indexPath.row] == .Feedback {
        if verr[indexPath.row] == .Feedback {
            //: let vc = TalkingFeedbackVC.init()
            let vc = LawyerClientRelationFieldDelegate()
            //: self.navigationController?.pushViewController(vc, animated: true)
            self.navigationController?.pushViewController(vc, animated: true)
            //: } else if verr[indexPath.row] == .Black_List {
        } else if verr[indexPath.row] == .Black_List {
            //: let vc = TalkingBlacklistVC.init()
            let vc = MentalImageBlacklistVc()
            //: self.navigationController?.pushViewController(vc, animated: true)
            self.navigationController?.pushViewController(vc, animated: true)
            //: } else if verr[indexPath.row] == .Terms {
        } else if verr[indexPath.row] == .Terms {
            //: EffectPushManager.share.func__pushToWebVC(webViewType: .TermsofUse)
            EffectPushManager.share.selectUp(webViewType: .TermsofUse)
            //: } else if verr[indexPath.row] == .Privacy {
        } else if verr[indexPath.row] == .Privacy {
            //: EffectPushManager.share.func__pushToWebVC(webViewType: .PrivacyPolicy)
            EffectPushManager.share.selectUp(webViewType: .PrivacyPolicy)
            //: } else if verr[indexPath.row] == .Contact_information {
        } else if verr[indexPath.row] == .Contact_information {
            //: let vc = TalkingSettingsUniversalVC.init()
            let vc = FromDataSource()
            //: vc.setUnicersalView(type: .Contact_information)
            vc.transitionKind(type: .Contact_information)
            //: self.navigationController?.pushViewController(vc, animated: true)
            self.navigationController?.pushViewController(vc, animated: true)
            //: } else if verr[indexPath.row] == .Turnon_Notif {
        } else if verr[indexPath.row] == .Turnon_Notif {
            //: let vc = TalkingSettingsUniversalVC.init()
            let vc = FromDataSource()
            //: vc.setUnicersalView(type: .Notifications)
            vc.transitionKind(type: .Notifications)
            //: self.navigationController?.pushViewController(vc, animated: true)
            self.navigationController?.pushViewController(vc, animated: true)
            //: } else if verr[indexPath.row] == .Social_Preferences {
        } else if verr[indexPath.row] == .Social_Preferences {
            //: let vc = TalkingSettingsUniversalVC.init()
            let vc = FromDataSource()
            //: vc.setUnicersalView(type: .Social_Preferences)
            vc.transitionKind(type: .Social_Preferences)
            //: self.navigationController?.pushViewController(vc, animated: true)
            self.navigationController?.pushViewController(vc, animated: true)

            //: } else if verr[indexPath.row] == .Announcement_Settings {
        } else if verr[indexPath.row] == .Announcement_Settings {
            //: EffectPushManager.share.func__pushToWebVC(webViewType: .GiftBroadcast)
            EffectPushManager.share.selectUp(webViewType: .GiftBroadcast)

            //: } else if verr[indexPath.row] == .Aboutus {
        } else if verr[indexPath.row] == .Aboutus {
            //: let vc = TalkingAboutUsVC.init()
            let vc = TimeBottomRecognizerDelegate()
            //: navigationController?.pushViewController(vc, animated: true)
            navigationController?.pushViewController(vc, animated: true)
            //: } else if verr[indexPath.row] == .Upload_Log {
        } else if verr[indexPath.row] == .Upload_Log {
            //: let config = ShowAlertConfig()
            let config = StreetwiseAlertConfig()
            //: config.horizontalPadding = 30
            config.horizontalPadding = 30
            //: config.textFont = UIFont.messageDown(fontSize: 16)
            config.textFont = UIFont.messageDown(fontSize: 16)
            //: TalkingAlertShow.alert(title: nil, message: "Please communicate with online service first and then upload logs, logs are used to analyze problems you encountered in the use of the App!".localized, leftBtnTitle: "Cancel".localized, rightBtnTitle: "OK".localized, rightBlock: {
            ClickReactiveCompatible.follow(title: nil, message: String(bytes: kStr_equalValue.map{$0^51}, encoding: .utf8)!.localized, leftBtnTitle: (String(kStr_labelName) + kStr_showValue.replacingOccurrences(of: "color", with: "l")).localized, rightBtnTitle: "OK".localized, rightBlock: {
                //: UploadLogTool.shared.uploadLog()
                MiniLoadThen.shared.getCracking()
                //: }, config: config)
            }, config: config)
        }
    }

    //: func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
    func tableView(_: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        //: let view = UIView.init(frame: CGRect(x: 0, y: 0, width: ScreenWidth, height: 40))
        let view = UIView(frame: CGRect(x: 0, y: 0, width: kLet_halfData, height: 40))
        //: view.backgroundColor = UIColor.appBgColor()
        view.backgroundColor = UIColor.bottomValue()
        //: let title = UILabel.init()
        let title = UILabel()
        //: title.textColor = UIColor.init(hex: "#999999")
        title.textColor = UIColor(hex: (String(kStr_reportMiniData) + kStr_colorText.capitalized))
        //: title.font = UIFont.pingfangFont(type: .Medium, fontSize: 16)
        title.font = UIFont.groupSize(type: .Medium, fontSize: 16)
        //: title.text = headerSource[section]
        title.text = headerSource[section]
        //: view.addSubview(title)
        view.addSubview(title)
        //: title.snp.makeConstraints { make in
        title.snp.makeConstraints { make in
            //: make.leading.equalTo(view).offset(30)
            make.leading.equalTo(view).offset(30)
            //: make.centerY.equalTo(view)
            make.centerY.equalTo(view)
        }
        //: return view
        return view
    }
}

// MARK: - UI

//: extension TalkingSettingsVC {
extension CoequalDataSource {
    //: private func designView() {
    private func sizeView() {
        //: self.view.addSubview(MainTable)
        self.view.addSubview(MainTable)
        //: MainTable.register(TalkingSettingCell.self, forCellReuseIdentifier: "TalkingSettingCell")
        MainTable.register(NameViewCell.self, forCellReuseIdentifier: (String(kStr_kitText.prefix(4)) + "ingS" + kStr_fewCornerText.lowercased() + "gCell"))
        //: MainTable.separatorStyle = .none
        MainTable.separatorStyle = .none
        //: MainTable.dataSource = self
        MainTable.dataSource = self
        //: MainTable.delegate = self
        MainTable.delegate = self
        //: MainTable.snp.makeConstraints { make in
        MainTable.snp.makeConstraints { make in
            //: make.edges.equalTo(self.view)
            make.edges.equalTo(self.view)
        }
        //: MainTable.contentInset = UIEdgeInsets(top: 0, left: 0, bottom: 36, right: 0)
        MainTable.contentInset = UIEdgeInsets(top: 0, left: 0, bottom: 36, right: 0)
    }
}
