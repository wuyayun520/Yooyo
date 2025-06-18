
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let kStr_norResignName:[UInt8] = [0x48,0x4f,0x48,0x55,0x9,0x42,0x4e,0x45,0x44,0x53,0x1b,0x8,0x1,0x49,0x40,0x52,0x1,0x4f,0x4e,0x55,0x1,0x43,0x44,0x44,0x4f,0x1,0x48,0x4c,0x51,0x4d,0x44,0x4c,0x44,0x4f,0x55,0x44,0x45]

private func makePath(index num: UInt8) -> UInt8 {
    return num ^ 33
}

/*: "#EEEEEE" :*/
fileprivate let kStr_fieldData:String = "content title equal color#EEEEEE"

/*: "tabBar" :*/
fileprivate let kStr_toText:[Character] = ["t","a","b","B","a","r"]

/*: "home" :*/
fileprivate let kStr_viewMakeValue:String = "hocolor"

/*: "user" :*/
fileprivate let kStr_userLoadAddValue:String = "udataer"

/*: "icon" :*/
fileprivate let kStr_borderContent:[Character] = ["i","c","o","n"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  TableViewHasDelegate.swift
//  AbroadTalking
//
//  Created by Hemming on 2022/1/20.
//

//: import UIKit
import UIKit

//: class TalkingTabBarViewController: UITabBarController, UITabBarControllerDelegate {
class TableViewHasDelegate: UITabBarController, UITabBarControllerDelegate {
    //: var tabBarVCType: TarBarControllerViewType?
    var tabBarVCType: BackViewType?
    //: var tabBarView = TalkingTabBar()
    var tabBarView = UpHasDelegate()

    //: init(tabBarType: TarBarControllerViewType) {
    init(tabBarType: BackViewType) {
        //: super.init(nibName: nil, bundle: nil)
        super.init(nibName: nil, bundle: nil)
        //: self.delegate = self
        self.delegate = self
        //: self.tabBarVCType = tabBarType
        self.tabBarVCType = tabBarType
        //: if tabBarType == .Taking {
        if tabBarType == .Taking {
            //: setupTabBar()
            secondHandSpeech()
            //: ProgressHUD.show()
            TintProgressHUD.weight()
            //: AppManagerRequest.func__requestUserInfo { succeed, result, errorModel in
            SubThen.channel { succeed, _, _ in
                //: ProgressHUD.dismiss()
                TintProgressHUD.inkingPadDismiss()
                //: LayerConversationListener.shared.func__addDelegate(self)
                LayerConversationListener.shared.afterStatus(self)
                //: let tarItemTypes = self.tabBarConentTypes()
                let tarItemTypes = self.allEqualTypes()
                //: self.tabBarView.setupItemsWithArr(itemTypes: tarItemTypes as! Array<TabBarItemType>)
                self.tabBarView.colorTypes(itemTypes: tarItemTypes as! [PubSendable])
                //: self.func__setupControllersWith(itemTypes: tarItemTypes)
                self.giftTypes(itemTypes: tarItemTypes)
                //: if LocationThen.share.loginUserMode.sex == Gender.male.rawValue && LocationThen.share.appStatus == AppSkinStatus.normal.rawValue {
                if LocationThen.share.loginUserMode.sex == SucceedComparable.male.rawValue && LocationThen.share.appStatus == SharedInsetTarget.normal.rawValue {
                    //: self.selectTabbar(type: 0)
                    self.indexType(type: 0)
                }
                //: self.func__configViewDidLoad()
                self.config()

                //: if succeed && LocationThen.share.loginUserMode.remindBindEmail == true {
                if succeed && LocationThen.share.loginUserMode.remindBindEmail == true { // 需要绑定邮箱
                    //: DispatchQueue.main.asyncAfter(deadline: .now()+0.5) {
                    DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
                        //: EffectPushManager.share.func__pushToLockUserEmailVC(isShowBack: false)
                        EffectPushManager.share.emphasizing(isShowBack: false)
                    }
                }
            }
            //: } else {
        } else {
            //: func__setupControllersWith(itemTypes: self.tabBarConentTypes())
            giftTypes(itemTypes: self.allEqualTypes())
        }
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: kStr_norResignName.map{makePath(index: $0)}, encoding: .utf8)!)
    }

    //: deinit {
    deinit {
        //: NotificationCenter.default.removeObserver(self)
        NotificationCenter.default.removeObserver(self)
    }

    //: override func viewDidLoad() {
    override func viewDidLoad() {
        //: super.viewDidLoad()
        super.viewDidLoad()
        /// H5刷新index/getConfig配置信息接口
        //: NotificationCenter.default.addObserver(self,
        NotificationCenter.default.addObserver(self,
                                               //: selector: #selector(func__getLoginUserConfig),
                                               selector: #selector(commentEnter),
                                               //: name: REFRESH_INDEX_GETCONFIG_NOTIFICATION,
                                               name: kLet_maxTitle,
                                               //: object: nil)
                                               object: nil)

        /// 直播状态变更通知
        //: NotificationCenter.default.addObserver(self,
        NotificationCenter.default.addObserver(self,
                                               //: selector: #selector(switchLiveTabBarImage),
                                               selector: #selector(tenantState),
                                               //: name: LIVE_STATUS_CHANGE_NOTIFICATION,
                                               name: kLet_appData,
                                               //: object: nil)
                                               object: nil)

        //: NotificationCenter.default.addObserver(self,
        NotificationCenter.default.addObserver(self,
                                               //: selector: #selector(openLive),
                                               selector: #selector(readPrepare),
                                               //: name: LIVE_NEED_OPEN_NOTIFICATION,
                                               name: kLet_meTitle,
                                               //: object: nil)
                                               object: nil)

        /// 语聊房状态变更通知
        //: NotificationCenter.default.addObserver(self,
        NotificationCenter.default.addObserver(self,
                                               //: selector: #selector(switchLiveTabBarImage),
                                               selector: #selector(tenantState),
                                               //: name: PARTY_STATUS_CHANGE_NOTIFICATION,
                                               name: kLet_screenTitle,
                                               //: object: nil)
                                               object: nil)

        //: NotificationCenter.default.addObserver(self,
        NotificationCenter.default.addObserver(self,
                                               //: selector: #selector(switchTabbarHomeParty),
                                               selector: #selector(motile),
                                               //: name: SWITCH_TABBAR_HOME_PARTY_NOTIFICATION,
                                               name: kLet_packageTitle,
                                               //: object: nil)
                                               object: nil)
    }

    //: override func viewDidLayoutSubviews() {
    override func viewDidLayoutSubviews() {
        //: super.viewDidLayoutSubviews()
        super.viewDidLayoutSubviews()
        //: tabBar.frame = CGRect(origin: CGPoint(x: 0, y: ScreenHeight-TabBarViewHeight), size: CGSize(width: ScreenWidth, height: TabBarViewHeight))
        tabBar.frame = CGRect(origin: CGPoint(x: 0, y: kLet_noSeatName - kLet_screenContent), size: CGSize(width: kLet_halfData, height: kLet_screenContent))
    }

    /// 初始化tabbar
    //: func setupTabBar() {
    func secondHandSpeech() {
        //: tabBarView.frame = CGRect(origin: CGPoint(x: 0, y: ScreenHeight-TabBarViewHeight), size: CGSize(width: ScreenWidth, height: TabBarViewHeight))
        tabBarView.frame = CGRect(origin: CGPoint(x: 0, y: kLet_noSeatName - kLet_screenContent), size: CGSize(width: kLet_halfData, height: kLet_screenContent))
        //: tabBarView.backgroundColor = .white
        tabBarView.backgroundColor = .white
        //: let backgroundImage = UIImage.imageFillColor(color: .white, size: CGSize(width: ScreenWidth, height: TabBarViewHeight))
        let backgroundImage = UIImage.untilSkinColour(color: .white, size: CGSize(width: kLet_halfData, height: kLet_screenContent))
        //: tabBarView.backgroundImage = backgroundImage
        tabBarView.backgroundImage = backgroundImage

        //: let shadowImage = UIImage.imageFillColor(color: UIColor(hex: "#EEEEEE")!, size: CGSize(width: ScreenWidth, height: 0.5))
        let shadowImage = UIImage.untilSkinColour(color: UIColor(hex: (String(kStr_fieldData.suffix(7))))!, size: CGSize(width: kLet_halfData, height: 0.5))
        //: tabBarView.shadowImage = shadowImage
        tabBarView.shadowImage = shadowImage

        //: if #available(iOS 13.0, *) {
        if #available(iOS 13.0, *) {
            //: let tabBarAppearance = UITabBarAppearance()
            let tabBarAppearance = UITabBarAppearance()
            //: tabBarAppearance.backgroundColor = .white
            tabBarAppearance.backgroundColor = .white
            //: tabBarAppearance.backgroundEffect = nil
            tabBarAppearance.backgroundEffect = nil
            //: tabBarAppearance.shadowColor = UIColor.separatorLineColor()
            tabBarAppearance.shadowColor = UIColor.achromaticColour()
            //: tabBarView.standardAppearance = tabBarAppearance
            tabBarView.standardAppearance = tabBarAppearance
        }
        //: setValue(tabBarView, forKey: "tabBar")
        setValue(tabBarView, forKey: (String(kStr_toText)))
    }

    //: func tabBarConentTypes() -> NSArray {
    func allEqualTypes() -> NSArray {
        //: if tabBarVCType == TarBarControllerViewType.Login {
        if tabBarVCType == BackViewType.Login {
            //: return [TabBarItemType.Login]
            return [PubSendable.Login]
            //: } else {
        } else {
            //: if LocationThen.share.appStatus == AppSkinStatus.special.rawValue {
            if LocationThen.share.appStatus == SharedInsetTarget.special.rawValue {
                //: return [TabBarItemType.Social,
                return [PubSendable.Social,
                        //: TabBarItemType.Moment,
                        PubSendable.Moment,
                        //: TabBarItemType.Message,
                        PubSendable.Message,
                        //: TabBarItemType.Account]
                        PubSendable.Account]
                //: } else {
            } else {
                //: if LocationThen.share.loginUserMode.sex == Gender.female.rawValue {
                if LocationThen.share.loginUserMode.sex == SucceedComparable.female.rawValue { // 女性
                    //: return [TabBarItemType.Social,
                    return [PubSendable.Social,
                            //: TabBarItemType.Moment,
                            PubSendable.Moment,
                            //: TabBarItemType.Live,
                            PubSendable.Live,
                            //: TabBarItemType.Message,
                            PubSendable.Message,
                            //: TabBarItemType.Account]
                            PubSendable.Account]
                    //: } else {
                } else { // 男性
                    //: return [TabBarItemType.Social,
                    return [PubSendable.Social,
                            //: TabBarItemType.Moment,
                            PubSendable.Moment,
                            //: TabBarItemType.Randow,
                            PubSendable.Randow,
                            //: TabBarItemType.Message,
                            PubSendable.Message,
                            //: TabBarItemType.Account]
                            PubSendable.Account]
                }
            }
        }
    }

    //: func func__setupControllersWith(itemTypes: NSArray) {
    func giftTypes(itemTypes: NSArray) {
        //: let tmp = NSMutableArray()
        let tmp = NSMutableArray()
        //: for itemType in itemTypes {
        for itemType in itemTypes {
            //: let VC = rootViewControllerFor(itemType: itemType as! TabBarItemType)
            let VC = farType(itemType: itemType as! PubSendable)
            //: let navVC = TalkingNavigationController(rootViewController: VC)
            let navVC = EngineControllerDelegate(rootViewController: VC)
            //: navVC.tabBarType = (itemType as! TabBarItemType)
            navVC.tabBarType = (itemType as! PubSendable)
            //: tmp.add(navVC)
            tmp.add(navVC)
        }
        //: setViewControllers(tmp as? [UIViewController], animated: true)
        setViewControllers(tmp as? [UIViewController], animated: true)
    }

    //: func rootViewControllerFor(itemType: TabBarItemType) -> UIViewController {
    func farType(itemType: PubSendable) -> UIViewController {
        //: let ret: UIViewController
        let ret: UIViewController
        //: switch itemType {
        switch itemType {
        //: case .Social:
        case .Social:
            //: ret = TalkingSocialViewController()
            ret = ImpressionThen()

        //: case .Moment:
        case .Moment:
            //: ret = TalkingMomentViewController()
            ret = DataReactiveCompatible()

        //: case .FreeMoment:
        case .FreeMoment:
            //: ret = UIViewController()
            ret = UIViewController()
            /// 使用view，会导致VC的viewDidLoad调用，避免别的控制器没显示时，就调用viewDidLoad
            /// 虚拟的VC根据tag，正常的VC可以根据class判断

        //: case .Live:
        case .Live:
            //: ret = UIViewController()
            ret = UIViewController()

        //: case .Message:
        case .Message:
            //: ret = TalkingMessageViewController()
            ret = MessageReactiveCompatible()

        //: case .Account:
        case .Account:
            //: ret = TalkingMeViewController()
            ret = ControllerMeForefrontQualityViewDelegate()

        //: case .Login:
        case .Login:
            //: ret = TalkingLoginMainViewController()
            ret = SizeViewController()
            //: ret.hidesBottomBarWhenPushed = true
            ret.hidesBottomBarWhenPushed = true

        //: case .Randow:
        case .Randow:
            //: ret = TalkingMaleStaticRandomVideoVC()
            ret = IsoclinalViewController()

        //: case .meet:
        case .meet:
            //: ret = UIViewController()
            ret = UIViewController()
        }

        //: ret.view.tag = itemType.rawValue
        ret.view.tag = itemType.rawValue
        //: return ret
        return ret
    }

    //: override var selectedViewController: UIViewController? {
    override var selectedViewController: UIViewController? {
        //: willSet {
        willSet {
            //: let nav = newValue as! TalkingNavigationController
            let nav = newValue as! EngineControllerDelegate
            //: tabBarView.setSelectedTabItem(itemType: nav.tabBarType!)
            tabBarView.inner(itemType: nav.tabBarType!)
        }
    }
}

