
//: Declare String Begin

/*: "WEBVIEW_THIRD_REFRESHCOIN_NOTIFICATION" :*/
fileprivate let kStr_shareValue:[UInt8] = [0x5f,0x4d,0x4a,0x5e,0x41,0x4d,0x5f,0x57,0x5c,0x40,0x41,0x5a,0x4c,0x57,0x5a,0x4d,0x4e,0x5a,0x4d,0x5b,0x40,0x4b,0x47,0x41,0x46,0x57,0x46,0x47,0x5c,0x41,0x4e,0x41,0x4b,0x49,0x5c,0x41,0x47,0x46]

private func indexTable(icon num: UInt8) -> UInt8 {
    return num ^ 8
}

/*: "goodsId" :*/
fileprivate let kStr_sharedValue:String = "manager"
fileprivate let kStr_viewName:String = "odsIdfor constraint"

/*: "source" :*/
fileprivate let kStr_blockValue:String = "pop"
fileprivate let kStr_imageName:[Character] = ["o","u","r","c","e"]

/*: "type" :*/
fileprivate let kStr_withData:String = "typequal"

/*: "title" :*/
fileprivate let kStr_childIconValue:String = "titlpost"

/*: "url" :*/
fileprivate let kStr_deadlineText:String = "umessagel"

/*: "money" :*/
fileprivate let kStr_sharedText:[Character] = ["m","o","n","e","y"]

/*: "Other" :*/
fileprivate let kStr_voiceTitle:String = "Otherimage need moment container"

/*: "show" :*/
fileprivate let kStr_buttonTitle:String = "SHOW"

/*: "target" :*/
fileprivate let kStr_directionData:[Character] = ["t","a","r","g","e","t"]

/*: "eventName" :*/
fileprivate let kStr_iconData:String = "eventNameuser player"

/*: "jsonString" :*/
fileprivate let kStr_textName:String = "jsonScurrent guard back"

/*: "coin" :*/
fileprivate let kStr_observerName:[Character] = ["c","o","i","n"]

/*: "uid" :*/
fileprivate let kStr_userValue:String = "uinumber"

/*: "未实现的js事件： :*/
fileprivate let kStr_pathData:String = "未实\u{73b0}的js事件"
fileprivate let kStr_keyContent:String = "\u{ff1a}"

/*: "PurchaseClick" :*/
fileprivate let kStr_accountValue:String = "none self model error viewPurcha"
fileprivate let kStr_indicatorData:String = "seClickmake position"

/*: "Retry After or Go to " :*/
fileprivate let kStr_buttonValue:String = "near extension modelRetry"
fileprivate let kStr_modelTitle:String = "fill manager fatal moder or G"
fileprivate let kStr_angleData:[Character] = [" "]

/*: "Feedback" :*/
fileprivate let kStr_imageMessageValue:String = "head"
fileprivate let kStr_borderName:[Character] = ["e","e","d","b","a","c","k"]

/*: " to contact us" :*/
fileprivate let kStr_modelText:String = " ttitle model share number"
fileprivate let kStr_noValue:String = "data position path match makero co"

/*: "Apple" :*/
fileprivate let kStr_managerData:String = "lab color model i localApple"

/*: " apple支付充值失败： :*/
fileprivate let kStr_messageValue:String = "self guard at up self app"
fileprivate let kStr_nameValue:[Character] = ["l","e","支","\u{4ed8}","充","值","失","败","："]

/*: "payResultCallback();" :*/
fileprivate let kStr_scaleName:String = "payRelet var"
fileprivate let kStr_fadeData:String = "smake"
fileprivate let kStr_cameraName:String = "ltCallcorner manager share content"

/*: "USD" :*/
fileprivate let kStr_arrayTitle:String = "USframe"

/*: "amount" :*/
fileprivate let kStr_postText:[UInt8] = [0xbd,0xb1,0xb3,0xa9,0xb2,0xa8]

private func marginOfSafety(current num: UInt8) -> UInt8 {
    return num ^ 220
}

