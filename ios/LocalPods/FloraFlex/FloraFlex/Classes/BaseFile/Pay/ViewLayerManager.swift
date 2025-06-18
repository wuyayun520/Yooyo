
//: Declare String Begin

/*: "APPLE_IAP_PAY_SUCCEED_NOTIFICATION" :*/
fileprivate let kStr_makeTitle:[UInt8] = [0xec,0xfb,0xfb,0xf7,0xf0,0xa,0xf4,0xec,0xfb,0xa,0xfb,0xec,0x4,0xa,0xfe,0x0,0xee,0xee,0xf0,0xf0,0xef,0xa,0xf9,0xfa,0xff,0xf4,0xf1,0xf4,0xee,0xec,0xff,0xf4,0xfa,0xf9]

fileprivate func labRequest(cell num: UInt8) -> UInt8 {
    let value = Int(num) - 171
    if value < 0 {
        return UInt8(value + 256)
    } else {
        return UInt8(value)
    }
}

/*: "APPLE_IAP_SUBSCRIBE_SUCCEED_NOTIFICATION" :*/
fileprivate let kStr_areaData:[UInt8] = [0x4e,0x4f,0x49,0x54,0x41,0x43,0x49,0x46,0x49,0x54,0x4f,0x4e,0x5f,0x44,0x45,0x45,0x43,0x43,0x55,0x53,0x5f,0x45,0x42,0x49,0x52,0x43,0x53,0x42,0x55,0x53,0x5f,0x50,0x41,0x49,0x5f,0x45,0x4c,0x50,0x50,0x41]

/*: "mf/recharge/createApplePay" :*/
fileprivate let kStr_layerName:String = "mf/recaction guard average color background"
fileprivate let kStr_rawValue:String = "rframe"
fileprivate let kStr_mainData:String = "ateAmake play shared"

/*: "productId" :*/
fileprivate let kStr_targetDelayTitle:String = "pbigod"
fileprivate let kStr_barData:String = "uctIdin share try"

/*: "source" :*/
fileprivate let kStr_dataName:String = "sourcname"

/*: "IAP充值创建订单失败: :*/
fileprivate let kStr_replyValue:String = "IAP\u{5145}值"

/*: , 参数: :*/
fileprivate let kStr_indexValue:[Character] = [","," ","参","数",":"]

/*: ." :*/
fileprivate let kStr_rawData:String = "manager"

/*: "orderNum" :*/
fileprivate let kStr_nameValue:String = "orderNustatus from result video user"
fileprivate let kStr_currentName:String = "label"

/*: "mf/recharge/applePayNotify" :*/
fileprivate let kStr_managerFileName:String = "mf/recvar if if"
fileprivate let kStr_tableTitle:String = "equal lab manager right video/appl"
fileprivate let kStr_popName:String = "path true match interval maxePay"

/*: "IAP充值校验失败: :*/
fileprivate let kStr_viewContent:String = "let padIAP充值"

/*: "transactionId" :*/
fileprivate let kStr_managerName:[Character] = ["t","r","a","n","s","a","c","t"]
fileprivate let kStr_screenName:String = "ionIdlet content self equal make"

/*: "reportMoney" :*/
fileprivate let kStr_willName:String = "reptort"
fileprivate let kStr_textValue:String = "Moneywindow level"

/*: "mf/AutoSub/AppleCreateOrder" :*/
fileprivate let kStr_requestValue:[Character] = ["m","f","/","A","u","t","o","S","u","b","/","A","p","p","l","e","C"]
fileprivate let kStr_originalText:String = "REAT"

/*: "IAP订阅创建订单失败: :*/
fileprivate let kStr_reportName:String = "by let extension giftIAP订阅"
fileprivate let kStr_playerText:String = "创建\u{8ba2}单失败:"

/*: "orderId" :*/
fileprivate let kStr_mediaData:[UInt8] = [0xce,0xd3,0xc5,0xc4,0xd3,0xe8,0xc5]

private func nameData(nor num: UInt8) -> UInt8 {
    return num ^ 161
}

/*: "mf/AutoSub/ApplePaySuccess" :*/
fileprivate let kStr_infoTotalryData:String = "mf/Autmake at space"
fileprivate let kStr_inviteSearchAsTitle:String = "pplePamodel model half index share"

/*: "IAP订阅校验失败: :*/
fileprivate let kStr_collectionName:String = "moment color size with selfIAP订"
fileprivate let kStr_sizeTitle:[Character] = ["败",":"]

/*: "App" :*/
fileprivate let kStr_handleName:[Character] = ["A","p","p"]

/*: "OrderTransactionInfo_ :*/
fileprivate let kStr_spaceValue:[Character] = ["O","r","d","e","r","T","r","a","n","s","a","c","t","i","o","n","I","n","f","o","_"]

/*: "OrderTransactionInfo_Subscribe_ :*/
fileprivate let kStr_netName:[UInt8] = [0x68,0x55,0x43,0x42,0x55,0x73,0x55,0x46,0x49,0x54,0x46,0x44,0x53,0x4e,0x48,0x49,0x6e,0x49,0x41,0x48,0x78,0x74,0x52,0x45,0x54,0x44,0x55,0x4e,0x45,0x42,0x78]

private func makeUser(image num: UInt8) -> UInt8 {
    return num ^ 39
}

/*: "verifyData" :*/
fileprivate let kStr_nameData:[UInt8] = [0x67,0x74,0x63,0x78,0x77,0x68,0x55,0x70,0x65,0x70]

private func showModel(top num: UInt8) -> UInt8 {
    return num ^ 17
}

/*: "IAP查询内购商品失败, productId: :*/
fileprivate let kStr_replyUserData:String = "IAP查count class self medal gallery"
fileprivate let kStr_appTitle:String = "失败, pif level mode"
fileprivate let kStr_contentTitle:[Character] = ["r","o","d","u","c","t","I","d",":"]

/*: "IAP查询内购商品失败, products.count为0." :*/
fileprivate let kStr_atSceneData:[Character] = ["I","A","P","\u{67e5}","询","内","购","商","品","失","\u{8d25}",","," ","p","r"]
fileprivate let kStr_name:[Character] = ["o","d","u","c","t","s",".","c","o","u"]
fileprivate let kStr_cellData:String = "nt\u{4e3a}0."

