
//: Declare String Begin

/*: "www.apple.com" :*/
fileprivate let kStr_windowValue:[Character] = ["w","w","w",".","a","p","p","l","e",".","c","o","m"]

/*: "后台播放音乐模式异常:  :*/
fileprivate let kStr_boxDataModelName:String = "后台leading放音"
fileprivate let kStr_onAccelerateTitle:String = "乐模"
fileprivate let kStr_byData:String = "status常: "

/*: ." :*/
fileprivate let kStr_dataText:String = "."

/*: "click_id" :*/
fileprivate let kStr_textName:[Character] = ["c","l","i","c","k","_"]
fileprivate let kStr_messageClickValue:String = "ID"

/*: "lkme.cc" :*/
fileprivate let kStr_itemTitle:String = "lkme.ccdata hidden"

/*: "key_uid" :*/
fileprivate let kStr_replyData:String = "message name editkey_u"
fileprivate let kStr_againstJumpText:String = "ito"

/*: "Reachable via WiFi" :*/
fileprivate let kStr_videoText:String = "style fail centerReacha"
fileprivate let kStr_enterTitle:String = "ia WiFimessage title to"

/*: "Reachable via Cellular" :*/
fileprivate let kStr_makeData:[Character] = ["R","e","a","c","h","a","b","l","e"]
fileprivate let kStr_bindHiddenData:[Character] = [" ","v","i","a"," ","C","e","l","l","u","l","a","r"]

/*: "Current network unavailable" :*/
fileprivate let kStr_statusText:[Character] = ["C","u","r","r","e","n","t"," ","n","e","t","w","o","r","k"," ","u","n","a","v","a","i","l"]
fileprivate let kStr_textData:[Character] = ["a","b","l","e"]

/*: "Network none" :*/
fileprivate let kStr_blackData:[Character] = ["N","e","t","w","o","r","k"]
fileprivate let kStr_currentContent:String = "push with false none"

/*: "call_response_bgm" :*/
fileprivate let kStr_endName:String = "scenell"
fileprivate let kStr_itemValue:[Character] = ["p","o","n"]
fileprivate let kStr_profileData:String = "make with content scenese_bgm"

/*: "Error playing BMG audio:  :*/
fileprivate let kStr_nameTitle:[Character] = ["E","r","r","o","r"," ","p"]
fileprivate let kStr_serverName:String = "lresultin"
fileprivate let kStr_addName:[Character] = ["d","i","o",":"," "]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  ItemLineBaseDelegate.swift
//  AbroadTalking
//
//  Created by DouXiu on 2024/5/30.
//

//: import AVFAudio
import AVFAudio
//: import FirebaseCrashlytics
import FirebaseCrashlytics
//: import UIKit
import UIKit
//: import WebKit
import WebKit

//: public class AppDelegateHelper: NSObject {
public class ItemLineBaseDelegate: NSObject {
    // 后台下载
    //: var backgroundSessionCompletionHandler: (() -> Void)?
    var backgroundSessionCompletionHandler: (() -> Void)?
    //: private var window: UIWindow?
    private var window: UIWindow?
    //: private let disposeBag = DisposeBag()
    private let disposeBag = DisposeBag()
    //: private let networkManager = NetworkReachabilityManager(host: "www.apple.com")
    private let networkManager = NetworkReachabilityManager(host: (String(kStr_windowValue)))
    //: private var backTaskIdentifier = UIBackgroundTaskIdentifier.invalid
    private var backTaskIdentifier = UIBackgroundTaskIdentifier.invalid // 后台任务名称
    //: private var bgmPlayer: AVAudioPlayer?
    private var bgmPlayer: AVAudioPlayer? // 音视频通话后台播放音频
    //: private var currApplication: UIApplication?
    private var currApplication: UIApplication? // 当前application
    // singleton
    //: static let shared = AppDelegateHelper()
    static let shared = ItemLineBaseDelegate()
    //: override private init() {
    override private init() {
        //: super.init()
        super.init()
        //: self.window?.rootViewController = NormalWaitingController()
        self.window?.rootViewController = LayEnableTheLineThen()
        //: self.window?.makeKeyAndVisible()
        self.window?.makeKeyAndVisible()
        //: NotificationCenter.default.addObserver(self,
        NotificationCenter.default.addObserver(self,
                                               //: selector: #selector(initRootController),
                                               selector: #selector(eviscerate),
                                               //: name: UPDATE_APP_GETCONFIG_NOTIFICATION,
                                               name: kLet_clickHalfTitle,
                                               //: object: nil)
                                               object: nil)
    }
}

