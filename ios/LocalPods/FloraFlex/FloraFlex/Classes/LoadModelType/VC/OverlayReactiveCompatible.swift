
//: Declare String Begin

/*: "New friends" :*/
fileprivate let kStr_sizeValue:[Character] = ["N","e","w"," ","f","r"]
fileprivate let kStr_filterName:[Character] = ["i","e","n","d","s"]

/*: "icon_yidu_pre" :*/
fileprivate let kStr_cellIndexData:[Character] = ["i","c","o","n","_","y","i","d","u","_","p","r","e"]

/*: "You've got no message yet." :*/
fileprivate let kStr_equalName:[Character] = ["Y","o","u","\'","v","e"," ","g","o","t"," ","n","o"," ","m","e","s","s","a"]
fileprivate let kStr_itemEventName:String = "ge yet.mode add corner party title"

/*: "icon_kong_kong_default" :*/
fileprivate let kStr_playerData:[Character] = ["i","c","o","n","_","k","o","n","g","_","k","o","n","g","_","d"]
fileprivate let kStr_hiddenData:String = "efaucardt"

/*: "Cancel" :*/
fileprivate let kStr_modelEqualText:String = "result bagCancel"

/*: "OK" :*/
fileprivate let kStr_rawLogReturnValue:[Character] = ["O","K"]

/*: "uid" :*/
fileprivate let kStr_imageShowValue:[UInt8] = [0x1,0xf5,0xf0]

fileprivate func giftIndex(view num: UInt8) -> UInt8 {
    let value = Int(num) + 116
    if value > 255 {
        return UInt8(value - 256)
    } else {
        return UInt8(value)
    }
}

/*: "Do you want to mark all messages as read?" :*/
fileprivate let kStr_labelCookieTitle:[UInt8] = [0x7c,0x57,0x18,0x41,0x57,0x4d,0x18,0x4f,0x59,0x56,0x4c,0x18,0x4c,0x57,0x18,0x55,0x59,0x4a,0x53,0x18,0x59,0x54,0x54,0x18,0x55,0x5d,0x4b,0x4b,0x59,0x5f,0x5d,0x4b,0x18,0x59,0x4b,0x18,0x4a,0x5d,0x59,0x5c,0x7]

private func regularEvent(name num: UInt8) -> UInt8 {
    return num ^ 56
}

/*: "MoreMessages一键已读失败：code: :*/
fileprivate let kStr_contentUserTrueData:String = "MoreMesgift self self"
fileprivate let kStr_equalData:String = "SAGE"
fileprivate let kStr_dataTitle:[Character] = ["\u{8bfb}","失","败","：","c","o","d","e",":"]

/*: , desc: :*/
fileprivate let kStr_releaseGiftName:String = ", desc:gift input express self name"

/*: "btn_message_report_nor" :*/
fileprivate let kStr_labValue:String = "kit height cell share norbtn_mes"
fileprivate let kStr_bottomEqualData:String = "data"
fileprivate let kStr_cellValue:String = "number star model domainage_"
fileprivate let kStr_succeedName:String = "_noruser string message"

/*: "#FF935D" :*/
fileprivate let kStr_labelName:String = "#"
fileprivate let kStr_userName:[Character] = ["F","F","9","3","5","D"]

/*: "btn_message_block_nor" :*/
fileprivate let kStr_pathViewName:String = "btn_to var make view"
fileprivate let kStr_labelText:String = "ge_blname make cookie line"
fileprivate let kStr_managerValue:[Character] = ["r"]

/*: "#C179F9" :*/
fileprivate let kStr_regularToText:[Character] = ["#","C","1","7","9","F","9"]

/*: "btn_message_delete_nor" :*/
fileprivate let kStr_dismissMiniTitle:String = "btn_meself equal"
fileprivate let kStr_effectValue:String = "_deltitle cancel key"
fileprivate let kStr_rangePingValue:String = "R"

/*: "#FF506D" :*/
fileprivate let kStr_pathText:[Character] = ["#","F","F","5","0"]
fileprivate let kStr_iconArrayContent:String = "frame self6D"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  OverlayReactiveCompatible.swift
//  AbroadTalking
//
//  Created by young on 2023/9/27.
//

