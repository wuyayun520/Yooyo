
//: Declare String Begin

/*: "app/getConfig" :*/
fileprivate let kStr_goldValue:[Character] = ["a","p","p","/","g","e","t","C","o"]
fileprivate let kStr_voiceValue:String = "NFIG"

/*: "mf/user/getMyInfo" :*/
fileprivate let kStr_sectionValue:String = "model to make var normalmf/u"
fileprivate let kStr_pageData:String = "tMyIeffect member"
fileprivate let kStr_managerKitGiftText:[Character] = ["n","f","o"]

/*: "mf/user/getInfoColumn" :*/
fileprivate let kStr_pathTitle:String = "make empty inmf/us"
fileprivate let kStr_fileName:String = "make in height data lettInfoC"

/*: "%.2f" :*/
fileprivate let kStr_specialName:String = "%.2fmake extension"

/*: "mfCoin" :*/
fileprivate let kStr_managerValue:[Character] = ["m","f","C","o","i","n"]

/*: "mf/index/getConfig" :*/
fileprivate let kStr_colorName:String = "mf/indesize title main select"
fileprivate let kStr_succeedValue:String = "status backgroundx/get"

/*: _ :*/
fileprivate let kStr_padValue:[Character] = ["_"]

/*: "baseinfo =  :*/
fileprivate let kStr_originalMyContent:[Character] = ["b","a"]
fileprivate let kStr_taskValue:String = "seinfo = media for"

/*: "UserBasicInfoSetting" :*/
fileprivate let kStr_toUserValue:String = "UserBpic manager"
fileprivate let kStr_makeResignData:String = "asoccurc"
fileprivate let kStr_viewMessageData:String = "etticorner"

/*: "/userTag.json" :*/
fileprivate let kStr_labTagData:String = "/userif transform"

/*: "json 解析失败" :*/
fileprivate let kStr_challengeData:String = "index country play auto giftjson "

/*: "app/reportDeviceId" :*/
fileprivate let kStr_sceneGroupContent:String = "view data to returnapp/rep"
fileprivate let kStr_whiteValue:String = "self net across hiddenortDev"

/*: "p0" :*/
fileprivate let kStr_sendFormationName:[Character] = ["p","0"]

/*: "token" :*/
fileprivate let kStr_selectedName:[UInt8] = [0x80,0x9b,0x9f,0x91,0x9a]

private func ageDistance(with num: UInt8) -> UInt8 {
    return num ^ 244
}

/*: "app/reportFcmPushToken" :*/
fileprivate let kStr_sizeData:[Character] = ["a","p","p","/","r","e","p","o","r","t"]
fileprivate let kStr_indexValue:String = "FcmPufor push"

/*: "app/init" :*/
fileprivate let kStr_trackData:String = "arelease"
fileprivate let kStr_resultText:[Character] = ["p","/","i","n","i","t"]

/*: "app/ping" :*/
fileprivate let kStr_contentData:[Character] = ["a","p"]
fileprivate let kStr_directionValue:String = "p/pingafter to wrap"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  SubThen.swift
//  AbroadTalking
//
//  Created by Hemming on 2022/3/25.
//

//: import Adjust
import Adjust
//: import Alamofire
import Alamofire
//: import FirebaseMessaging
import FirebaseMessaging
//: import UIKit
import UIKit

//: var isRequestingInit = false
var kLet_videoName = false

//: var isRetryDeviceIdTime = 3.0
var kLet_limitValue = 3.0