// MARK: - Event

//: extension TalkingTabBarViewController {
extension TableViewHasDelegate {
    /// 切换到tab-party
    //: @objc func switchTabbarHomeParty() {
    @objc func motile() {
        //: getNavigationController()?.popToRootViewController(animated: false)
        showBorder()?.popToRootViewController(animated: false)
        //: selectTabbar(type: 0)
        indexType(type: 0)
        //: if let vc = currentViewController(), vc is TalkingSocialViewController {
        if let vc = giftFew(), vc is ImpressionThen {
            //: (vc as! TalkingSocialViewController).switchParty()
            (vc as! ImpressionThen).shoveMake()
        }
    }

    /// tabbar直播按钮点击事件
    //: @objc private func liveButtonClick() {
    @objc private func anCrushPush() {
        //: guard TalkingVoiceRoomManager.shared().isParty == false else {
        guard SubCheckedReactiveCompatible.replyShared().isParty == false else { // 语聊房
            //: if String(TalkingVoiceRoomManager.shared().partyModel.streamerInfo.uid) == LocationThen.share.loginUid {
            if String(SubCheckedReactiveCompatible.replyShared().partyModel.streamerInfo.uid) == LocationThen.share.loginUid {
                //: TalkingVoiceRoomManager.shared().voiceRoom_goback()
                SubCheckedReactiveCompatible.replyShared().reaction()
                //: } else {
            } else {
                //: func__showStatusBarErrorMsg(showMsg: kMessage_party_limit)
                detailDownArray(showMsg: kLet_videoValue)
            }
            //: return
            return
        }
        //: guard TalkingLiveManager.shared().isLive == false else {
        guard VideoPushListener.isGesture().isLive == false else { // 直播间
            //: func__showStatusBarErrorMsg(showMsg: kMessage_live_limit)
            detailDownArray(showMsg: kLet_serverValue)
            //: return
            return
        }
        //: let tabView = TalkingTabLiveView()
        let tabView = LayerBackView()
        //: tabView.show()
        tabView.muff()
    }

