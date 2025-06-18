
//: Declare String Begin

/*: "allowList" :*/
fileprivate let kStr_pathProfileTitle:[Character] = ["a","l","l","o","w","L","i","s"]
fileprivate let kStr_cellValue:[Character] = ["t"]

/*: "denyList" :*/
fileprivate let kStr_limitMainName:[Character] = ["d","e","n","y","L","i","s"]
fileprivate let kStr_recordData:[Character] = ["t"]

/*: "America" :*/
fileprivate let kStr_equalValue:String = "Americainterval extension equal"

/*: "US" :*/
fileprivate let kStr_videoTitle:[Character] = ["U","S"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  ComputerFileContentReactiveCompatible.swift
//  AbroadTalking
//
//  Created by Hemming on 2022/8/31.
//

//: import UIKit
import UIKit

//: class TalkingLocationTool: NSObject {
class ComputerFileContentReactiveCompatible: NSObject {
    //: var areaArr = [TalkingAreaModel]()
    var areaArr = [BackgroundModelType]() /// 注册允许国家列表（白名单）
    //: var blackListAreaArr = [TalkingAreaModel]()
    var blackListAreaArr = [BackgroundModelType]() /// 注册不允许国家列表（黑名单）

    //: static let share = TalkingLocationTool()
    static let share = ComputerFileContentReactiveCompatible()
    //: private override init() {
    override private init() {
        //: super.init()
        super.init()
        //: func__loadAreaCodeData()
        hightailIt()
    }

    //: override func copy() -> Any { return self }
    override func copy() -> Any { return self }
    //: override func mutableCopy() -> Any { return self }
    override func mutableCopy() -> Any { return self }
}

//: extension TalkingLocationTool {
extension ComputerFileContentReactiveCompatible {
    //: private func func__loadAreaCodeData() {
    private func hightailIt() {
        //: ProgressHUD.show()
        TintProgressHUD.weight()
        //: TalkingLoginRequestTool.req_countryList {succeed, result, errorModel in
        TableThen.futurism { succeed, result, _ in
            //: ProgressHUD.dismiss()
            TintProgressHUD.inkingPadDismiss()
            //: if succeed {
            if succeed {
                //: let dict: Dictionary =  result as! Dictionary<String, Any>
                let dict: Dictionary = result as! [String: Any]
                //: let allowArray: Array =  dict["allowList"] as! Array<Any>
                let allowArray: Array = dict[(String(kStr_pathProfileTitle) + String(kStr_cellValue))] as! [Any]
                //: let denyListArray: Array =  dict["denyList"] as! Array<Any>
                let denyListArray: Array = dict[(String(kStr_limitMainName) + String(kStr_recordData))] as! [Any]

                //: if let datas = Array<TalkingAreaModel>.deserialize(from: allowArray as? Array) {
                if let datas = Array<BackgroundModelType>.deserialize(from: allowArray as? Array) {
                    //: self.areaArr.append(contentsOf: (datas as? [TalkingAreaModel])!)
                    self.areaArr.append(contentsOf: (datas as? [BackgroundModelType])!)
                }
                //: if let blackdatas = Array<TalkingAreaModel>.deserialize(from: denyListArray as? Array) {
                if let blackdatas = Array<BackgroundModelType>.deserialize(from: denyListArray as? Array) {
                    //: self.blackListAreaArr.append(contentsOf: (blackdatas as? [TalkingAreaModel])!)
                    self.blackListAreaArr.append(contentsOf: (blackdatas as? [BackgroundModelType])!)
                }
            }
        }
    }

    /// （注册风控使用）是否包含当前国家，包含则禁止注册
    /// - Returns: false: 不包含，true: 包含
    //: static func isIncludeBlackListCountry() -> Bool {
    static func inhereIn() -> Bool {
        //: var include = false
        var include = false
        //: let simInfo = UIDevice.getDeviceSimInfo()
        let simInfo = UIDevice.factoidInfo()
        //: let arr = TalkingLocationTool.share.blackListAreaArr
        let arr = ComputerFileContentReactiveCompatible.share.blackListAreaArr
        //: for model in arr {
        for model in arr {
            //: if simInfo.contains(model.countryCode.uppercased()) || simInfo.contains(model.countryCode.lowercased()) {
            if simInfo.contains(model.countryCode.uppercased()) || simInfo.contains(model.countryCode.lowercased()) {
                //: include = true
                include = true
                //: break
                break
            }
        }

        //: return include
        return include
    }

    /// （注册流程选择）选择国家编号使用，白名单
    //: func getDefaltCountry() -> TalkingAreaModel {
    func doingTask() -> BackgroundModelType {
        //: let simInfo = UIDevice.getDeviceSimInfo()
        let simInfo = UIDevice.factoidInfo()
        //: let arr = TalkingLocationTool.share.areaArr
        let arr = ComputerFileContentReactiveCompatible.share.areaArr
        //: for model in arr {
        for model in arr {
            //: if simInfo.contains(model.countryCode.uppercased()) || simInfo.contains(model.countryCode.lowercased()) {
            if simInfo.contains(model.countryCode.uppercased()) || simInfo.contains(model.countryCode.lowercased()) {
                //: return model
                return model
            }
        }
        //: return TalkingAreaModel.init(areaCode: "1", areaName: "America", countryCode: "US", url: "")
        return BackgroundModelType(areaCode: "1", areaName: (String(kStr_equalValue.prefix(7))), countryCode: "US", url: "")
    }
}

//: class TalkingAreaModel: HandyJSON {
class BackgroundModelType: HandyJSON {
    //: var areaCode = ""
    var areaCode = ""
    //: var countryCode = ""
    var countryCode = ""
    //: @objc var areaName = ""
    @objc var areaName = ""
    //: var url = ""
    var url = ""
    //: required init() {}
    required init() {}
    //: init(areaCode: String, areaName: String, countryCode: String, url:String) {
    init(areaCode: String, areaName: String, countryCode: String, url: String) {
        //: self.areaCode = areaCode
        self.areaCode = areaCode
        //: self.areaName = areaName
        self.areaName = areaName
        //: self.countryCode = countryCode
        self.countryCode = countryCode
        //: self.url = url
        self.url = url
    }
}