//: class AppManagerRequest: NSObject {
class SubThen: NSObject {
    /// 请求app配置信息【无需登录】
    //: class func requestAppConfig(completion: @escaping FinishBlock) {
    class func toTask(completion: @escaping FinishBlock) {
        //: let requestModel = TalkingRequestModel.init()
        let requestModel = SizeRequestModel()
        //: requestModel.requestPath = "app/getConfig"
        requestModel.requestPath = (String(kStr_goldValue) + kStr_voiceValue.lowercased())
        //: requestModel.showErrorStatusBar = false
        requestModel.showErrorStatusBar = false
        //: ProgressHUD.show()
        TintProgressHUD.weight()
        //: GJ.startRequest(model: requestModel) { succeed, result, errorModel in
        kLet_firstName.afterFailureCompletion(model: requestModel) { succeed, result, errorModel in
            //: ProgressHUD.dismiss()
            TintProgressHUD.inkingPadDismiss()
            //: if succeed {
            if succeed {
                //: Defaults.set(result, forKey: TalkingAppConfigKey)
                kLet_managerValue.set(result, forKey: kLet_reasonText)
                //: if let configModel = JSONDeserializer<AppConfigModel>.deserializeFrom(dict: result as? Dictionary<String, Any>, designatedPath: nil) {
                if let configModel = JSONDeserializer<CollectionUpConfigModel>.deserializeFrom(dict: result as? [String: Any], designatedPath: nil) {
                    //: LocationThen.share.appConfigMode = configModel
                    LocationThen.share.appConfigMode = configModel
                    // 通知
                    //: NotificationCenter.default.post(name: UPDATE_APP_GETCONFIG_NOTIFICATION, object: nil)
                    NotificationCenter.default.post(name: kLet_clickHalfTitle, object: nil)
                    //: completion(succeed, result, errorModel)
                    completion(succeed, result, errorModel)
                }
                //: } else {
            } else {
                //: let configInfo = Defaults.dictionary(forKey: TalkingAppConfigKey)
                let configInfo = kLet_managerValue.dictionary(forKey: kLet_reasonText)
                //: if let configModel = JSONDeserializer<AppConfigModel>.deserializeFrom(dict: configInfo, designatedPath: nil) {
                if let configModel = JSONDeserializer<CollectionUpConfigModel>.deserializeFrom(dict: configInfo, designatedPath: nil) {
                    //: LocationThen.share.appConfigMode = configModel
                    LocationThen.share.appConfigMode = configModel
                    //: NotificationCenter.default.post(name: UPDATE_APP_GETCONFIG_NOTIFICATION, object: nil)
                    NotificationCenter.default.post(name: kLet_clickHalfTitle, object: nil)
                    //: completion(true, result, errorModel)
                    completion(true, result, errorModel)
                }
            }
        }
    }