//: import UIKit
import UIKit

//: class TalkingMoreMessagesListViewController: TalkingBaseViewController {
class OverlayReactiveCompatible: LayerRecognizerDelegate {
    //: override func viewDidLoad() {
    override func viewDidLoad() {
        //: super.viewDidLoad()
        super.viewDidLoad()
        //: self.title = "New friends".localized
        self.title = (String(kStr_sizeValue) + String(kStr_filterName)).localized
        //: let btn = UIButton(frame: CGRect(x: 0, y: 0, width: 24, height: 24))
        let btn = UIButton(frame: CGRect(x: 0, y: 0, width: 24, height: 24))
        //: btn.setImage(UIImage.bundleBy(name: "icon_yidu_pre"), for: .normal)
        btn.setImage(UIImage.bundleBy(name: (String(kStr_cellIndexData))), for: .normal)
        //: btn.addTarget(self, action: #selector(clearBadgeButtonClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(itemPath), for: .touchUpInside)
        //: let item = UIBarButtonItem(customView: btn)
        let item = UIBarButtonItem(customView: btn)
        //: self.navigationItem.rightBarButtonItem = item
        self.navigationItem.rightBarButtonItem = item

        //: LayerConversationListener.shared.func__addDelegate(self)
        LayerConversationListener.shared.afterStatus(self)
        //: func__installNotificationObservers()
        willPull()
        //: createUI()
        sizeUi()
        //: self.manager.req_moreMsgInitData()
        self.manager.toAGreaterExtent()
        //: refreshTableView()
        themeView()
    }

    //: deinit {
    deinit {
        //: NotificationCenter.default.removeObserver(self)
        NotificationCenter.default.removeObserver(self)
    }

    // MARK: - Lazy load

    //: private lazy var tableView: UITableView = {
    private lazy var tableView: UITableView = {
        //: let tableView = UITableView.init(frame: .zero, style: .grouped)
        let tableView = UITableView(frame: .zero, style: .grouped)
        //: tableView.delegate = self
        tableView.delegate = self
        //: tableView.dataSource = self
        tableView.dataSource = self
        //: tableView.backgroundColor = .clear
        tableView.backgroundColor = .clear
        //: tableView.separatorStyle = .none
        tableView.separatorStyle = .none
        //: tableView.register(TalkingChatListTableCell.self, forCellReuseIdentifier: TalkingChatListTableCell.className())
        tableView.register(LocationViewCell.self, forCellReuseIdentifier: LocationViewCell.className())
        //: return tableView
        return tableView
        //: }()
    }()

    //: private lazy var emptyView: EmptyView = {
    private lazy var emptyView: EmptyView = {
        //: var style = EmptyStyle()
        var style = FromEmptyStyle()
        //: style.TipsTitle = "You've got no message yet.".localized
        style.TipsTitle = (String(kStr_equalName) + String(kStr_itemEventName.prefix(7))).localized
        //: style.TipsIcon = "icon_kong_kong_default"
        style.TipsIcon = (String(kStr_playerData) + kStr_hiddenData.replacingOccurrences(of: "card", with: "l"))
        //: let emptyView = EmptyView.init(frame: .zero, style: style)
        let emptyView = EmptyView(frame: .zero, style: style)
        //: emptyView.isHidden = true
        emptyView.isHidden = true
        //: return emptyView
        return emptyView
        //: }()
    }()

    //: private lazy var manager: TalkingChatListManager = {
    private lazy var manager: CoriolisEffectListManager = //: return CoriolisEffectListManager()
        .init()
    //: }()
}

// MARK: - 刷新

//: extension TalkingMoreMessagesListViewController {
extension OverlayReactiveCompatible {
    /// 刷新表格
    //: func refreshTableView() {
    func themeView() {
        //: guard self.manager.moreMsgArr.count != 0 else {
        guard self.manager.moreMsgArr.count != 0 else {
            //: self.tableView.isHidden = true
            self.tableView.isHidden = true
            //: self.emptyView.isHidden = false
            self.emptyView.isHidden = false
            //: self.reloadData()
            self.ritual()
            //: return
            return
        }

        //: self.tableView.isHidden = false
        self.tableView.isHidden = false
        //: self.emptyView.isHidden = true
        self.emptyView.isHidden = true
        //: self.reloadData()
        self.ritual()
    }