    //: func func__configViewDidLoad() {
    func config() {
        //: TalkingAPNSManager.share.func__listenAPNSInit()
        LayerTalkingManager.share.statusInit()
        //: AppManagerRequest.func__reportDeviceID()
        SubThen.reportFuncBreathingApparatus()
        //: func__getLoginUserConfig(true)
        commentEnter(true)
    }

    //: func selectTabbar(type: Int) {
    func indexType(type: Int) {
        //: guard type < viewControllers?.count ?? 0 else { return }
        guard type < viewControllers?.count ?? 0 else { return }
        //: let vc = viewControllers?[type]
        let vc = viewControllers?[type]
        //: selectedIndex = type
        selectedIndex = type
        //: selectedViewController = vc
        selectedViewController = vc
    }

    /// 切换直播tabBar图标
    //: @objc private func switchLiveTabBarImage() {
    @objc private func tenantState() {
        //: tabBarView.switchLiveTabBarImage()
        tabBarView.betweenTo()
    }

    /// 唤起直播功能
    //: @objc private func openLive() {
    @objc private func readPrepare() {
        //: guard TalkingPermissionTool.isLiveOrPartyActive() == false else { return }
        guard PerspectiveThen.blockMonth() == false else { return }

        // 展示说明页（如果展示过，则直接开播）
        //: let isShow = Defaults.bool(forKey: TalkingLiveTabExplainIsShow)
        let isShow = kLet_managerValue.bool(forKey: kLet_inputText)
        //: guard isShow != true else {
        guard isShow != true else {
            //: TalkingLiveManager.shared().checkLiveAuthAndTurnOn()
            VideoPushListener.isGesture().nurseLogHandler()
            //: return
            return
        }
        //: Defaults.set(true, forKey: TalkingLiveTabExplainIsShow)
        kLet_managerValue.set(true, forKey: kLet_inputText)
        //: let explainView = TalkingLiveExplainViewController()
        let explainView = EnumerateViewController()
        //: explainView.modalPresentationStyle = .fullScreen
        explainView.modalPresentationStyle = .fullScreen
        //: present(explainView, animated: true)
        present(explainView, animated: true)
    }

