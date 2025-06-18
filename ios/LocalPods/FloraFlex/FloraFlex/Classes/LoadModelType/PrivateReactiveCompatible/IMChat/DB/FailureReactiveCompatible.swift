
//: Declare String Begin

/*: "toUserInfo" :*/
fileprivate let kStr_kitContent:String = "time empty make actiontoUserI"
fileprivate let kStr_styleSizeData:String = "naddo"

/*: "toUid" :*/
fileprivate let kStr_modeName:[Character] = ["t","o","U","i","d"]

/*: "nickname" :*/
fileprivate let kStr_blockName:String = "nfailurecknam"
fileprivate let kStr_imageData:String = "attribute"

/*: "headPic" :*/
fileprivate let kStr_equalMaxImageName:[Character] = ["h","e","a","d","P","i","c"]

/*: "sex" :*/
fileprivate let kStr_failText:[Character] = ["s","e","x"]

/*: "age" :*/
fileprivate let kStr_managerData:[Character] = ["a","g","e"]

/*: "tpAuth" :*/
fileprivate let kStr_identityValue:[Character] = ["t","p","A","u","t","h"]

/*: "interest" :*/
fileprivate let kStr_rowColorValue:String = "viewte"

/*: "picture" :*/
fileprivate let kStr_likeEffectPhotoContent:String = "imagei"
fileprivate let kStr_textData:[Character] = ["c","t","u","r","e"]

/*: "loungePlus" :*/
fileprivate let kStr_formatText:[Character] = ["l","o","u","n","g","e","P","l","u"]
fileprivate let kStr_fullPopCenterTitle:String = "source"

/*: "vipSkinId" :*/
fileprivate let kStr_effectData:[Character] = ["v","i","p","S","k","i","n","I"]
fileprivate let kStr_firstMediumTitle:String = "appear"

/*: "voicePrice" :*/
fileprivate let kStr_thirdData:String = "type error maker sizevoicePr"
fileprivate let kStr_resultData:String = "ICE"

/*: "videoPrice" :*/
fileprivate let kStr_toData:String = "item"
fileprivate let kStr_timeDataName:String = "ideoPif return to load"

/*: "voiceVIPPrice" :*/
fileprivate let kStr_sizeTitle:String = "voiceVnot random"
fileprivate let kStr_voiceLocationValue:String = "first"

/*: "videoVIPPrice" :*/
fileprivate let kStr_tableValue:[Character] = ["v","i","d","e","o","V","I","P","P","r"]
fileprivate let kStr_photoTitle:[Character] = ["i","c","e"]

/*: "version" :*/
fileprivate let kStr_topInviteName:String = "celle"
fileprivate let kStr_sectionToTitle:String = "matchsion"

/*: "headPicFrame" :*/
fileprivate let kStr_upText:[Character] = ["h","e","a","d","P","i","c"]
fileprivate let kStr_aspectTitle:String = "model title selfFrame"

/*: "signature" :*/
fileprivate let kStr_presentText:[Character] = ["s","i","g","n","a","t","u","r"]
fileprivate let kStr_detailValue:String = "work"

/*: "constellation" :*/
fileprivate let kStr_activeValue:String = "consmodele"

/*: "onlineStatus" :*/
fileprivate let kStr_normalIconModeValue:String = "onvideo"

/*: "isNewUser" :*/
fileprivate let kStr_cellData:[Character] = ["i","s","N","e","w","U","s","e","r"]

/*: "isOfficial" :*/
fileprivate let kStr_withTitle:[Character] = ["i","s","O"]
fileprivate let kStr_data:String = "ffindexial"

/*: "userStatus" :*/
fileprivate let kStr_halfAppData:String = "userStborder capture"

/*: "remarkInfo" :*/
fileprivate let kStr_errData:[Character] = ["r","e","m","a","r","k","I"]
fileprivate let kStr_playerData:String = "nfmain"

/*: "content" :*/
fileprivate let kStr_videoFrameValue:String = "cmin"
fileprivate let kStr_startValue:String = "vieweview"

/*: "top" :*/
fileprivate let kStr_indicatorName:String = "resultop"

/*: "enableVideoCall" :*/
fileprivate let kStr_modelName:String = "enabliste"
fileprivate let kStr_centerText:String = "video var info image indicatorVide"

/*: "voiceBean" :*/
fileprivate let kStr_targetText:String = "vofirst"

/*: "videoBean" :*/
fileprivate let kStr_releaseText:String = "videoBeanapp range"

/*: "prompt" :*/
fileprivate let kStr_regularValue:String = "prolinet"

/*: "matchRate" :*/
fileprivate let kStr_viewValue:[Character] = ["m","a","t","c","h","R","a","t","e"]