    /// 刷新
    //: func reloadData() {
    func ritual() {
        //: self.tableView.reloadData()
        self.tableView.reloadData()
    }
}

// MARK: - Event

//: extension TalkingMoreMessagesListViewController {
extension OverlayReactiveCompatible {
    // 删除会话cell
    //: func deleteChatListCell(conversationModel: TalkingConversationModel) {
    func phaticSpeech(conversationModel: ViewConversationModel) {
        //: if !LayerConversationListener.shared.func__checkCanOperateList() { return }
        if !LayerConversationListener.shared.stack() { return }

        //: AbTalkingPrivateChatAnimatTool.shared.removeConversionAnimat(targetID: conversationModel.targetId)
        PrivateReactiveCompatible.shared.nameOfBy(targetID: conversationModel.targetId)
        //: LayerConversationListener.shared.func__removeConversation(targetId: conversationModel.targetId, dataType: .moreList)
        LayerConversationListener.shared.prop(targetId: conversationModel.targetId, dataType: .moreList)
        //: self.manager.req_removeConversationModel(conversationModel: conversationModel)
        self.manager.translate(conversationModel: conversationModel)
        //: self.tableView.reloadData()
        self.tableView.reloadData()
        //: DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 0.25) {
        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 0.25) {
            // 刷新表格，更新红点
            //: self.refreshTableView()
            self.themeView()
        }
    }

    // 拉黑会话
    //: func blockChatListCell(conversationModel: TalkingConversationModel) {
    func spokenCommunicationStar(conversationModel: ViewConversationModel) {
        // 拉黑/解除拉黑
        //: TalkingAlertShow.alert(title: nil,
        ClickReactiveCompatible.follow(title: nil,
                                //: message: kMessage_blocking,
                                message: kLet_clickTitle,
                                //: leftBtnTitle: "Cancel".localized,
                                leftBtnTitle: (String(kStr_modelEqualText.suffix(6))).localized,
                                //: rightBtnTitle: "OK".localized) {
                                rightBtnTitle: "OK".localized)
        {
            //: TalkingAlertShow.hideAlert()
            ClickReactiveCompatible.closeHideRelease()
            //: } rightBlock: {
        } rightBlock: {
            //: TalkingAlertShow.hideAlert()
            ClickReactiveCompatible.closeHideRelease()

            //: TalkingUserRequestManager.func__pullBlackWithUserId(uid: conversationModel.userID, isBlack: true) { succeed, result, errorModel in
            SomeoneThen.viewUser(uid: conversationModel.userID, isBlack: true) { succeed, _, _ in
                //: guard succeed == true else {
                guard succeed == true else {
                    //: return
                    return
                }
                // 拉黑成功，从列表中移除
                //: self.deleteChatListCell(conversationModel: conversationModel)
                self.phaticSpeech(conversationModel: conversationModel)
                //: NotificationCenter.default.post(name: LIVE_BLOCK_USER_NOTIFICATION,
                NotificationCenter.default.post(name: kLet_agentData,
                                                //: object: nil,
                                                object: nil,
                                                //: userInfo: ["uid": conversationModel.userID])
                                                userInfo: [String(bytes: kStr_imageShowValue.map{giftIndex(view: $0)}, encoding: .utf8)!: conversationModel.userID])
            }
        }
    }

    // 举报会话
    //: func reportChatListCell(conversationModel: TalkingConversationModel) {
    func aggregation(conversationModel: ViewConversationModel) {
        //: let reportView = TalkingReportAlertView.init(frame: UIScreen.main.bounds, type: .reportUserType, rId: conversationModel.targetId)
        let reportView = EquivalentReactiveCompatible(frame: UIScreen.main.bounds, type: .reportUserType, rId: conversationModel.targetId)
        //: reportView.showReportViewIn(view: nil)
        reportView.showAppView(view: nil)
    }

    /// 清除红点角标
    //: @objc private func clearBadgeButtonClick() {
    @objc private func itemPath() {
        //: let config = ShowAlertConfig()
        let config = StreetwiseAlertConfig()
        //: config.alignment = .center
        config.alignment = .center

        //: TalkingAlertShow.customAlert(message: "Do you want to mark all messages as read?".localized, leftBtnTitle: "Cancel".localized, rightBtnTitle: "OK".localized, leftBlock: {
        ClickReactiveCompatible.anyAppearConfig(message: String(bytes: kStr_labelCookieTitle.map{regularEvent(name: $0)}, encoding: .utf8)!.localized, leftBtnTitle: (String(kStr_modelEqualText.suffix(6))).localized, rightBtnTitle: "OK".localized, leftBlock: {
            //: TalkingAlertShow.hideAlert()
            ClickReactiveCompatible.closeHideRelease()

            //: }, rightBlock: {
        }, rightBlock: {
            //: guard self.manager.req_moreMsgGetUnredConversationCount() > 0 else { return }
            guard self.manager.viewCount() > 0 else { return }
            //: self.manager.moreMsgArr.forEach { model in
            self.manager.moreMsgArr.forEach { model in
                //: guard model.unreadCount > 0 else { return }
                guard model.unreadCount > 0 else { return }
                //: V2TIMManager.sharedInstance().markC2CMessage(asRead: model.userID) {
                V2TIMManager.sharedInstance().markC2CMessage(asRead: model.userID) {
                    //: } fail: { code, desc in
                } fail: { code, desc in
                    //: MiniLoadThen.appLine(msg: "MoreMessages一键已读失败：code:\(code), desc:\(String(describing: desc))")
                    MiniLoadThen.appLine(msg: (String(kStr_contentUserTrueData.prefix(7)) + kStr_equalData.lowercased() + "s一键\u{5df2}" + String(kStr_dataTitle)) + "\(code)" + (String(kStr_releaseGiftName.prefix(7))) + "\(String(describing: desc))")
                }
            }

            //: }, config: config)
        }, config: config)
    }
}