// MARK: - 系统API

//: public extension AppDelegateHelper {
public extension ItemLineBaseDelegate {
    //: class func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?, window: UIWindow?) -> Bool {
    class func technologyWindow(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?, window: UIWindow?) -> Bool {
        //: AppDelegateHelper.shared.window = window
        ItemLineBaseDelegate.shared.window = window
        //: AppDelegateHelper.shared.initLinkedME(launchOptions: launchOptions)
        ItemLineBaseDelegate.shared.optionsAcross(launchOptions: launchOptions)
        //: TalkingRequestAddrTool.share.func__setAppCookies()
        ViewManagerAddrTool.share.spokenCommunication()
        //: AppDelegateHelper.shared.installNotificationObservers()
        ItemLineBaseDelegate.shared.searchedNotification()
        //: AppDelegateHelper.shared.initGetCache()
        ItemLineBaseDelegate.shared.divert()
        //: TalkingRequestAddrTool.share.checkServerUrl()
        ViewManagerAddrTool.share.queryEnable()
        //: AppDelegateHelper.shared.currApplication = application
        ItemLineBaseDelegate.shared.currApplication = application
        // 支持后台播放音乐
        //: do {
        do {
            //: try AVAudioSession.sharedInstance().setCategory(.playback)
            try AVAudioSession.sharedInstance().setCategory(.playback)
            //: try AVAudioSession.sharedInstance().setActive(true)
            try AVAudioSession.sharedInstance().setActive(true)
            //: } catch {
        } catch {
            //: MiniLoadThen.appLine(msg: "后台播放音乐模式异常: \(error).")
            MiniLoadThen.appLine(msg: (kStr_boxDataModelName.replacingOccurrences(of: "leading", with: "播") + kStr_onAccelerateTitle.capitalized + kStr_byData.replacingOccurrences(of: "status", with: "式异")) + "\(error).")
        }