    /// 切换RandowtabBar图标
    //: @objc private func switchRandowTabBarImage(isHidde: Bool) {
    @objc private func lastExecute(isHidde: Bool) {
        //: tabBarView.switchRandowTabBarImage(isHidde: isHidde)
        tabBarView.showSpeakerHidde(isHidde: isHidde)
    }

    /// 连接socket
    //: private func linkWebCocket() {
    private func validWindowCocket() {
        // 连接socket【放在这里是为了保证app/getConfig调用成功拿到ws信息】
        //: TalkingSocketManager.shared.updateWebSocket()
        ToSocketManager.shared.statusSocket()
    }

    /// 切换tab时判断是否需要展示直播开播提醒弹窗
    /// - Returns: 是否展示结果
    //: @discardableResult
    @discardableResult
    //: private func needShowLiveAlertView(type: TabBarItemType = .Social) -> Bool {
    private func beyondButton(type: PubSendable = .Social) -> Bool {
        //: guard LocationThen.share.appStatus == AppSkinStatus.normal.rawValue else { return false }
        guard LocationThen.share.appStatus == SharedInsetTarget.normal.rawValue else { return false }
        //: guard LocationThen.share.loginUserMode.sex == Gender.female.rawValue else { return false }
        guard LocationThen.share.loginUserMode.sex == SucceedComparable.female.rawValue else { return false }
        //: guard LocationThen.share.appUserConfigMode.userCountryType == 1 else { return false }
        guard LocationThen.share.appUserConfigMode.userCountryType == 1 else { return false }
        //: guard LocationThen.share.appUserConfigMode.popLiveTabArr.count > 0 else { return false }
        guard LocationThen.share.appUserConfigMode.popLiveTabArr.count > 0 else { return false }
        //: guard !TalkingVoiceRoomManager.shared().isParty,
        guard !SubCheckedReactiveCompatible.replyShared().isParty,
              //: !TalkingLiveManager.shared().isLive,
              !VideoPushListener.isGesture().isLive,
              //: !TalkingSocketManager.shared.isTalking,
              !ToSocketManager.shared.isTalking,
              //: !TalkingSocketManager.shared.isCalling else { return false }
              !ToSocketManager.shared.isCalling else { return false }
        //: let arr = LocationThen.share.appUserConfigMode.popLiveTabArr
        let arr = LocationThen.share.appUserConfigMode.popLiveTabArr
        //: let shouldShowPopup = (arr.contains("1") && type == .Social) ||
        let shouldShowPopup = (arr.contains("1") && type == .Social) ||
            //: (arr.contains("2") && type == .Moment) ||
            (arr.contains("2") && type == .Moment) ||
            //: (arr.contains("3") && type == .Message)
            (arr.contains("3") && type == .Message)
        //: if shouldShowPopup {
        if shouldShowPopup {
            //: TalkingPopupWindowManager.shared.startLivePopUpWindow()
            ClientBottomReactiveCompatible.shared.equalWindow()
            //: return true
            return true
        }

        //: return false
        return false
    }
}