/*: "IAP查询内购商品失败, Error: :*/
fileprivate let kStr_resourceValue:[Character] = ["I","A","P","查","\u{8be2}","内","购","商","品","\u{5931}"]
fileprivate let kStr_selectedToValue:[Character] = ["\u{8d25}",","," ","E","r","r","o","r",":"]

/*: "IAP-purchased: :*/
fileprivate let kStr_timeValue:String = "IAP-pucase class equal self normal"
fileprivate let kStr_goldName:String = "background"
fileprivate let kStr_levelData:String = "chased:var button user"

/*: , 订单号: :*/
fileprivate let kStr_streamShowTitle:[Character] = [","]
fileprivate let kStr_indexSizeData:String = " 订\u{5355}\u{53f7}:"

/*: , 商品Id: :*/
fileprivate let kStr_labValue:String = ", \u{5546}\u{54c1}Id:"

/*: , 苹果transId: :*/
fileprivate let kStr_plainLineTitle:[Character] = [","," ","\u{82f9}","果","t","r"]
fileprivate let kStr_femaleName:String = "ansId:if lab self crush"

/*: "IAP-failed: :*/
fileprivate let kStr_checkName:String = "IAP-fname name"
fileprivate let kStr_inputModelData:[Character] = ["a","i","l","e","d",":"]

/*: "IAP-deferred: :*/
fileprivate let kStr_videoValue:String = "video block value index letIAP-"
fileprivate let kStr_labelTimeName:[Character] = ["e","d",":"]

/*: "IAP未知交易类型: :*/
fileprivate let kStr_sizeValue:String = "frame"
fileprivate let kStr_phoneName:String = "AP\u{672a}知"

/*: " 未知的交易类型" :*/
fileprivate let kStr_labText:String = " 未知的交易类party"

/*: "IAP获取本地收据数据失败, transactionId: :*/
fileprivate let kStr_hiddenName:String = "IAP获second if lab icon"
fileprivate let kStr_dataText:String = "据数据\u{5931}"
fileprivate let kStr_errorText:String = "let title败, tr"
fileprivate let kStr_buildFamilyName:String = "tionId:index bottom"

/*: , orderId: :*/
fileprivate let kStr_groupToData:[Character] = [","," ","o","r","d","e","r","I","d",":"]

/*: , payType: :*/
fileprivate let kStr_normalTextValue:String = ", payTlab view corner camera i"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  ViewLayerManager.swift
//  AbroadTalking
//
//  Created by young on 2022/9/2.
//

//: import StoreKit
import StoreKit
//: import SwiftyJSON
import SwiftyJSON
//: import UIKit
import UIKit

// 苹果支付成功通知
//: public let APPLE_IAP_PAY_SUCCEED_NOTIFICATION = NSNotification.Name(rawValue: "APPLE_IAP_PAY_SUCCEED_NOTIFICATION")
public let kLet_noValue = NSNotification.Name(rawValue: String(bytes: kStr_makeTitle.map{labRequest(cell: $0)}, encoding: .utf8)!)
// 苹果订阅成功通知
//: public let APPLE_IAP_SUBSCRIBE_SUCCEED_NOTIFICATION = NSNotification.Name(rawValue: "APPLE_IAP_SUBSCRIBE_SUCCEED_NOTIFICATION")
public let kLet_statusScreenData = NSNotification.Name(rawValue: String(bytes: kStr_areaData.reversed(), encoding: .utf8)!)
// 最大失败重试次数
//: let APPLE_IAP_MAX_RETRY_COUNT = 9
let kLet_rateData = 9

/// 支付类型
//: enum ApplePayType {
enum ValueType {
    //: case Pay
    case Pay // 支付
    //: case Subscribe
    case Subscribe // 订阅
}

/// 支付状态
//: enum AppleIAPStatus: String {
enum DigitizerTextConvertible: String {
    //: case unknow            = "未知类型"
    case unknow = "未知类型"
    //: case createOrderFail   = "创建订单失败"
    case createOrderFail = "创建订单失败"
    //: case notArrow          = "设备不允许"
    case notArrow = "设备不允许"
    //: case noProductId       = "缺少产品Id"
    case noProductId = "缺少产品Id"
    //: case failed            = "交易失败/取消"
    case failed = "交易失败/取消"
    //: case restored          = "已购买过该商品"
    case restored = "已购买过该商品"
    //: case deferred          = "交易延期"
    case deferred = "交易延期"
    //: case verityFail        = "服务器验证失败"
    case verityFail = "服务器验证失败"
    //: case veritySucceed     = "服务器验证成功"
    case veritySucceed = "服务器验证成功"
    //: case renewSucceed      = "自动续订成功"
    case renewSucceed = "自动续订成功"
}

//: typealias IAPcompletionHandle = (AppleIAPStatus, Double) -> Void
typealias IAPcompletionHandle = (DigitizerTextConvertible, Double) -> Void

//: class AppleIAPManager: NSObject {
class ViewLayerManager: NSObject {
    //: var completionHandle: IAPcompletionHandle?
    var completionHandle: IAPcompletionHandle?
    //: private var productInfoReq: SKProductsRequest?
    private var productInfoReq: SKProductsRequest?
    //: private var reqRetryCountDict = [String: Int]()
    private var reqRetryCountDict = [String: Int]() // 记录每个交易请求重试次数
    //: private var payCacheList = [[String: String]]()
    private var payCacheList = [[String: String]]() // 【购买】缓存数据
    //: private var subscribeCacheList = [[String: String]]()
    private var subscribeCacheList = [[String: String]]() // 【订阅】缓存数据
    //: private var createOrderId: String?
    private var createOrderId: String? // 当前支付服务端创建的订单id
    //: private var currentPayType: ApplePayType = .Pay
    private var currentPayType: ValueType = .Pay // 当前支付类型

    // singleton
    //: static let shared = AppleIAPManager()
    static let shared = ViewLayerManager()
    //: override func copy() -> Any { return self }
    override func copy() -> Any { return self }
    //: override func mutableCopy() -> Any { return self }
    override func mutableCopy() -> Any { return self }
    //: private override init() {
    override private init() {
        //: super.init()
        super.init()
        //: SKPaymentQueue.default().add(self as SKPaymentTransactionObserver)
        SKPaymentQueue.default().add(self as SKPaymentTransactionObserver)
        // 监听应用将要销毁
        //: NotificationCenter.default.addObserver(self, selector: #selector(appWillTerminate),
        NotificationCenter.default.addObserver(self, selector: #selector(leaveDoingice),
                                               //: name: UIApplication.willTerminateNotification,
                                               name: UIApplication.willTerminateNotification,
                                               //: object: nil)
                                               object: nil)
    }