        //: if #available(iOS 15.0, *) {
        if #available(iOS 15.0, *) {
            //: UITableView.appearance().sectionHeaderTopPadding = 0
            UITableView.appearance().sectionHeaderTopPadding = 0
        }
        //: return true
        return true
    }

    //: class func applicationDidEnterBackground(_ application: UIApplication) {
    class func mTheory(_: UIApplication) {
        // 开启后台任务，增加app后台运行时间
        //: AppDelegateHelper.shared.startBackgroundTask()
        ItemLineBaseDelegate.shared.hack()
    }

    //: class func applicationWillEnterForeground(_ application: UIApplication) {
    class func applicationShared(_: UIApplication) {
        //: AppDelegateHelper.shared.stopPlayBGM()
        ItemLineBaseDelegate.shared.stopActionDismiss()
        // 进入前台，结束后台任务
        //: AppDelegateHelper.shared.checkAndEndBackgroundTask()
        ItemLineBaseDelegate.shared.andPlayer()
    }

    //: class func applicationWillResignActive(_ application: UIApplication) {
    class func appActive(_ application: UIApplication) {
        //: let unreadMsgCount = LocationThen.share.unreadMessageNum
        let unreadMsgCount = LocationThen.share.unreadMessageNum
        //: application.applicationIconBadgeNumber = unreadMsgCount
        application.applicationIconBadgeNumber = unreadMsgCount
    }

    //: class func applicationDidReceiveMemoryWarning(_ application: UIApplication) {
    class func dataOfWarning(_: UIApplication) {
        //: URLCache.shared.removeAllCachedResponses()
        URLCache.shared.removeAllCachedResponses()
        //: URLCache.shared.diskCapacity = 0
        URLCache.shared.diskCapacity = 0
        //: URLCache.shared.memoryCapacity = 0
        URLCache.shared.memoryCapacity = 0
        //: let typeSet: Set<String> = [WKWebsiteDataTypeLocalStorage, WKWebsiteDataTypeDiskCache]
        let typeSet: Set<String> = [WKWebsiteDataTypeLocalStorage, WKWebsiteDataTypeDiskCache]
        //: WKWebsiteDataStore.default().removeData(ofTypes: typeSet, modifiedSince: Date(timeIntervalSince1970: 0)) {}
        WKWebsiteDataStore.default().removeData(ofTypes: typeSet, modifiedSince: Date(timeIntervalSince1970: 0)) {}
    }

    //: class func application(_ application: UIApplication, handleEventsForBackgroundURLSession identifier: String, completionHandler: @escaping () -> Void) {
    class func textHandler(_: UIApplication, handleEventsForBackgroundURLSession _: String, completionHandler: @escaping () -> Void) {
        //: AppDelegateHelper.shared.backgroundSessionCompletionHandler = completionHandler
        ItemLineBaseDelegate.shared.backgroundSessionCompletionHandler = completionHandler
    }
}

// MARK: - openURL

//: public extension AppDelegateHelper {
public extension ItemLineBaseDelegate {
    //: class func application(_ app: UIApplication, open url: URL, options: [UIApplication.OpenURLOptionsKey: Any] = [:]) -> Bool {
    class func overColor(_: UIApplication, open url: URL, options _: [UIApplication.OpenURLOptionsKey: Any] = [:]) -> Bool {
        //: if url.absoluteString.components(separatedBy: "click_id").count > 1 {
        if url.absoluteString.components(separatedBy: (String(kStr_textName) + kStr_messageClickValue.lowercased())).count > 1 {
            // 判断是否是通过LinkedME的UrlScheme唤起App
            //: return LinkedME.getInstance().handleDeepLink(url)
            return LinkedME.getInstance().handleDeepLink(url)
        }

        //: return true
        return true
    }

    // URI Scheme 实现深度链接技术
    //: class func application(app: UIApplication, openURL url: NSURL, options: [String: AnyObject]) -> Bool {
    class func pastOptions(app _: UIApplication, openURL url: NSURL, options _: [String: AnyObject]) -> Bool {
        // 判断是否是通过LinkedME的UrlScheme唤起App
        //: if (url.absoluteString?.components(separatedBy: "click_id").count)! > 1 {
        if (url.absoluteString?.components(separatedBy: (String(kStr_textName) + kStr_messageClickValue.lowercased())).count)! > 1 {
            // 判断是否是通过LinkedME的UrlScheme唤起App
            //: return LinkedME.getInstance().handleDeepLink(url as URL)
            return LinkedME.getInstance().handleDeepLink(url as URL)
        }
        //: return true
        return true
    }

    // Universal Links 通用链接实现深度链接技术
    //: class func application(_ application: UIApplication, continue userActivity: NSUserActivity, restorationHandler: @escaping ([UIUserActivityRestoring]?) -> Void) -> Bool {
    class func liveSub(_: UIApplication, continue userActivity: NSUserActivity, restorationHandler _: @escaping ([UIUserActivityRestoring]?) -> Void) -> Bool {
        // 判断是否是通过LinkedME的Universal Links唤起App
        //: if (userActivity.webpageURL?.absoluteString.components(separatedBy: "lkme.cc").count)! > 1 {
        if (userActivity.webpageURL?.absoluteString.components(separatedBy: (String(kStr_itemTitle.prefix(7)))).count)! > 1 {
            // 判断是否是通过LinkedME的UrlScheme唤起App
            //: return LinkedME.getInstance().continue(userActivity)
            return LinkedME.getInstance().continue(userActivity)
        }
        //: return true
        return true
    }