// MARK: - 通知事件

//: extension TalkingTabBarViewController {
extension TableViewHasDelegate {
    /// 更新index/getConfig接口
    /// - Parameter showLiveToast: 是否展示live提示（只有创建Tab时展示）
    //: @objc func func__getLoginUserConfig(_ showLiveToast: Bool = false) {
    @objc func commentEnter(_ showLiveToast: Bool = false) {
        //: AppManagerRequest.func__requestUserConfig { succeed, _, _ in
        SubThen.imageDomain { succeed, _, _ in
            //: if showLiveToast {
            if showLiveToast {
                // 连接socket
                //: self.linkWebCocket()
                self.validWindowCocket()
                //: if LocationThen.share.appStatus == AppSkinStatus.normal.rawValue {
                if LocationThen.share.appStatus == SharedInsetTarget.normal.rawValue {
                    //: self.tabBarView.showFemaleLiveTurnOnToast()
                    self.tabBarView.takeApart()
                    //: self.needShowLiveAlertView()
                    self.beyondButton()
                    //: self.func__selectClubTabbar()
                    self.toValue()
                }
                //: if succeed {
                if succeed {
                    //: self.func__reqPopUpWindow()
                    self.transomWindow()
                }
            }
        }
    }

    //: func func__selectClubTabbar() {
    func toValue() {
        //: if LocationThen.share.loginUserMode.jumpType == 1 {
        if LocationThen.share.loginUserMode.jumpType == 1 {
            //: return
            return
        }
        //: switchRandowTabBarImage(isHidde: true)
        lastExecute(isHidde: true)
        //: if LocationThen.share.loginUserMode.sex == Gender.male.rawValue, LocationThen.share.appUserConfigMode.homeTab == "home" {
        if LocationThen.share.loginUserMode.sex == SucceedComparable.male.rawValue, LocationThen.share.appUserConfigMode.homeTab == (kStr_viewMakeValue.replacingOccurrences(of: "color", with: "me")) {
            //: let type = 2
            let type = 2
            //: selectTabbar(type: type)
            indexType(type: type)
            //: switchRandowTabBarImage(isHidde: false)
            lastExecute(isHidde: false)
        }
    }