    //: class func func__requestUserInfo(completion: @escaping FinishBlock) {
    class func channel(completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel.init()
        let reqModel = SizeRequestModel()
        //: reqModel.requestPath = "mf/user/getMyInfo"
        reqModel.requestPath = (String(kStr_sectionValue.suffix(4)) + "ser/ge" + String(kStr_pageData.prefix(4)) + String(kStr_managerKitGiftText))
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        kLet_firstName.afterFailureCompletion(model: reqModel) { succeed, result, errorModel in
            //: if succeed {
            if succeed {
                //: Defaults.set(result, forKey: TalkingLoginUserInfoCacheKey)
                kLet_managerValue.set(result, forKey: kLet_systemName)
                //: if let userModel = JSONDeserializer<LoginUserModel>.deserializeFrom(dict: result as? Dictionary<String, Any>, designatedPath: nil) {
                if let userModel = JSONDeserializer<EqualMeasurable>.deserializeFrom(dict: result as? [String: Any], designatedPath: nil) {
                    //: LocationThen.share.loginUserMode = userModel
                    LocationThen.share.loginUserMode = userModel
                }
            }
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }

    /// 查询用户余额
    //: class func func__getInfoColumn(completion: @escaping FinishBlock) {
    class func noViewCompletion(completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel.init()
        let reqModel = SizeRequestModel()
        //: reqModel.requestPath = "mf/user/getInfoColumn"
        reqModel.requestPath = (String(kStr_pathTitle.suffix(5)) + "er/ge" + String(kStr_fileName.suffix(6)) + "olumn")
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        kLet_firstName.afterFailureCompletion(model: reqModel) { succeed, result, errorModel in
            //: if succeed {
            if succeed {
                //: let json = JSON(result ?? [String: Any]())
                let json = JSON(result ?? [String: Any]())
                //: LocationThen.share.loginUserMode.mf_coin = String(format: "%.2f", json["mfCoin"].doubleValue)
                LocationThen.share.loginUserMode.mf_coin = String(format: "%.2f", json[(String(kStr_managerValue))].doubleValue)
            }
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }

    //: class func func__requestUserConfig(completion: @escaping FinishBlock) {
    class func imageDomain(completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel.init()
        let reqModel = SizeRequestModel()
        //: reqModel.requestPath = "mf/index/getConfig"
        reqModel.requestPath = (String(kStr_colorName.prefix(7)) + String(kStr_succeedValue.suffix(5)) + "Config")
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        kLet_firstName.afterFailureCompletion(model: reqModel) { succeed, result, errorModel in
            //: let configKey = "\(TalkingLoginUserConfigKey)_\(String(describing: LocationThen.share.loginUserMode.sex))"
            let configKey = "\(kLet_netData)_\(String(describing: LocationThen.share.loginUserMode.sex))"
            //: if succeed {
            if succeed {
                //: Defaults.set(result, forKey: configKey)
                kLet_managerValue.set(result, forKey: configKey)
                //: if let userModel = JSONDeserializer<AppUserConfigModel>.deserializeFrom(dict: result as? Dictionary<String, Any>, designatedPath: nil) {
                if let userModel = JSONDeserializer<OmitModelType>.deserializeFrom(dict: result as? [String: Any], designatedPath: nil) {
                    //: LocationThen.share.appUserConfigMode = userModel
                    LocationThen.share.appUserConfigMode = userModel
                    //: LayerConversationListener.shared.func__LogingIn()
                    LayerConversationListener.shared.deleteOff()
                    //: func__checkUserBaseinfoFileVersionWithURL(baseinfo: LocationThen.share.appUserConfigMode.baseInfo)
                    party(baseinfo: LocationThen.share.appUserConfigMode.baseInfo)
                    // 上传用户日志
                    //: if userModel.needUploadLog == true {
                    if userModel.needUploadLog == true {
                        //: UploadLogTool.shared.uploadLog(false)
                        MiniLoadThen.shared.getCracking(false)
                    }
                    // 上报女性用户busy状态
                    //: (TalkingApplication.shared as! TalkingApplication).femaleBusyStatusReport()
                    (LayerKingfisherCompatible.shared as! LayerKingfisherCompatible).deadlineReport()
                }
                //: } else {
            } else {
                //: let configInfo = Defaults.dictionary(forKey: configKey)
                let configInfo = kLet_managerValue.dictionary(forKey: configKey)
                //: if let userModel = JSONDeserializer<AppUserConfigModel>.deserializeFrom(dict: configInfo, designatedPath: nil) {
                if let userModel = JSONDeserializer<OmitModelType>.deserializeFrom(dict: configInfo, designatedPath: nil) {
                    //: LocationThen.share.appUserConfigMode = userModel
                    LocationThen.share.appUserConfigMode = userModel
                    //: LayerConversationListener.shared.func__LogingIn()
                    LayerConversationListener.shared.deleteOff()
                }
            }
            //: NotificationCenter.default.post(name: UPDATE_INDEX_GETCONFIG_NOTIFICATION, object: nil)
            NotificationCenter.default.post(name: kLet_sessionValue, object: nil)
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }

    //: class func func__checkUserBaseinfoFileVersionWithURL(baseinfo: String) {
    class func party(baseinfo: String) {
        //: let cacheUrl = Defaults.string(forKey: TalkingUserTagCacheUrlKey)
        let cacheUrl = kLet_managerValue.string(forKey: kLet_firstValue)
        //: printLog(message: "baseinfo = \(baseinfo)")
        pathLine(message: (String(kStr_originalMyContent) + String(kStr_taskValue.prefix(9))) + "\(baseinfo)")
        //: if cacheUrl != baseinfo {
        if cacheUrl != baseinfo {
            //: AF.request(baseinfo, method: .get).responseData { responseData in
            AF.request(baseinfo, method: .get).responseData { responseData in
                //: switch responseData.result {
                switch responseData.result {
                //: case .success:
                case .success:
                    //: let responseJson = String(data: responseData.data!, encoding: .utf8)
                    let responseJson = String(data: responseData.data!, encoding: .utf8)
                    //: if let responseModel = JSONDeserializer<UserTagModel>.deserializeFrom(json: responseJson) {
                    if let responseModel = JSONDeserializer<UpwardModelType>.deserializeFrom(json: responseJson) {
                        //: Defaults.set(baseinfo, forKey: TalkingUserTagCacheUrlKey)
                        kLet_managerValue.set(baseinfo, forKey: kLet_firstValue)
                        //: let jsonPath = FileManager.CachesDirectory()+"UserBasicInfoSetting"
                        let jsonPath = FileManager.overDirectory() + (String(kStr_toUserValue.prefix(5)) + kStr_makeResignData.replacingOccurrences(of: "occur", with: "i") + "InfoS" + kStr_viewMessageData.replacingOccurrences(of: "corner", with: "ng"))
                        //: if FileManager.createFolder(folderPath: jsonPath) {
                        if FileManager.dataOffPath(folderPath: jsonPath) {
                            //: FileManager.writeStringToFile(content: responseJson!, writePath: jsonPath+"/userTag.json")
                            FileManager.squash(content: responseJson!, writePath: jsonPath + (String(kStr_labTagData.prefix(5)) + "Tag.json"))
                            //: LocationThen.share.func__loadUserTagCacheData()
                            LocationThen.share.removeReasonCompare()
                        }
                        //: } else {
                    } else {
                        //: printLog(message: "json 解析失败")
                        pathLine(message: (String(kStr_challengeData.suffix(5)) + "解析\u{5931}败"))
                    }
                //: break
                //: case .failure:
                case .failure:

                    //: break
                    break
                }
            }
            //: } else {
        } else {
            //: LocationThen.share.func__loadUserTagCacheData()
            LocationThen.share.removeReasonCompare()
        }
    }

    // 登录后上报FCM跟Device
    //: class func func__reportDeviceID() {
    class func reportFuncBreathingApparatus() {
        //: func__reportDeviceIdentifier()
        resignMake()
    }

    /// 上报adid
    //: class func func__reportDeviceIdentifier() {
    class func resignMake() {
        //: let adid = Adjust.adid() ?? ""
        let adid = Adjust.adid() ?? ""
        //: if !adid.isEmptyString {
        if !adid.isEmptyString {
            //: let reqModel = TalkingRequestModel.init()
            let reqModel = SizeRequestModel()
            //: reqModel.requestType = .POST
            reqModel.requestType = .POST
            //: reqModel.requestPath = "app/reportDeviceId"
            reqModel.requestPath = (String(kStr_sceneGroupContent.suffix(7)) + String(kStr_whiteValue.suffix(6)) + "iceId")
            //: reqModel.showErrorStatusBar = false
            reqModel.showErrorStatusBar = false
            //: var params = UIDevice.deviceInfoDic
            var params = UIDevice.deviceInfoDic
            //: if let poStr = params["p0"] {
            if let poStr = params["p0"] {
                //: let token = NSDate.getCurrentTimeStamp()
                let token = NSDate.aboveQuantity()
                //: reqModel.addHeaderToken = token
                reqModel.addHeaderToken = token
                //: let key = token.appending(TokenSaltStr)
                let key = token.appending(kLet_nameData)
                //: params["p0"] = (poStr as? String)?.encrypt(withKey: key)
                params["p0"] = (poStr as? String)?.objectModel(key)
            }
            //: reqModel.params = params
            reqModel.params = params
            //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
            kLet_firstName.afterFailureCompletion(model: reqModel) { _, _, _ in
            }
            //: }else {
        } else {
            //: if isRetryDeviceIdTime <= 384 {
            if kLet_limitValue <= 384 {
                //: DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + isRetryDeviceIdTime) {
                DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + kLet_limitValue) {
                    //: isRetryDeviceIdTime *= 2
                    kLet_limitValue *= 2
                    //: self.func__reportDeviceIdentifier()
                    self.resignMake()
                }
            }
        }
    }

    //: class func func__reportFCMID() {
    class func userLiveFcmid() {
        //: Messaging.messaging().token { token, error in
        Messaging.messaging().token { token, _ in
            //: if let token = token {
            if let token = token {
                //: let params = ["token": token]
                let params = [String(bytes: kStr_selectedName.map{ageDistance(with: $0)}, encoding: .utf8)!: token]
                //: let reqModel = TalkingRequestModel.init()
                let reqModel = SizeRequestModel()
                //: reqModel.requestType = .POST
                reqModel.requestType = .POST
                //: reqModel.requestPath = "app/reportFcmPushToken"
                reqModel.requestPath = (String(kStr_sizeData) + String(kStr_indexValue.prefix(5)) + "shToken")
                //: reqModel.params = params
                reqModel.params = params
                //: reqModel.showErrorStatusBar = false
                reqModel.showErrorStatusBar = false
                //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
                kLet_firstName.afterFailureCompletion(model: reqModel) { _, _, _ in
                }
            }
        }
    }

    //: class func func__initAppRequest() {
    class func candid() {
        //: if isRequestingInit {
        if kLet_videoName {
            //: return
            return
        }
        //: isRequestingInit = true
        kLet_videoName = true
        //: let reqModel = TalkingRequestModel.init()
        let reqModel = SizeRequestModel()
        //: reqModel.requestPath = "app/init"
        reqModel.requestPath = (kStr_trackData.replacingOccurrences(of: "release", with: "p") + String(kStr_resultText))
        //: reqModel.showErrorStatusBar = false
        reqModel.showErrorStatusBar = false
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        kLet_firstName.afterFailureCompletion(model: reqModel) { succeed, _, _ in
            //: isRequestingInit =  false
            kLet_videoName = false
            //: if succeed && LocationThen.share.request_HasInit == false {
            if succeed && LocationThen.share.request_HasInit == false {
                //: LocationThen.share.request_HasInit = true
                LocationThen.share.request_HasInit = true
            }
        }
    }

    //: class func func__initRequestHost(completion: @escaping FinishBlock) {
    class func headCurrent(completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel.init()
        let reqModel = SizeRequestModel()
        //: reqModel.requestPath = "app/ping"
        reqModel.requestPath = (String(kStr_contentData) + String(kStr_directionValue.prefix(6)))
        //: reqModel.showErrorStatusBar = false
        reqModel.showErrorStatusBar = false
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        kLet_firstName.afterFailureCompletion(model: reqModel) { succeed, result, errorModel in
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }
}
