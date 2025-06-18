
//: Declare String Begin

/*: "bg_message_top" :*/
fileprivate let kStr_ageName:[Character] = ["b","g","_","m","e","s"]
fileprivate let kStr_equalValue:String = "sastart"
fileprivate let kStr_partData:[Character] = ["e","_","t","o","p"]

/*: "777777" :*/
fileprivate let kStr_moreText:[Character] = ["7"]
fileprivate let kStr_iconValue:[Character] = ["7","7","7","7","7"]

/*: "Messages" :*/
fileprivate let kStr_albumValue:String = "bottom make stringMessages"

/*: "Who like me" :*/
fileprivate let kStr_imageLabelData:String = "make official super total stringWho"
fileprivate let kStr_sizeName:String = " like memode type"

/*: "Call" :*/
fileprivate let kStr_modelName:[Character] = ["C","a","l","l"]

/*: "#FF2348" :*/
fileprivate let kStr_indexName:[Character] = ["#","F","F","2","3","4","8"]

/*: "Current network unavailable" :*/
fileprivate let kStr_contentData:String = "var tool from valueCurr"
fileprivate let kStr_receiveValue:String = "emodelwork"
fileprivate let kStr_maleData:String = "blof"

/*: "icon_yidu_pre" :*/
fileprivate let kStr_viewKeyContent:[Character] = ["i","c","o","n","_","y","i","d","u","_","p"]
fileprivate let kStr_byText:String = "rsend"

/*: "99+" :*/
fileprivate let kStr_toText:String = "color+"

/*: "transform.rotation" :*/
fileprivate let kStr_acceptImageData:String = "tappearans"
fileprivate let kStr_labelValue:String = "ROTATION"

/*: "transform.scale" :*/
fileprivate let kStr_controlData:String = "TRAN"
fileprivate let kStr_centerName:String = ".scalekit value true"

/*: "zoom&shake" :*/
fileprivate let kStr_viewValue:[Character] = ["z","o","o","m","&","s","h"]
fileprivate let kStr_playerData:String = "akup"

/*: "yyyy-MM-dd" :*/
fileprivate let kStr_noName:[Character] = ["y","y","y","y","-","M","M","-"]
fileprivate let kStr_makeTitle:String = "DD"

/*: "Allow %@ to send you notifications?" :*/
fileprivate let kStr_dataValue:[UInt8] = [0x3f,0x73,0x6e,0x6f,0x69,0x74,0x61,0x63,0x69,0x66,0x69,0x74,0x6f,0x6e,0x20,0x75,0x6f,0x79,0x20,0x64,0x6e,0x65,0x73,0x20,0x6f,0x74,0x20,0x40,0x25,0x20,0x77,0x6f,0x6c,0x6c,0x41]

/*: "Cancel" :*/
fileprivate let kStr_inputData:[Character] = ["C","a","n","c","e","l"]

/*: "Settings" :*/
fileprivate let kStr_tableTitle:String = "model bottom userSett"

/*: "badNumber" :*/
fileprivate let kStr_contentValue:String = "effect"
fileprivate let kStr_whiteValue:String = "adNumbercolor height"

/*: "isConnection" :*/
fileprivate let kStr_containerValue:String = "model push labelisCo"
fileprivate let kStr_feeData:[Character] = ["t","i","o","n"]

/*: "networkStatus" :*/
fileprivate let kStr_renderContent:String = "NETW"
fileprivate let kStr_userValue:[Character] = ["u","s"]

/*: "unreadMessageNum" :*/
fileprivate let kStr_intervalData:String = "app section value let imageunreadM"
fileprivate let kStr_makeValue:String = "essdismiss"

/*: "Do you want to mark all messages as read?" :*/
fileprivate let kStr_collectionData:[UInt8] = [0x3f,0x64,0x61,0x65,0x72,0x20,0x73,0x61,0x20,0x73,0x65,0x67,0x61,0x73,0x73,0x65,0x6d,0x20,0x6c,0x6c,0x61,0x20,0x6b,0x72,0x61,0x6d,0x20,0x6f,0x74,0x20,0x74,0x6e,0x61,0x77,0x20,0x75,0x6f,0x79,0x20,0x6f,0x44]

/*: "OK" :*/
fileprivate let kStr_messageValue:[Character] = ["O","K"]

/*: "消息列表一键已读失败：code: :*/
fileprivate let kStr_containerData:String = "\u{6d88}息列表\u{4e00}"
fileprivate let kStr_titleValue:String = "败：codself share view if"
fileprivate let kStr_quoteData:[Character] = ["e",":"]

