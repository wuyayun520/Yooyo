
//: Declare String Begin

/*: "PHPSESSID" :*/
fileprivate let kStr_eachEmptyIfValue:[Character] = ["P","H","P","S","E","S"]
fileprivate let kStr_iconData:[Character] = ["S","I","D"]

/*: "UID" :*/
fileprivate let kStr_itemTouchStatusData:String = "normalD"

/*: "Any" :*/
fileprivate let kStr_viewName:[Character] = ["A","n","y"]

/*: "UserBasicInfoSetting/userTag.json" :*/
fileprivate let kStr_userName:[UInt8] = [0x6e,0x6f,0x73,0x6a,0x2e,0x67,0x61,0x54,0x72,0x65,0x73,0x75,0x2f,0x67,0x6e,0x69,0x74,0x74,0x65,0x53,0x6f,0x66,0x6e,0x49,0x63,0x69,0x73,0x61,0x42,0x72,0x65,0x73,0x55]

/*: "获取数据" :*/
fileprivate let kStr_managerName:[Character] = ["\u{83b7}","\u{53d6}","数","\u{636e}"]

/*: "json 解析失败" :*/
fileprivate let kStr_stackText:String = "jappn"
fileprivate let kStr_ofShouldData:String = "败"

/*: "request_HasInit" :*/
fileprivate let kStr_nameUserData:[Character] = ["r","e","q","u"]
fileprivate let kStr_centerAppName:[Character] = ["e","s","t","_","H","a","s","I","n","i","t"]

/*: "Reachable via WiFi" :*/
fileprivate let kStr_atText:[Character] = ["R","e","a","c","h"]
fileprivate let kStr_currentValue:[Character] = ["a","b","l","e"," ","v","i","a"," ","W","i","F","i"]

/*: "Reachable via Cellular" :*/
fileprivate let kStr_modelRandomData:[Character] = ["R","e","a","c","h","a","b","l","e"," ","v","i","a"," ","C","e","l","l","u","l","a","r"]

/*: "Network not reachable" :*/
fileprivate let kStr_cardName:[Character] = ["N","e","t","w","o","r","k"," ","n"]
fileprivate let kStr_monthTitle:[Character] = ["o","t"," ","r","e"]
fileprivate let kStr_hiddenName:[Character] = ["a","c","h","a","b","l","e"]

/*: "Not reachable" :*/
fileprivate let kStr_equalValue:String = "text array ifNot "
fileprivate let kStr_liveText:String = "rsectionc"

/*: "Unable to start notifier" :*/
fileprivate let kStr_imageTitle:String = "skin appUnable"
fileprivate let kStr_fatalData:String = "namert"
fileprivate let kStr_modelName:String = "true top inside user gift noti"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  LocationThen.swift
//  AbroadTalking
//
//  Created by Hemming on 2022/1/26.
//

//: import UIKit
import UIKit

//: public class LocationThen: NSObject {
public class LocationThen: NSObject {
    //: @objc static public let share = LocationThen()
    @objc public static let share = LocationThen()
    //: private override init() {}
    override private init() {}

    //: @objc public var loginUserMode = LoginUserModel()
    @objc public var loginUserMode = EqualMeasurable() // 用户登录的信息
    //: @objc public var appUserConfigMode = AppUserConfigModel()
    @objc public var appUserConfigMode = OmitModelType() // App 用户配置信息
    //: var showWindow = false
    var showWindow = false // 是否需要展示巨星邀请引导弹窗【只在注册更新资料流程中才返回】
    //: var userFillInfoMode = UserFillInfoModel.init()
    var userFillInfoMode = LoadInfoModel() // 用户完善资料缓存
    //: var appConfigMode = AppConfigModel()
    var appConfigMode = CollectionUpConfigModel() // App 配置信息
    //: var reachability: Reachability?
    var reachability: Reachability? // 网络监听
    //: @objc public dynamic var networkStatus: AppNetworkStatus = .Unavailable
    @objc public dynamic var networkStatus: ButtonTotalervalLiteral = .Unavailable // 网络状态

