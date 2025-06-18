
//: Declare String Begin

/*: "%02hhx" :*/
fileprivate let kStr_valueUserName:[Character] = ["%"]
fileprivate let kStr_menuValue:String = "02hhxname equal add available view"

/*: "APNS Token =  :*/
fileprivate let kStr_messageData:[Character] = ["A","P","N"]
fileprivate let kStr_regularContent:String = "in make file size contentS To"

/*: "APNS Token Error:  :*/
fileprivate let kStr_cellValue:String = "APNtop"
fileprivate let kStr_dataModeName:String = "en Errolet error size information bar"
fileprivate let kStr_serverInputValue:String = "r: self var content"

/*: ." :*/
fileprivate let kStr_selectText:String = "."

/*: "token =  :*/
fileprivate let kStr_equalValue:String = "byoke"

/*: "extra" :*/
fileprivate let kStr_hiddenIndicatorText:[Character] = ["e","x","t","r","a"]

/*: "Unable to register for remote notifications: :*/
fileprivate let kStr_actionTargetData:[UInt8] = [0xa6,0x9d,0x92,0x91,0x9f,0x96,0xd3,0x87,0x9c,0xd3,0x81,0x96,0x94,0x9a,0x80,0x87,0x96,0x81,0xd3,0x95,0x9c,0x81,0xd3,0x81,0x96,0x9e,0x9c,0x87,0x96,0xd3,0x9d,0x9c,0x87,0x9a,0x95,0x9a,0x90,0x92,0x87,0x9a,0x9c,0x9d,0x80,0xc9]

private func giftRecord(color num: UInt8) -> UInt8 {
    return num ^ 243
}

/*: "token" :*/
fileprivate let kStr_physicsValue:[UInt8] = [0x6,0x1d,0x19,0x17,0x1c]

/*: "FCMToken" :*/
fileprivate let kStr_playerValue:String = "self block crush cameraFCMToken"

/*: _LocalPush" :*/
fileprivate let kStr_borderValue:[Character] = ["_"]
fileprivate let kStr_dropContent:String = "to color false indexLocal"

/*: "identifier" :*/
fileprivate let kStr_equalTitle:[Character] = ["i","d","e","n","t","i","f"]
fileprivate let kStr_youName:String = "byr"

/*: "fcm_options" :*/
fileprivate let kStr_fullData:String = "failure touch varfcm_opti"
fileprivate let kStr_atData:String = "osource"

/*: "image" :*/
fileprivate let kStr_targetValue:[UInt8] = [0x2b,0x2f,0x23,0x29,0x27]

fileprivate func toColor(content num: UInt8) -> UInt8 {
    let value = Int(num) - 194
    if value < 0 {
        return UInt8(value + 256)
    } else {
        return UInt8(value)
    }
}

/*: "本地推送通知 -- 用户未授权(.notDetermined)" :*/
fileprivate let kStr_resultNorValue:[UInt8] = [0xc,0x76,0x46,0xf,0x76,0x5a,0xc,0x64,0x42,0x3,0x6a,0x6b,0x3,0x6a,0x70,0xd,0x75,0x4f,0xca,0xc7,0xc7,0xca,0xd,0x7e,0x42,0xc,0x62,0x5d,0xc,0x76,0x40,0xc,0x64,0x62,0xc,0x77,0x69,0xc2,0xc4,0x84,0x85,0x9e,0xae,0x8f,0x9e,0x8f,0x98,0x87,0x83,0x84,0x8f,0x8e,0xc3]

/*: "本地推送通知 -- 用户未授权(.denied)" :*/
fileprivate let kStr_noValue:String = "本\u{5730}推送\u{901a}知"
fileprivate let kStr_lineValue:[Character] = [" ","-","-"," ","用","户","\u{672a}","授","\u{6743}"]
fileprivate let kStr_mKeyText:String = "input var let index(.den"

