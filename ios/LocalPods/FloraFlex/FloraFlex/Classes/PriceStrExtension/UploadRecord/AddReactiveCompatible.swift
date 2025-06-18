
//: Declare String Begin

/*: "V4ujGjsNUl6RvgjvgD6m91" :*/
fileprivate let kStr_actionYouRestoreText:String = "V4ujGjsub location layer"
fileprivate let kStr_resultTitle:[Character] = ["v","g","j","v","g","D","6","m","9","1"]

/*: "data/index" :*/
fileprivate let kStr_girlModeFalseTitle:[Character] = ["d","a","t","a","/","i","n","d","e","x"]

/*: "toUid" :*/
fileprivate let kStr_lineName:String = "self text texttoUid"

/*: "uid" :*/
fileprivate let kStr_asideDownData:[Character] = ["u","i","d"]

/*: "POST" :*/
fileprivate let kStr_labWhiteValue:String = "POresource"

/*: "Token" :*/
fileprivate let kStr_selectText:[Character] = ["T","o","k","e","n"]

/*: "%@" :*/
fileprivate let kStr_valueRecordTitle:String = "%nor"

/*: "无法解析出JSON字符串" :*/
fileprivate let kStr_colorData:String = "\u{65e0}法解析\u{51fa}J"
fileprivate let kStr_userName:String = "SON字\u{7b26}串"

/*: "plat" :*/
fileprivate let kStr_hiddenValue:[Character] = ["p","l","a","t"]

/*: "ios" :*/
fileprivate let kStr_dataTargetTitle:String = "listos"

/*: "packageId" :*/
fileprivate let kStr_popImageNameContent:String = "if ifpackageI"
fileprivate let kStr_labelTitle:String = "view"

/*: "channel" :*/
fileprivate let kStr_postText:String = "channedata"

/*: "type" :*/
fileprivate let kStr_roundValue:String = "tnamepe"