/*: , desc: :*/
fileprivate let kStr_enterName:[Character] = [","," ","d","e","s","c",":"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  MessageReactiveCompatible.swift
//  AbroadTalking
//
//  Created by Hemming on 2022/1/20.
//

//: import UIKit
import UIKit

//: class TalkingMessageViewController: TalkingBaseViewController {
class MessageReactiveCompatible: LayerRecognizerDelegate {
    //: var isNoChangeTop = false
    var isNoChangeTop = false
    //: private let disposeBag = DisposeBag()
    private let disposeBag = DisposeBag()
    //: private var seleteIndex = 0
    private var seleteIndex = 0

    //: override func viewDidAppear(_ animated: Bool) {
    override func viewDidAppear(_ animated: Bool) {
        //: super.viewDidAppear(animated)
        super.viewDidAppear(animated)
        //: setIsShowCleanAmimat()
        indexObject()
    }

    //: override func viewWillAppear(_ animated: Bool) {
    override func viewWillAppear(_ animated: Bool) {
        //: super.viewWillAppear(animated)
        super.viewWillAppear(animated)
    }

    //: override func viewDidLoad() {
    override func viewDidLoad() {
        //: super.viewDidLoad()
        super.viewDidLoad()
        //: self.hideNavi = true
        self.hideNavi = true
        //: createUI()
        theToEqual()
        //: bindInteraction()
        userControl()
        //: func__turnOnSystemNotification()
        noFuncBackground()
    }

    // MARK: - Lazy load

    // 背景
    //: private lazy var colorImageView: UIImageView = {
    private lazy var colorImageView: UIImageView = {
        //: let colorV = UIImageView.init(frame: CGRect(x: 0, y: 0, width: ScreenWidth, height: 100+StatusBarNavigationBarHeight))
        let colorV = UIImageView(frame: CGRect(x: 0, y: 0, width: kLet_halfData, height: 100 + kLet_netName))
        //: colorV.image = UIImage.bundleBy(name: "bg_message_top")
        colorV.image = UIImage.bundleBy(name: (String(kStr_ageName) + kStr_equalValue.replacingOccurrences(of: "start", with: "g") + String(kStr_partData)))
        //: return colorV
        return colorV
        //: }()
    }()

    //: private lazy var noticeView: TalkingNoticeTipView = {
    private lazy var noticeView: PenumbraView = {
        //: let V = TalkingNoticeTipView()
        let V = PenumbraView()
        //: V.isHidden = true
        V.isHidden = true
        //: return V
        return V
        //: }()
    }()

    //: private lazy var slideVC: QYSlideNavigationViewController = {
    private lazy var slideVC: SubReactiveCompatible = {
        //: let vc = QYSlideNavigationViewController()
        let vc = SubReactiveCompatible()
        //: vc.topDistance = 0
        vc.topDistance = 0
        //: vc.controllerItems = controllerItems
        vc.controllerItems = controllerItems
        //: vc.titleItems = titleItems
        vc.titleItems = titleItems
        //: vc.rightSpace = 60
        vc.rightSpace = 60
        //: vc.titleViewBackgroundColor = .clear
        vc.titleViewBackgroundColor = .clear
        //: vc.titleFont = .pingfangFont(type: .Medium, fontSize: 16)
        vc.titleFont = .groupSize(type: .Medium, fontSize: 16)
        //: vc.selectTitleFont = .pingfangFont(type: .Medium, fontSize: 18)
        vc.selectTitleFont = .groupSize(type: .Medium, fontSize: 18)
        //: vc.normalColor = UIColor(hex: "777777")!
        vc.normalColor = UIColor(hex: (String(kStr_moreText) + String(kStr_iconValue)))!
        //: vc.selectedColor = UIColor.appTitleColor()
        vc.selectedColor = UIColor.dataFormat()
        //: vc.hasBttomTabBar = true
        vc.hasBttomTabBar = true
        //: vc.delegate = self
        vc.delegate = self
        //: vc.scrollEnabled = false
        vc.scrollEnabled = false
        //: return vc
        return vc
        //: }()
    }()

    //: private lazy var controllerItems: [TalkingBaseViewController] = {
    private lazy var controllerItems: [LayerRecognizerDelegate] = {
        //: var arr = [self.chatListVC, TalkingWhoLikeViewController()]
        var arr = [self.chatListVC, AttemptReactiveCompatible()]
        //: if LocationThen.share.loginUserMode.callTabSwitch == 1 {
        if LocationThen.share.loginUserMode.callTabSwitch == 1 {
            //: arr.insert(TalkingVideoCallVC(), at: arr.count-1)
            arr.insert(VideoViewDelegate(), at: arr.count - 1)
        }
        //: return arr
        return arr

        //: }()
    }()

    //: private lazy var chatListVC: TalkingChatListViewController = {
    private lazy var chatListVC: ShadowRecognizerDelegate = {
        //: let vc = TalkingChatListViewController()
        let vc = ShadowRecognizerDelegate()
        //: return vc
        return vc
        //: }()
    }()

    //: private lazy var titleItems: [String] = {
    private lazy var titleItems: [String] = {
        //: var arr = ["Messages".localized, "Who like me".localized]
        var arr = [(String(kStr_albumValue.suffix(8))).localized, (String(kStr_imageLabelData.suffix(3)) + String(kStr_sizeName.prefix(8))).localized]
        //: if LocationThen.share.loginUserMode.callTabSwitch == 1 {
        if LocationThen.share.loginUserMode.callTabSwitch == 1 {
            //: arr.insert("Call".localized, at: arr.count-1)
            arr.insert((String(kStr_modelName)).localized, at: arr.count - 1)
        }
        //: return arr
        return arr
        //: }()
    }()

    // 断网提醒
    //: private lazy var netTipLabel: UILabel = {
    private lazy var netTipLabel: UILabel = {
        //: let tipView = UILabel.init(frame: CGRect(x: 0, y: StatusBarNavigationBarHeight, width: ScreenWidth, height: 30))
        let tipView = UILabel(frame: CGRect(x: 0, y: kLet_netName, width: kLet_halfData, height: 30))
        //: tipView.font = UIFont.messageDown(fontSize: 14)
        tipView.font = UIFont.messageDown(fontSize: 14)
        //: tipView.textColor = .white
        tipView.textColor = .white
        //: tipView.backgroundColor = UIColor.init(hex: "#FF2348")?.withAlphaComponent(0.8)
        tipView.backgroundColor = UIColor(hex: (String(kStr_indexName)))?.withAlphaComponent(0.8)
        //: tipView.textAlignment = .center
        tipView.textAlignment = .center
        //: tipView.text = "Current network unavailable".localized
        tipView.text = (String(kStr_contentData.suffix(4)) + "ent n" + kStr_receiveValue.replacingOccurrences(of: "model", with: "t") + " unavaila" + kStr_maleData.replacingOccurrences(of: "of", with: "e")).localized
        //: tipView.isHidden = true
        tipView.isHidden = true
        //: return tipView
        return tipView
        //: }()
    }()

    // message红点角标
    //: private lazy var msgNumLabel: BadgeLab = {
    private lazy var msgNumLabel: PageBadgeLab = {
        //: let numbLabel = BadgeLab()
        let numbLabel = PageBadgeLab()
        //: numbLabel.isHidden = true
        numbLabel.isHidden = true
        //: return numbLabel
        return numbLabel
        //: }()
    }()

    // whoLikeMe红点角标
    //: private lazy var badgLB: BadgeLab = {
    private lazy var badgLB: PageBadgeLab = {
        //: let numbLabel = BadgeLab()
        let numbLabel = PageBadgeLab()
        //: numbLabel.isHidden = true
        numbLabel.isHidden = true
        //: return numbLabel
        return numbLabel
        //: }()
    }()

    // 一键清除
    //: private lazy var cleanBtn: UIButton = {
    private lazy var cleanBtn: UIButton = {
        //: let btn = UIButton(type: .custom)
        let btn = UIButton(type: .custom)
        //: btn.backgroundColor = .clear
        btn.backgroundColor = .clear
        //: btn.setImage(UIImage.bundleBy(name: "icon_yidu_pre"), for: .normal)
        btn.setImage(UIImage.bundleBy(name: (String(kStr_viewKeyContent) + kStr_byText.replacingOccurrences(of: "send", with: "e"))), for: .normal)
        //: btn.setImage(UIImage.bundleBy(name: "icon_yidu_pre"), for: .highlighted)
        btn.setImage(UIImage.bundleBy(name: (String(kStr_viewKeyContent) + kStr_byText.replacingOccurrences(of: "send", with: "e"))), for: .highlighted)
        //: return btn
        return btn
        //: }()
    }()
}

// MARK: - NavigationDelegate

//: extension TalkingMessageViewController: QYSlideNavigationDelegate {
extension MessageReactiveCompatible: NavigationDelegate {
    //: func selectedViewController(_ viewController: UIViewController, index: Int) {
    func invisible(_ viewController: UIViewController, index: Int) {
        //: self.seleteIndex = Int(index)
        self.seleteIndex = Int(index)
        //: if viewController.isKind(of: TalkingChatListViewController.self) {
        if viewController.isKind(of: ShadowRecognizerDelegate.self) {
            //: self.cleanBtn.isHidden = false
            self.cleanBtn.isHidden = false
            //: setIsShowCleanAmimat()
            indexObject()

            //: } else if viewController.isKind(of: TalkingWhoLikeViewController.self) {
        } else if viewController.isKind(of: AttemptReactiveCompatible.self) {
            //: self.cleanBtn.isHidden = true
            self.cleanBtn.isHidden = true
            //: uploadRecord.uploadRecordEvent(eventID: ClickWLikeMeTabNoP)
            kLet_dismissValue.digitizerInsideStatus(eventID: kLet_messageText)
        }
    }
}

// MARK: - Event

//: extension TalkingMessageViewController {
extension MessageReactiveCompatible {
    //: func setIsTopAll() {
    func userOfAll() {
        /// 默认选中all
        //: if seleteIndex == 0 {
        if seleteIndex == 0 {
            //: let vc = slideVC.controllerItems.first as? TalkingChatListViewController
            let vc = slideVC.controllerItems.first as? ShadowRecognizerDelegate
            //: vc?.resetToTopItemView()
            vc?.rowView()
            // 刷新在线状态
            //: vc?.refreshOnlineStatus(isFirst: true)
            vc?.barFirst(isFirst: true)
        }
    }

    /// 无网络提示
    //: func func__checkNetTipState() {
    func magnitudeercourse() {
        //: if LocationThen.share.networkStatus != .Unavailable && LayerConversationListener.shared.isConnection {
        if LocationThen.share.networkStatus != .Unavailable, LayerConversationListener.shared.isConnection {
            //: netTipLabel.isHidden = true
            netTipLabel.isHidden = true
            //: } else {
        } else {
            //: netTipLabel.isHidden = false
            netTipLabel.isHidden = false
        }
    }

    /// message红点
    //: func func__messagebadgLBState(num: Int) {
    func messagebadg(num: Int) {
        //: if num > 0 {
        if num > 0 {
            //: msgNumLabel.isHidden = false
            msgNumLabel.isHidden = false
            //: if num > 99 {
            if num > 99 {
                //: msgNumLabel.text = "99+"
                msgNumLabel.text = "99+"
                //: } else {
            } else {
                //: msgNumLabel.text = String(num)
                msgNumLabel.text = String(num)
            }
            //: } else {
        } else {
            //: msgNumLabel.isHidden = true
            msgNumLabel.isHidden = true
        }
    }

    /// 一键清除动画
    //: func setIsShowCleanAmimat() {
    func indexObject() {
        //: let unreadMsgCount = LocationThen.share.unreadMessageNum
        let unreadMsgCount = LocationThen.share.unreadMessageNum
        //: let isClean: Bool = UserDefaults.standard.object(forKey: isShowCleanAnimatCacheKey) as? Bool ?? false
        let isClean: Bool = UserDefaults.standard.object(forKey: kLet_keyTitle) as? Bool ?? false
        //: if unreadMsgCount >= 10 && !isClean {
        if unreadMsgCount >= 10, !isClean {
            //: self.cleanBtnBtnAnimat()
            self.cleanWithMake()
        }
    }

    //: func cleanBtnBtnAnimat() {
    func cleanWithMake() {
        //: let degreesToRadians = 180.0 * .pi
        let degreesToRadians = 180.0 * .pi
        //: let angle1 = 0 / degreesToRadians
        let angle1 = 0 / degreesToRadians
        //: let angle2 = 100 / degreesToRadians
        let angle2 = 100 / degreesToRadians
        //: let angle3 = -100 / degreesToRadians
        let angle3 = -100 / degreesToRadians
        //: let angle4 = 100 / degreesToRadians
        let angle4 = 100 / degreesToRadians
        //: let angle5 = -100 / degreesToRadians
        let angle5 = -100 / degreesToRadians
        //: let angle6 = 0 / degreesToRadians
        let angle6 = 0 / degreesToRadians

        //: let du1: NSNumber = 0
        let du1: NSNumber = 0
        //: let du2: NSNumber = 0.13
        let du2: NSNumber = 0.13
        //: let du3: NSNumber = 0.3
        let du3: NSNumber = 0.3
        //: let du4: NSNumber = 0.47
        let du4: NSNumber = 0.47
        //: let du5: NSNumber = 0.8
        let du5: NSNumber = 0.8
        //: let du6: NSNumber = 1.0
        let du6: NSNumber = 1.0

        // 旋转
        //: let roate = CAKeyframeAnimation.init(keyPath: "transform.rotation")
        let roate = CAKeyframeAnimation(keyPath: (kStr_acceptImageData.replacingOccurrences(of: "appear", with: "r") + "form." + kStr_labelValue.lowercased()))
        //: roate.values = [(angle1), (angle2), (angle3), (angle4), (angle5), (angle6)]
        roate.values = [angle1, angle2, angle3, angle4, angle5, angle6]
        //: roate.keyTimes = [(du1), (du2), (du3), (du4), (du5), (du6)]
        roate.keyTimes = [du1, du2, du3, du4, du5, du6]

        // 缩放
        //: let zoom = CAKeyframeAnimation.init(keyPath: "transform.scale")
        let zoom = CAKeyframeAnimation(keyPath: (kStr_controlData.lowercased() + "sform" + String(kStr_centerName.prefix(6))))
        //: zoom.values = [(1.0), (1.2), (1.0)]
        zoom.values = [1.0, 1.2, 1.0]
        //: zoom.keyTimes = [(0), (0.5), (1.0)]
        zoom.keyTimes = [0, 0.5, 1.0]

        //
        //: let groupAnnimation = CAAnimationGroup.init()
        let groupAnnimation = CAAnimationGroup()
        //: groupAnnimation.autoreverses = false
        groupAnnimation.autoreverses = false
        //: groupAnnimation.animations = [roate, zoom]
        groupAnnimation.animations = [roate, zoom]
        //: groupAnnimation.duration = 1.0
        groupAnnimation.duration = 1.0
        //: groupAnnimation.repeatCount = 2
        groupAnnimation.repeatCount = 2
        //: groupAnnimation.isRemovedOnCompletion = false
        groupAnnimation.isRemovedOnCompletion = false
        //: groupAnnimation.fillMode = .forwards
        groupAnnimation.fillMode = .forwards
        //: cleanBtn.layer.add(groupAnnimation, forKey: "zoom&shake")
        cleanBtn.layer.add(groupAnnimation, forKey: (String(kStr_viewValue) + kStr_playerData.replacingOccurrences(of: "up", with: "e")))
    }

    /// 检查系统通知是否开启
    //: private func func__turnOnSystemNotification() {
    private func noFuncBackground() {
        //: TalkingPermissionTool.checkPushNotification { isEnable in
        PerspectiveThen.equalSectionStatus { isEnable in

            //: DispatchQueue.main.async {
            DispatchQueue.main.async {
                //: if isEnable {
                if isEnable {
                    //: self.noticeView.isHidden = true
                    self.noticeView.isHidden = true
                    //: self.func__hideNotificationTipView(hide: true)
                    self.beakWindow(hide: true)
                    //: }else{
                } else {
                    /// 页面顶部提示
                    //: let today = NSDate.getTimeString(date: Date(), dateFormat: "yyyy-MM-dd")
                    let today = NSDate.delayTitle(date: Date(), dateFormat: (String(kStr_noName) + kStr_makeTitle.lowercased()))
                    //: if let closeDateStr = Defaults.string(forKey: TalkingMessageTabCloseNotificationsKey), today == closeDateStr {
                    if let closeDateStr = kLet_managerValue.string(forKey: kLet_userValue), today == closeDateStr {
                        //: self.func__hideNotificationTipView(hide: true)
                        self.beakWindow(hide: true)
                        //: }else{
                    } else {
                        //: self.func__hideNotificationTipView(hide: false)
                        self.beakWindow(hide: false)
                    }
                    /// 弹框逻辑
                    //: let isShow = Defaults.bool(forKey: TalkingMessageTabTurnOnNotificationsKey)
                    let isShow = kLet_managerValue.bool(forKey: kLet_groupSeatValue)
                    //: if !isShow {
                    if !isShow {
                        //: Defaults.set(true, forKey: TalkingMessageTabTurnOnNotificationsKey)
                        kLet_managerValue.set(true, forKey: kLet_groupSeatValue)
                        //: TalkingAlertShow.alert(title: nil,
                        ClickReactiveCompatible.follow(title: nil,
                                                //: message: "Allow %@ to send you notifications?".localizedArguments(AppName),
                                                message: String(bytes: kStr_dataValue.reversed(), encoding: .utf8)!.imageArguments(kLet_pageContent),
                                                //: leftBtnTitle: "Cancel".localized,
                                                leftBtnTitle: (String(kStr_inputData)).localized,
                                                //: rightBtnTitle: "Settings".localized) {
                                                rightBtnTitle: (String(kStr_tableTitle.suffix(4)) + "ings").localized)
                        {
                            //: TalkingAlertShow.hideAlert()
                            ClickReactiveCompatible.closeHideRelease()
                            //: return
                            //: } rightBlock: {
                        } rightBlock: {
                            //: if let settingsUrl = URL(string: UIApplication.openSettingsURLString) {
                            if let settingsUrl = URL(string: UIApplication.openSettingsURLString) {
                                //: UIApplication.shared.open(settingsUrl)
                                UIApplication.shared.open(settingsUrl)
                            }
                        }
                    }
                }
            }
        }
    }

    //: private func func__hideNotificationTipView(hide: Bool) {
    private func beakWindow(hide: Bool) {
        //: DispatchQueue.main.async {
        DispatchQueue.main.async {
            //: if hide{
            if hide {
                //: self.noticeView.isHidden = true
                self.noticeView.isHidden = true
                //: self.slideVC.view.snp.updateConstraints { make in
                self.slideVC.view.snp.updateConstraints { make in
                    //: make.top.equalToSuperview().offset(StatusBarHeight)
                    make.top.equalToSuperview().offset(kLet_postPartyValue)
                }
                //: self.slideVC.viewHeight = ScreenHeight - StatusBarHeight - TabBarViewHeight
                self.slideVC.viewHeight = kLet_noSeatName - kLet_postPartyValue - kLet_screenContent
                //: }else{
            } else {
                //: self.noticeView.isHidden = false
                self.noticeView.isHidden = false
                //: self.slideVC.view.snp.updateConstraints { make in
                self.slideVC.view.snp.updateConstraints { make in
                    //: make.top.equalToSuperview().offset(StatusBarHeight + self.noticeView.viewHeight)
                    make.top.equalToSuperview().offset(kLet_postPartyValue + self.noticeView.viewHeight)
                }
                //: self.slideVC.viewHeight = ScreenHeight - self.noticeView.bottom - TabBarViewHeight
                self.slideVC.viewHeight = kLet_noSeatName - self.noticeView.bottom - kLet_screenContent
            }
        }
    }
}

// MARK: - 通知

//: extension TalkingMessageViewController {
extension MessageReactiveCompatible {
    /// who like me 红点通知
    //: @objc func showbadgNumberNotif(notification: NSNotification) {
    @objc func layConversation(notification: NSNotification) {
        //: let userinfo = notification.userInfo as![String: AnyObject]
        let userinfo = notification.userInfo as! [String: AnyObject]
        //: let badNumber: Int  = userinfo["badNumber"] as! Int
        let badNumber: Int = userinfo[(kStr_contentValue.replacingOccurrences(of: "effect", with: "b") + String(kStr_whiteValue.prefix(8)))] as! Int
        //: badgLB.isHidden = false
        badgLB.isHidden = false
        //: if badNumber > 99 {
        if badNumber > 99 {
            //: badgLB.text = "99+"
            badgLB.text = "99+"
            //: } else if badNumber<=0 {
        } else if badNumber <= 0 {
            //: badgLB.isHidden = true
            badgLB.isHidden = true
            //: badgLB.text = "0"
            badgLB.text = "0"
            //: } else {
        } else {
            //: badgLB.text = String(badNumber)
            badgLB.text = String(badNumber)
        }
    }
}

// MARK: - Layout

//: extension TalkingMessageViewController {
extension MessageReactiveCompatible {
    /// UI
    //: private func createUI() {
    private func theToEqual() {
        //: view.backgroundColor = .white
        view.backgroundColor = .white

        //: view.addSubview(colorImageView)
        view.addSubview(colorImageView)
        //: view.addSubview(noticeView)
        view.addSubview(noticeView)
        //: self.addChild(slideVC)
        self.addChild(slideVC)

        //: self.view.addSubview(slideVC.view)
        self.view.addSubview(slideVC.view)
        //: slideVC.view.backgroundColor = UIColor.clear
        slideVC.view.backgroundColor = UIColor.clear
        //: slideVC.view.snp.makeConstraints { make in
        slideVC.view.snp.makeConstraints { make in
            //: make.top.equalToSuperview().offset(StatusBarHeight)
            make.top.equalToSuperview().offset(kLet_postPartyValue)
            //: make.leading.trailing.equalToSuperview()
            make.leading.trailing.equalToSuperview()
            //: make.bottom.equalToSuperview()
            make.bottom.equalToSuperview()
        }

        //: for btn in slideVC.allBtn {
        for btn in slideVC.allBtn {
            //: let curenbrn: UIButton = btn
            let curenbrn: UIButton = btn
            //: if curenbrn.titleLabel!.text == "Who like me".localized {
            if curenbrn.titleLabel!.text == (String(kStr_imageLabelData.suffix(3)) + String(kStr_sizeName.prefix(8))).localized {
                //: (curenbrn as AnyObject).addSubview(badgLB)
                (curenbrn as AnyObject).addSubview(badgLB)
                //: badgLB.snp.makeConstraints { make in
                badgLB.snp.makeConstraints { make in
                    //: make.leading.equalTo(curenbrn.titleLabel!.snp.trailing).offset(-5)
                    make.leading.equalTo(curenbrn.titleLabel!.snp.trailing).offset(-5)
                    //: make.top.equalTo(curenbrn).offset(7)
                    make.top.equalTo(curenbrn).offset(7)
                    //: make.height.equalTo(16)
                    make.height.equalTo(16)
                    //: make.width.greaterThanOrEqualTo(16)
                    make.width.greaterThanOrEqualTo(16)
                }
                //: badgLB.isHidden = true
                badgLB.isHidden = true
                //: } else if (curenbrn.titleLabel!.text == "Messages".localized) {
            } else if curenbrn.titleLabel!.text == (String(kStr_albumValue.suffix(8))).localized {
                //: (curenbrn as AnyObject).addSubview(msgNumLabel)
                (curenbrn as AnyObject).addSubview(msgNumLabel)
                //: msgNumLabel.snp.makeConstraints { make in
                msgNumLabel.snp.makeConstraints { make in
                    //: make.leading.equalTo(curenbrn.titleLabel!.snp.trailing).offset(-5)
                    make.leading.equalTo(curenbrn.titleLabel!.snp.trailing).offset(-5)
                    //: make.top.equalTo(curenbrn).offset(7)
                    make.top.equalTo(curenbrn).offset(7)
                    //: make.height.equalTo(16)
                    make.height.equalTo(16)
                    //: make.width.greaterThanOrEqualTo(16)
                    make.width.greaterThanOrEqualTo(16)
                }
            }
        }

        //: view.addSubview(cleanBtn)
        view.addSubview(cleanBtn)
        //: cleanBtn.snp.makeConstraints { make in
        cleanBtn.snp.makeConstraints { make in
            //: make.top.equalTo(slideVC.view.snp.top)
            make.top.equalTo(slideVC.view.snp.top)
            //: make.trailing.equalTo(-5)
            make.trailing.equalTo(-5)
            //: make.size.equalTo(CGSize(width: 44, height: 44))
            make.size.equalTo(CGSize(width: 44, height: 44))
        }

        //: view.addSubview(netTipLabel)
        view.addSubview(netTipLabel)
        //: netTipLabel.snp.makeConstraints { make in
        netTipLabel.snp.makeConstraints { make in
            //: make.top.equalTo(slideVC.view.snp.top).offset(44)
            make.top.equalTo(slideVC.view.snp.top).offset(44)
            //: make.leading.trailing.equalToSuperview()
            make.leading.trailing.equalToSuperview()
            //: make.height.equalTo(30)
            make.height.equalTo(30)
        }
    }

    /// 绑定事件
    //: private func bindInteraction() {
    private func userControl() {
        //: LayerConversationListener.shared.rx
        LayerConversationListener.shared.rx
            //: .observeWeakly(Bool.self, "isConnection")
            .observeWeakly(Bool.self, (String(kStr_containerValue.suffix(4)) + "nnec" + String(kStr_feeData)))
            //: .subscribe(onNext: { [weak self] (value) in
            .subscribe(onNext: { [weak self] _ in
                //: guard let self = self else { return }
                guard let self = self else { return }
                //: self.func__checkNetTipState()
                self.magnitudeercourse()
                //: })
            })
            //: .disposed(by: disposeBag)
            .disposed(by: disposeBag)

        //: LocationThen.share.rx.observeWeakly(Int.self, "networkStatus")
        LocationThen.share.rx.observeWeakly(Int.self, (kStr_renderContent.lowercased() + "orkStat" + String(kStr_userValue)))
            //: .subscribe(onNext: { [weak self]  (value) in
            .subscribe(onNext: { [weak self] _ in
                //: guard let self = self else { return }
                guard let self = self else { return }
                //: self.func__checkNetTipState()
                self.magnitudeercourse()
                //: })
            })
            //: .disposed(by: disposeBag)
            .disposed(by: disposeBag)

        // 展示全部红点
        //: LocationThen.share.rx.observeWeakly(Int.self, "unreadMessageNum")
        LocationThen.share.rx.observeWeakly(Int.self, (String(kStr_intervalData.suffix(7)) + kStr_makeValue.replacingOccurrences(of: "dismiss", with: "a") + "geNum"))
            //: .subscribe(onNext: { [weak self] (value) in
            .subscribe(onNext: { [weak self] value in
                //: guard let self = self else { return }
                guard let self = self else { return }
                //: let valueInt = value ?? 0
                let valueInt = value ?? 0
                //: self.func__messagebadgLBState(num: valueInt)
                self.messagebadg(num: valueInt)
                //: })
            })
            //: .disposed(by: disposeBag)
            .disposed(by: disposeBag)

        //: cleanBtn.rx.controlEvent(.touchUpInside)
        cleanBtn.rx.controlEvent(.touchUpInside)
            //: .subscribe(onNext: {
            .subscribe(onNext: {
                //: let config = ShowAlertConfig()
                let config = StreetwiseAlertConfig()
                //: config.alignment = .center
                config.alignment = .center

                //: TalkingAlertShow.customAlert(message: "Do you want to mark all messages as read?".localized, leftBtnTitle: "Cancel".localized, rightBtnTitle: "OK".localized, leftBlock: {
                ClickReactiveCompatible.anyAppearConfig(message: String(bytes: kStr_collectionData.reversed(), encoding: .utf8)!.localized, leftBtnTitle: (String(kStr_inputData)).localized, rightBtnTitle: "OK".localized, leftBlock: {
                    //: TalkingAlertShow.hideAlert()
                    ClickReactiveCompatible.closeHideRelease()

                    //: }, rightBlock: {
                }, rightBlock: {
                    //: V2TIMManager.sharedInstance().markAllMessage {
                    V2TIMManager.sharedInstance().markAllMessage {
                        //: UserDefaults.standard.set(true, forKey: isShowCleanAnimatCacheKey)
                        UserDefaults.standard.set(true, forKey: kLet_keyTitle)
                        //: } fail: { code, desc in
                    } fail: { code, desc in
                        //: MiniLoadThen.appLine(msg: "消息列表一键已读失败：code:\(code), desc:\(String(describing: desc))")
                        MiniLoadThen.appLine(msg: (kStr_containerData + "\u{952e}已\u{8bfb}失" + String(kStr_titleValue.prefix(5)) + String(kStr_quoteData)) + "\(code)" + (String(kStr_enterName)) + "\(String(describing: desc))")
                    }
                    //: }, config: config)
                }, config: config)

                //: })
            })
            //: .disposed(by: disposeBag)
            .disposed(by: disposeBag)

        // who like me 红点通知
        //: NotificationCenter.default.addObserver(self,
        NotificationCenter.default.addObserver(self,
                                               //: selector: #selector(showbadgNumberNotif(notification:)),
                                               selector: #selector(layConversation(notification:)),
                                               //: name: WHOLIKEME_BADGENUMBER_NOTIF,
                                               name: kLet_statusName,
                                               //: object: nil)
                                               object: nil)

        //: noticeView.closeBtnBlock = { [weak self] ()  -> Void in
        noticeView.closeBtnBlock = { [weak self] () in
            //: guard let self = self else {return}
            guard let self = self else { return }
            //: let today = NSDate.getTimeString(date: Date(), dateFormat: "yyyy-MM-dd")
            let today = NSDate.delayTitle(date: Date(), dateFormat: (String(kStr_noName) + kStr_makeTitle.lowercased()))
            //: Defaults.set(today, forKey: TalkingMessageTabCloseNotificationsKey)
            kLet_managerValue.set(today, forKey: kLet_userValue)
            //: self.func__hideNotificationTipView(hide: true)
            self.beakWindow(hide: true)
        }

        //: NotificationCenter.default.rx.notification( UIApplication.willEnterForegroundNotification)
        NotificationCenter.default.rx.notification(UIApplication.willEnterForegroundNotification)
            //: .subscribe(onNext: { [weak self] (notification) in
            .subscribe(onNext: { [weak self] _ in
                //: guard let self = self else { return }
                guard let self = self else { return }
                //: self.func__turnOnSystemNotification()
                self.noFuncBackground()
                //: }).disposed(by: disposeBag)
            }).disposed(by: disposeBag)
    }
}
