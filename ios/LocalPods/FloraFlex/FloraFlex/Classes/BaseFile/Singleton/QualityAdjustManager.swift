
//: Declare String Begin

/*: "plist" :*/
fileprivate let kStr_nameEqualData:String = "PLIST"

/*: "In app purchase" :*/
fileprivate let kStr_topBackData:[Character] = ["I","n"," ","a","p","p"," ","p","u"]
fileprivate let kStr_viewValue:String = "rchacovere"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  QualityAdjustManager.swift
//  AbroadTalking
//
//  Created by young on 2022/10/17.
//

//: import Adjust
import Adjust
//: import UIKit
import UIKit

//: class TalkingAdjustManager: NSObject {
class QualityAdjustManager: NSObject {
    //: static let share = TalkingAdjustManager()
    static let share = QualityAdjustManager()
    //: private override init() {}
    override private init() {}
    //: override func copy() -> Any { return self }
    override func copy() -> Any { return self }
    //: override func mutableCopy() -> Any { return self }
    override func mutableCopy() -> Any { return self }

    // MARK: - Lazy load

    //: private lazy var adjustDict: [String: String] = {
    private lazy var adjustDict: [String: String] = {
        //: guard let url = PodspecBundle.bundle.url(forResource: PodspecName, withExtension: "plist") else {
        guard let url = GearingPodspecBundle.bundle.url(forResource: kLet_fileContent, withExtension: (kStr_nameEqualData.lowercased())) else {
            //: return [String: String]()
            return [String: String]()
        }
        //: guard let data = try? Data(contentsOf: url) else {
        guard let data = try? Data(contentsOf: url) else {
            //: return [String: String]()
            return [String: String]()
        }
        //: let dict = try? PropertyListSerialization.propertyList(from: data, options: [], format: nil)
        let dict = try? PropertyListSerialization.propertyList(from: data, options: [], format: nil)
        //: return dict as! [String: String]
        return dict as! [String: String]
        //: }()
    }()
}

//: extension TalkingAdjustManager {
extension QualityAdjustManager {
    /// 添加内购埋点事件
    /// - Parameters:
    ///   - price: 价格
    ///   - currency: 货币单位
    //: func addPurchasedEvent(price: Double, currency: String) {
    func numberercalate(price: Double, currency: String) {
        //: guard let token = adjustDict["In app purchase"] else {
        guard let token = adjustDict[(String(kStr_topBackData) + kStr_viewValue.replacingOccurrences(of: "cover", with: "s"))] else {
            //: return
            return
        }

        //: let event = ADJEvent(eventToken: token)
        let event = ADJEvent(eventToken: token)
        //: event?.setRevenue(price, currency: currency)
        event?.setRevenue(price, currency: currency)
        //: Adjust.trackEvent(event)
        Adjust.trackEvent(event)
    }

    /// 添加埋点事件
    /// - Parameter key: 事件名
    //: func addEvent(key: String) {
    func taproom(key: String) {
        //: guard let token = adjustDict[key] else {
        guard let token = adjustDict[key] else {
            //: return
            return
        }

        //: let event = ADJEvent(eventToken: token)
        let event = ADJEvent(eventToken: token)
        //: Adjust.trackEvent(event)
        Adjust.trackEvent(event)
    }

    /// 添加去重事件【只记录一次】
    /// - Parameter key: 事件名
    //: func addOnceEvent(key: String) {
    func colorKey(key: String) {
        //: guard let token = adjustDict[key] else {
        guard let token = adjustDict[key] else {
            //: return
            return
        }

        //: let event = ADJEvent(eventToken: token)
        let event = ADJEvent(eventToken: token)
        //: event?.setTransactionId(token)
        event?.setTransactionId(token)
        //: Adjust.trackEvent(event)
        Adjust.trackEvent(event)
    }
}