/*: "getSystemNotificationtStatus(true)" :*/
fileprivate let kStr_toModelSocialContent:[UInt8] = [0x29,0x65,0x75,0x72,0x74,0x28,0x73,0x75,0x74,0x61,0x74,0x53,0x74,0x6e,0x6f,0x69,0x74,0x61,0x63,0x69,0x66,0x69,0x74,0x6f,0x4e,0x6d,0x65,0x74,0x73,0x79,0x53,0x74,0x65,0x67]

/*: "getSystemNotificationtStatus(false)" :*/
fileprivate let kStr_bringGestureData:[UInt8] = [0x74,0x76,0x67,0x40,0x6a,0x60,0x67,0x76,0x7e,0x5d,0x7c,0x67,0x7a,0x75,0x7a,0x70,0x72,0x67,0x7a,0x7c,0x7d,0x67,0x40,0x67,0x72,0x67,0x66,0x60,0x3b,0x75,0x72,0x7f,0x60,0x76,0x3a]

/*: "mfBean" :*/
fileprivate let kStr_whatData:[UInt8] = [0xdf,0xd4,0xf0,0xd7,0xd3,0xdc]

private func fictitiousName(view num: UInt8) -> UInt8 {
    return num ^ 178
}

/*: "%.2f" :*/
fileprivate let kStr_editValue:String = "%.2ftime progress in to"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  ClientReactiveCompatible+JSEvent.swift
//  AbroadTalking
//
//  Created by young on 2022/9/6.
//

//: import UIKit
import UIKit
//: import WebKit
import WebKit

// 通知三方H5刷新金币
//: public let WEBVIEW_THIRD_REFRESHCOIN_NOTIFICATION = NSNotification.Name(rawValue: "WEBVIEW_THIRD_REFRESHCOIN_NOTIFICATION")
public let kLet_screenKeyHeightData = NSNotification.Name(rawValue: String(bytes: kStr_shareValue.map{indexTable(icon: $0)}, encoding: .utf8)!)