/*: "本地推送通知 -- 用户未授权(.ephemeral)" :*/
fileprivate let kStr_data:[Character] = ["本","地","推","送","通","知"," ","-","-"," ","用","户","未","授","权","(",".","e"]
fileprivate let kStr_toData:[Character] = ["p","h","e","m","e","r","a","l",")"]

/*: "本地推送通知 -- 用户未授权" :*/
fileprivate let kStr_toolTitleValue:String = "\u{672c}地推送通\u{77e5}"
fileprivate let kStr_emptyName:String = "view权"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  ItemLineBaseDelegate+APNS.swift
//  AbroadTalking
//
//  Created by Hemming on 2022/9/23.
//

//: import FirebaseCore
import FirebaseCore
//: import FirebaseMessaging
import FirebaseMessaging
//: import Foundation
import Foundation
//: import UserNotifications
import UserNotifications

//: public extension AppDelegateHelper {
public extension ItemLineBaseDelegate {
    /// 成功的回调
    //: class func application(didRegisterForRemoteNotificationsWithDeviceToken deviceToken: Data) {
    class func warpath(didRegisterForRemoteNotificationsWithDeviceToken deviceToken: Data) {
        //: let deviceStr = deviceToken.map { String(format: "%02hhx", $0) }.joined()
        let deviceStr = deviceToken.map { String(format: "%02hhx", $0) }.joined()
        //: Messaging.messaging().apnsToken = deviceToken
        Messaging.messaging().apnsToken = deviceToken
        //: printLog(message: "APNS Token = \(deviceStr)")
        pathLine(message: (String(kStr_messageData) + String(kStr_regularContent.suffix(4)) + "ken = ") + "\(deviceStr)")
        //: Messaging.messaging().token { token, error in
        Messaging.messaging().token { token, error in
            //: if let error = error {
            if let error = error {
                //: MiniLoadThen.appLine(msg: "APNS Token Error: \(error).")
                MiniLoadThen.appLine(msg: (kStr_cellValue.replacingOccurrences(of: "top", with: "S") + " Tok" + String(kStr_dataModeName.prefix(7)) + String(kStr_serverInputValue.prefix(3))) + "\(error).")
                //: } else if let token = token {
            } else if let token = token {
                //: printLog(message: "token = \(token)")
                pathLine(message: (kStr_equalValue.replacingOccurrences(of: "by", with: "t") + "n = ") + "\(token)")
            }
        }
    }