    /// 弹窗
    //: func func__reqPopUpWindow() {
    func transomWindow() {
        //: guard LocationThen.share.loginUserMode.updateInfo == true else {
        guard LocationThen.share.loginUserMode.updateInfo == true else {
            //: return
            return
        }
        //: let manager = TalkingPopupWindowManager.shared
        let manager = ClientBottomReactiveCompatible.shared
        //: manager.setHomePopUpWindow()
        manager.toGame()

        //: if LocationThen.share.loginUserMode.jumpType == 2, LocationThen.share.loginUserMode.sex == Gender.male.rawValue {
        if LocationThen.share.loginUserMode.jumpType == 2, LocationThen.share.loginUserMode.sex == SucceedComparable.male.rawValue {
            /// 主动拨打视频弹窗
            //: TalkingVideoInitivCallManager.shared.setObserver()
            LocationPathReactiveCompatible.shared.moveTotaloObserver()
        }
    }
}

// MARK: - UITabBarControllerDelegate

//: extension TalkingTabBarViewController {
extension TableViewHasDelegate {
    //: func tabBarController(_ tabBarController: UITabBarController, shouldSelect viewController: UIViewController) -> Bool {
    func tabBarController(_: UITabBarController, shouldSelect viewController: UIViewController) -> Bool {
        //: if LocationThen.share.appStatus == AppSkinStatus.special.rawValue {
        if LocationThen.share.appStatus == SharedInsetTarget.special.rawValue {
            //: return true
            return true
        }
        //: if let vc = viewController.children.first, let tabbarType = TabBarItemType(rawValue: vc.view.tag) {
        if let vc = viewController.children.first, let tabbarType = PubSendable(rawValue: vc.view.tag) {
            // 点击直播虚拟按钮，不切换tabbar
            //: if tabbarType == .Live {
            if tabbarType == .Live {
                //: liveButtonClick()
                anCrushPush()
                //: return false
                return false
            }
            //: switchRandowTabBarImage(isHidde: tabbarType != .Randow)
            lastExecute(isHidde: tabbarType != .Randow)
            // 展示直播开播提醒弹窗，不切换tabbar
            //: if needShowLiveAlertView(type: tabbarType) {
            if beyondButton(type: tabbarType) {
                //: return false
                return false
            }
        }

        //: return true
        return true
    }