/*: "existSess" :*/
fileprivate let kStr_sizeText:[Character] = ["e","x","i","s","t","S","e","s","s"]

/*: "totalIntimate" :*/
fileprivate let kStr_iconData:[Character] = ["t","o","t","a","l","I","n","t","i"]
fileprivate let kStr_atData:String = "malabe"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  FailureReactiveCompatible.swift
//  AbroadTalking
//
//  Created by Hemming on 2022/9/16.
//

//: import UIKit
import UIKit

//: @objcMembers
@objcMembers
//: public class FailureReactiveCompatible: NSObject, HandyJSON {
public class FailureReactiveCompatible: NSObject, HandyJSON {
    //: public var uid: String = ""
    public var uid: String = ""
    //: public var nickname: String = ""
    public var nickname: String = ""
    //: public var age: String = "0"
    public var age: String = "0"
    //: public var headPic: String = ""
    public var headPic: String = ""
    //: public var sex: String = "0"                   // 1 男性 2 女性
    public var sex: String = "0" // 1 男性 2 女性
    //: public var version: String = "0"               // 当前用户版本
    public var version: String = "0" // 当前用户版本

    //: var interest: Array<String> = []
    var interest: [String] = []
    //: var picture: Array<String> = []
    var picture: [String] = []
    //: public var tpAuth: Bool = false
    public var tpAuth: Bool = false // 是否认证
    //: var enableVideoCall = false
    var enableVideoCall = false // 是否展示视频通话按钮，默认否
    //: public var loungePlus: Bool = false
    public var loungePlus: Bool = false // 是否订阅
    //: var vipSkinId = 0
    var vipSkinId = 0 // vip皮肤id
    //: var voicePrice: String = ""             // 语音通话价格
    var voicePrice: String = "" // 语音通话价格
    //: var videoPrice: String = ""             // 视频通话价格
    var videoPrice: String = "" // 视频通话价格
    //: var videoVIPPrice: String = ""          // 视频通话VIP价格
    var videoVIPPrice: String = "" // 视频通话VIP价格
    //: var voiceVIPPrice: String = ""          // 语音通话VIP价格
    var voiceVIPPrice: String = "" // 语音通话VIP价格
    //: var videoBean: String = ""              // 视频通话获取积分（限女性）
    var videoBean: String = "" // 视频通话获取积分（限女性）
    //: var voiceBean: String = ""              // 语音通话获取积分（限女性）
    var voiceBean: String = "" // 语音通话获取积分（限女性）
    //: var prompt: String = ""                 // VIP折扣提醒（限女性）
    var prompt: String = "" // VIP折扣提醒（限女性）
    //: public var headPicFrame: String = ""    // 头像框
    public var headPicFrame: String = "" // 头像框
    //: var matchRate = 0
    var matchRate = 0 // 匹配度
    //: var signature: String = ""              // 签名
    var signature: String = "" // 签名
    //: var constellation: String = ""          // 星座
    var constellation: String = "" // 星座
    //: var existSess: Bool = false
    var existSess: Bool = false // false表示未建立会话
    //: var onlineStatus = 0
    var onlineStatus = 0 // 用户在线状态 1=在线 0=不在线
    //: var isNewUser = false
    var isNewUser = false // 是否新用户
    //: var isHaveSession = false
    var isHaveSession = false // 是否建立会话
    //: public var isOfficial = false
    public var isOfficial = false // 是否官方账号
    //: var intimate = 0
    var intimate = 0 // 亲密度
    //: var intimateTime = 0
    var intimateTime = 0 // 亲密度保存时间
    //: var readReceiptTime = 0
    var readReceiptTime = 0 // 对方已读消息回执时间戳
    //: var userStatus = 1
    var userStatus = 1 // 用户状态 1正常2被禁言3被封号5被拉黑
    //: var content = ""                        // 置顶内容
    var content = "" // 置顶内容
    //: var top = 2
    var top = 2 // 是否置顶 1：置顶，2：否

    //: public required override init() {}
    override public required init() {}

    //: public class func func__transformedChatinfo(userDic: Dictionary<String, Any>) -> FailureReactiveCompatible {
    public class func uprise(userDic: [String: Any]) -> FailureReactiveCompatible {
        //: let wrap = FailureReactiveCompatible.init()
        let wrap = FailureReactiveCompatible()