    //: @objc public dynamic var request_HasInit: Bool = false
    @objc public dynamic var request_HasInit: Bool = false

    //: @objc public var appStatus: Int {
    @objc public var appStatus: Int { // 审核状态
        //: if loginUserMode.status == 0, appConfigMode.status == 0 {
        if loginUserMode.status == 0, appConfigMode.status == 0 {
            //: return AppSkinStatus.normal.rawValue
            return SharedInsetTarget.normal.rawValue
            //: } else {
        } else {
            //: return AppSkinStatus.special.rawValue
            return SharedInsetTarget.special.rawValue
        }
    }

    //: @objc public dynamic var unreadMessageNum: Int = 0
    @objc public dynamic var unreadMessageNum: Int = 0

    //: private let disposeBag = DisposeBag()
    private let disposeBag = DisposeBag()

    //: var loginSessionId: String {
    var loginSessionId: String {
        //: let url = URL.init(string: TalkingRequestAddrTool.share.serverUrlStr)!
        let url = URL(string: ViewManagerAddrTool.share.serverUrlStr)!
        //: let cookieArr: Array<HTTPCookie> = HTTPCookieStorage.shared.cookies(for: url)!
        let cookieArr: [HTTPCookie] = HTTPCookieStorage.shared.cookies(for: url)!
        //: for cookie in cookieArr {
        for cookie in cookieArr {
            //: if cookie.name.uppercased() == "PHPSESSID" {
            if cookie.name.uppercased() == (String(kStr_eachEmptyIfValue) + String(kStr_iconData)) {
                //: return cookie.value
                return cookie.value
            }
        }
        //: return ""
        return ""
    }

    //: var loginUid: String {
    var loginUid: String {
        //: let url = URL.init(string: TalkingRequestAddrTool.share.serverUrlStr)!
        let url = URL(string: ViewManagerAddrTool.share.serverUrlStr)!
        //: let cookieArr: Array<HTTPCookie> = HTTPCookieStorage.shared.cookies(for: url)!
        let cookieArr: [HTTPCookie] = HTTPCookieStorage.shared.cookies(for: url)!
        //: for cookie in cookieArr {
        for cookie in cookieArr {
            //: if cookie.name.uppercased() == "UID" {
            if cookie.name.uppercased() == (kStr_itemTouchStatusData.replacingOccurrences(of: "normal", with: "UI")) {
                //: return cookie.value
                return cookie.value
            }
        }
        //: return ""
        return ""
    }

    // 重置参数
    //: func func__reSet() {
    func showSet() {
        //: loginUserMode = LoginUserModel.init()
        loginUserMode = EqualMeasurable()
        // 首页列表筛选条件
        //: SEARCH_AGE = "Any".localized
        kLet_likeContent = (String(kStr_viewName)).localized
        //: SEARCH_VIDEOCOVER = "Any".localized
        kLet_displayTitle = (String(kStr_viewName)).localized
    }
}

//: extension LocationThen {
extension LocationThen {
    /// 更改用户登录状态
    /// - Parameter isLogin: 是否登录
    //: func func__UserLoginChanged(isLogin: Bool) {
    func smallness(isLogin: Bool) {
        //: if isLogin {
        if isLogin {
            //: Defaults.set(LocationThen.share.loginUserMode.userID, forKey: TalkingLoginUidCacheKey)
            kLet_managerValue.set(LocationThen.share.loginUserMode.userID, forKey: kLet_bottomText)
            //: } else {
        } else {
            //: LayerConversationListener.shared.func__LogingOut()
            LayerConversationListener.shared.failure()
            //: Defaults.removeObject(forKey: TalkingLoginUidCacheKey)
            kLet_managerValue.removeObject(forKey: kLet_bottomText)
            //: func__cleanPrevLoginData()
            searchColorMore()
//            ViewManagerAddrTool.share.func__removeAllCookies()
            // 清除礼物缓存
            //: TalkingChatGiftManager.share.gift_clearMemoryCache(showRed: false)
            BlockThen.share.bestowmentAddRubyRed(showRed: false)
        }
    }