    //: func tabBarController(_ tabBarController: UITabBarController, didSelect viewController: UIViewController) {
    func tabBarController(_ tabBarController: UITabBarController, didSelect viewController: UIViewController) {
        //: if tabBarView.isHidden {
        if tabBarView.isHidden {
            //: tabBarView.isHidden = false
            tabBarView.isHidden = false
        }

        //: if LocationThen.share.appStatus == AppSkinStatus.special.rawValue {
        if LocationThen.share.appStatus == SharedInsetTarget.special.rawValue {
            //: return
            return
        }

        //: uploadTabSelete()
        textSelete()

        // 消息列表切换到Intimate时，再次切回要默认选中all
        //: if tabBarView.currentTabType == TabBarItemType.Message.rawValue {
        if tabBarView.currentTabType == PubSendable.Message.rawValue {
            //: let vc = viewController.children.first as? TalkingMessageViewController
            let vc = viewController.children.first as? MessageReactiveCompatible
            //: if vc?.isNoChangeTop == false {
            if vc?.isNoChangeTop == false {
                //: vc?.isNoChangeTop = true
                vc?.isNoChangeTop = true
                //: vc?.setIsTopAll()
                vc?.userOfAll()
            }
            //: } else {
        } else {
            //: if let vcArrs = tabBarController.viewControllers {
            if let vcArrs = tabBarController.viewControllers {
                //: for vc in vcArrs {
                for vc in vcArrs {
                    //: if let firstVc = vc.children.first {
                    if let firstVc = vc.children.first {
                        //: if firstVc.isKind(of: TalkingMessageViewController.self) {
                        if firstVc.isKind(of: MessageReactiveCompatible.self) {
                            //: (firstVc as! TalkingMessageViewController).isNoChangeTop = false
                            (firstVc as! MessageReactiveCompatible).isNoChangeTop = false
                            //: break
                            break
                        }
                    }
                }
            }
        }
    }