    //: class func application(_ application: UIApplication, open url: URL, sourceApplication: String?, annotation: Any) -> Bool {
    class func unlock(_: UIApplication, open url: URL, sourceApplication _: String?, annotation _: Any) -> Bool {
        //: if url.absoluteString.components(separatedBy: "click_id").count > 1 {
        if url.absoluteString.components(separatedBy: (String(kStr_textName) + kStr_messageClickValue.lowercased())).count > 1 {
            // 判断是否是通过LinkedME的UrlScheme唤起App
            //: return LinkedME.getInstance().handleDeepLink(url)
            return LinkedME.getInstance().handleDeepLink(url)
        }
        //: return true
        return true
    }
}

// MARK: - 控制器初始化方法

//: extension AppDelegateHelper {
extension ItemLineBaseDelegate {
    /// 获取config和userinfo缓存
    //: private func initGetCache() {
    private func divert() {
        //: LocationThen.share.func__checkAppConfigModeNeedUpdate()
        LocationThen.share.sex()
        //: LocationThen.share.func__loadCurrentLoginInfoData()
        LocationThen.share.groupData()
    }

    //: @objc private func initRootController() {
    @objc private func eviscerate() {
        // 延后初始化三方sdk, 防止首次安装时无网络初始化失败
        //: if currApplication != nil {
        if currApplication != nil {
            //: AppDelegateHelper.shared.initThirdPartySetup(currApplication!)
            ItemLineBaseDelegate.shared.mottle(currApplication!)
        }
        //: LocationThen.share.func__listenRequestHasInit()
        LocationThen.share.tillSharedAll()
        //: window = UIWindow(frame: UIScreen.main.bounds)
        window = UIWindow(frame: UIScreen.main.bounds)
        //: window?.backgroundColor = .white
        window?.backgroundColor = .white
        //: window?.makeKeyAndVisible()
        window?.makeKeyAndVisible()

        //: let uid = (Defaults.string(forKey: TalkingLoginUidCacheKey)) ?? ""
        let uid = (kLet_managerValue.string(forKey: kLet_bottomText)) ?? ""
        //: if !uid.isEmptyString, Int(uid)! > 0 {
        if !uid.isEmptyString, Int(uid)! > 0 { // 登录状态
            //: func__setupTakingViewController()
            viewShow()

            // 统计崩溃用户Id
            //: Crashlytics.crashlytics().setUserID(LocationThen.share.loginUid)
            Crashlytics.crashlytics().setUserID(LocationThen.share.loginUid)
            //: Crashlytics.crashlytics().setCustomValue(LocationThen.share.loginUid, forKey: "key_uid")
            Crashlytics.crashlytics().setCustomValue(LocationThen.share.loginUid, forKey: (String(kStr_replyData.suffix(5)) + kStr_againstJumpText.replacingOccurrences(of: "to", with: "d")))
            // 检查是否有未完成的支付订单
            //: AppleIAPManager.shared.iap_checkUnfinishedTransactions()
            ViewLayerManager.shared.selectDown()
            //: LocationThen.share.request_HasInit = false
            LocationThen.share.request_HasInit = false
            // 清除礼物缓存
            //: TalkingChatGiftManager.share.gift_clearMemoryCache(showRed: false)
            BlockThen.share.bestowmentAddRubyRed(showRed: false)
            // firebase上报token
            //: AppManagerRequest.func__reportFCMID()
            SubThen.userLiveFcmid()
            //: } else {
        } else {
            //: if LocationThen.share.loginSessionId.count > 0 {
            if LocationThen.share.loginSessionId.count > 0 {
                //: TalkingLoginRequestTool.req_loginOut { _ in
                TableThen.equal { _ in
                }
                //: LocationThen.share.func__cleanPrevLoginData()
                LocationThen.share.searchColorMore()
            }
            //: func__setupLoginViewController()
            shouldObserver()
            //: LocationThen.share.request_HasInit = true
            LocationThen.share.request_HasInit = true
        }
    }