/*: "stat" :*/
fileprivate let kStr_orientationName:[Character] = ["s","t","a","t"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  AddReactiveCompatible.swift
//  AbroadTalking
//
//  Created by Charlotte on 2023/6/19.
//

//: import Alamofire
import Alamofire
//: import UIKit
import UIKit

//: let uploadRecord = UploadRecordManage()
let kLet_dismissValue = AddReactiveCompatible()
//: let TokenSaltStr = "V4ujGjsNUl6RvgjvgD6m91"
let kLet_nameData = (String(kStr_actionYouRestoreText.prefix(6)) + "sNUl6R" + String(kStr_resultTitle))

//: class UploadRecordManage: NSObject {
class AddReactiveCompatible: NSObject {
    //: public func uploadRecordEvent(eventID: String, toUid: String? = nil, jsonStr: String? = nil) {
    public func digitizerInsideStatus(eventID: String, toUid: String? = nil, jsonStr: String? = nil) {
        //: let reqModel = TalkingRequestModel()
        let reqModel = SizeRequestModel()
        //: reqModel.requestPath = "data/index"
        reqModel.requestPath = (String(kStr_girlModeFalseTitle))
        //: reqModel.requestServer = LocationThen.share.appConfigMode.reportDomain
        reqModel.requestServer = LocationThen.share.appConfigMode.reportDomain
        //: var dict = self.getUploadInfoDict()
        var dict = self.confirmationShow()
        //: dict["e"] = eventID /// 事件关键字
        dict["e"] = eventID /// 事件关键字
        //: if jsonStr?.count ?? 0 > 0 {
        if jsonStr?.count ?? 0 > 0 {
            //: dict["c"] = NSDictionary(jsonString: jsonStr!)
            dict["c"] = NSDictionary(jsonString: jsonStr!)
            //: } else {
        } else {
            //: var messageDic = [String: Any]()
            var messageDic = [String: Any]()
            //: if toUid?.count ?? 0 > 0 {
            if toUid?.count ?? 0 > 0 {
                //: messageDic["toUid"] = toUid
                messageDic[(String(kStr_lineName.suffix(5)))] = toUid
            }
            //: messageDic["uid"] = LocationThen.share.loginUserMode.userID
            messageDic[(String(kStr_asideDownData))] = LocationThen.share.loginUserMode.userID
            //: dict["c"] = messageDic /// 事件详细内容
            dict["c"] = messageDic /// 事件详细内容
        }
        //: reqModel.params = dict
        reqModel.params = dict
        //: self.uploadRecordRequest(model: reqModel) { succeed, _, _ in
        self.upload(model: reqModel) { succeed, _, _ in
            //: if succeed {}
            if succeed {}
        }
    }

    //: public func uploadRecordEvent(eventID: String, parameterStr: [String: Any]) {
    public func showTheme(eventID: String, parameterStr: [String: Any]) {
        //: let reqModel = TalkingRequestModel()
        let reqModel = SizeRequestModel()
        //: reqModel.requestPath = "data/index"
        reqModel.requestPath = (String(kStr_girlModeFalseTitle))
        //: reqModel.requestServer = LocationThen.share.appConfigMode.reportDomain
        reqModel.requestServer = LocationThen.share.appConfigMode.reportDomain
        //: var dict = self.getUploadInfoDict()
        var dict = self.confirmationShow()
        //: dict["e"] = eventID /// 事件关键字
        dict["e"] = eventID /// 事件关键字
        //: let messageDic = NSMutableDictionary(dictionary: parameterStr)
        let messageDic = NSMutableDictionary(dictionary: parameterStr)
        //: messageDic["uid"] = LocationThen.share.loginUserMode.userID
        messageDic[(String(kStr_asideDownData))] = LocationThen.share.loginUserMode.userID
        //: dict["c"] = messageDic /// 事件详细内容
        dict["c"] = messageDic /// 事件详细内容
        //: reqModel.params = dict
        reqModel.params = dict
        //: self.uploadRecordRequest(model: reqModel) { succeed, _, _ in
        self.upload(model: reqModel) { succeed, _, _ in
            //: if succeed {}
            if succeed {}
        }
    }

    //: public func uploadRecordRequest(model: TalkingRequestModel, completion: @escaping FinishBlock) {
    public func upload(model: SizeRequestModel, completion _: @escaping FinishBlock) {
        //: let serverUrl = GJ.buildServerUrl(model: model)
        let serverUrl = kLet_firstName.starLevel(model: model)

        //: let token = NSDate.getCurrentTimeStamp()
        let token = NSDate.aboveQuantity()

        //: let request = NSMutableURLRequest()
        let request = NSMutableURLRequest()
        //: request.httpMethod = "POST"
        request.httpMethod = (kStr_labWhiteValue.replacingOccurrences(of: "resource", with: "ST"))
        //: request.url = NSURL(string: serverUrl) as URL?
        request.url = NSURL(string: serverUrl) as URL?
        //: request.timeoutInterval = 30
        request.timeoutInterval = 30
//        request.setValue("keep-alive", forHTTPHeaderField: "Connection")
//        request.setValue("application/x-www-form-urlencoded", forHTTPHeaderField: "Content-Type")
        //: request.setValue(token, forHTTPHeaderField: "Token")
        request.setValue(token, forHTTPHeaderField: (String(kStr_selectText)))

        //: let key = token.appendingFormat("%@", TokenSaltStr)
        let key = token.appendingFormat("%@", kLet_nameData)
        //: let bodyString = self.getJSONStringFromDictionary(model.params as NSDictionary)
        let bodyString = self.frankList(model.params as NSDictionary)
        //: let encryStr = bodyString.encrypt(withKey: key)
        let encryStr = bodyString.objectModel(key)
        //: request.httpBody = encryStr?.data(using: .utf8)
        request.httpBody = encryStr?.data(using: .utf8)
        //: let session = URLSession.shared
        let session = URLSession.shared
        //: let datatask = session.dataTask(with: request as URLRequest) { data, _, error in
        let datatask = session.dataTask(with: request as URLRequest) { data, _, error in
            //: if error != nil {
            if error != nil {
                //: print(error ?? "")
                //: } else {
            } else {
                //: let jsonStr = NSString(data: data!, encoding: NSUTF8StringEncoding)
                let jsonStr = NSString(data: data!, encoding: NSUTF8StringEncoding)
                //: if let responseModel = JSONDeserializer<TalkingBaseResponse>.deserializeFrom(json: jsonStr as String?) {
                if let responseModel = JSONDeserializer<MiniBaseResponse>.deserializeFrom(json: jsonStr as String?) {
                    //: print(responseModel)
                }
            }
        }
        //: datatask.resume()
        datatask.resume()
    }

    //: func getJSONStringFromDictionary(_ dictionary: NSDictionary) -> String {
    func frankList(_ dictionary: NSDictionary) -> String {
        //: if !JSONSerialization.isValidJSONObject(dictionary) {
        if !JSONSerialization.isValidJSONObject(dictionary) {
            //: printLog(message: "无法解析出JSON字符串")
            pathLine(message: (kStr_colorData + kStr_userName))
            //: return String()
            return String()
        }
        //: let data: NSData! = try? JSONSerialization.data(withJSONObject: dictionary, options: []) as NSData?
        let data: NSData! = try? JSONSerialization.data(withJSONObject: dictionary, options: []) as NSData?
        //: let JSONString = NSString(data: data as Data, encoding: String.Encoding.utf8.rawValue)
        let JSONString = NSString(data: data as Data, encoding: String.Encoding.utf8.rawValue)
        //: return JSONString! as String
        return JSONString! as String
    }
}

//: extension UploadRecordManage {
extension AddReactiveCompatible {
    /// 获取上报字典信息
    //: private func getUploadInfoDict() -> [String: Any] {
    private func confirmationShow() -> [String: Any] {
        //: var dict = [String: Any]()
        var dict = [String: Any]()
        //: dict["plat"] = "ios" /// 客户端平台
        dict[(String(kStr_hiddenValue))] = (kStr_dataTargetTitle.replacingOccurrences(of: "list", with: "i")) /// 客户端平台
        //: dict["packageId"] = PackageID /// 分包号
        dict[(String(kStr_popImageNameContent.suffix(8)) + kStr_labelTitle.replacingOccurrences(of: "view", with: "d"))] = kLet_guideDoingTitle /// 分包号
        //: dict["v"] = AppNetVersion /// 客户端版本
        dict["v"] = kLet_inviteTitle /// 客户端版本
        //: dict["t"] = NSDate.getCurrentTimeStamp() /// 事件发生的时间
        dict["t"] = NSDate.aboveQuantity() /// 事件发生的时间
        //: dict["channel"] = PackageID /// 渠道代号,ios默认和packageId 相同
        dict[(kStr_postText.replacingOccurrences(of: "data", with: "l"))] = kLet_guideDoingTitle /// 渠道代号,ios默认和packageId 相同
        //: dict["type"] = "stat" /// 上报类型(stat埋点上报、pfm性能指标)
        dict[(kStr_roundValue.replacingOccurrences(of: "name", with: "y"))] = (String(kStr_orientationName)) /// 上报类型(stat埋点上报、pfm性能指标)
        //: return dict
        return dict
    }
}