    // MARK: - NotificationCenter

    //: @objc func appWillTerminate() {
    @objc func leaveDoingice() {
        //: SKPaymentQueue.default().remove(self as SKPaymentTransactionObserver)
        SKPaymentQueue.default().remove(self as SKPaymentTransactionObserver)
    }
}

// MARK: - 【苹果购买】业务接口

//: extension AppleIAPManager {
private extension ViewLayerManager {
    /// 【购买】创建业务订单
    /// - Parameters:
    ///   - productId: 产品Id
    ///   - block: 回调
    //: fileprivate func req_pay_createAppleOrder(productId: String, source: Int, handle: @escaping (String?, Bool) -> Void) {
    func sizeWith(productId: String, source: Int, handle: @escaping (String?, Bool) -> Void) {
        //: let reqModel = TalkingRequestModel.init()
        let reqModel = SizeRequestModel()
        //: reqModel.requestType = .POST
        reqModel.requestType = .POST
        //: reqModel.requestPath = "mf/recharge/createApplePay"
        reqModel.requestPath = (String(kStr_layerName.prefix(6)) + "harge/c" + kStr_rawValue.replacingOccurrences(of: "frame", with: "e") + String(kStr_mainData.prefix(4)) + "pplePay")
        //: var dict = Dictionary<String, Any>()
        var dict = [String: Any]()
        //: dict["productId"] = productId
        dict[(kStr_targetDelayTitle.replacingOccurrences(of: "big", with: "r") + String(kStr_barData.prefix(5)))] = productId
        //: dict["source"] = source
        dict[(kStr_dataName.replacingOccurrences(of: "name", with: "e"))] = source
        //: reqModel.params = dict
        reqModel.params = dict
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        kLet_firstName.afterFailureCompletion(model: reqModel) { succeed, result, errorModel in
            //: guard succeed == true else {
            guard succeed == true else {
                //: MiniLoadThen.appLine(msg: "IAP充值创建订单失败:\(String(describing: errorModel?.errorMsg)), 参数:\(dict).")
                MiniLoadThen.appLine(msg: (kStr_replyValue + "创建订\u{5355}失败:") + "\(String(describing: errorModel?.errorMsg)), 参数:\(dict).")
                //: handle(nil, succeed)
                handle(nil, succeed)
                //: return
                return
            }

            //: let json = JSON(result!)
            let json = JSON(result!)
            //: let orderId = json["orderNum"].string
            let orderId = json[(String(kStr_nameValue.prefix(7)) + kStr_currentName.replacingOccurrences(of: "label", with: "m"))].string
            //: handle(orderId, succeed)
            handle(orderId, succeed)
        }
    }

    /// 【购买】上传支付信息到服务器验证
    /// - Parameters:
    ///   - transaction: 交易信息
    ///   - params: 接口参数
    //: fileprivate func req_pay_uploadAppletransaction(_ transactionId: String, params: [String: String]) {
    func upGiftParams(_ transactionId: String, params: [String: String]) {
        //: let reqModel = TalkingRequestModel.init()
        let reqModel = SizeRequestModel()
        //: reqModel.requestType = .POST
        reqModel.requestType = .POST
        //: reqModel.requestPath = "mf/recharge/applePayNotify"
        reqModel.requestPath = (String(kStr_managerFileName.prefix(6)) + "harge" + String(kStr_tableTitle.suffix(5)) + String(kStr_popName.suffix(4)) + "Notify")
        //: reqModel.params = params
        reqModel.params = params
        //: reqModel.showErrorStatusBar = false
        reqModel.showErrorStatusBar = false
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        kLet_firstName.afterFailureCompletion(model: reqModel) { succeed, result, errorModel in
            //: guard succeed == true || errorModel?.errorCode == 405 else {
            guard succeed == true || errorModel?.errorCode == 405 else { // 验证接口失败，重试接口
                //: DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 2) {
                DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 2) {
                    //: MiniLoadThen.appLine(msg: "IAP充值校验失败:\(String(describing: errorModel?.errorCode)), 参数:\(params).")
                    MiniLoadThen.appLine(msg: (String(kStr_viewContent.suffix(5)) + "校验失\u{8d25}:") + "\(String(describing: errorModel?.errorCode)), 参数:\(params).")
                    //: self.transcationPurchasedToCheck(transactionId, .Pay)
                    self.smartSearch(transactionId, .Pay)
                }
                //: return
                return
            }

            //: let result = JSON(result ?? [:])
            let result = JSON(result ?? [:])

            // 过滤已验证成功的订单数据
            //: let newPayCacheList = self.payCacheList.filter({$0["transactionId"] != transactionId})
            let newPayCacheList = self.payCacheList.filter { $0[(String(kStr_managerName) + String(kStr_screenName.prefix(5)))] != transactionId }
            //: let diskPath = self.getPayCachePath()
            let diskPath = self.getUponHadith()
            //: NSKeyedArchiver.archiveRootObject(newPayCacheList, toFile: diskPath)
            NSKeyedArchiver.archiveRootObject(newPayCacheList, toFile: diskPath)

            // 成功通知
            //: NotificationCenter.default.post(name: APPLE_IAP_PAY_SUCCEED_NOTIFICATION, object: nil)
            NotificationCenter.default.post(name: kLet_noValue, object: nil)
            // 成功回调
            //: self.completionHandle?(.veritySucceed, result["reportMoney"].doubleValue)
            self.completionHandle?(.veritySucceed, result[(kStr_willName.replacingOccurrences(of: "to", with: "o") + String(kStr_textValue.prefix(5)))].doubleValue)
        }
    }
}

// MARK: - 【苹果订阅】业务接口