    /// 收到远程推送（kill app）
    //: class func application(didReceiveRemoteNotification userInfo: [AnyHashable: Any]) {
    class func willCell(didReceiveRemoteNotification userInfo: [AnyHashable: Any]) {
        //: Messaging.messaging().appDidReceiveMessage(userInfo)
        Messaging.messaging().appDidReceiveMessage(userInfo)
        //: if UIApplication.shared.applicationState != .active {
        if UIApplication.shared.applicationState != .active {
            //: DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 1) {
            DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 1) {
                //: if userInfo.keys.contains("extra") {
                if userInfo.keys.contains((String(kStr_hiddenIndicatorText))) {
                    //: let extraStr = userInfo["extra"] as? String ?? ""
                    let extraStr = userInfo[(String(kStr_hiddenIndicatorText))] as? String ?? ""
                    //: TalkingAPNSManager.share.APNSUserInfoStr = extraStr
                    LayerTalkingManager.share.APNSUserInfoStr = extraStr
                    //: TalkingAPNSManager.share.launchFromApns = true
                    LayerTalkingManager.share.launchFromApns = true
                }
            }
        }
    }

    /// 失败的回调
    //: class func application(didFailToRegisterForRemoteNotificationsWithError error: Error) {
    class func missToForErrorApplicationNotificationsFileWithFar(didFailToRegisterForRemoteNotificationsWithError error: Error) {
        //: printLog(message: "Unable to register for remote notifications:\(error.localizedDescription)")
        pathLine(message: String(bytes: kStr_actionTargetData.map{giftRecord(color: $0)}, encoding: .utf8)! + "\(error.localizedDescription)")
    }

    /// 点击消息（app运行中）
    //: class func userNotificationCenter(didReceive response: UNNotificationResponse, withCompletionHandler completionHandler: @escaping () -> Void) {
    class func sectionColor(didReceive response: UNNotificationResponse, withCompletionHandler completionHandler: @escaping () -> Void) {
        //: if UIApplication.shared.applicationState == .active {
        if UIApplication.shared.applicationState == .active {
            //: TalkingAPNSManager.share.APNSUserInfoStr = ""
            LayerTalkingManager.share.APNSUserInfoStr = ""
            //: TalkingAPNSManager.share.launchFromApns = false
            LayerTalkingManager.share.launchFromApns = false

            //: } else {
        } else {
            //: let userInfo = response.notification.request.content.userInfo
            let userInfo = response.notification.request.content.userInfo
            //: if userInfo.keys.contains("extra") {
            if userInfo.keys.contains((String(kStr_hiddenIndicatorText))) {
                //: let extraStr = userInfo["extra"] as? String ?? ""
                let extraStr = userInfo[(String(kStr_hiddenIndicatorText))] as? String ?? ""
                //: TalkingAPNSManager.share.APNSUserInfoStr = extraStr
                LayerTalkingManager.share.APNSUserInfoStr = extraStr
                //: TalkingAPNSManager.share.launchFromApns = true
                LayerTalkingManager.share.launchFromApns = true
            }
        }

        //: completionHandler()
        completionHandler()
    }

    /// MessagingDelegate
    //: class func messaging(didReceiveRegistrationToken fcmToken: String?) {
    class func aboveSize(didReceiveRegistrationToken fcmToken: String?) {
        //: let dataDict: [String: String] = ["token": fcmToken ?? ""]
        let dataDict: [String: String] = [String(bytes: kStr_physicsValue.map{$0^114}, encoding: .utf8)!: fcmToken ?? ""]
        //: NotificationCenter.default.post(
        NotificationCenter.default.post(
            //: name: Notification.Name("FCMToken"),
            name: Notification.Name((String(kStr_playerValue.suffix(8)))),
            //: object: nil,
            object: nil,
            //: userInfo: dataDict
            userInfo: dataDict
        )
    }
}

// MARK: - 本地推送