//: extension TalkingWebViewController {
extension ClientReactiveCompatible {
    /// 处理JS事件
    /// - Parameters:
    ///   - message: 消息
    //: func HandleScriptMessage(_ message: WKScriptMessage) {
    func handleMessage(_ message: WKScriptMessage) {
        //: let type = WebMethodType(rawValue: message.name)
        let type = SelectedComparable(rawValue: message.name)
        //: let json = JSON(message.body)
        let json = JSON(message.body)
        //: switch type {
        switch type {
        //: case .MethodType_Exit:
        case .MethodType_Exit:
            //: self.func__closeAction(sender: nil)
            self.titleCount(sender: nil)

        //: case .MethodType_needLogin:
        case .MethodType_needLogin:
            //: needLogin()
            headView()

        //: case .MethodType_apPay:
        case .MethodType_apPay:
            //: applePay(productId: json["goodsId"].stringValue, source: json["source"].intValue, payType: .Pay)
            prepay(productId: json[(kStr_sharedValue.replacingOccurrences(of: "manager", with: "go") + String(kStr_viewName.prefix(5)))].stringValue, source: json[(kStr_blockValue.replacingOccurrences(of: "pop", with: "s") + String(kStr_imageName))].intValue, payType: .Pay)

        //: case .MethodType_apPay_subscribe:
        case .MethodType_apPay_subscribe:
            //: if json["type"].stringValue == "6" {
            if json[(kStr_withData.replacingOccurrences(of: "equal", with: "e"))].stringValue == "6" {
                //: isVideoCallRechargeHalfPage = true
                isVideoCallRechargeHalfPage = true
                //: RECHARGE_CLICK_EVENT = subscribtionRecordButton
                kLet_tableNameValue = kLet_screenReplaceName
                //: } else if json["type"].stringValue == "7" { // 点击订阅弹窗的订阅按钮
            } else if json[(kStr_withData.replacingOccurrences(of: "equal", with: "e"))].stringValue == "7" { // 点击订阅弹窗的订阅按钮
                //: RECHARGE_CLICK_EVENT = subscribtionRecordButton
                kLet_tableNameValue = kLet_screenReplaceName
            }
            //: applePay_subscribe(type: json["type"].stringValue, productId: json["goodsId"].stringValue, payType: .Subscribe)
            deviceImage(type: json[(kStr_withData.replacingOccurrences(of: "equal", with: "e"))].stringValue, productId: json[(kStr_sharedValue.replacingOccurrences(of: "manager", with: "go") + String(kStr_viewName.prefix(5)))].stringValue, payType: .Subscribe)

        //: case .MethodType_changeMenuButton:
        case .MethodType_changeMenuButton:
            //: changeRightMenuButton(title: json["title"].stringValue, url: json["url"].stringValue)
            abduct(title: json[(kStr_childIconValue.replacingOccurrences(of: "post", with: "e"))].stringValue, url: json[(kStr_deadlineText.replacingOccurrences(of: "message", with: "r"))].stringValue)

        //: case .MethodType_refreshCoin:
        case .MethodType_refreshCoin:
            //: refreshCoin(price: Double(json["money"].stringValue) ?? 0, payType: "Other")
            chief(price: Double(json[(String(kStr_sharedText))].stringValue) ?? 0, payType: (String(kStr_voiceTitle.prefix(5))))

        //: case .MethodType_appearsOnGiftBroadcast:
        case .MethodType_appearsOnGiftBroadcast:
            //: appearsOnGiftBroadcast(show: json["show"].boolValue)
            talkToExisting(show: json[(kStr_buttonTitle.lowercased())].boolValue)

        //: case.MethodType_ToUrl:
        case .MethodType_ToUrl:
            //: openTourl(url: json.rawString() ?? "")
            tourlUrl(url: json.rawString() ?? "")

        //: case .MethodType_customerService:
        case .MethodType_customerService:
            //: EffectPushManager.share.func__pushToPriveteChatVC(chatID: TableMacroDefine.getCustomerServiceID())
            EffectPushManager.share.fromCompletion(chatID: TableMacroDefine.isothermal())

        //: case.setRightMenuButton:
        case .setRightMenuButton:
            //: break
            break

        //: case .MethodType_taskCenter:
        case .MethodType_taskCenter:
            //: let target = json["target"].intValue
            let target = json[(String(kStr_directionData))].intValue
            //: self.reloadInputViews()
            self.reloadInputViews()
            //: switch target {
            switch target {
            //: case 1:
            case 1: /// 签到领金币页
                //: EffectPushManager.share.func__pushToSubscribePageWebVC()
                EffectPushManager.share.verso()

            //: case 2:
            case 2: /// 个人信息编辑页面
                //: let vc = TalkingEditProfilesVC.init()
                let vc = SizeThen()
                //: self.navigationController?.pushViewController(vc, animated: true)
                self.navigationController?.pushViewController(vc, animated: true)

            //: case 3:
            case 3: /// 真人认证页面
                //: verifyBtnClick()
                pathModelPlay()
            //: case 4:
            case 4: /// 发布动态页面
                //: tabberSelete(type: TabBarItemType.Moment.rawValue)
                occurrence(type: PubSendable.Moment.rawValue)
                /// 防止动态首页广播还没创建
                //: DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 0.5) {
                DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 0.5) {
                    //: NotificationCenter.default.post(name: FREEBTN_UPLOAD_POST_NOTIFICATION,
                    NotificationCenter.default.post(name: kLet_keyValue,
                                                    //: object: nil,
                                                    object: nil,
                                                    //: userInfo: nil)
                                                    userInfo: nil)
                }
            //: case 5:
            case 5: /// 我的页面
                //: tabberSelete(type: TabBarItemType.Account.rawValue)
                occurrence(type: PubSendable.Account.rawValue)
            //: case 6:
            case 6: /// 首页
                //: tabberSelete(type: TabBarItemType.Social.rawValue)
                occurrence(type: PubSendable.Social.rawValue)
            //: case 7:
            case 7: /// 消息列表页
                //: tabberSelete(type: TabBarItemType.Message.rawValue)
                occurrence(type: PubSendable.Message.rawValue)
            //: case 8:
            case 8: /// Greet setting页
                //: let vc = TalkingAutoGreetSettingVC()
                let vc = CaseReactiveCompatible()
                //: navigationController?.pushViewController(vc, animated: true)
                navigationController?.pushViewController(vc, animated: true)
            //: case 9:
            case 9: /// 动态列表页
                //: tabberSelete(type: TabBarItemType.Moment.rawValue)
                occurrence(type: PubSendable.Moment.rawValue)
            //: default:
            default:
                //: break
                break
            }
        //: case .MethodType_systemNotification:
        case .MethodType_systemNotification:
            //: let type = json["type"].intValue
            let type = json[(kStr_withData.replacingOccurrences(of: "equal", with: "e"))].intValue
            //: changeNotifaStatus(type: type)
            quits(type: type)

        //: case .MethodType_refreshPoint:
        case .MethodType_refreshPoint:
            //: refreshPoint()
            atTo()

        //: case .MethodType_onEvent:
        case .MethodType_onEvent:
            //: reportEvent(eventName: json["eventName"].stringValue, jsonStr: json["jsonString"].stringValue)
            separate(eventName: json[(String(kStr_iconData.prefix(9)))].stringValue, jsonStr: json[(String(kStr_textName.prefix(5)) + "tring")].stringValue)

        //: case .MethodType_refreshCoinAll:
        case .MethodType_refreshCoinAll:
            //: req_refreshCoinAll(coin: json["coin"].stringValue)
            rowMessage(coin: json[(String(kStr_observerName))].stringValue)

        //: case .MethodType_refreshPackage:
        case .MethodType_refreshPackage:
            //: req_refreshPackage()
            lyric()

        //: case .MethodType_vibrate:
        case .MethodType_vibrate:
            //: phoneVibrate()
            ofTo()

        //: case .MethodType_goFreeVideo:
        case .MethodType_goFreeVideo:
            //: AppManagerRequest.func__requestUserInfo { succeed, result, errorModel in
            SubThen.channel { _, _, _ in
                //: if LocationThen.share.loginUserMode.jumpType == 1 {
                if LocationThen.share.loginUserMode.jumpType == 1 {
                    //: self.func__closeAction(sender: nil)
                    self.titleCount(sender: nil)
                    //: DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 0.5) {
                    DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 0.5) {
                        //: EffectPushManager.share.func__pushToRandomVideoVC(isBeginRand: false)
                        EffectPushManager.share.die(isBeginRand: false)
                    }
                }
            }