//: extension AppleIAPManager {
private extension ViewLayerManager {
    /// 【订阅】创建业务订单
    /// - Parameters:
    ///   - productId: 产品Id
    ///   - block: 回调
    //: fileprivate func req_subscribe_createAppleOrder(productId: String, source: Int, handle: @escaping (String?, Bool) -> Void) {
    func sh(productId: String, source: Int, handle: @escaping (String?, Bool) -> Void) {
        //: let reqModel = TalkingRequestModel.init()
        let reqModel = SizeRequestModel()
        //: reqModel.requestType = .POST
        reqModel.requestType = .POST
        //: reqModel.requestPath = "mf/AutoSub/AppleCreateOrder"
        reqModel.requestPath = (String(kStr_requestValue) + kStr_originalText.lowercased() + "eOrder")
        //: var dict = Dictionary<String, Any>()
        var dict = [String: Any]()
        //: dict["productId"] = productId
        dict[(kStr_targetDelayTitle.replacingOccurrences(of: "big", with: "r") + String(kStr_barData.prefix(5)))] = productId
        //: dict["source"] = source
        dict[(kStr_dataName.replacingOccurrences(of: "name", with: "e"))] = source
        //: reqModel.params = dict
        reqModel.params = dict
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        kLet_firstName.afterFailureCompletion(model: reqModel) { succeed, result, errorModel in
            //: guard succeed == true else {
            guard succeed == true else {
                //: MiniLoadThen.appLine(msg: "IAP订阅创建订单失败:\(String(describing: errorModel?.errorMsg)), 参数:\(dict).")
                MiniLoadThen.appLine(msg: (String(kStr_reportName.suffix(5)) + kStr_playerText) + "\(String(describing: errorModel?.errorMsg)), 参数:\(dict).")
                //: handle(nil, succeed)
                handle(nil, succeed)
                //: return
                return
            }

            //: let json = JSON(result!)
            let json = JSON(result!)
            //: let orderId = json["orderId"].string
            let orderId = json[String(bytes: kStr_mediaData.map{nameData(nor: $0)}, encoding: .utf8)!].string
            //: handle(orderId, succeed)
            handle(orderId, succeed)
        }
    }

    /// 【订阅】上传支付信息到服务器验证
    /// - Parameters:
    ///   - transaction: 交易信息
    ///   - params: 接口参数
    //: fileprivate func req_subscribe_uploadAppletransaction(_ transactionId: String, params: [String: String]) {
    func windowImage(_ transactionId: String, params: [String: String]) {
        //: let reqModel = TalkingRequestModel.init()
        let reqModel = SizeRequestModel()
        //: reqModel.requestType = .POST
        reqModel.requestType = .POST
        //: reqModel.requestPath = "mf/AutoSub/ApplePaySuccess"
        reqModel.requestPath = (String(kStr_infoTotalryData.prefix(6)) + "oSub/A" + String(kStr_inviteSearchAsTitle.prefix(6)) + "ySuccess")
        //: reqModel.params = params
        reqModel.params = params
        //: reqModel.showErrorStatusBar = false
        reqModel.showErrorStatusBar = false
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        kLet_firstName.afterFailureCompletion(model: reqModel) { succeed, result, errorModel in
            //: guard succeed == true || errorModel?.errorCode == 405 else {
            guard succeed == true || errorModel?.errorCode == 405 else { // 验证接口失败，重试接口
                //: DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 3) {
                DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 3) {
                    //: MiniLoadThen.appLine(msg: "IAP订阅校验失败:\(String(describing: errorModel?.errorCode)), 参数:\(params).")
                    MiniLoadThen.appLine(msg: (String(kStr_collectionName.suffix(4)) + "阅校验失" + String(kStr_sizeTitle)) + "\(String(describing: errorModel?.errorCode)), 参数:\(params).")
                    //: self.transcationPurchasedToCheck(transactionId, .Subscribe)
                    self.smartSearch(transactionId, .Subscribe)
                }
                //: return
                return
            }

            //: let result = JSON(result ?? [:])
            let result = JSON(result ?? [:])

            // 过滤已验证成功的订单数据
            //: let newSubscribeCacheList = self.subscribeCacheList.filter({$0["transactionId"] != transactionId})
            let newSubscribeCacheList = self.subscribeCacheList.filter { $0[(String(kStr_managerName) + String(kStr_screenName.prefix(5)))] != transactionId }
            //: let diskPath = self.getSubscribeCachePath()
            let diskPath = self.sectionView()
            //: NSKeyedArchiver.archiveRootObject(newSubscribeCacheList, toFile: diskPath)
            NSKeyedArchiver.archiveRootObject(newSubscribeCacheList, toFile: diskPath)

            // 成功通知
            //: NotificationCenter.default.post(name: APPLE_IAP_SUBSCRIBE_SUCCEED_NOTIFICATION, object: nil)
            NotificationCenter.default.post(name: kLet_statusScreenData, object: nil)
            // 成功回调
            //: self.completionHandle?(.veritySucceed, result["reportMoney"].doubleValue)
            self.completionHandle?(.veritySucceed, result[(kStr_willName.replacingOccurrences(of: "to", with: "o") + String(kStr_textValue.prefix(5)))].doubleValue)
        }
    }
}

// MARK: - Event

//: extension AppleIAPManager {
extension ViewLayerManager {
    /// 初始化数据
    //: private func iap_initData() {
    private func photoEqual() {
        //: self.payCacheList = getLocalPayCacheList(payType: .Pay)
        self.payCacheList = masthead(payType: .Pay)
        //: self.subscribeCacheList = getLocalPayCacheList(payType: .Subscribe)
        self.subscribeCacheList = masthead(payType: .Subscribe)
        //: self.createOrderId = nil
        self.createOrderId = nil
    }

    /// 获取缓存列表
    /// - Parameter payType: 支付类型
    /// - Returns: 缓存列表
    //: private func getLocalPayCacheList(payType: ApplePayType) -> [[String: String]] {
    private func masthead(payType: ValueType) -> [[String: String]] {
        //: var list: [[String: String]]?
        var list: [[String: String]]?
        //: var diskPath = ""
        var diskPath = ""
        //: if payType == .Pay {
        if payType == .Pay {
            //: diskPath = getPayCachePath()
            diskPath = getUponHadith()
            //: } else {
        } else {
            //: diskPath = getSubscribeCachePath()
            diskPath = sectionView()
        }

        //: if FileManager.default.fileExists(atPath: diskPath) {
        if FileManager.default.fileExists(atPath: diskPath) {
            //: list = NSKeyedUnarchiver.unarchiveObject(withFile: diskPath) as? [[String: String]]
            list = NSKeyedUnarchiver.unarchiveObject(withFile: diskPath) as? [[String: String]]
            //: if list == nil {
            if list == nil {
                //: try? FileManager.default.removeItem(atPath: diskPath)
                try? FileManager.default.removeItem(atPath: diskPath)
            }
        }
        //: if list == nil {
        if list == nil {
            //: list = [[String: String]]()
            list = [[String: String]]()
        }
        //: return list!
        return list!
    }