    //: private func func__setupTakingViewController() {
    private func viewShow() {
        //: func__setupRootViewController(type: .Taking)
        greetEnter(type: .Taking)
    }

    //: private func func__setupLoginViewController() {
    private func shouldObserver() {
        //: func__setupRootViewController(type: .Login)
        greetEnter(type: .Login)
    }

    //: private func func__setupRootViewController(type: TarBarControllerViewType) {
    private func greetEnter(type: BackViewType) {
        //: if Thread.current.isMainThread {
        if Thread.current.isMainThread {
            //: func__setWindowRootViewController(type: type)
            mandrake(type: type)
            //: } else {
        } else {
            //: DispatchQueue.main.async {
            DispatchQueue.main.async {
                //: self.func__setWindowRootViewController(type: type)
                self.mandrake(type: type)
            }
        }
    }

    //: private func func__setWindowRootViewController(type: TarBarControllerViewType) {
    private func mandrake(type: BackViewType) {
        //: if checkRootTarBarController(type: type) {
        if tarPlayerType(type: type) {
            //: return
            return
                //: } else {
        } else {
            //: let tabbar = TalkingTabBarViewController(tabBarType: type)
            let tabbar = TableViewHasDelegate(tabBarType: type)
            //: window?.rootViewController = tabbar
            window?.rootViewController = tabbar
        }
    }

    //: private func checkRootTarBarController(type: TarBarControllerViewType) -> Bool {
    private func tarPlayerType(type: BackViewType) -> Bool {
        //: let rootVC = window?.rootViewController
        let rootVC = window?.rootViewController
        //: if rootVC is TalkingTabBarViewController {
        if rootVC is TableViewHasDelegate {
            //: if let rootVC1 = rootVC as? TalkingTabBarViewController {
            if let rootVC1 = rootVC as? TableViewHasDelegate {
                //: if rootVC1.tabBarVCType == type {
                if rootVC1.tabBarVCType == type {
                    //: return true
                    return true
                }
            }
        }
        //: return false
        return false
    }
}

// MARK: - 通知监听

