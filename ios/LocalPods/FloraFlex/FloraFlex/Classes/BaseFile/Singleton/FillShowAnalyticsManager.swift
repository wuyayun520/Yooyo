
//: Declare String Begin

/*: "action" :*/
fileprivate let kStr_inputName:[UInt8] = [0xcc,0xce,0xdf,0xd4,0xda,0xd9]

fileprivate func stackAway(hidden num: UInt8) -> UInt8 {
    let value = Int(num) - 107
    if value < 0 {
        return UInt8(value + 256)
    } else {
        return UInt8(value)
    }
}

/*: "category" :*/
fileprivate let kStr_dataValue:[UInt8] = [0x76,0x74,0x87,0x78,0x7a,0x82,0x85,0x8c]

fileprivate func inputPost(guide num: UInt8) -> UInt8 {
    let value = Int(num) - 19
    if value < 0 {
        return UInt8(value + 256)
    } else {
        return UInt8(value)
    }
}

/*: "label" :*/
fileprivate let kStr_appValue:[Character] = ["l","a","b","e","l"]

/*: "user_action" :*/
fileprivate let kStr_afterName:[Character] = ["u","s","e","r","_"]
fileprivate let kStr_eventLeadingUserName:String = "actdatan"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  FillShowAnalyticsManager.swift
//  FloraFlex
//
//  Created by DouXiu on 2025/4/1.
//

//: import FirebaseAnalytics
import FirebaseAnalytics
//: import UIKit
import UIKit

//: class FirebaseAnalyticsManager: NSObject {
class FillShowAnalyticsManager: NSObject {
    //: static let share = FirebaseAnalyticsManager()
    static let share = FillShowAnalyticsManager()
    //: private override init() {}
    override private init() {}

    // MARK: - 用户属性

    //: func setUserProperty(name: String, value: String) {
    func stopReport(name: String, value: String) {
        //: Analytics.setUserProperty(value, forName: name)
        Analytics.setUserProperty(value, forName: name)
    }

    // MARK: - 用户行为追踪

    //: func trackUserAction(action: String, category: String, label: String? = nil) {
    func breakIn(action: String, category: String, label: String? = nil) {
        //: var parameters: [String: Any] = [
        var parameters: [String: Any] = [
            //: "action": action,
            String(bytes: kStr_inputName.map{stackAway(hidden: $0)}, encoding: .utf8)!: action,
            //: "category": category,
            String(bytes: kStr_dataValue.map{inputPost(guide: $0)}, encoding: .utf8)!: category,
        ]

        //: if let label = label {
        if let label = label {
            //: parameters["label"] = label
            parameters[(String(kStr_appValue))] = label
        }

        //: logEvent(name: "user_action", parameters: parameters)
        self.parameters(name: (String(kStr_afterName) + kStr_eventLeadingUserName.replacingOccurrences(of: "data", with: "io")), parameters: parameters)
    }

    // MARK: - 页面访问追踪

    //: func trackScreenView(screenName: String, screenClass: String) {
    func collisionCourse(screenName: String, screenClass: String) {
        //: Analytics.logEvent(
        Analytics.logEvent(
            //: AnalyticsEventScreenView,
            AnalyticsEventScreenView,
            //: parameters: [
            parameters: [
                //: AnalyticsParameterScreenName: screenName,
                AnalyticsParameterScreenName: screenName,
                //: AnalyticsParameterScreenClass: screenClass,
                AnalyticsParameterScreenClass: screenClass,
                //: ])
            ]
        )
    }

    // MARK: - 事件追踪

    //: func logEvent(name: String, parameters: [String: Any]? = nil) {
    func parameters(name: String, parameters: [String: Any]? = nil) {
        //: Analytics.logEvent(name, parameters: parameters)
        Analytics.logEvent(name, parameters: parameters)
    }

    // MARK: - 内购事件追踪

    //: func trackPurchase(payType: String, price: Double, currency: String) {
    func beyondStart(payType: String, price: Double, currency: String) {
        //: Analytics.logEvent(
        Analytics.logEvent(
            //: AnalyticsEventPurchase,
            AnalyticsEventPurchase,
            //: parameters: [
            parameters: [
                //: AnalyticsParameterPaymentType: payType,
                AnalyticsParameterPaymentType: payType,
                //: AnalyticsParameterPrice: price,
                AnalyticsParameterPrice: price,
                //: AnalyticsParameterCurrency: currency,
                AnalyticsParameterCurrency: currency,
                //: ])
            ]
        )
    }
}