    /// 获取【购买】缓存路径【和uid关联】
    /// - Returns: 缓存路径
    //: private func getPayCachePath() -> String {
    private func getUponHadith() -> String {
        //: let documentDirectoryPath = NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true).first ?? ""
        let documentDirectoryPath = NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true).first ?? ""
        //: let appDirectoryPath = (documentDirectoryPath as NSString).appendingPathComponent("App")
        let appDirectoryPath = (documentDirectoryPath as NSString).appendingPathComponent((String(kStr_handleName)))

        //: let fileManager = FileManager.default
        let fileManager = FileManager.default
        //: if fileManager.fileExists(atPath: appDirectoryPath) == false {
        if fileManager.fileExists(atPath: appDirectoryPath) == false {
            //: try? fileManager.createDirectory(atPath: appDirectoryPath, withIntermediateDirectories: true)
            try? fileManager.createDirectory(atPath: appDirectoryPath, withIntermediateDirectories: true)
        }

        //: let uid = Defaults.string(forKey: TalkingLoginUidCacheKey) ?? ""
        let uid = kLet_managerValue.string(forKey: kLet_bottomText) ?? ""
        //: let filePath = (appDirectoryPath as NSString).appendingPathComponent("OrderTransactionInfo_\(uid)")
        let filePath = (appDirectoryPath as NSString).appendingPathComponent((String(kStr_spaceValue)) + "\(uid)")
        //: return filePath
        return filePath
    }

    /// 获取【订阅】缓存路径【和uid关联】
    /// - Returns: 缓存路径
    //: private func getSubscribeCachePath() -> String {
    private func sectionView() -> String {
        //: let documentDirectoryPath = NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true).first ?? ""
        let documentDirectoryPath = NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true).first ?? ""
        //: let appDirectoryPath = (documentDirectoryPath as NSString).appendingPathComponent("App")
        let appDirectoryPath = (documentDirectoryPath as NSString).appendingPathComponent((String(kStr_handleName)))

        //: let fileManager = FileManager.default
        let fileManager = FileManager.default
        //: if fileManager.fileExists(atPath: appDirectoryPath) == false {
        if fileManager.fileExists(atPath: appDirectoryPath) == false {
            //: try? fileManager.createDirectory(atPath: appDirectoryPath, withIntermediateDirectories: true)
            try? fileManager.createDirectory(atPath: appDirectoryPath, withIntermediateDirectories: true)
        }

        //: let uid = Defaults.string(forKey: TalkingLoginUidCacheKey) ?? ""
        let uid = kLet_managerValue.string(forKey: kLet_bottomText) ?? ""
        //: let filePath = (appDirectoryPath as NSString).appendingPathComponent("OrderTransactionInfo_Subscribe_\(uid)")
        let filePath = (appDirectoryPath as NSString).appendingPathComponent(String(bytes: kStr_netName.map{makeUser(image: $0)}, encoding: .utf8)! + "\(uid)")
        //: return filePath
        return filePath
    }

    /// 获取本地收据数据
    /// - Parameters:
    ///   - transactionId: 收据标识符
    ///   - payType: 支付类型
    /// - Returns: 收据数据
    //: fileprivate func getVerifyData(_ transactionId: String, _ payType: ApplePayType) -> String? {
    fileprivate func getInData(_ transactionId: String, _ payType: ValueType) -> String? {
        // 有未完成的订单，先取缓存
        //: var paramsArr = [[String: String]]()
        var paramsArr = [[String: String]]()
        //: switch(payType) {
        switch payType {
        //: case .Pay:
        case .Pay:
            //: paramsArr = self.payCacheList.filter({$0["transactionId"] == transactionId})
            paramsArr = self.payCacheList.filter { $0[(String(kStr_managerName) + String(kStr_screenName.prefix(5)))] == transactionId }
        //: case .Subscribe:
        case .Subscribe:
            //: paramsArr = self.subscribeCacheList.filter({$0["transactionId"] == transactionId})
            paramsArr = self.subscribeCacheList.filter { $0[(String(kStr_managerName) + String(kStr_screenName.prefix(5)))] == transactionId }
        }
        //: if paramsArr.count > 0 && paramsArr.first!["verifyData"] != nil {
        if paramsArr.count > 0, paramsArr.first![String(bytes: kStr_nameData.map{showModel(top: $0)}, encoding: .utf8)!] != nil {
            //: return paramsArr.first!["verifyData"]
            return paramsArr.first![String(bytes: kStr_nameData.map{showModel(top: $0)}, encoding: .utf8)!]
        }

        // 取本地
        //: guard let receiptUrl = Bundle.main.appStoreReceiptURL else { return nil }
        guard let receiptUrl = Bundle.main.appStoreReceiptURL else { return nil }
        //: let data = NSData(contentsOf: receiptUrl)
        let data = NSData(contentsOf: receiptUrl)
        //: let receiptStr = data?.base64EncodedString(options: NSData.Base64EncodingOptions(rawValue: 0))
        let receiptStr = data?.base64EncodedString(options: NSData.Base64EncodingOptions(rawValue: 0))
        //: return receiptStr
        return receiptStr
    }
}

// MARK: - 失败重试流程

//: extension AppleIAPManager {
extension ViewLayerManager {
    /// 检测未完成的苹果支付【只会重试当前登录用户】
    //: func iap_checkUnfinishedTransactions() {
    func selectDown() {
        //: iap_initData()
        photoEqual()

        // 【购买】失败重试
        //: for dict in self.payCacheList {
        for dict in self.payCacheList {
            //: iap_failedRetry(dict["transactionId"], .Pay)
            colorRetry(dict[(String(kStr_managerName) + String(kStr_screenName.prefix(5)))], .Pay)
        }

        // 【订阅】失败重试
        //: for dict in self.subscribeCacheList {
        for dict in self.subscribeCacheList {
            //: iap_failedRetry(dict["transactionId"], .Subscribe)
            colorRetry(dict[(String(kStr_managerName) + String(kStr_screenName.prefix(5)))], .Subscribe)
        }
    }