//: extension AppDelegateHelper {
extension ItemLineBaseDelegate {
    /// 初始化通知监听
    //: private func installNotificationObservers() {
    private func searchedNotification() {
        // 网络状态监听
        //: LocationThen.share.startNotifierNetwork()
        LocationThen.share.chapiter()

        //: NotificationCenter.default.addObserver(self, selector: #selector(reachabilityChanged(note:)), name: .reachabilityChanged, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(counterval(note:)), name: .reachabilityChanged, object: nil)

        // 登录成功通知
        //: NotificationCenter.default.rx
        NotificationCenter.default.rx
            //: .notification(DID_LOGIN_SUCCESS_NOTIFICATION)
            .notification(kLet_readText)
            //: .take(until: rx.deallocated)
            .take(until: rx.deallocated)
            //: .subscribe(onNext: { _ in
            .subscribe(onNext: { _ in

                /// 重新打开数据库
                //: WCDBManager.shared.connectDatabase()
                TableManager.shared.dataTo()
                //: self.func__setupTakingViewController()
                self.viewShow()
                //: LocationThen.share.func__UserLoginChanged(isLogin: true)
                LocationThen.share.smallness(isLogin: true)

                // 统计崩溃用户Id
                //: Crashlytics.crashlytics().setUserID(LocationThen.share.loginUid)
                Crashlytics.crashlytics().setUserID(LocationThen.share.loginUid)
                //: Crashlytics.crashlytics().setCustomValue(LocationThen.share.loginUid, forKey: "key_uid")
                Crashlytics.crashlytics().setCustomValue(LocationThen.share.loginUid, forKey: (String(kStr_replyData.suffix(5)) + kStr_againstJumpText.replacingOccurrences(of: "to", with: "d")))
                // 检查是否有末完成的支付订单
                //: AppleIAPManager.shared.iap_checkUnfinishedTransactions()
                ViewLayerManager.shared.selectDown()
                //: if !LocationThen.share.request_HasInit {
                if !LocationThen.share.request_HasInit {
                    //: LocationThen.share.request_HasInit = true
                    LocationThen.share.request_HasInit = true
                }
                // firebase上报token
                //: AppManagerRequest.func__reportFCMID()
                SubThen.userLiveFcmid()
                //: }).disposed(by: disposeBag)
            }).disposed(by: disposeBag)

        // 退出登录通知
        //: NotificationCenter.default.rx
        NotificationCenter.default.rx
            //: .notification(DID_LOGIN_OUT_SUCCESS_NOTIFICATION)
            .notification(kLet_statusFailData)
            //: .take(until: rx.deallocated)
            .take(until: rx.deallocated)
            //: .subscribe(onNext: { _ in
            .subscribe(onNext: { _ in
                //: LocationThen.share.func__UserLoginChanged(isLogin: false)
                LocationThen.share.smallness(isLogin: false)
                //: TalkingSocketManager.shared.closeWebSocket(userLoginOut: true)
                ToSocketManager.shared.atPush(userLoginOut: true)
                //: self.func__setupLoginViewController()
                self.shouldObserver()
                //: (TalkingApplication.shared as! TalkingApplication).destroy()
                (LayerKingfisherCompatible.shared as! LayerKingfisherCompatible).blackTitle()

                //: }).disposed(by: disposeBag)
            }).disposed(by: disposeBag)

        // 刷新个人资料
        //: NotificationCenter.default.rx.notification(UPDATE_USER_GETMYINFO_NOTIFICATION)
        NotificationCenter.default.rx.notification(kLet_successEnterValue)
            //: .take(until: rx.deallocated)
            .take(until: rx.deallocated)
            //: .subscribe(onNext: { _ in
            .subscribe(onNext: { _ in
                //: AppManagerRequest.func__requestUserInfo { succeed, _, _ in
                SubThen.channel { succeed, _, _ in
                    //: guard succeed else { return }
                    guard succeed else { return }
                    // 个人信息请求成功发送通知
                    //: NotificationCenter.default.post(name: USER_GETMYINFO_SUCCEED_NOTIFICATION, object: nil)
                    NotificationCenter.default.post(name: kLet_endValue, object: nil)
                }
                //: }).disposed(by: disposeBag)
            }).disposed(by: disposeBag)
    }

    //: @objc private func reachabilityChanged(note: Notification) {
    @objc private func counterval(note: Notification) {
        //: let reachability = note.object as! Reachability
        let reachability = note.object as! Reachability
        //: switch reachability.connection {
        switch reachability.connection {
        //: case .wifi:
        case .wifi:
            //: printLog(message: "Reachable via WiFi")
            pathLine(message: (String(kStr_videoText.suffix(6)) + "ble v" + String(kStr_enterTitle.prefix(7))))
        //: case .cellular:
        case .cellular:
            //: printLog(message: "Reachable via Cellular")
            pathLine(message: (String(kStr_makeData) + String(kStr_bindHiddenData)))
        //: case .unavailable:
        case .unavailable:
            // 网络不可用，全局提示用户
            //: func__showStatusBarErrorMsg(showMsg: "Current network unavailable".localized)
            detailDownArray(showMsg: (String(kStr_statusText) + String(kStr_textData)).localized)
        //: case .none:
        case .none:
            //: printLog(message: "Network none")
            pathLine(message: (String(kStr_blackData) + String(kStr_currentContent.suffix(5))))
        }
    }
}