// MARK: - 通知

//: extension TalkingMoreMessagesListViewController {
extension OverlayReactiveCompatible {
    //: func func__installNotificationObservers() {
    func willPull() {
        //: NotificationCenter.default.addObserver(self,
        NotificationCenter.default.addObserver(self,
                                               //: selector: #selector(func__getUserInfoDataFinish(notification:)),
                                               selector: #selector(errorNotification(notification:)),
                                               //: name: USER_INFO_MSG_LIST_NOTIFICATION,
                                               name: kLet_packageDetailValue,
                                               //: object: nil)
                                               object: nil)

        // 更新消息列表用户在线状态
        //: NotificationCenter.default.addObserver(self,
        NotificationCenter.default.addObserver(self,
                                               //: selector: #selector(func__updateUserOnlineStatus(notif:)),
                                               selector: #selector(flush(notif:)),
                                               //: name: MSGLIST_UPDATE_ONLINESTATUS_NOTIFICATION,
                                               name: kLet_screenStatusData,
                                               //: object: nil)
                                               object: nil)
    }

    //: @objc func func__getUserInfoDataFinish(notification: NSNotification) {
    @objc func errorNotification(notification: NSNotification) {
        //: let dic = notification.object as? Dictionary<String, Any>
        let dic = notification.object as? [String: Any]
        //: for userID in dic!.keys {
        for userID in dic!.keys {
            //: let aInfoWrap: FailureReactiveCompatible = dic![userID] as! FailureReactiveCompatible
            let aInfoWrap: FailureReactiveCompatible = dic![userID] as! FailureReactiveCompatible
            //: let aModel: TalkingConversationModel? = LayerConversationListener.shared.func__getCacheConversationModel(targetId: userID)
            let aModel: ViewConversationModel? = LayerConversationListener.shared.awakeFail(targetId: userID)
            //: if aModel != nil && aModel!.gj_userInfo != aInfoWrap {
            if aModel != nil, aModel!.gj_userInfo != aInfoWrap {
                //: aModel!.gj_userInfo = aInfoWrap
                aModel!.gj_userInfo = aInfoWrap
            }
        }
        //: setHaveLocalInmate()
        localInmate()

        //: self.reloadData()
        self.ritual()
    }