    /// 失败重试
    /// - Parameters:
    ///   - transactionId: Id
    ///   - payType: 支付类型
    //: private func iap_failedRetry(_ transactionId: String?, _ payType: ApplePayType) {
    private func colorRetry(_ transactionId: String?, _ payType: ValueType) {
        //: guard let transactionId = transactionId else { return }
        guard let transactionId = transactionId else { return }
        // 初始化每个交易请求次数
        //: reqRetryCountDict[transactionId] = 0
        reqRetryCountDict[transactionId] = 0
        // 3. 服务端校验流程
        //: transcationPurchasedToCheck(transactionId, payType)
        smartSearch(transactionId, payType)
    }
}

// MARK: - 苹果正常支付流程

//: extension AppleIAPManager {
extension ViewLayerManager {
    /// 发起苹果支付【1.创建订单； 2.发起苹果支付； 3.服务端校验】
    /// - Parameters:
    ///   - purchID: 产品ID
    ///   - payType: 支付类型
    ///   - handle: 回调
    ///   - source: 0 常规充值 1 观看视频后充值或订阅
    //: func iap_startPurchase(productId: String, payType: ApplePayType, source: Int = 0, handle: @escaping IAPcompletionHandle) {
    func product(productId: String, payType: ValueType, source: Int = 0, handle: @escaping IAPcompletionHandle) {
        //: iap_initData()
        photoEqual()
        //: self.completionHandle = handle
        self.completionHandle = handle
        //: self.currentPayType = payType
        self.currentPayType = payType

        // 1. 根据类型创建订单
        //: switch(payType) {
        switch payType {
        //: case .Pay:
        case .Pay:
            //: req_pay_createAppleOrder(productId: productId, source: source) { [weak self] orderId, succeed in
            sizeWith(productId: productId, source: source) { [weak self] orderId, succeed in
                //: guard let self = self else { return }
                guard let self = self else { return }
                //: guard succeed == true && orderId != nil else {
                guard succeed == true && orderId != nil else { // 订单创建失败
                    //: self.completionHandle?(.createOrderFail, 0)
                    self.completionHandle?(.createOrderFail, 0)
                    //: return
                    return
                }

                //: self.createOrderId = orderId
                self.createOrderId = orderId
                //: self.requestProductInfo(productId)
                self.addKey(productId)
            }

        //: case .Subscribe:
        case .Subscribe:
            //: req_subscribe_createAppleOrder(productId: productId, source: source) { [weak self] orderId, succeed in
            sh(productId: productId, source: source) { [weak self] orderId, succeed in
                //: guard let self = self else { return }
                guard let self = self else { return }
                //: guard succeed == true && orderId != nil else {
                guard succeed == true && orderId != nil else { // 订单创建失败
                    //: self.completionHandle?(.createOrderFail, 0)
                    self.completionHandle?(.createOrderFail, 0)
                    //: return
                    return
                }

                //: self.createOrderId = orderId
                self.createOrderId = orderId
                //: self.requestProductInfo(productId)
                self.addKey(productId)
            }
        }
    }

    // 2 发起苹果支付，查询apple内购商品
    //: fileprivate func requestProductInfo(_ productId: String) {
    fileprivate func addKey(_ productId: String) {
        //: guard SKPaymentQueue.canMakePayments() else {
        guard SKPaymentQueue.canMakePayments() else {
            //: MiniLoadThen.appLine(msg: "IAP查询内购商品失败, productId:\(productId).")
            MiniLoadThen.appLine(msg: (String(kStr_replyUserData.prefix(4)) + "\u{8be2}内购商品" + String(kStr_appTitle.prefix(5)) + String(kStr_contentTitle)) + "\(productId).")
            //: self.completionHandle?(.notArrow, 0)
            self.completionHandle?(.notArrow, 0)
            //: return
            return
        }

        // 销毁当前请求
        //: self.clearProductInfoRequest()
        self.layerRequest()
        // 查询apple内购商品
        //: let identifiers: Set<String> = [productId]
        let identifiers: Set<String> = [productId]
        //: productInfoReq = SKProductsRequest(productIdentifiers: identifiers)
        productInfoReq = SKProductsRequest(productIdentifiers: identifiers)
        //: productInfoReq?.delegate = self
        productInfoReq?.delegate = self
        //: productInfoReq?.start()
        productInfoReq?.start()
    }

    // 销毁当前请求
    //: fileprivate func clearProductInfoRequest() {
    fileprivate func layerRequest() {
        //: guard productInfoReq != nil else { return }
        guard productInfoReq != nil else { return }
        //: productInfoReq?.delegate = nil
        productInfoReq?.delegate = nil
        //: productInfoReq?.cancel()
        productInfoReq?.cancel()
        //: productInfoReq = nil
        productInfoReq = nil
    }
}

// MARK: - SKProductsRequestDelegate【商品查询】

//: extension AppleIAPManager: SKProductsRequestDelegate {
extension ViewLayerManager: SKProductsRequestDelegate {
    // 查询apple内购商品成功回调
    //: func productsRequest(_ request: SKProductsRequest, didReceive response: SKProductsResponse) {
    func productsRequest(_: SKProductsRequest, didReceive response: SKProductsResponse) {
        //: guard response.products.count > 0 else {
        guard response.products.count > 0 else {
            //: MiniLoadThen.appLine(msg: "IAP查询内购商品失败, products.count为0.")
            MiniLoadThen.appLine(msg: (String(kStr_atSceneData) + String(kStr_name) + kStr_cellData))
            //: self.completionHandle?( .noProductId, 0)
            self.completionHandle?(.noProductId, 0)
            //: return
            return
        }

        //: let payment = SKPayment(product: response.products.first!)
        let payment = SKPayment(product: response.products.first!)
        //: SKPaymentQueue.default().add(payment)
        SKPaymentQueue.default().add(payment)
    }

    // 查询apple内购商品失败
    //: func request(_ request: SKRequest, didFailWithError error: Error) {
    func request(_: SKRequest, didFailWithError error: Error) {
        //: MiniLoadThen.appLine(msg: "IAP查询内购商品失败, Error:\(error).")
        MiniLoadThen.appLine(msg: (String(kStr_resourceValue) + String(kStr_selectedToValue)) + "\(error).")
        //: self.completionHandle?( .noProductId, 0)
        self.completionHandle?(.noProductId, 0)
    }

    // 查询apple内购商品完成
    //: func requestDidFinish(_ request: SKRequest) {
    func requestDidFinish(_: SKRequest) {}
}

// MARK: - SKPaymentTransactionObserver【支付回调】