    //: func uploadTabSelete() {
    func textSelete() {
        //: switch tabBarView.currentTabType {
        switch tabBarView.currentTabType {
        //: case TabBarItemType.Social.rawValue:
        case PubSendable.Social.rawValue:
            //: uploadRecord.uploadRecordEvent(eventID: ClickHomeTabButton)
            kLet_dismissValue.digitizerInsideStatus(eventID: kLet_userData)
        //: case TabBarItemType.Randow.rawValue: break
        case PubSendable.Randow.rawValue: break
//            uploadRecord.uploadRecordEvent(eventID: ClickMatchTabButton)
        //: case TabBarItemType.Moment.rawValue:
        case PubSendable.Moment.rawValue:
            //: uploadRecord.uploadRecordEvent(eventID: ClickMomentTabButton)
            kLet_dismissValue.digitizerInsideStatus(eventID: kLet_intervalData)
        //: case TabBarItemType.Message.rawValue:
        case PubSendable.Message.rawValue:
            //: uploadRecord.uploadRecordEvent(eventID: ClickMassagesTabButton)
            kLet_dismissValue.digitizerInsideStatus(eventID: kLet_replaceData)
        //: case TabBarItemType.Account.rawValue:
        case PubSendable.Account.rawValue:
            //: uploadRecord.uploadRecordEvent(eventID: ClickMeTabButton)
            kLet_dismissValue.digitizerInsideStatus(eventID: kLet_serverData)
        //: default:
        default:
            //: break
            break
        }
    }
}

// MARK: - VideoManagerDelegate

//: extension TalkingTabBarViewController: IMManagerDelegate {
extension TableViewHasDelegate: VideoManagerDelegate {
    //: func onUnreadMsgCountChanged(count: Int) {
    func remark(count _: Int) {
        //: refreshUnreadIMMessageCount()
        halfVideo()
    }

    //: func onRecvNewMessage(msg: V2TIMMessage) {
    func telegram(msg: V2TIMMessage) {
        //: let extra = String(data: msg.customElem.data, encoding: .utf8)
        let extra = String(data: msg.customElem.data, encoding: .utf8)
        //: let json = JSON(parseJSON: extra!)
        let json = JSON(parseJSON: extra!)
        //: let userInfo = json["user"]
        let userInfo = json[(kStr_userLoadAddValue.replacingOccurrences(of: "data", with: "s"))]
        //: let headUrlStr = userInfo["icon"].stringValue
        let headUrlStr = userInfo[(String(kStr_borderContent))].stringValue
        //: if headUrlStr.isEmptyString {
        if headUrlStr.isEmptyString {
            //: return
            return
        }

        //: tabBarView.showNewMessageUser(headPic: headUrlStr)
        tabBarView.towardCounterval(headPic: headUrlStr)
    }

    //: func refreshUnreadIMMessageCount() {
    func halfVideo() {
        //: if LayerConversationListener.shared.isConnection {
        if LayerConversationListener.shared.isConnection {
            //: let unreadMsgCount = LocationThen.share.unreadMessageNum
            let unreadMsgCount = LocationThen.share.unreadMessageNum
            //: tabBarView.refreshBadgeLayoutWith(unread: unreadMsgCount, barType: .Message)
            tabBarView.nameCommitType(unread: unreadMsgCount, barType: .Message)
        }
    }
}