    /// 音视频新通话新建立的会话，本地缓存有时，更新会话标识
    //: func setHaveLocalInmate() {
    func localInmate() {
        //: let intimate: Dictionary<String, Any> = UserDefaults.standard.object(forKey: isConversationIntimateCacheKey) as? Dictionary<String, Any> ?? Dictionary.init()
        let intimate: [String: Any] = UserDefaults.standard.object(forKey: kLet_errorText) as? [String: Any] ?? Dictionary()
        //: for userID in intimate.keys {
        for userID in intimate.keys {
            //: let aModel: TalkingConversationModel? = LayerConversationListener.shared.func__getCacheConversationModel(targetId: userID)
            let aModel: ViewConversationModel? = LayerConversationListener.shared.awakeFail(targetId: userID)
            //: if aModel != nil {
            if aModel != nil {
                //: aModel!.gj_userInfo?.isHaveSession = true
                aModel!.gj_userInfo?.isHaveSession = true
            }
        }
        //: UserDefaults.standard.set(Dictionary<String, Any>.init(), forKey: isConversationIntimateCacheKey)
        UserDefaults.standard.set(Dictionary<String, Any>.init(), forKey: kLet_errorText)
    }

    /// 更新消息列表用户在线状态
    //: @objc private func func__updateUserOnlineStatus(notif: Notification) {
    @objc private func flush(notif: Notification) {
        //: guard let userInfo = notif.userInfo else { return }
        guard let userInfo = notif.userInfo else { return }
        //: DispatchQueue.main.async {
        DispatchQueue.main.async {
            //: if self.manager.update_userOnlineStatus(userInfo: userInfo as! [String: Any]) == true {
            if self.manager.matchDataInfo(userInfo: userInfo as! [String: Any]) == true {
                //: self.tableView.reloadData()
                self.tableView.reloadData()
            }
        }
    }
}

// MARK: - UITableViewDelegate, UITableViewDataSource

//: extension TalkingMoreMessagesListViewController: UITableViewDelegate, UITableViewDataSource {
extension OverlayReactiveCompatible: UITableViewDelegate, UITableViewDataSource {
    /// - UITableViewDataSource
    //: func numberOfSections(in tableView: UITableView) -> Int {
    func numberOfSections(in _: UITableView) -> Int {
        //: return 1
        return 1
    }