//: extension AppleIAPManager: SKPaymentTransactionObserver {
extension ViewLayerManager: SKPaymentTransactionObserver {
    /// 2.2 apple内购完成回调
    //: func paymentQueue(_ queue: SKPaymentQueue, updatedTransactions transactions: [SKPaymentTransaction]) {
    func paymentQueue(_: SKPaymentQueue, updatedTransactions transactions: [SKPaymentTransaction]) {
        //: for transaction in transactions {
        for transaction in transactions {
            //: switch transaction.transactionState {
            switch transaction.transactionState {
            //: case .purchasing:
            case .purchasing: // 交易中
                //: break
                break
            //: case .purchased:
            case .purchased: // 交易成功
                /**
                 original.transactionIdentifier 首次订阅时为nil，transaction.transactionIdentifier有值；
                 后续自动订阅、续订时，original.transactionIdentifier为首次订阅时生成的transaction.transactionIdentifier，值固定不变；
                 每次订阅transaction.transactionIdentifier都不一样，为当前交易的标识；
                 */
                //: if transaction.original != nil && createOrderId == nil {
                if transaction.original != nil && createOrderId == nil { // 启动自动续订时，不需要调用服务端验证接口
                    //: self.completionHandle?(.renewSucceed, 0)
                    self.completionHandle?(.renewSucceed, 0)
                    //: } else {
                } else { // 普通购买和订阅
                    //: MiniLoadThen.appLine(msg: "IAP-purchased:\(currentPayType), 订单号:\(String(describing: createOrderId)), 商品Id:\(transaction.payment.productIdentifier), 苹果transId:\(String(describing: transaction.transactionIdentifier)).")
                    MiniLoadThen.appLine(msg: (String(kStr_timeValue.prefix(6)) + kStr_goldName.replacingOccurrences(of: "background", with: "r") + String(kStr_levelData.prefix(7))) + "\(currentPayType)" + (String(kStr_streamShowTitle) + kStr_indexSizeData) + "\(String(describing: createOrderId))" + (kStr_labValue) + "\(transaction.payment.productIdentifier)" + (String(kStr_plainLineTitle) + String(kStr_femaleName.prefix(6))) + "\(String(describing: transaction.transactionIdentifier)).")
                    // 初始化每个交易请求次数
                    //: reqRetryCountDict[transaction.transactionIdentifier!] = 0
                    reqRetryCountDict[transaction.transactionIdentifier!] = 0
                    // 3. 服务端校验流程
                    //: transcationPurchasedToCheck(transaction.transactionIdentifier!, self.currentPayType)
                    smartSearch(transaction.transactionIdentifier!, self.currentPayType)
                }
                // 移除苹果支付系统缓存
                //: SKPaymentQueue.default().finishTransaction(transaction)
                SKPaymentQueue.default().finishTransaction(transaction)
                //: createOrderId = nil
                createOrderId = nil
            //: case .failed:
            case .failed: // 交易失败/取消
                //: SKPaymentQueue.default().finishTransaction(transaction)
                SKPaymentQueue.default().finishTransaction(transaction)
                //: MiniLoadThen.appLine(msg: "IAP-failed:\(currentPayType), 订单号:\(String(describing: createOrderId)), 商品Id:\(transaction.payment.productIdentifier), 苹果transId:\(String(describing: transaction.transactionIdentifier)).")
                MiniLoadThen.appLine(msg: (String(kStr_checkName.prefix(5)) + String(kStr_inputModelData)) + "\(currentPayType)" + (String(kStr_streamShowTitle) + kStr_indexSizeData) + "\(String(describing: createOrderId))" + (kStr_labValue) + "\(transaction.payment.productIdentifier)" + (String(kStr_plainLineTitle) + String(kStr_femaleName.prefix(6))) + "\(String(describing: transaction.transactionIdentifier)).")
                //: self.completionHandle?(.failed, 0)
                self.completionHandle?(.failed, 0)
                //: createOrderId = nil
                createOrderId = nil
            //: case .restored:
            case .restored: // 已购买过该商品
                //: SKPaymentQueue.default().finishTransaction(transaction)
                SKPaymentQueue.default().finishTransaction(transaction)
                //: self.completionHandle?(.restored, 0)
                self.completionHandle?(.restored, 0)
                //: createOrderId = nil
                createOrderId = nil
            //: case .deferred:
            case .deferred: // 交易延期
                //: SKPaymentQueue.default().finishTransaction(transaction)
                SKPaymentQueue.default().finishTransaction(transaction)
                //: MiniLoadThen.appLine(msg: "IAP-deferred:\(currentPayType), 订单号:\(String(describing: createOrderId)), 商品Id:\(transaction.payment.productIdentifier), 苹果transId:\(String(describing: transaction.transactionIdentifier)).")
                MiniLoadThen.appLine(msg: (String(kStr_videoValue.suffix(4)) + "deferr" + String(kStr_labelTimeName)) + "\(currentPayType)" + (String(kStr_streamShowTitle) + kStr_indexSizeData) + "\(String(describing: createOrderId))" + (kStr_labValue) + "\(transaction.payment.productIdentifier)" + (String(kStr_plainLineTitle) + String(kStr_femaleName.prefix(6))) + "\(String(describing: transaction.transactionIdentifier)).")
                //: self.completionHandle?(.deferred, 0)
                self.completionHandle?(.deferred, 0)
                //: createOrderId = nil
                createOrderId = nil
            //: @unknown default:
            @unknown default:
                //: SKPaymentQueue.default().finishTransaction(transaction)
                SKPaymentQueue.default().finishTransaction(transaction)
                //: self.completionHandle?(.unknow, 0)
                self.completionHandle?(.unknow, 0)
                //: createOrderId = nil
                createOrderId = nil
                //: MiniLoadThen.appLine(msg: "IAP未知交易类型:\(currentPayType), 订单号:\(String(describing: createOrderId)), 商品Id:\(transaction.payment.productIdentifier), 苹果transId:\(String(describing: transaction.transactionIdentifier)).")
                MiniLoadThen.appLine(msg: (kStr_sizeValue.replacingOccurrences(of: "frame", with: "I") + kStr_phoneName + "交易类型:") + "\(currentPayType)" + (String(kStr_streamShowTitle) + kStr_indexSizeData) + "\(String(describing: createOrderId))" + (kStr_labValue) + "\(transaction.payment.productIdentifier)" + (String(kStr_plainLineTitle) + String(kStr_femaleName.prefix(6))) + "\(String(describing: transaction.transactionIdentifier)).")
                //: fatalError(" 未知的交易类型")
                fatalError((kStr_labText.replacingOccurrences(of: "party", with: "型")))
            }
        }
    }