        //: if userDic.keys.contains("toUserInfo") {
        if userDic.keys.contains((String(kStr_kitContent.suffix(7)) + kStr_styleSizeData.replacingOccurrences(of: "add", with: "f"))) {
            //: let userInfoDic = userDic["toUserInfo"] as! Dictionary<String, Any>
            let userInfoDic = userDic[(String(kStr_kitContent.suffix(7)) + kStr_styleSizeData.replacingOccurrences(of: "add", with: "f"))] as! [String: Any]
            //: if userInfoDic.keys.contains("toUid") {
            if userInfoDic.keys.contains((String(kStr_modeName))) {
                //: wrap.uid = "\(userInfoDic["toUid"] as! NSNumber)"
                wrap.uid = "\(userInfoDic[(String(kStr_modeName))] as! NSNumber)"
            }
            //: wrap.nickname = userInfoDic["nickname"] as? String ?? ""
            wrap.nickname = userInfoDic[(kStr_blockName.replacingOccurrences(of: "failure", with: "i") + kStr_imageData.replacingOccurrences(of: "attribute", with: "e"))] as? String ?? ""
            //: wrap.headPic = userInfoDic["headPic"] as? String ?? ""
            wrap.headPic = userInfoDic[(String(kStr_equalMaxImageName))] as? String ?? ""
            //: wrap.sex = userInfoDic["sex"] as? String ?? ""
            wrap.sex = userInfoDic[(String(kStr_failText))] as? String ?? ""
            //: wrap.age = "\(userInfoDic["age"] as? NSNumber ?? NSNumber.init())"
            wrap.age = "\(userInfoDic[(String(kStr_managerData))] as? NSNumber ?? NSNumber())"
            //: wrap.tpAuth = userInfoDic["tpAuth"] as? Bool ?? false
            wrap.tpAuth = userInfoDic[(String(kStr_identityValue))] as? Bool ?? false
            //: wrap.interest = userInfoDic["interest"] as? Array<String> ?? [""]
            wrap.interest = userInfoDic[(kStr_rowColorValue.replacingOccurrences(of: "view", with: "in") + "rest")] as? [String] ?? [""]
            //: wrap.picture = userInfoDic["picture"] as? Array<String> ?? [""]
            wrap.picture = userInfoDic[(kStr_likeEffectPhotoContent.replacingOccurrences(of: "image", with: "p") + String(kStr_textData))] as? [String] ?? [""]
            //: wrap.loungePlus = userInfoDic["loungePlus"] as? Bool ?? false
            wrap.loungePlus = userInfoDic[(String(kStr_formatText) + kStr_fullPopCenterTitle.replacingOccurrences(of: "source", with: "s"))] as? Bool ?? false
            //: wrap.vipSkinId = userInfoDic["vipSkinId"] as? Int ?? 0
            wrap.vipSkinId = userInfoDic[(String(kStr_effectData) + kStr_firstMediumTitle.replacingOccurrences(of: "appear", with: "d"))] as? Int ?? 0
            //: wrap.voicePrice = userInfoDic["voicePrice"] as? String ?? ""
            wrap.voicePrice = userInfoDic[(String(kStr_thirdData.suffix(7)) + kStr_resultData.lowercased())] as? String ?? ""
            //: wrap.videoPrice = userInfoDic["videoPrice"] as? String ?? ""
            wrap.videoPrice = userInfoDic[(kStr_toData.replacingOccurrences(of: "item", with: "v") + String(kStr_timeDataName.prefix(5)) + "rice")] as? String ?? ""
            //: wrap.voiceVIPPrice = userInfoDic["voiceVIPPrice"] as? String ?? ""
            wrap.voiceVIPPrice = userInfoDic[(String(kStr_sizeTitle.prefix(6)) + "IPPric" + kStr_voiceLocationValue.replacingOccurrences(of: "first", with: "e"))] as? String ?? ""
            //: wrap.videoVIPPrice = userInfoDic["videoVIPPrice"] as? String ?? ""
            wrap.videoVIPPrice = userInfoDic[(String(kStr_tableValue) + String(kStr_photoTitle))] as? String ?? ""
            //: wrap.version = userInfoDic["version"] as? String ?? ""
            wrap.version = userInfoDic[(kStr_topInviteName.replacingOccurrences(of: "cell", with: "v") + kStr_sectionToTitle.replacingOccurrences(of: "match", with: "r"))] as? String ?? ""
            //: wrap.headPicFrame = userInfoDic["headPicFrame"] as? String ?? ""
            wrap.headPicFrame = userInfoDic[(String(kStr_upText) + String(kStr_aspectTitle.suffix(5)))] as? String ?? ""
            //: wrap.signature = userInfoDic["signature"] as? String ?? ""
            wrap.signature = userInfoDic[(String(kStr_presentText) + kStr_detailValue.replacingOccurrences(of: "work", with: "e"))] as? String ?? ""
            //: wrap.constellation = userInfoDic["constellation"] as? String ?? ""
            wrap.constellation = userInfoDic[(kStr_activeValue.replacingOccurrences(of: "model", with: "t") + "llation")] as? String ?? ""
            //: wrap.onlineStatus = userInfoDic["onlineStatus"] as! Int
            wrap.onlineStatus = userInfoDic[(kStr_normalIconModeValue.replacingOccurrences(of: "video", with: "li") + "neStatus")] as! Int
            //: wrap.isNewUser = userInfoDic["isNewUser"] as? Bool ?? false
            wrap.isNewUser = userInfoDic[(String(kStr_cellData))] as? Bool ?? false
            //: wrap.isOfficial = userInfoDic["isOfficial"] as? Bool ?? false
            wrap.isOfficial = userInfoDic[(String(kStr_withTitle) + kStr_data.replacingOccurrences(of: "index", with: "ic"))] as? Bool ?? false
            //: wrap.userStatus = userInfoDic["userStatus"] as? Int ?? 1
            wrap.userStatus = userInfoDic[(String(kStr_halfAppData.prefix(6)) + "atus")] as? Int ?? 1
        }
        //: if userDic.keys.contains("remarkInfo") { // 备注相关
        if userDic.keys.contains((String(kStr_errData) + kStr_playerData.replacingOccurrences(of: "main", with: "o"))) { // 备注相关
            //: let remarkDict = userDic["remarkInfo"] as! [String: Any]
            let remarkDict = userDic[(String(kStr_errData) + kStr_playerData.replacingOccurrences(of: "main", with: "o"))] as! [String: Any]
            //: wrap.content = remarkDict["content"] as? String ?? ""
            wrap.content = remarkDict[(kStr_videoFrameValue.replacingOccurrences(of: "min", with: "o") + kStr_startValue.replacingOccurrences(of: "view", with: "nt"))] as? String ?? ""
            //: wrap.top = remarkDict["top"] as? Int ?? 2
            wrap.top = remarkDict[(kStr_indicatorName.replacingOccurrences(of: "result", with: "t"))] as? Int ?? 2
        }
        //: if userDic.keys.contains("enableVideoCall") {
        if userDic.keys.contains((kStr_modelName.replacingOccurrences(of: "list", with: "l") + String(kStr_centerText.suffix(4)) + "oCall")) {
            //: wrap.enableVideoCall = userDic["enableVideoCall"] as! Bool
            wrap.enableVideoCall = userDic[(kStr_modelName.replacingOccurrences(of: "list", with: "l") + String(kStr_centerText.suffix(4)) + "oCall")] as! Bool
        }
        //: if userDic.keys.contains("voiceBean") {
        if userDic.keys.contains((kStr_targetText.replacingOccurrences(of: "first", with: "ic") + "eBean")) {
            //: wrap.voiceBean = userDic["voiceBean"] as! String
            wrap.voiceBean = userDic[(kStr_targetText.replacingOccurrences(of: "first", with: "ic") + "eBean")] as! String
        }
        //: if userDic.keys.contains("videoBean") {
        if userDic.keys.contains((String(kStr_releaseText.prefix(9)))) {
            //: wrap.videoBean =  userDic["videoBean"] as! String
            wrap.videoBean = userDic[(String(kStr_releaseText.prefix(9)))] as! String
        }
        //: if userDic.keys.contains("prompt") {
        if userDic.keys.contains((kStr_regularValue.replacingOccurrences(of: "line", with: "mp"))) {
            //: wrap.prompt = userDic["prompt"] as! String
            wrap.prompt = userDic[(kStr_regularValue.replacingOccurrences(of: "line", with: "mp"))] as! String
        }
        //: if userDic.keys.contains("matchRate") {
        if userDic.keys.contains((String(kStr_viewValue))) {
            //: wrap.matchRate =  userDic["matchRate"] as! Int
            wrap.matchRate = userDic[(String(kStr_viewValue))] as! Int
        }
        //: if userDic.keys.contains("existSess") {
        if userDic.keys.contains((String(kStr_sizeText))) {
            //: wrap.existSess = userDic["existSess"] as? Bool ?? false
            wrap.existSess = userDic[(String(kStr_sizeText))] as? Bool ?? false
        }
        //: if userDic.keys.contains("totalIntimate") {
        if userDic.keys.contains((String(kStr_iconData) + kStr_atData.replacingOccurrences(of: "lab", with: "t"))) {
            //: wrap.intimate = userDic["totalIntimate"] as? Int ?? 0
            wrap.intimate = userDic[(String(kStr_iconData) + kStr_atData.replacingOccurrences(of: "lab", with: "t"))] as? Int ?? 0
        }
        //: return wrap
        return wrap
    }
}