// MARK: - 后台任务

//: extension AppDelegateHelper {
extension ItemLineBaseDelegate {
    // 开启后台任务
    //: private func startBackgroundTask() {
    private func hack() {
        //: checkAndEndBackgroundTask()
        andPlayer()
        //: if backTaskIdentifier == .invalid {
        if backTaskIdentifier == .invalid {
            //: backTaskIdentifier = UIApplication.shared.beginBackgroundTask {
            backTaskIdentifier = UIApplication.shared.beginBackgroundTask {
                //: self.checkAndEndBackgroundTask()
                self.andPlayer()
            }
        }
    }

    /// 结束后台任务
    //: private func checkAndEndBackgroundTask() {
    private func andPlayer() {
        //: if backTaskIdentifier != .invalid {
        if backTaskIdentifier != .invalid {
            //: UIApplication.shared.endBackgroundTask(backTaskIdentifier)
            UIApplication.shared.endBackgroundTask(backTaskIdentifier)
            //: backTaskIdentifier = .invalid
            backTaskIdentifier = .invalid
        }
    }

    /// 开始播放背景音乐
    //: func startPlayBGM() {
    func toNeed() {
        //: let filePath = SVGAEffectTool.default.getMp3Path(name: "call_response_bgm")
        let filePath = LoadGrappleEffectTool.default.postOffType(name: (kStr_endName.replacingOccurrences(of: "scene", with: "ca") + "_res" + String(kStr_itemValue) + String(kStr_profileData.suffix(6))))

        //: let fileURL = URL(fileURLWithPath: filePath)
        let fileURL = URL(fileURLWithPath: filePath)
        //: do {
        do {
            //: bgmPlayer = try AVAudioPlayer(contentsOf: fileURL)
            bgmPlayer = try AVAudioPlayer(contentsOf: fileURL)
            //: bgmPlayer?.play()
            bgmPlayer?.play()
            //: startSystemVibrate()
            year()
            //: } catch {
        } catch {
            //: printLog(message: "Error playing BMG audio: \(error.localizedDescription)")
            pathLine(message: (String(kStr_nameTitle) + kStr_serverName.replacingOccurrences(of: "result", with: "ay") + "g BMG au" + String(kStr_addName)) + "\(error.localizedDescription)")
        }
    }

    ///  停止播放背景音乐
    //: func stopPlayBGM() {
    func stopActionDismiss() {
        //: stopSystemVibrate()
        vibrate()
        //: guard bgmPlayer != nil else { return }
        guard bgmPlayer != nil else { return }
        //: bgmPlayer?.stop()
        bgmPlayer?.stop()
        //: bgmPlayer = nil
        bgmPlayer = nil
    }

    /// 开始震动
    //: private func startSystemVibrate() {
    private func year() {
        //: AudioServicesAddSystemSoundCompletion(kSystemSoundID_Vibrate, nil, nil, { _, _ in
        AudioServicesAddSystemSoundCompletion(kSystemSoundID_Vibrate, nil, nil, { _, _ in
            //: DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 1) {
            DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 1) {
                //: AudioServicesPlaySystemSound(kSystemSoundID_Vibrate)
                AudioServicesPlaySystemSound(kSystemSoundID_Vibrate)
            }
            //: }, nil)
        }, nil)
        //: AudioServicesPlaySystemSound(kSystemSoundID_Vibrate)
        AudioServicesPlaySystemSound(kSystemSoundID_Vibrate)
    }

    /// 停止震动
    //: private func stopSystemVibrate() {
    private func vibrate() {
        //: AudioServicesRemoveSystemSoundCompletion(kSystemSoundID_Vibrate)
        AudioServicesRemoveSystemSoundCompletion(kSystemSoundID_Vibrate)
        //: AudioServicesDisposeSystemSoundID(kSystemSoundID_Vibrate)
        AudioServicesDisposeSystemSoundID(kSystemSoundID_Vibrate)
    }
}