    /// 3. 服务端校验流程
    /// - Parameters:
    ///   - transactionId: 交易唯一标识符
    ///   - payType: 支付类型
    //: fileprivate func transcationPurchasedToCheck(_ transactionId: String, _ payType: ApplePayType) {
    fileprivate func smartSearch(_ transactionId: String, _ payType: ValueType) {
        //: guard let receiptStr = getVerifyData(transactionId, payType) else {
        guard let receiptStr = getInData(transactionId, payType) else {
            //: MiniLoadThen.appLine(msg: "IAP获取本地收据数据失败, transactionId:\(transactionId), orderId:\(String(describing: createOrderId)), payType:\(payType).")
            MiniLoadThen.appLine(msg: (String(kStr_hiddenName.prefix(4)) + "取\u{672c}地收" + kStr_dataText + String(kStr_errorText.suffix(5)) + "ansac" + String(kStr_buildFamilyName.prefix(7))) + "\(transactionId)" + (String(kStr_groupToData)) + "\(String(describing: createOrderId))" + (String(kStr_normalTextValue.prefix(6)) + "ype:") + "\(payType).")
            //: self.completionHandle?(.verityFail, 0)
            self.completionHandle?(.verityFail, 0)
            //: return
            return
        }

        // 缓存支付成功信息，防止接口校验失败
        //: if createOrderId != nil {
        if createOrderId != nil { // 正常支付流程
            //: switch(payType) {
            switch payType {
            //: case .Pay:
            case .Pay:
                //: if self.payCacheList.filter({$0["transactionId"] == transactionId || $0["orderId"] == createOrderId}).count == 0 {  // 防止重复添加缓存数据
                if self.payCacheList.filter({ $0[(String(kStr_managerName) + String(kStr_screenName.prefix(5)))] == transactionId || $0[String(bytes: kStr_mediaData.map{nameData(nor: $0)}, encoding: .utf8)!] == createOrderId }).count == 0 { // 防止重复添加缓存数据
                    //: let cacheDict = ["transactionId": transactionId,
                    let cacheDict = [(String(kStr_managerName) + String(kStr_screenName.prefix(5))): transactionId,
                                     //: "orderId": createOrderId!,
                                     String(bytes: kStr_mediaData.map{nameData(nor: $0)}, encoding: .utf8)!: createOrderId!,
                                     //: "verifyData": receiptStr]
                                     String(bytes: kStr_nameData.map{showModel(top: $0)}, encoding: .utf8)!: receiptStr]
                    //: self.payCacheList.append(cacheDict)
                    self.payCacheList.append(cacheDict)
                    //: let diskPath = self.getPayCachePath()
                    let diskPath = self.getUponHadith()
                    //: NSKeyedArchiver.archiveRootObject(self.payCacheList, toFile: diskPath)
                    NSKeyedArchiver.archiveRootObject(self.payCacheList, toFile: diskPath)
                }

            //: case .Subscribe:
            case .Subscribe:
                //: if self.subscribeCacheList.filter({$0["transactionId"] == transactionId || $0["orderId"] == createOrderId}).count == 0 { // 防止重复添加缓存数据
                if self.subscribeCacheList.filter({ $0[(String(kStr_managerName) + String(kStr_screenName.prefix(5)))] == transactionId || $0[String(bytes: kStr_mediaData.map{nameData(nor: $0)}, encoding: .utf8)!] == createOrderId }).count == 0 { // 防止重复添加缓存数据
                    //: let cacheDict = ["transactionId": transactionId,
                    let cacheDict = [(String(kStr_managerName) + String(kStr_screenName.prefix(5))): transactionId,
                                     //: "orderId": createOrderId!,
                                     String(bytes: kStr_mediaData.map{nameData(nor: $0)}, encoding: .utf8)!: createOrderId!,
                                     //: "verifyData": receiptStr]
                                     String(bytes: kStr_nameData.map{showModel(top: $0)}, encoding: .utf8)!: receiptStr]
                    //: self.subscribeCacheList.append(cacheDict)
                    self.subscribeCacheList.append(cacheDict)
                    //: let diskPath = self.getSubscribeCachePath()
                    let diskPath = self.sectionView()
                    //: NSKeyedArchiver.archiveRootObject(self.subscribeCacheList, toFile: diskPath)
                    NSKeyedArchiver.archiveRootObject(self.subscribeCacheList, toFile: diskPath)
                }
            }
        }

        // 限制交易重试最大次数
        //: var reqCount = reqRetryCountDict[transactionId] ?? 0
        var reqCount = reqRetryCountDict[transactionId] ?? 0
        //: reqCount += 1
        reqCount += 1
        //: reqRetryCountDict[transactionId] = reqCount
        reqRetryCountDict[transactionId] = reqCount
        //: if reqCount > APPLE_IAP_MAX_RETRY_COUNT {
        if reqCount > kLet_rateData {
            //: self.completionHandle?(.verityFail, 0)
            self.completionHandle?(.verityFail, 0)
            //: return
            return
        }

        // 3.服务端校验，根据transactionId从缓存中取
        //: switch(payType) {
        switch payType {
        //: case .Pay:
        case .Pay:
            //: let paramsArr = self.payCacheList.filter({$0["transactionId"] == transactionId})
            let paramsArr = self.payCacheList.filter { $0[(String(kStr_managerName) + String(kStr_screenName.prefix(5)))] == transactionId }
            //: guard paramsArr.count > 0 else { return }
            guard paramsArr.count > 0 else { return }
            //: req_pay_uploadAppletransaction(transactionId, params: paramsArr.first!)
            upGiftParams(transactionId, params: paramsArr.first!)

        //: case .Subscribe:
        case .Subscribe:
            //: let paramsArr = self.subscribeCacheList.filter({$0["transactionId"] == transactionId})
            let paramsArr = self.subscribeCacheList.filter { $0[(String(kStr_managerName) + String(kStr_screenName.prefix(5)))] == transactionId }
            //: guard paramsArr.count > 0 else { return }
            guard paramsArr.count > 0 else { return }
            //: req_subscribe_uploadAppletransaction(transactionId, params: paramsArr.first!)
            windowImage(transactionId, params: paramsArr.first!)
        }
    }
}