    //: func func__checkAppConfigModeNeedUpdate() {
    func sex() {
        //: let configInfo = Defaults.dictionary(forKey: TalkingAppConfigKey)
        let configInfo = kLet_managerValue.dictionary(forKey: kLet_reasonText)
        //: if let configModel = JSONDeserializer<AppConfigModel>.deserializeFrom(dict: configInfo, designatedPath: nil) {
        if let configModel = JSONDeserializer<CollectionUpConfigModel>.deserializeFrom(dict: configInfo, designatedPath: nil) {
            //: LocationThen.share.appConfigMode = configModel
            LocationThen.share.appConfigMode = configModel
        }
        //: if let status = LocationThen.share.reachability?.connection, status != .unavailable {
        if let status = LocationThen.share.reachability?.connection, status != .unavailable {
            //: func__loadAppConfigData()
            pushSection()
            //: } else {
        } else {
            //: NotificationCenter.default.addObserver(self, selector: #selector(reachabilityChanged(note:)), name: .reachabilityChanged, object: nil)
            NotificationCenter.default.addObserver(self, selector: #selector(say(note:)), name: .reachabilityChanged, object: nil)
        }
    }

    //: func func__loadAppConfigData() {
    func pushSection() {
        //: AppManagerRequest.requestAppConfig { succeed, result, errorModel in
        SubThen.toTask { succeed, _, _ in
            //: if succeed {
            if succeed {
                //: NotificationCenter.default.removeObserver(self, name: .reachabilityChanged, object: nil)
                NotificationCenter.default.removeObserver(self, name: .reachabilityChanged, object: nil)
            }
        }
    }

    //: func func__loadCurrentLoginInfoData() {
    func groupData() {
        //: let userInfo = Defaults.dictionary(forKey: TalkingLoginUserInfoCacheKey)
        let userInfo = kLet_managerValue.dictionary(forKey: kLet_systemName)
        //: if let userModel = JSONDeserializer<LoginUserModel>.deserializeFrom(dict: userInfo, designatedPath: nil) {
        if let userModel = JSONDeserializer<EqualMeasurable>.deserializeFrom(dict: userInfo, designatedPath: nil) {
            //: loginUserMode = userModel
            loginUserMode = userModel
        }
    }

    //: func func__cleanPrevLoginData() {
    func searchColorMore() {
        //: func__reSet()
        showSet()
        //: Defaults.removeObject(forKey: TalkingLoginUserInfoCacheKey)
        kLet_managerValue.removeObject(forKey: kLet_systemName)
//        let oldServerUrl: String = ViewManagerAddrTool.share.serverUrlStr
//        if oldServerUrl.count > 0 {
//            let oldCookies: [HTTPCookie] = HTTPCookieStorage.shared.cookies(for: URL.init(string: oldServerUrl)!)!
//            for cookies in oldCookies {
//                if cookies.name.uppercased() == "PHPSESSID" {
//                    HTTPCookieStorage.shared.deleteCookie(cookies)
//                } else if(cookies.name.uppercased() == "UID") {
//                    HTTPCookieStorage.shared.deleteCookie(cookies)
//                }
//            }
//        }
    }

    //: func func__loadUserTagCacheData() -> Any? {
    func removeReasonCompare() -> Any? {
        // MARK: 数据的读取

        //: let jsonPath = FileManager.CachesDirectory()+"UserBasicInfoSetting/userTag.json"
        let jsonPath = FileManager.overDirectory() + String(bytes: kStr_userName.reversed(), encoding: .utf8)!
        //: if FileManager.judgeFileOrFolderExists(filePath: jsonPath) {
        if FileManager.levelPhoto(filePath: jsonPath) {
            //: let dataInfo = FileManager.default.contents(atPath: jsonPath)
            let dataInfo = FileManager.default.contents(atPath: jsonPath)
            //: let readStr = String.init(data: dataInfo!, encoding: .utf8)
            let readStr = String(data: dataInfo!, encoding: .utf8)
            //: if let tagModel = JSONDeserializer<UserTagModel>.deserializeFrom(json: readStr) {
            if let tagModel = JSONDeserializer<UpwardModelType>.deserializeFrom(json: readStr) {
                //: printLog(message: "获取数据")
                pathLine(message: (String(kStr_managerName)))
                //: return tagModel
                return tagModel
                //: } else {
            } else {
                //: printLog(message: "json 解析失败")
                pathLine(message: (kStr_stackText.replacingOccurrences(of: "app", with: "so") + " \u{89e3}析\u{5931}" + kStr_ofShouldData.capitalized))
            }
        }
        //: return nil
        return nil
    }

    //: func func__listenRequestHasInit() {
    func tillSharedAll() {
        //: self.rx.observeWeakly(Bool.self, "request_HasInit")
        self.rx.observeWeakly(Bool.self, (String(kStr_nameUserData) + String(kStr_centerAppName)))
            //: .subscribe(onNext: { (value) in
            .subscribe(onNext: { value in
                //: let valueBool = value ?? false
                let valueBool = value ?? false
                //: if valueBool {
                if valueBool {
                    //: } else {
                } else {
                    //: AppManagerRequest.func__initAppRequest()
                    SubThen.candid()
                }
                //: })
            })
            //: .disposed(by: disposeBag)
            .disposed(by: disposeBag)
    }

    /// 网络状态监测
    //: func startNotifierNetwork() {
    func chapiter() {
        //: if self.reachability == nil {
        if self.reachability == nil {
            //: guard let reachability = try? Reachability() else { return }
            guard let reachability = try? Reachability() else { return }
            //: self.reachability = reachability
            self.reachability = reachability
            //: reachability.whenReachable = { reach in
            reachability.whenReachable = { reach in
                //: switch reach.connection {
                switch reach.connection {
                //: case .wifi:
                case .wifi:
                    //: self.networkStatus = .Wifi
                    self.networkStatus = .Wifi
                    //: printLog(message: "Reachable via WiFi")
                    pathLine(message: (String(kStr_atText) + String(kStr_currentValue)))
                //: case .cellular:
                case .cellular:
                    //: self.networkStatus = .Cellular
                    self.networkStatus = .Cellular
                    //: printLog(message: "Reachable via Cellular")
                    pathLine(message: (String(kStr_modelRandomData)))
                //: default:
                default:
                    //: self.networkStatus = .Unavailable
                    self.networkStatus = .Unavailable
                    //: printLog(message: "Network not reachable")
                    pathLine(message: (String(kStr_cardName) + String(kStr_monthTitle) + String(kStr_hiddenName)))
                }
            }
            //: reachability.whenUnreachable = { _ in
            reachability.whenUnreachable = { _ in
                //: self.networkStatus = .Unavailable
                self.networkStatus = .Unavailable
                //: printLog(message: "Not reachable")
                pathLine(message: (String(kStr_equalValue.suffix(4)) + kStr_liveText.replacingOccurrences(of: "section", with: "ea") + "hable"))
            }

            //: do {
            do {
                //: try reachability.startNotifier()
                try reachability.startNotifier()
                //: } catch {
            } catch {
                //: printLog(message: "Unable to start notifier")
                pathLine(message: (String(kStr_imageTitle.suffix(6)) + " to s" + kStr_fatalData.replacingOccurrences(of: "name", with: "ta") + String(kStr_modelName.suffix(5)) + "fier"))
            }
        }
    }

    //: @objc func reachabilityChanged(note: Notification) {
    @objc func say(note: Notification) {
        //: let reachability = note.object as? Reachability
        let reachability = note.object as? Reachability
        //: if reachability?.connection != .unavailable {
        if reachability?.connection != .unavailable {
            //: func__loadAppConfigData()
            pushSection()
        }
    }
}