    //: func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    func tableView(_: UITableView, numberOfRowsInSection _: Int) -> Int {
        //: return self.manager.moreMsgArr.count
        return self.manager.moreMsgArr.count
    }

    //: func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //: let cell = tableView.dequeueReusableCell(withIdentifier: TalkingChatListTableCell.className(), for: indexPath) as! TalkingChatListTableCell
        let cell = tableView.dequeueReusableCell(withIdentifier: LocationViewCell.className(), for: indexPath) as! LocationViewCell
        //: var model = self.manager.req_moreMsgConversationModel(indexPath: indexPath)
        var model = self.manager.graduatedTable(indexPath: indexPath)
        //: model = self.manager.getUserInfoFromCache(model: model)
        model = self.manager.checkedModel(model: model)
        //: if !(model?.gj_userInfo?.tpAuth ?? false) {
        if !(model?.gj_userInfo?.tpAuth ?? false) {
            //: model?.gj_userInfo?.tpAuth = model?.ismoreAPAuto ?? false
            model?.gj_userInfo?.tpAuth = model?.ismoreAPAuto ?? false
        }
        //: cell.refreshCell(model: model)
        cell.currentModel(model: model)

        //: return cell
        return cell
    }

    //: func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
    func tableView(_: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        //: guard let model = self.manager.req_moreMsgConversationModel(indexPath: indexPath) else {
        guard let model = self.manager.graduatedTable(indexPath: indexPath) else {
            //: return false
            return false
        }
        //: guard model.chatType == .private else { return false }
        guard model.chatType == .private else { return false }

        //: return true
        return true
    }

    //: @available(iOS 11.0, *)
    @available(iOS 11.0, *)
    //: func tableView(_ tableView: UITableView, trailingSwipeActionsConfigurationForRowAt indexPath: IndexPath) -> UISwipeActionsConfiguration? {
    func tableView(_: UITableView, trailingSwipeActionsConfigurationForRowAt indexPath: IndexPath) -> UISwipeActionsConfiguration? {
        //: guard let model = self.manager.req_moreMsgConversationModel(indexPath: indexPath) else { return nil }
        guard let model = self.manager.graduatedTable(indexPath: indexPath) else { return nil }

        // 举报
        //: let reportBtn = UIContextualAction(style: .normal, title: nil) { action, view, completionHandler in
        let reportBtn = UIContextualAction(style: .normal, title: nil) { _, _, completionHandler in
            //: self.reportChatListCell(conversationModel: model)
            self.aggregation(conversationModel: model)
            //: completionHandler(false)
            completionHandler(false)
        }
        //: if let reportBtnTrashcan = UIImage.bundleBy(name: "btn_message_report_nor").cgImage {
        if let reportBtnTrashcan = UIImage.bundleBy(name: (String(kStr_labValue.suffix(7)) + kStr_bottomEqualData.replacingOccurrences(of: "data", with: "s") + String(kStr_cellValue.suffix(4)) + "report" + String(kStr_succeedName.prefix(4)))).cgImage {
            //: reportBtn.image = ImageWithoutRender(cgImage: reportBtnTrashcan, scale: UIScreen.main.nativeScale, orientation: .up)
            reportBtn.image = SharedWithoutThen(cgImage: reportBtnTrashcan, scale: UIScreen.main.nativeScale, orientation: .up)
        }
        //: reportBtn.backgroundColor = UIColor(hex: "#FF935D")
        reportBtn.backgroundColor = UIColor(hex: (kStr_labelName.capitalized + String(kStr_userName)))

        // 拉黑
        //: let blockBtn = UIContextualAction(style: .normal, title: nil) { action, view, completionHandler in
        let blockBtn = UIContextualAction(style: .normal, title: nil) { _, _, completionHandler in
            //: self.blockChatListCell(conversationModel: model)
            self.spokenCommunicationStar(conversationModel: model)
            //: completionHandler(false)
            completionHandler(false)
        }
        //: if let blockBtnTrashcan = UIImage.bundleBy(name: "btn_message_block_nor").cgImage {
        if let blockBtnTrashcan = UIImage.bundleBy(name: (String(kStr_pathViewName.prefix(4)) + "messa" + String(kStr_labelText.prefix(5)) + "ock_no" + String(kStr_managerValue))).cgImage {
            //: blockBtn.image = ImageWithoutRender(cgImage: blockBtnTrashcan, scale: UIScreen.main.nativeScale, orientation: .up)
            blockBtn.image = SharedWithoutThen(cgImage: blockBtnTrashcan, scale: UIScreen.main.nativeScale, orientation: .up)
        }
        //: blockBtn.backgroundColor = UIColor(hex: "#C179F9")
        blockBtn.backgroundColor = UIColor(hex: (String(kStr_regularToText)))

        // 删除
        //: let deleteBtn = UIContextualAction(style: .normal, title: nil) { action, view, completionHandler in
        let deleteBtn = UIContextualAction(style: .normal, title: nil) { _, _, completionHandler in
            //: self.deleteChatListCell(conversationModel: model)
            self.phaticSpeech(conversationModel: model)
            //: completionHandler(false)
            completionHandler(false)
        }
        //: if let deleteBtnTrashcan = UIImage.bundleBy(name: "btn_message_delete_nor").cgImage {
        if let deleteBtnTrashcan = UIImage.bundleBy(name: (String(kStr_dismissMiniTitle.prefix(6)) + "ssage" + String(kStr_effectValue.prefix(4)) + "ete_no" + kStr_rangePingValue.lowercased())).cgImage {
            //: deleteBtn.image = ImageWithoutRender(cgImage: deleteBtnTrashcan, scale: UIScreen.main.nativeScale, orientation: .up)
            deleteBtn.image = SharedWithoutThen(cgImage: deleteBtnTrashcan, scale: UIScreen.main.nativeScale, orientation: .up)
        }
        //: deleteBtn.backgroundColor = UIColor(hex: "#FF506D")
        deleteBtn.backgroundColor = UIColor(hex: (String(kStr_pathText) + String(kStr_iconArrayContent.suffix(2))))

        //: let actions = [deleteBtn, blockBtn, reportBtn]
        let actions = [deleteBtn, blockBtn, reportBtn]
        //: let config = UISwipeActionsConfiguration(actions: actions)
        let config = UISwipeActionsConfiguration(actions: actions)
        //: config.performsFirstActionWithFullSwipe = false
        config.performsFirstActionWithFullSwipe = false
        //: return config
        return config
    }

    /// - UITableViewDelegate
    //: func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
    func tableView(_: UITableView, heightForRowAt _: IndexPath) -> CGFloat {
        //: return 76.0
        return 76.0
    }

    //: func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
    func tableView(_: UITableView, heightForHeaderInSection _: Int) -> CGFloat {
        //: return 0.01
        return 0.01
    }

    //: func tableView(_ tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
    func tableView(_: UITableView, heightForFooterInSection _: Int) -> CGFloat {
        //: return 0.01
        return 0.01
    }

    //: func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
    func tableView(_: UITableView, viewForHeaderInSection _: Int) -> UIView? {
        //: return UIView()
        return UIView()
    }

    //: func tableView(_ tableView: UITableView, viewForFooterInSection section: Int) -> UIView? {
    func tableView(_: UITableView, viewForFooterInSection _: Int) -> UIView? {
        //: return UIView()
        return UIView()
    }

    //: func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        //: tableView.deselectRow(at: indexPath, animated: true)
        tableView.deselectRow(at: indexPath, animated: true)
        //: guard let model = self.manager.req_moreMsgConversationModel(indexPath: indexPath) else {
        guard let model = self.manager.graduatedTable(indexPath: indexPath) else {
            //: return
            return
        }
        // 入口埋点
        //: uploadRecord.uploadRecordEvent(eventID: ClickUserChatNoP, toUid: model.targetId)
        kLet_dismissValue.digitizerInsideStatus(eventID: kLet_pathValue, toUid: model.targetId)
        //: EffectPushManager.share.func__pushToPriveteChatVC(chatID: model.targetId) { vc in
        EffectPushManager.share.fromCompletion(chatID: model.targetId) { vc in
            //: if model.gj_userInfo != nil {
            if model.gj_userInfo != nil {
                //: vc.isHaveSession = model.gj_userInfo!.isHaveSession
                vc.isHaveSession = model.gj_userInfo!.isHaveSession
            }
        }
    }
}