        //: case .MethodType_goMessageDetail:
        case .MethodType_goMessageDetail:
            //: EffectPushManager.share.func__pushToPriveteChatVC(chatID: json["uid"].stringValue)
            EffectPushManager.share.fromCompletion(chatID: json[(kStr_userValue.replacingOccurrences(of: "number", with: "d"))].stringValue)

        //: case .MethodType_goPersonInfo:
        case .MethodType_goPersonInfo:
            //: EffectPushManager.share.func__pushToUserDetailVC(uid: json["uid"].stringValue)
            EffectPushManager.share.userAdd(uid: json[(kStr_userValue.replacingOccurrences(of: "number", with: "d"))].stringValue)

        //: case .MethodType_showRechargeDialog:
        case .MethodType_showRechargeDialog:
            //: EffectPushManager.share.func__pushToHalfWebVC(webViewType: .RechargeHalfPage)
            EffectPushManager.share.markColor(webViewType: .RechargeHalfPage)

        //: case .OpenRetainPopup:
        case .OpenRetainPopup:
            //: self.func__closeAction(sender: nil)
            self.titleCount(sender: nil)
        //: case .openBrowserWithUrl:
        case .openBrowserWithUrl:
            //: openToOutUrl(url: json.rawString() ?? "")
            americanState(url: json.rawString() ?? "")
        //: case .none:
        case .none:
            //: printLog(message: "未实现的js事件：\(message.name)")
            pathLine(message: (kStr_pathData + kStr_keyContent) + "\(message.name)")
        }
    }

    // MARK: - Event

    /// 苹果订阅
    /// - Parameters:
    ///   - type: 订阅入口；1：首页banner，2：全屏充值页，3：半屏充值页，4：领取金币弹窗
    ///   - productId: 商品Id
    ///   - payType: 支付类型
    //: private func applePay_subscribe(type: String, productId: String, payType: ApplePayType) {
    private func deviceImage(type _: String, productId: String, payType: ValueType) {
        //: applePay(productId: productId, payType: payType)
        prepay(productId: productId, payType: payType)
    }

    /// 苹果支付/订阅
    /// - Parameters:
    ///   - productId: productId: 商品Id
    ///   - source: 充值来源
    //: private func applePay(productId: String, source: Int = -1, payType: ApplePayType) {
    private func prepay(productId: String, source: Int = -1, payType: ValueType) {
        //: if LocationThen.share.loginUid.isEmptyString {
        if LocationThen.share.loginUid.isEmptyString {
            //: return
            return
        }
        //: FirebaseAnalyticsManager.share.logEvent(name: "PurchaseClick")
        FillShowAnalyticsManager.share.parameters(name: (String(kStr_accountValue.suffix(6)) + String(kStr_indicatorData.prefix(7))))

        //: ProgressHUD.show()
        TintProgressHUD.weight()
        //: var index = isVideoCallRechargeHalfPage ? 1: 0
        var index = isVideoCallRechargeHalfPage ? 1 : 0
        //: if source != -1 {
        if source != -1 {
            //: index = source
            index = source
        }
        //: AppleIAPManager.shared.iap_startPurchase(productId: productId, payType: payType, source: index) { type, reportMoney in
        ViewLayerManager.shared.product(productId: productId, payType: payType, source: index) { type, reportMoney in
            //: ProgressHUD.dismiss()
            TintProgressHUD.inkingPadDismiss()
            //: DispatchQueue.main.async { [self] in
            DispatchQueue.main.async { [self] in
                //: switch type {
                switch type {
                //: case .verityFail:
                case .verityFail:
                    TintProgressHUD.errorToast( "Retry After or Go to \"Feedback\" to contact us".localized)
                //: case .veritySucceed:
                case .veritySucceed:
                    //: appleIAPVeritySucceed(price: reportMoney)
                    edibleFruitTo(price: reportMoney)
                //: case .renewSucceed:
                case .renewSucceed:
                    //: refreshCoin(price: reportMoney, payType: "Apple")
                    chief(price: reportMoney, payType: (String(kStr_managerData.suffix(5))))
                //: default:
                default:
                    //: printLog(message: " apple支付充值失败：\(type.rawValue)")
                    pathLine(message: (String(kStr_messageValue.suffix(5)) + String(kStr_nameValue)) + "\(type.rawValue)")
                }
            }
        }
    }

    /// 设置导航右侧按钮
    /// - Parameters:
    ///   - title: 标题
    ///   - url: 地址
    //: private func changeRightMenuButton(title: String, url: String) {
    private func abduct(title: String, url: String) {
        //: let rightBtn = TalkingButton()
        let rightBtn = OverdoTalkingButton()
        //: rightBtn.titleLabel?.font = .systemFont(ofSize: 14)
        rightBtn.titleLabel?.font = .systemFont(ofSize: 14)
        //: rightBtn.setTitle(title, for: .normal)
        rightBtn.setTitle(title, for: .normal)
        //: rightBtn.setTitleColor(.RGBA(51, 51, 51, 1), for: .normal)
        rightBtn.setTitleColor(.largesse(51, 51, 51, 1), for: .normal)
        //: rightBtn.addTarget(self, action: #selector(rightButtonClick), for: .touchUpInside)
        rightBtn.addTarget(self, action: #selector(wrapColor), for: .touchUpInside)
        //: rightBtn.sizeToFit()
        rightBtn.sizeToFit()
        //: rightBtn.userInfo = ["url": url]
        rightBtn.userInfo = [(kStr_deadlineText.replacingOccurrences(of: "message", with: "r")): url]
        //: self.navigationItem.rightBarButtonItem = UIBarButtonItem(customView: rightBtn)
        self.navigationItem.rightBarButtonItem = UIBarButtonItem(customView: rightBtn)
    }

    //: @objc func rightButtonClick(button: TalkingButton) {
    @objc func wrapColor(button: OverdoTalkingButton) {
        //: guard let urlString = button.userInfo?["url"] as? String else {
        guard let urlString = button.userInfo?[(kStr_deadlineText.replacingOccurrences(of: "message", with: "r"))] as? String else {
            //: return
            return
        }

        //: self.urlStr = urlString
        self.urlStr = urlString
        //: func__startRequest()
        playerRequest()
    }

    /// 退出登录
    //: private func needLogin() {
    private func headView() {
        //: guard Int(LocationThen.share.loginUid) ?? 0 > 0 else {
        guard Int(LocationThen.share.loginUid) ?? 0 > 0 else {
            //: self.webView.reload()
            self.webView.reload()
            //: return
            return
        }

        //: NotificationCenter.default.post(name: DID_LOGIN_OUT_SUCCESS_NOTIFICATION,
        NotificationCenter.default.post(name: kLet_statusFailData,
                                        //: object: nil,
                                        object: nil,
                                        //: userInfo: nil)
                                        userInfo: nil)
    }

    /// 苹果 支付/订阅 成功验证通过
    /// - Parameter price: 充值金额
    //: func appleIAPVeritySucceed(price: Double) {
    func edibleFruitTo(price: Double) {
        //: self.webView.evaluateJavaScript("payResultCallback();") { data, error in
        self.webView.evaluateJavaScript((String(kStr_scaleName.prefix(5)) + kStr_fadeData.replacingOccurrences(of: "make", with: "u") + String(kStr_cameraName.prefix(6)) + "back();")) { _, _ in
        }
        //: refreshCoin(price: price, payType: "Apple")
        chief(price: price, payType: (String(kStr_managerData.suffix(5))))
    }

    /// 支付/订阅 成功刷新个人信息【apple/paypal】
    /// - Parameters:
    ///   - price: 充值金额
    ///   - payType: 类型
    //: private func refreshCoin(price: Double, payType: String) {
    private func chief(price: Double, payType: String) {
        //: NotificationCenter.default.post(name: UPDATE_USER_GETMYINFO_NOTIFICATION, object: nil)
        NotificationCenter.default.post(name: kLet_successEnterValue, object: nil)
        //: NotificationCenter.default.post(name: UPDATE_USER_GETINFOCOLUMN_NOTIFICATION, object: nil)
        NotificationCenter.default.post(name: kLet_lineValue, object: nil)
        //: NotificationCenter.default.post(name: REFRESH_INDEX_GETCONFIG_NOTIFICATION, object: nil)
        NotificationCenter.default.post(name: kLet_maxTitle, object: nil)
        //: NotificationCenter.default.post(name: USER_UPDATE_LOUNGEPLUSINFO_NOTIFICATION, object: nil)
        NotificationCenter.default.post(name: kLet_viewData, object: nil)
        // 成功埋点
        //: TalkingAdjustManager.share.addPurchasedEvent(price: price, currency: "USD")
        QualityAdjustManager.share.numberercalate(price: price, currency: (kStr_arrayTitle.replacingOccurrences(of: "frame", with: "D")))
        //: FirebaseAnalyticsManager.share.trackPurchase(payType: payType, price: price, currency: "USD")
        FillShowAnalyticsManager.share.beyondStart(payType: payType, price: price, currency: (kStr_arrayTitle.replacingOccurrences(of: "frame", with: "D")))

        // 半屏充值成功埋点
        //: if RECHARGE_CLICK_EVENT.count > 0 {
        if kLet_tableNameValue.count > 0 {
            //: uploadRecord.uploadRecordEvent(eventID: RECHARGE_CLICK_EVENT, parameterStr: ["amount": price])
            kLet_dismissValue.showTheme(eventID: kLet_tableNameValue, parameterStr: [String(bytes: kStr_postText.map{marginOfSafety(current: $0)}, encoding: .utf8)!: price])
        }

        // 支付成功发送通知，调用三方js事件
        //: NotificationCenter.default.post(name: WEBVIEW_THIRD_REFRESHCOIN_NOTIFICATION, object: nil)
        NotificationCenter.default.post(name: kLet_screenKeyHeightData, object: nil)
    }

    /// 广播设置
    /// - Parameter show: 是否上广播
    //: private func appearsOnGiftBroadcast(show: Bool) {
    private func talkToExisting(show _: Bool) {}

    //: private func verifyBtnClick() {
    private func pathModelPlay() {
        //: if LocationThen.share.loginUserMode.isTPAuth == TPUserAuth.isSuccessed.rawValue {
        if LocationThen.share.loginUserMode.isTPAuth == FillContiguousBytes.isSuccessed.rawValue {
            //: return
            return
                //: } else if LocationThen.share.loginUserMode.isTPAuth == TPUserAuth.unknown.rawValue {
        } else if LocationThen.share.loginUserMode.isTPAuth == FillContiguousBytes.unknown.rawValue {
            //: EffectPushManager.share.func__pushUserVerifyController(toast: nil)
            EffectPushManager.share.retirement(toast: nil)
            //: } else if LocationThen.share.loginUserMode.isTPAuth == TPUserAuth.isOnGoing.rawValue {
        } else if LocationThen.share.loginUserMode.isTPAuth == FillContiguousBytes.isOnGoing.rawValue {
            //: let vc = TalkingFinalVerificationVC()
            let vc = ClientPathViewController()
            //: EffectPushManager.share.func__getCurrentActivityVC()?.navigationController?.pushViewController(vc, animated: true)
            EffectPushManager.share.quantityimateTarget()?.navigationController?.pushViewController(vc, animated: true)
            //: } else {
        } else {
            //: EffectPushManager.share.func__pushUserVerifyController(toast: nil)
            EffectPushManager.share.retirement(toast: nil)
        }
    }

    /// 底部tabbar切换
    //: private func tabberSelete(type: Int) {
    private func occurrence(type: Int) {
        //: guard type < self.tabBarController?.viewControllers?.count ?? 0 else { return }
        guard type < self.tabBarController?.viewControllers?.count ?? 0 else { return }
        //: let vc = self.tabBarController?.viewControllers?[type]
        let vc = self.tabBarController?.viewControllers?[type]
        //: self.tabBarController?.tabBar.isHidden = false
        self.tabBarController?.tabBar.isHidden = false
        //: self.tabBarController?.selectedIndex = type
        self.tabBarController?.selectedIndex = type
        //: self.tabBarController?.selectedViewController = vc
        self.tabBarController?.selectedViewController = vc
        //: self.navigationController?.popViewController(animated: true)
        self.navigationController?.popViewController(animated: true)
    }

    /// 获取系统通知状态
    //: private func changeNotifaStatus(type: Int) {
    private func quits(type: Int) {
        //: if type == 0 {
        if type == 0 {
            //: if let url = URL(string: UIApplication.openSettingsURLString), UIApplication.shared.canOpenURL(url) {
            if let url = URL(string: UIApplication.openSettingsURLString), UIApplication.shared.canOpenURL(url) {
                //: if #available(iOS 10.0, *) {
                if #available(iOS 10.0, *) {
                    //: UIApplication.shared.open(url, options: [:], completionHandler: nil)
                    UIApplication.shared.open(url, options: [:], completionHandler: nil)
                    //: } else {
                } else {
                    //: if UIApplication.shared.canOpenURL(url) {
                    if UIApplication.shared.canOpenURL(url) {
                        //: UIApplication.shared.openURL(url)
                        UIApplication.shared.openURL(url)
                    }
                }
            }
            //: } else if type == 1 {
        } else if type == 1 {
            //: AppManagerRequest.func__requestUserConfig { succeed, result, errorModel in }
            SubThen.imageDomain { _, _, _ in }
            //: AppManagerRequest.func__requestUserInfo { succeed, result, errorModel in }
            SubThen.channel { _, _, _ in }
            //: TalkingPermissionTool.checkPushNotification { isShow in
            PerspectiveThen.equalSectionStatus { isShow in
                //: DispatchQueue.main.sync {
                DispatchQueue.main.sync {
                    //: let str = isShow ? "getSystemNotificationtStatus(true)" : "getSystemNotificationtStatus(false)"
                    let str = isShow ? String(bytes: kStr_toModelSocialContent.reversed(), encoding: .utf8)! : String(bytes: kStr_bringGestureData.map{$0^19}, encoding: .utf8)!
                    //: self.webView.evaluateJavaScript(str) { data, error in
                    self.webView.evaluateJavaScript(str) { _, _ in
                    }
                }
            }
        }
    }

    //: private func refreshPoint() {
    private func atTo() {
        //: AppManagerRequest.func__requestUserInfo { succeed, result, errorModel in
        SubThen.channel { _, _, _ in
            //: if TalkingLiveManager.shared().isLive {
            if VideoPushListener.isGesture().isLive {
                //: NotificationCenter.default.post(name: LIVE_USER_POINT_CHANGE, object: nil, userInfo: ["mfBean": 0.0])
                NotificationCenter.default.post(name: kLet_countData, object: nil, userInfo: [String(bytes: kStr_whatData.map{fictitiousName(view: $0)}, encoding: .utf8)!: 0.0])
            }
        }
    }

    /// 刷新金币
    /// - Parameter coin: 传' ', 刷新接口；传其他，进行相加（含负数））
    //: private func req_refreshCoinAll(coin: String) {
    private func rowMessage(coin: String) {
        //: let value: Double = Double(coin) ?? 0
        let value = Double(coin) ?? 0
        //: if value == 0 {
        if value == 0 { // 刷新接口
            //: AppManagerRequest.func__getInfoColumn { succeed, result, errorModel in
            SubThen.noViewCompletion { _, _, _ in
            }
            //: } else {
        } else { // 加减
            //: let newCoin = Double(LocationThen.share.loginUserMode.mf_coin)! + value
            let newCoin = Double(LocationThen.share.loginUserMode.mf_coin)! + value
            //: LocationThen.share.loginUserMode.mf_coin = String(format: "%.2f", newCoin)
            LocationThen.share.loginUserMode.mf_coin = String(format: "%.2f", newCoin)
        }
    }

    /// 刷新礼物背包
    //: private func req_refreshPackage() {
    private func lyric() {
        //: NotificationCenter.default.post(name: GIFT_REFRESHPACKAGE_NOTIFICATION, object: nil)
        NotificationCenter.default.post(name: kLet_limitTitle, object: nil)
    }

    /// 事件上报
    /// - Parameters:
    ///   - eventName: 事件名称
    ///   - jsonStr: 事件参数
    //: private func reportEvent(eventName: String, jsonStr: String) {
    private func separate(eventName: String, jsonStr: String) {
        //: uploadRecord.uploadRecordEvent(eventID: eventName, toUid: "", jsonStr: jsonStr)
        kLet_dismissValue.digitizerInsideStatus(eventID: eventName, toUid: "", jsonStr: jsonStr)
    }

    /// 手机震动
    //: private func phoneVibrate() {
    private func ofTo() {
        //: AudioServicesPlaySystemSound(kSystemSoundID_Vibrate)
        AudioServicesPlaySystemSound(kSystemSoundID_Vibrate)
    }
}