//: extension AppDelegateHelper {
extension ItemLineBaseDelegate {
    /// 构建通知内容，发送本地通知
    /// - Parameters:
    ///   - uid: 用户Id（用于identifier）
    ///   - title: 标题
    ///   - body: 内容
    ///   - imageUrl: 图片地址
    //: class func pushLocalNotification(uid: String? = nil,
    class func regiment(uid: String? = nil,
                        //: title: String? = nil,
                        title: String? = nil,
                        //: body: String,
                        body: String,
                        //: imageUrl: String? = nil) {
                        imageUrl: String? = nil)
    {
        //: UNUserNotificationCenter.current().getNotificationSettings { settings in
        UNUserNotificationCenter.current().getNotificationSettings { settings in
            //: switch settings.authorizationStatus {
            switch settings.authorizationStatus {
            //: case .provisional, .authorized:
            case .provisional, .authorized: // 已授权，发送本地推送通知
                //: let content = UNMutableNotificationContent()
                let content = UNMutableNotificationContent()
                //: content.title = title ?? ""
                content.title = title ?? ""
                //: content.body = body
                content.body = body
                //: content.sound = UNNotificationSound.default
                content.sound = UNNotificationSound.default
                //: let identifier = (uid != nil) ? uid:"\(AppName)_LocalPush"
                let identifier = (uid != nil) ? uid : "\(kLet_pageContent)" + (String(kStr_borderValue) + String(kStr_dropContent.suffix(5)) + "Push")
                //: let userInfo = ["identifier": identifier!] as [String: Any]
                let userInfo = [(String(kStr_equalTitle) + kStr_youName.replacingOccurrences(of: "by", with: "ie")): identifier!] as [String: Any]
                //: content.userInfo = userInfo
                content.userInfo = userInfo
                //: guard let imgStr = imageUrl else {
                guard let imgStr = imageUrl else {
                    //: local_notificationPush(content)
                    dataPush(content)
                    //: return
                    return
                }
                /// 带图片的本地通知
                //: let newStr = imgStr.replacingOccurrences(of: UrlDomin.urlAes256Decrypt(), with: ReplaceUrlDomain)
                let newStr = imgStr.replacingOccurrences(of: kLet_voiceData.location6decrypt(), with: kLet_priceName)
                //: content.userInfo["fcm_options"] = ["image": newStr]
                content.userInfo[(String(kStr_fullData.suffix(8)) + kStr_atData.replacingOccurrences(of: "source", with: "ns"))] = [String(bytes: kStr_targetValue.map{toColor(content: $0)}, encoding: .utf8)!: newStr]
                //: FIRMessagingExtensionHelper().populateNotificationContent(content) { content in
                FIRMessagingExtensionHelper().populateNotificationContent(content) { content in
                    //: local_notificationPush(content)
                    dataPush(content)
                }

            //: case .notDetermined:
            case .notDetermined:
                //: printLog(message: "本地推送通知 -- 用户未授权(.notDetermined)")
                pathLine(message: String(bytes: kStr_resultNorValue.map{$0^234}, encoding: .utf8)!)
            //: case .denied:
            case .denied:
                //: printLog(message: "本地推送通知 -- 用户未授权(.denied)")
                pathLine(message: (kStr_noValue + String(kStr_lineValue) + String(kStr_mKeyText.suffix(5)) + "ied)"))
            //: case .ephemeral:
            case .ephemeral:
                //: printLog(message: "本地推送通知 -- 用户未授权(.ephemeral)")
                pathLine(message: (String(kStr_data) + String(kStr_toData)))
            //: @unknown default:
            @unknown default:
                //: printLog(message: "本地推送通知 -- 用户未授权")
                pathLine(message: (kStr_toolTitleValue + " -- 用户" + kStr_emptyName.replacingOccurrences(of: "view", with: "未授")))
            }
        }
    }

    /// 根据content发送本地通知
    /// - Parameter content: 通知内容
    //: private class func local_notificationPush(_ content: UNNotificationContent) {
    private class func dataPush(_ content: UNNotificationContent) {
        //: let time = Date(timeIntervalSinceNow: 1).timeIntervalSinceNow
        let time = Date(timeIntervalSinceNow: 1).timeIntervalSinceNow
        //: let trigger = UNTimeIntervalNotificationTrigger(timeInterval: time, repeats: false)
        let trigger = UNTimeIntervalNotificationTrigger(timeInterval: time, repeats: false)
        //: if let identifier = content.userInfo["identifier"] as? String {
        if let identifier = content.userInfo[(String(kStr_equalTitle) + kStr_youName.replacingOccurrences(of: "by", with: "ie"))] as? String {
            //: let request = UNNotificationRequest(identifier: identifier, content: content, trigger: trigger)
            let request = UNNotificationRequest(identifier: identifier, content: content, trigger: trigger)
            //: UNUserNotificationCenter.current().add(request) { _ in
            UNUserNotificationCenter.current().add(request) { _ in
            }
        }
    }

    /// 移除已经展示的推送
    /// - Parameter identifier: 通知标识符（nil：移除所有）
    //: class func local_removeDeliveredNotification(identifier: String?) {
    class func mTheoryIdentifier(identifier: String?) {
        //: guard let idf = identifier else {
        guard let idf = identifier else {
            //: UNUserNotificationCenter.current().removeAllDeliveredNotifications()
            UNUserNotificationCenter.current().removeAllDeliveredNotifications()
            //: return
            return
        }
        //: UNUserNotificationCenter.current().removeDeliveredNotifications(withIdentifiers: [idf])
        UNUserNotificationCenter.current().removeDeliveredNotifications(withIdentifiers: [idf])
    }
}