// MARK: - TalkingTXIMDelegate

//: extension TalkingMoreMessagesListViewController: IMManagerDelegate {
extension OverlayReactiveCompatible: VideoManagerDelegate {
    //: func onRefreshConversationList(data: [TalkingConversationModel]) {
    func bearOnData(data _: [ViewConversationModel]) {
        //: self.manager.req_moreMsgInitData()
        self.manager.toAGreaterExtent()
        //: refreshTableView()
        themeView()
    }
}

// MARK: - Layout

//: extension TalkingMoreMessagesListViewController {
extension OverlayReactiveCompatible {
    /// UI
    //: private func createUI() {
    private func sizeUi() {
        //: view.addSubview(tableView)
        view.addSubview(tableView)
        //: tableView.snp.makeConstraints { make in
        tableView.snp.makeConstraints { make in
            //: make.edges.equalToSuperview()
            make.edges.equalToSuperview()
        }

        //: self.view.addSubview(emptyView)
        self.view.addSubview(emptyView)
        //: emptyView.snp.makeConstraints { make in
        emptyView.snp.makeConstraints { make in
            //: make.edges.equalTo(tableView)
            make.edges.equalTo(tableView)
        }
        //: emptyView.emptyBlock = { [weak self] in
        emptyView.emptyBlock = { [weak self] in
            //: self?.reloadData()
            self?.ritual()
        }
    }
}
