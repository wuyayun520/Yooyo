
//: Declare String Begin

/*: "bg_shouye_misanguang_default" :*/
fileprivate let kStr_resignValue:String = "bg_shguard extension view let"
fileprivate let kStr_modelMakeTitle:String = "moment"
fileprivate let kStr_objectData:[Character] = ["u","y","e","_","m","i","s","a","n","g","u","a","n","g","_","d","e","f","a","u","l","t"]

/*: "#777777" :*/
fileprivate let kStr_valueText:String = "#withwithwith"

/*: "#333333" :*/
fileprivate let kStr_errorData:String = "#itemitemitemitemitemitem"

/*: "Party" :*/
fileprivate let kStr_liveTitle:[Character] = ["P","a","r","t","y"]

/*: "Popular" :*/
fileprivate let kStr_showName:String = "interaction extensionPopular"

/*: "Nearby" :*/
fileprivate let kStr_fitValue:[Character] = ["N","e","a","r","b"]
fileprivate let kStr_startTableValue:[Character] = ["y"]

/*: "New" :*/
fileprivate let kStr_sizeTitle:String = "Newcollection label failure self title"

/*: "btn_popular_search_nor" :*/
fileprivate let kStr_sendContent:[Character] = ["b","t","n","_","p","o","p","u","l","a","r","_","s","e","a","r"]
fileprivate let kStr_resTabTitle:[Character] = ["c","h","_","n","o","r"]

/*: "icon_live_nor" :*/
fileprivate let kStr_titleData:[Character] = ["i","c","o","n","_","l","i","v","e"]
fileprivate let kStr_cellValue:[Character] = ["_","n","o","r"]

/*: "btn_popular_ranking_nor" :*/
fileprivate let kStr_pageData:String = "btn_poerror return gift"
fileprivate let kStr_succeedSizeValue:String = "r_rankinparty let direction equal log"
fileprivate let kStr_contentValue:String = "g_norlab else lab"

/*: "Congratulation on your chance to join the Star Plan !" :*/
fileprivate let kStr_cellTitle:[UInt8] = [0x21,0x20,0x6e,0x61,0x6c,0x50,0x20,0x72,0x61,0x74,0x53,0x20,0x65,0x68,0x74,0x20,0x6e,0x69,0x6f,0x6a,0x20,0x6f,0x74,0x20,0x65,0x63,0x6e,0x61,0x68,0x63,0x20,0x72,0x75,0x6f,0x79,0x20,0x6e,0x6f,0x20,0x6e,0x6f,0x69,0x74,0x61,0x6c,0x75,0x74,0x61,0x72,0x67,0x6e,0x6f,0x43]

/*: "No, thanks" :*/
fileprivate let kStr_errorWithData:String = "No, thadd report string view"

/*: "Find out more" :*/
fileprivate let kStr_giftMessageData:[Character] = ["F","i","n","d"," ","o","u","t"," ","m","o","r"]
fileprivate let kStr_arrayData:[Character] = ["e"]

/*: "clickStarProjectpop-upsCancel" :*/
fileprivate let kStr_pushName:String = "image inclickStar"
fileprivate let kStr_opConText:String = "Projeblock manager message in"
fileprivate let kStr_formatText:String = "country to head true top-up"

/*: "clickStarProjectpop-upsFindoutmore" :*/
fileprivate let kStr_toText:[UInt8] = [0xfb,0xf4,0xf1,0xfb,0xf3,0xcb,0xec,0xf9,0xea,0xc8,0xea,0xf7,0xf2,0xfd,0xfb,0xec,0xe8,0xf7,0xe8,0xb5,0xed,0xe8,0xeb,0xde,0xf1,0xf6,0xfc,0xf7,0xed,0xec,0xf5,0xf7,0xea,0xfd]

private func payingAttention(handle num: UInt8) -> UInt8 {
    return num ^ 152
}

/*: "Allow %@ to send you notifications?" :*/
fileprivate let kStr_scaleName:[UInt8] = [0x90,0xbd,0xbd,0xbe,0xa6,0xf1,0xf4,0x91,0xf1,0xa5,0xbe,0xf1,0xa2,0xb4,0xbf,0xb5,0xf1,0xa8,0xbe,0xa4,0xf1,0xbf,0xbe,0xa5,0xb8,0xb7,0xb8,0xb2,0xb0,0xa5,0xb8,0xbe,0xbf,0xa2,0xee]

private func cuttingEdge(object num: UInt8) -> UInt8 {
    return num ^ 209
}

/*: "Cancel" :*/
fileprivate let kStr_succeedData:String = "Cancelcell medium self play"

/*: "Settings" :*/
fileprivate let kStr_frameTitle:[Character] = ["S","e","t","t","i","n","g"]
fileprivate let kStr_topValue:[Character] = ["s"]

/*: _ :*/
fileprivate let kStr_allContent:String = "remove"

/*: "male" :*/
fileprivate let kStr_fromSizeTitle:[UInt8] = [0x37,0x3b,0x36,0x3f]

private func birdSEyeView(user num: UInt8) -> UInt8 {
    return num ^ 90
}

/*: "female" :*/
fileprivate let kStr_formName:[Character] = ["f","e","m","a","l","e"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  ImpressionThen.swift
//  AbroadTalking
//
//  Created by Hemming on 2022/1/20.
//

//: import JXPagingView
import JXPagingView
//: import JXSegmentedView
import JXSegmentedView
//: import UIKit
import UIKit

//: class TalkingSocialViewController: TalkingBaseViewController {
class ImpressionThen: LayerRecognizerDelegate {
    //: private let segmentedDataSource = JXSegmentedTitleDataSource()
    private let segmentedDataSource = JXSegmentedTitleDataSource()
    //: private var  isNearbyShow = false
    private var isNearbyShow = false
    //: var  seleteIndex = 1
    var seleteIndex = 1
    //: private var liveTipsTimer: Timer?
    private var liveTipsTimer: Timer? /// 头像动画timer

    //: override func viewDidAppear(_ animated: Bool) {
    override func viewDidAppear(_ animated: Bool) {
        //: super.viewDidAppear(animated)
        super.viewDidAppear(animated)
        //: GiftFloatViewManager.shared.activeWhenShow()
        MentalRepresentationViewManager.shared.pastBirthEnd()
    }

    //: override func viewDidDisappear(_ animated: Bool) {
    override func viewDidDisappear(_ animated: Bool) {
        //: super.viewDidDisappear(animated)
        super.viewDidDisappear(animated)
        //: GiftFloatViewManager.shared.stopWhenDismiss()
        MentalRepresentationViewManager.shared.zone()
    }

    //: override func viewDidLoad() {
    override func viewDidLoad() {
        //: super.viewDidLoad()
        super.viewDidLoad()
        //: self.hideNavi = true
        self.hideNavi = true
        //: self.setupSubviews()
        self.subviewsView()
        //: self.setupSubViewsConstraint()
        self.totalConstraint()
        //: self.addNotification()
        self.lapse()
        //: self.func__checkStarPlanNeedShow()
        self.priceBlock()
        //: self.func__turnOnSystemNotification()
        self.memberIndex()
        //: self.pushIsClubVideo()
        self.spotVideo()
    }

    //: deinit {
    deinit {
        //: NotificationCenter.default.removeObserver(self)
        NotificationCenter.default.removeObserver(self)
        //: stop_liveTipsTimer()
        fileColor()
    }

    // MARK: - Lazy load

    //: private lazy var bottomImgView: UIImageView = {
    private lazy var bottomImgView: UIImageView = {
        //: let imgV = UIImageView(image: UIImage.bundleBy(name: "bg_shouye_misanguang_default"))
        let imgV = UIImageView(image: UIImage.bundleBy(name: (String(kStr_resignValue.prefix(5)) + kStr_modelMakeTitle.replacingOccurrences(of: "moment", with: "o") + String(kStr_objectData))))
        //: imgV.isUserInteractionEnabled = false
        imgV.isUserInteractionEnabled = false
        //: return imgV
        return imgV
        //: }()
    }()

    //: private lazy var categoryView: JXSegmentedView = {
    private lazy var categoryView: JXSegmentedView = {
        //: let segmentedView = JXSegmentedView.init(frame: CGRect.init(x: 0, y: StatusBarHeight, width: ScreenWidth, height: NavigationBarHeight))
        let segmentedView = JXSegmentedView(frame: CGRect(x: 0, y: kLet_postPartyValue, width: kLet_halfData, height: kLet_senseFormatValue))
        //: segmentedDataSource.itemSpacing = 18
        segmentedDataSource.itemSpacing = 18
        //: segmentedDataSource.titles = titleArray
        segmentedDataSource.titles = titleArray
        //: segmentedDataSource.isTitleMaskEnabled = false
        segmentedDataSource.isTitleMaskEnabled = false
        //: segmentedDataSource.isItemSpacingAverageEnabled = false
        segmentedDataSource.isItemSpacingAverageEnabled = false
        //: segmentedDataSource.isSelectedAnimable = false
        segmentedDataSource.isSelectedAnimable = false
        //: segmentedDataSource.titleNormalColor = UIColor.init(hex: "#777777")!
        segmentedDataSource.titleNormalColor = UIColor(hex: (kStr_valueText.replacingOccurrences(of: "with", with: "77")))!
        //: segmentedDataSource.titleSelectedColor = UIColor.init(hex: "#333333")!
        segmentedDataSource.titleSelectedColor = UIColor(hex: (kStr_errorData.replacingOccurrences(of: "item", with: "3")))!
        //: segmentedDataSource.titleNormalFont = .pingfangFont(type: .Medium, fontSize: 16)
        segmentedDataSource.titleNormalFont = .groupSize(type: .Medium, fontSize: 16)
        //: segmentedDataSource.titleSelectedFont = .pingfangFont(type: .Medium, fontSize: 18)
        segmentedDataSource.titleSelectedFont = .groupSize(type: .Medium, fontSize: 18)
//        segmentedDataSource.itemWidthIncrement = 0
        //: let indicator = JXSegmentedIndicatorLineView()
        let indicator = JXSegmentedIndicatorLineView()
        //: indicator.indicatorWidth = 12
        indicator.indicatorWidth = 12
        //: indicator.indicatorHeight = 4
        indicator.indicatorHeight = 4
        //: indicator.verticalOffset = 4
        indicator.verticalOffset = 4
        //: indicator.lineStyle = .normal
        indicator.lineStyle = .normal
        //: indicator.indicatorColor = UIColor.init(hex: "#333333")!
        indicator.indicatorColor = UIColor(hex: (kStr_errorData.replacingOccurrences(of: "item", with: "3")))!
        //: segmentedView.dataSource = segmentedDataSource
        segmentedView.dataSource = segmentedDataSource
        //: segmentedView.indicators = [indicator]
        segmentedView.indicators = [indicator]
        //: segmentedView.delegate = self
        segmentedView.delegate = self
        //: segmentedView.contentScrollView = pagerView.listContainerView.scrollView
        segmentedView.contentScrollView = pagerView.listContainerView.scrollView
        //: segmentedView.defaultSelectedIndex = 1
        segmentedView.defaultSelectedIndex = 1
//        segmentedView.backgroundColor = .clear
        //: if LanguageManager.shared.direction == .rightToLeft {
        if DeleteClientThen.shared.direction == .rightToLeft {
            //: segmentedView.transform = CGAffineTransform(scaleX: -1, y: 1)
            segmentedView.transform = CGAffineTransform(scaleX: -1, y: 1)
        }
        //: return segmentedView
        return segmentedView
        //: }()
    }()

    //: private lazy var pagerView: JXPagingListRefreshView = {
    private lazy var pagerView: JXPagingListRefreshView = {
        //: let view = JXPagingListRefreshView.init(delegate: self, listContainerType: JXPagingListContainerType.scrollView)
        let view = JXPagingListRefreshView(delegate: self, listContainerType: JXPagingListContainerType.scrollView)
        //: view.frame = CGRect.init(x: 0, y: StatusBarHeight, width: ScreenWidth, height: ScreenHeight-TabBarViewHeight-StatusBarHeight)
        view.frame = CGRect(x: 0, y: kLet_postPartyValue, width: kLet_halfData, height: kLet_noSeatName - kLet_screenContent - kLet_postPartyValue)
//        view.pinSectionHeaderVerticalOffset = 20
        //: view.defaultSelectedIndex = 1
        view.defaultSelectedIndex = 1
        //: view.mainTableView.backgroundColor = .clear
        view.mainTableView.backgroundColor = .clear
        //: if LanguageManager.shared.direction == .rightToLeft {
        if DeleteClientThen.shared.direction == .rightToLeft {
            //: view.transform = CGAffineTransform(scaleX: -1, y: 1)
            view.transform = CGAffineTransform(scaleX: -1, y: 1)
        }
        //: return view
        return view
        //: }()
    }()

    //: private lazy var titleArray: [String] = {
    private lazy var titleArray: [String] = {
        //: var array = [String]()
        var array = [String]()

        //: array.append("Party".localized)
        array.append((String(kStr_liveTitle)).localized)
        //: array.append("Popular".localized)
        array.append((String(kStr_showName.suffix(7))).localized)
        //: array.append("Nearby".localized)
        array.append((String(kStr_fitValue) + String(kStr_startTableValue)).localized)
        //: array.append("New".localized)
        array.append((String(kStr_sizeTitle.prefix(3))).localized)
        //: return array
        return array
        //: }()
    }()

    //: lazy var dataVC: [UIViewController] = {
    lazy var dataVC: [UIViewController] = {
        //: var array = [UIViewController]()
        var array = [UIViewController]()
        //: for i in titleArray {
        for i in titleArray {
            //: if i == "Party".localized {
            if i == (String(kStr_liveTitle)).localized {
                //: let partyVC = PartyListViewController.init()
                let partyVC = ToShowReactiveCompatible()
                //: array.append(partyVC)
                array.append(partyVC)
                //: }else{
            } else {
                //: let popularVC = SocialPopularViewController.init()
                let popularVC = CandidViewController()
                //: if i == "Popular".localized {
                if i == (String(kStr_showName.suffix(7))).localized {
                    //: popularVC.tabType = .hot
                    popularVC.tabType = .hot
                    //: } else if i == "Nearby".localized {
                } else if i == (String(kStr_fitValue) + String(kStr_startTableValue)).localized {
                    //: popularVC.tabType = .nearby
                    popularVC.tabType = .nearby
                    //: } else if i == "New".localized {
                } else if i == (String(kStr_sizeTitle.prefix(3))).localized {
                    //: popularVC.tabType = .new
                    popularVC.tabType = .new
                }
                //: array.append(popularVC)
                array.append(popularVC)
            }
        }
        //: return array
        return array
        //: }()
    }()

    //: private lazy var searchBtn: UIButton = {
    private lazy var searchBtn: UIButton = {
        //: let btn = UIButton()
        let btn = UIButton()
        //: btn.setImage(UIImage.bundleBy(name: "btn_popular_search_nor"), for: .normal)
        btn.setImage(UIImage.bundleBy(name: (String(kStr_sendContent) + String(kStr_resTabTitle))), for: .normal)
        //: btn.addTarget(self, action: #selector(searchButtonClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(moreSize), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var liveBtn: UIButton = {
    private lazy var liveBtn: UIButton = {
        //: let btn = UIButton()
        let btn = UIButton()
        //: btn.setImage(UIImage.bundleBy(name: "icon_live_nor"), for: .normal)
        btn.setImage(UIImage.bundleBy(name: (String(kStr_titleData) + String(kStr_cellValue))), for: .normal)
        //: btn.addTarget(self, action: #selector(liveBtnClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(feedback), for: .touchUpInside)
        //: btn.isHidden = !(LocationThen.share.appStatus == AppSkinStatus.special.rawValue && LocationThen.share.loginUserMode.sex == Gender.female.rawValue)
        btn.isHidden = !(LocationThen.share.appStatus == SharedInsetTarget.special.rawValue && LocationThen.share.loginUserMode.sex == SucceedComparable.female.rawValue)
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var rankBtn: UIButton = {
    private lazy var rankBtn: UIButton = {
        //: let btn = UIButton()
        let btn = UIButton()
        //: btn.setImage(UIImage.bundleBy(name: "btn_popular_ranking_nor"), for: .normal)
        btn.setImage(UIImage.bundleBy(name: (String(kStr_pageData.prefix(6)) + "pula" + String(kStr_succeedSizeValue.prefix(8)) + String(kStr_contentValue.prefix(5)))), for: .normal)
        //: btn.addTarget(self, action: #selector(rankButtonClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(anyMore), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()
}

// MARK: - 开播提醒弹窗定时器

//: extension TalkingSocialViewController {
extension ImpressionThen {
    /// 跳转随机匹配
    //: private func pushIsClubVideo() {
    private func spotVideo() {
        //: if LocationThen.share.loginUserMode.jumpType == 1 && LocationThen.share.loginUserMode.sex == Gender.male.rawValue && LocationThen.share.appStatus == AppSkinStatus.normal.rawValue {
        if LocationThen.share.loginUserMode.jumpType == 1, LocationThen.share.loginUserMode.sex == SucceedComparable.male.rawValue, LocationThen.share.appStatus == SharedInsetTarget.normal.rawValue {
            //: DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 1.5) {
            DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 1.5) {
                //: EffectPushManager.share.func__pushToRandomVideoVC(isBeginRand: false)
                EffectPushManager.share.die(isBeginRand: false)
            }
        }
    }

    /// 排行榜按钮点击事件
    //: @objc private func rankButtonClick() {
    @objc private func anyMore() {
        //: let rankVC = SocialRankTabVC()
        let rankVC = MakeViewController()
        //: self.navigationController?.pushViewController(rankVC, animated: true)
        self.navigationController?.pushViewController(rankVC, animated: true)
        //: uploadRecord.uploadRecordEvent(eventID: ClickRankIngButton)
        kLet_dismissValue.digitizerInsideStatus(eventID: kLet_eventValue)
    }

    /// "mf/index/getConfig"请求成功后创建定时器
    //: @objc func setliveTipsTimer() {
    @objc func windowApp() {
        //: if LocationThen.share.appUserConfigMode.liveDialogInterval > 0 &&
        if LocationThen.share.appUserConfigMode.liveDialogInterval > 0,
           //: LocationThen.share.loginUserMode.sex == Gender.female.rawValue &&
           LocationThen.share.loginUserMode.sex == SucceedComparable.female.rawValue,
           //: LocationThen.share.appStatus != AppSkinStatus.special.rawValue {
           LocationThen.share.appStatus != SharedInsetTarget.special.rawValue
        {
            //: initLiveTipsTimer()
            imageSubmitFrom()
            //: liveTipsTimer?.fireDate = Date.init(timeIntervalSinceNow: TimeInterval(LocationThen.share.appUserConfigMode.liveDialogInterval))
            liveTipsTimer?.fireDate = Date(timeIntervalSinceNow: TimeInterval(LocationThen.share.appUserConfigMode.liveDialogInterval))
        }
    }

    /// 展示开闭提醒弹窗
    //: @objc func setLiveTipsPopView() {
    @objc func viewMatch() {
        // 模态出来的webView不展示直播提醒弹窗
        //: if let currentVC = self.currentViewController() {
        if let currentVC = self.giftFew() {
            //: if currentVC.isKind(of: TalkingWebViewController.self) &&
            if currentVC.isKind(of: ClientReactiveCompatible.self),
               //: (currentVC as! TalkingWebViewController).isModal == true {
               (currentVC as! ClientReactiveCompatible).isModal == true
            {
                //: return
                return
            }
        }

        //: if LocationThen.share.appUserConfigMode.enableLive &&
        if LocationThen.share.appUserConfigMode.enableLive,
           //: !TalkingLiveManager.shared().isLive &&
           !VideoPushListener.isGesture().isLive,
           //: !TalkingSocketManager.shared.isTalking &&
           !ToSocketManager.shared.isTalking,
           //: !TalkingSocketManager.shared.isCalling {
           !ToSocketManager.shared.isCalling
        {
            //: TalkingPopupWindowManager.shared.startLivePopUpWindow()
            ClientBottomReactiveCompatible.shared.equalWindow()
        }
    }

    /// 初始化定时器
    //: func initLiveTipsTimer() {
    func imageSubmitFrom() {
        //: let timeInterval = TimeInterval(LocationThen.share.appUserConfigMode.liveDialogInterval)
        let timeInterval = TimeInterval(LocationThen.share.appUserConfigMode.liveDialogInterval)
        //: liveTipsTimer = Timer.scheduledTimer(timeInterval: timeInterval, target: self, selector: #selector(setLiveTipsPopView), userInfo: nil, repeats: true)
        liveTipsTimer = Timer.scheduledTimer(timeInterval: timeInterval, target: self, selector: #selector(viewMatch), userInfo: nil, repeats: true)
        //: RunLoop.current.add(liveTipsTimer!, forMode: RunLoop.Mode.common)
        RunLoop.current.add(liveTipsTimer!, forMode: RunLoop.Mode.common)
    }

    /// 停止定时器
    //: @objc func stop_liveTipsTimer() {
    @objc func fileColor() {
        //: if self.liveTipsTimer != nil {
        if self.liveTipsTimer != nil {
            //: self.liveTipsTimer?.invalidate()
            self.liveTipsTimer?.invalidate()
            //: self.liveTipsTimer?.fire()
            self.liveTipsTimer?.fire()
            //: self.liveTipsTimer = nil
            self.liveTipsTimer = nil
        }
    }

    /// 开启直播按钮点击事件
    //: @objc func liveBtnClick() {
    @objc func feedback() {
        //: NotificationCenter.default.post(name: LIVE_NEED_OPEN_NOTIFICATION, object: nil)
        NotificationCenter.default.post(name: kLet_meTitle, object: nil)
    }
}

// MARK: - Public Event

//: extension TalkingSocialViewController {
extension ImpressionThen {
    /// 检测巨星计划弹窗是否需要弹出
    //: private func func__checkStarPlanNeedShow() {
    private func priceBlock() {
        //: guard LocationThen.share.showWindow == true else { return }
        guard LocationThen.share.showWindow == true else { return }
        //: LocationThen.share.showWindow = false
        LocationThen.share.showWindow = false

        // 加入巨星计划弹窗
        //: TalkingAlertShow.alert(title: nil,
        ClickReactiveCompatible.follow(title: nil,
                                //: message: "Congratulation on your chance to join the Star Plan !",
                                message: String(bytes: kStr_cellTitle.reversed(), encoding: .utf8)!,
                                //: leftBtnTitle: "No, thanks",
                                leftBtnTitle: (String(kStr_errorWithData.prefix(6)) + "anks"),
                                //: rightBtnTitle: "Find out more") {
                                rightBtnTitle: (String(kStr_giftMessageData) + String(kStr_arrayData)))
        {
            //: TalkingAlertShow.hideAlert()
            ClickReactiveCompatible.closeHideRelease()
            // 统计点击首页巨星邀请弹窗中“no,thanks”的次数
            //: TalkingAdjustManager.share.addEvent(key: "clickStarProjectpop-upsCancel")
            QualityAdjustManager.share.taproom(key: (String(kStr_pushName.suffix(9)) + String(kStr_opConText.prefix(5)) + "ctpo" + String(kStr_formatText.suffix(4)) + "sCancel"))

            //: } rightBlock: {
        } rightBlock: {
            //: TalkingAlertShow.hideAlert()
            ClickReactiveCompatible.closeHideRelease()
            // 跳转巨星计划页
            //: EffectPushManager.share.func__pushToWebVC(webViewType: .StarPlanIndex)
            EffectPushManager.share.selectUp(webViewType: .StarPlanIndex)

            // 统计点击首页巨星邀请弹窗中“Find out more”的次数
            //: TalkingAdjustManager.share.addEvent(key: "clickStarProjectpop-upsFindoutmore")
            QualityAdjustManager.share.taproom(key: String(bytes: kStr_toText.map{payingAttention(handle: $0)}, encoding: .utf8)!)
        }
    }

    /// 检查系统通知是否开启
    //: private func func__turnOnSystemNotification() {
    private func memberIndex() {
        // 有随机视频，不弹出开启推送弹窗
        //: if LocationThen.share.loginUserMode.jumpType == 1 &&
        if LocationThen.share.loginUserMode.jumpType == 1,
           //: LocationThen.share.loginUserMode.sex == Gender.male.rawValue &&
           LocationThen.share.loginUserMode.sex == SucceedComparable.male.rawValue,
           //: LocationThen.share.appStatus == AppSkinStatus.normal.rawValue {
           LocationThen.share.appStatus == SharedInsetTarget.normal.rawValue
        {
            //: return
            return
        }

        //: let isShow = Defaults.bool(forKey: TalkingHomeTabTurnOnNotificationsKey)
        let isShow = kLet_managerValue.bool(forKey: kLet_tableName)
        //: guard isShow == false else { return }
        guard isShow == false else { return }

        //: TalkingPermissionTool.checkPushNotification { isEnable in
        PerspectiveThen.equalSectionStatus { isEnable in
            //: guard isEnable == false else { return }
            guard isEnable == false else { return }
            //: DispatchQueue.main.sync {
            DispatchQueue.main.sync {
                //: Defaults.set(true, forKey: TalkingHomeTabTurnOnNotificationsKey)
                kLet_managerValue.set(true, forKey: kLet_tableName)
                //: TalkingAlertShow.alert(title: nil,
                ClickReactiveCompatible.follow(title: nil,
                                        //: message: "Allow %@ to send you notifications?".localizedArguments(AppName),
                                        message: String(bytes: kStr_scaleName.map{cuttingEdge(object: $0)}, encoding: .utf8)!.imageArguments(kLet_pageContent),
                                        //: leftBtnTitle: "Cancel".localized,
                                        leftBtnTitle: (String(kStr_succeedData.prefix(6))).localized,
                                        //: rightBtnTitle: "Settings".localized) {
                                        rightBtnTitle: (String(kStr_frameTitle) + String(kStr_topValue)).localized)
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

    /// 搜索按钮点击事件
    //: @objc private func searchButtonClick() {
    @objc private func moreSize() {
        //: let searchVC = TalkingSearchTabViewController()
        let searchVC = TallyViewController()
        //: self.navigationController?.pushViewController(searchVC, animated: true)
        self.navigationController?.pushViewController(searchVC, animated: true)
        //: uploadRecord.uploadRecordEvent(eventID: ClickSearchButton)
        kLet_dismissValue.digitizerInsideStatus(eventID: kLet_meCaptureData)
    }

    /// 切换到party
    //: func switchParty() {
    func shoveMake() {
        //: categoryView.defaultSelectedIndex = 0
        categoryView.defaultSelectedIndex = 0
        //: categoryView.reloadData()
        categoryView.reloadData()
        //: pagerView.defaultSelectedIndex = 0
        pagerView.defaultSelectedIndex = 0
        //: pagerView.reloadData()
        pagerView.reloadData()
    }
}

// MARK: - NotificationCenter

//: extension TalkingSocialViewController {
extension ImpressionThen {
    /// 添加通知
    //: private func addNotification() {
    private func lapse() {
        // 礼物首页飘屏
        //: GiftFloatViewManager.shared.addNotifications()
        MentalRepresentationViewManager.shared.listColor()

        //: NotificationCenter.default.addObserver(self,
        NotificationCenter.default.addObserver(self,
                                               //: selector: #selector(setliveTipsTimer),
                                               selector: #selector(windowApp),
                                               //: name: UPDATE_INDEX_GETCONFIG_NOTIFICATION,
                                               name: kLet_sessionValue,
                                               //: object: nil)
                                               object: nil)

        //: NotificationCenter.default.addObserver(self,
        NotificationCenter.default.addObserver(self,
                                               //: selector: #selector(stop_liveTipsTimer),
                                               selector: #selector(fileColor),
                                               //: name: DID_LOGIN_OUT_SUCCESS_NOTIFICATION,
                                               name: kLet_statusFailData,
                                               //: object: nil)
                                               object: nil)
    }
}

// MARK: - JXPagerViewDelegate

//: extension TalkingSocialViewController: JXSegmentedViewDelegate {
extension ImpressionThen: JXSegmentedViewDelegate {
    // 点击item或滑动时【点击标题和滑动视图都会调用】
    //: func segmentedView(_ segmentedView: JXSegmentedView, didSelectedItemAt index: Int) {
    func segmentedView(_: JXSegmentedView, didSelectedItemAt index: Int) {
        //: if seleteIndex == index {
        if seleteIndex == index {
            //: return
            return
        }
        //: seleteIndex = index
        seleteIndex = index
        //: if index == 0 {
        if index == 0 {
            //: uploadRecord.uploadRecordEvent(eventID:"\(click_HomePartyTab)_\(LocationThen.share.loginUserMode.sex == Gender.male.rawValue ? "male":"female")")
            kLet_dismissValue.digitizerInsideStatus(eventID: "\(kLet_pageFormalName)_\(LocationThen.share.loginUserMode.sex == SucceedComparable.male.rawValue ? String(bytes: kStr_fromSizeTitle.map{birdSEyeView(user: $0)}, encoding: .utf8)! : (String(kStr_formName)))")
            //: }else if index == 1 {
        } else if index == 1 {
            //: let popularVC = dataVC[index] as? SocialPopularViewController
            let popularVC = dataVC[index] as? CandidViewController
            //: popularVC?.showSettingsAlertView()
            popularVC?.loadPopSelect() // 展示定位设置弹窗
            //: uploadRecord.uploadRecordEvent(eventID: DisplayNearbyListNoP)
            kLet_dismissValue.digitizerInsideStatus(eventID: kLet_pathText)
            //: } else if index == 2 {
        } else if index == 2 {
            //: uploadRecord.uploadRecordEvent(eventID: DisplayNewListNoP)
            kLet_dismissValue.digitizerInsideStatus(eventID: kLet_imageData)
        }
    }

    // 添加该方法是为了防止首次进入应用，直接点击nearby无法初始化页面的情况 【该方法只会在点击标题时调用】
    //: func segmentedView(_ segmentedView: JXSegmentedView, didClickSelectedItemAt index: Int) {
    func segmentedView(_: JXSegmentedView, didClickSelectedItemAt index: Int) {
        // 初始点击item时，创建vc

        //: if index == 1 && !isNearbyShow {
        if index == 1 && !isNearbyShow {
            //: isNearbyShow = true
            isNearbyShow = true
        }

        //: pagerView.listContainerView.defaultSelectedIndex = index
        pagerView.listContainerView.defaultSelectedIndex = index
        //: pagerView.listContainerView.reloadData()
        pagerView.listContainerView.reloadData()
    }

    //: func segmentedView(_ segmentedView: JXSegmentedView, didScrollSelectedItemAt index: Int) {
    func segmentedView(_: JXSegmentedView, didScrollSelectedItemAt _: Int) {}
}

// MARK: - JXPagerViewDelegate

//: extension TalkingSocialViewController: JXPagingViewDelegate {
extension ImpressionThen: JXPagingViewDelegate {
    //: func pagingView(_ pagingView: JXPagingView, initListAtIndex index: Int) -> JXPagingViewListViewDelegate {
    func pagingView(_: JXPagingView, initListAtIndex index: Int) -> JXPagingViewListViewDelegate {
        //: var type = index
        var type = index
        //: if type < 0 { type = 0 }
        if type < 0 { type = 0 }
        //: if index == 1 {
        if index == 1 {
            //: isNearbyShow = true
            isNearbyShow = true
        }

        //: let popularVC = dataVC[type]
        let popularVC = dataVC[type]
        //: return popularVC as! any JXPagingViewListViewDelegate as JXPagingViewListViewDelegate
        return popularVC as! any JXPagingViewListViewDelegate as JXPagingViewListViewDelegate
    }

    //: func tableHeaderViewHeight(in pagingView: JXPagingView) -> Int {
    func tableHeaderViewHeight(in _: JXPagingView) -> Int {
        //: return 0
        return 0
    }

    //: func tableHeaderView(in pagingView: JXPagingView) -> UIView {
    func tableHeaderView(in _: JXPagingView) -> UIView {
        //: return UIView()
        return UIView()
    }

    //: func heightForPinSectionHeader(in pagingView: JXPagingView) -> Int {
    func heightForPinSectionHeader(in _: JXPagingView) -> Int {
        //: return Int(categoryView.frame.height)
        return Int(categoryView.frame.height)
    }

    //: func viewForPinSectionHeader(in pagingView: JXPagingView) -> UIView {
    func viewForPinSectionHeader(in _: JXPagingView) -> UIView {
        //: return categoryView
        return categoryView
    }

    //: func numberOfLists(in pagingView: JXPagingView) -> Int {
    func numberOfLists(in _: JXPagingView) -> Int {
        //: return titleArray.count
        return titleArray.count
    }
}

// MARK: - Layout

//: extension TalkingSocialViewController {
extension ImpressionThen {
    /// 添加视图
    //: private func setupSubviews() {
    private func subviewsView() {
        // 导航底部渐变背景
        //: self.view.addSubview(pagerView)
        self.view.addSubview(pagerView)
        //: categoryView.addSubview(searchBtn)
        categoryView.addSubview(searchBtn)
        //: categoryView.addSubview(rankBtn)
        categoryView.addSubview(rankBtn)
        //: self.view.addSubview(bottomImgView)
        self.view.addSubview(bottomImgView)
        //: self.view.addSubview(liveBtn)
        self.view.addSubview(liveBtn)
        //: self.view.bringSubviewToFront(liveBtn)
        self.view.bringSubviewToFront(liveBtn)
    }

    /// 添加约束
    //: private func setupSubViewsConstraint() {
    private func totalConstraint() {
        //: searchBtn.snp.makeConstraints { make in
        searchBtn.snp.makeConstraints { make in
            //: make.centerY.equalToSuperview()
            make.centerY.equalToSuperview()
            //: make.trailing.equalTo(-9)
            make.trailing.equalTo(-9)
            //: make.size.equalTo(30)
            make.size.equalTo(30)
        }
        //: rankBtn.snp.makeConstraints { make in
        rankBtn.snp.makeConstraints { make in
            //: make.centerY.equalToSuperview()
            make.centerY.equalToSuperview()
            //: make.trailing.equalTo(searchBtn.snp.leading).offset(-10)
            make.trailing.equalTo(searchBtn.snp.leading).offset(-10)
            //: make.size.equalTo(30)
            make.size.equalTo(30)
        }

        //: bottomImgView.snp.makeConstraints { make in
        bottomImgView.snp.makeConstraints { make in
            //: make.leading.top.width.equalToSuperview()
            make.leading.top.width.equalToSuperview()
            //: make.height.equalTo(145+StatusBarHeight)
            make.height.equalTo(145 + kLet_postPartyValue)
        }
        //: liveBtn.snp.makeConstraints { make in
        liveBtn.snp.makeConstraints { make in
            //: make.bottom.width.equalTo(-122)
            make.bottom.width.equalTo(-122)
            //: make.trailing.equalTo(-25)
            make.trailing.equalTo(-25)
            //: make.size.equalTo(56)
            make.size.equalTo(56)
        }
    }
}
