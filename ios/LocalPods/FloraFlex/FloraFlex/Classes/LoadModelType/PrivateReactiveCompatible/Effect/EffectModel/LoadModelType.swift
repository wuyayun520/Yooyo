
//: Declare String Begin

/*: "className" :*/
fileprivate let kStr_pathTitle:[Character] = ["c","l","a","s","s","N"]
fileprivate let kStr_layerName:String = "amsize"

/*: "nativeClassName" :*/
fileprivate let kStr_contentValue:String = "natimake"
fileprivate let kStr_labelName:String = "merror"

/*: "effectType" :*/
fileprivate let kStr_whiteContent:String = "ekindkindec"
fileprivate let kStr_outsideTitleValue:String = "tTypedata view"

/*: "gifFile" :*/
fileprivate let kStr_colorName:[Character] = ["g","i","f","F","i","l","e"]

/*: "versions" :*/
fileprivate let kStr_formatTitle:[Character] = ["v","e","r","s","i","o","n"]
fileprivate let kStr_cellValue:[Character] = ["s"]

/*: "config" :*/
fileprivate let kStr_toData:String = "CONFIG"

/*: "mainFile" :*/
fileprivate let kStr_titleName:String = "upin"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  LoadModelType.swift
//  AbroadTalking
//
//  Created by Charlotte on 2023/3/9.
//

//: import UIKit
import UIKit

//: enum TalkingGiftAnimatType: String {
enum GiftAnimatType: String {
    //: case Gif  = "gif"
    case Gif = "gif"
    //: case Chat = "chatGift"
    case Chat = "chatGift"
}

//: enum GiftAnimatUpdateError: Int {
enum ClickSignedQuantity: Int {
    //: case UnzipFailed  = -1001
    case UnzipFailed = -1001 // 资源 解压失败
    //: case VerifyFailed = -1002
    case VerifyFailed = -1002 // 资源 校验失败
    //: case DownLoadFailed = -1003
    case DownLoadFailed = -1003 // 资源 下载失败
}

//: enum TalkingAnimatType: Int {
enum AttractorTransformable: Int {
    //: case Unknown  = 0
    case Unknown = 0
    //: case Gift = 1
    case Gift = 1 // 礼物动效
}

/// 动效资源的信息封装，对应一个zip资源的config.json

//: struct TalkingGiftAnimatModel: HandyJSON {
struct LoadModelType: HandyJSON {
    //: init() {
    init() {}

    //: var className = ""
    var className = ""
    //: var nativeClassName = ""
    var nativeClassName = ""
    //: var effectType = TalkingGiftAnimatType.Gif
    var effectType = GiftAnimatType.Gif /// 加载动效指定的类型
    //: var mainFile = ""
    var mainFile = ""
    //: var effectConfig = Dictionary<String, Any>()
    var effectConfig = [String: Any]()
}

//: extension TalkingGiftAnimatModel {
extension LoadModelType {
    //: func setAnimatModek(dic: NSDictionary) -> TalkingGiftAnimatModel {
    func exceptSiphon(dic: NSDictionary) -> LoadModelType {
        //: var model =  TalkingGiftAnimatModel.init()
        var model = LoadModelType()
        //: model.className = dic["className"] as? String ?? ""
        model.className = dic[(String(kStr_pathTitle) + kStr_layerName.replacingOccurrences(of: "size", with: "e"))] as? String ?? ""
        //: model.nativeClassName = dic["nativeClassName"] as? String ?? ""
        model.nativeClassName = dic[(kStr_contentValue.replacingOccurrences(of: "make", with: "ve") + "ClassNa" + kStr_labelName.replacingOccurrences(of: "error", with: "e"))] as? String ?? ""
        //: model.effectType = dic["effectType"] as? TalkingGiftAnimatType ?? TalkingGiftAnimatType.Gif
        model.effectType = dic[(kStr_whiteContent.replacingOccurrences(of: "kind", with: "f") + String(kStr_outsideTitleValue.prefix(5)))] as? GiftAnimatType ?? GiftAnimatType.Gif

        //: if model.effectType == .Gif {
        if model.effectType == .Gif {
            //: model.mainFile = dic["gifFile"] as? String ?? ""
            model.mainFile = dic[(String(kStr_colorName))] as? String ?? ""
            //: } else {
        } else {
            //: model.mainFile = dic[TalkingGiftAnimatType.Chat.rawValue] as? String ?? ""
            model.mainFile = dic[GiftAnimatType.Chat.rawValue] as? String ?? ""
        }
        //: let versions: Array = dic["versions"] as! Array<Dictionary<String, Any>>
        let versions: Array = dic[(String(kStr_formatTitle) + String(kStr_cellValue))] as! [[String: Any]]
        //: if versions.count <= 0 {
        if versions.count <= 0 {
            //: return model
            return model
        }
        //: let match = true
        let match = true
        /*!
         * 遍历versions数组，匹配应用版本，匹配到则使用config数据
         */
        //: for item in versions {
        for item in versions {
            //: model.effectConfig = item["config"] as! [String: Any]
            model.effectConfig = item[(kStr_toData.lowercased())] as! [String: Any]
        }
        //: if (match) {
        if match {
            //: model.className       = model.effectConfig["className"] as? String ?? ""
            model.className = model.effectConfig[(String(kStr_pathTitle) + kStr_layerName.replacingOccurrences(of: "size", with: "e"))] as? String ?? ""
            //: model.nativeClassName = model.effectConfig["nativeClassName"] as? String ?? ""
            model.nativeClassName = model.effectConfig[(kStr_contentValue.replacingOccurrences(of: "make", with: "ve") + "ClassNa" + kStr_labelName.replacingOccurrences(of: "error", with: "e"))] as? String ?? ""
            //: model.effectType      = model.effectConfig["effectType"] as? TalkingGiftAnimatType ?? TalkingGiftAnimatType.Gif
            model.effectType = model.effectConfig[(kStr_whiteContent.replacingOccurrences(of: "kind", with: "f") + String(kStr_outsideTitleValue.prefix(5)))] as? GiftAnimatType ?? GiftAnimatType.Gif
            //: model.mainFile        = model.effectConfig["mainFile"] as? String ?? ""
            model.mainFile = model.effectConfig[(kStr_titleName.replacingOccurrences(of: "up", with: "ma") + "File")] as? String ?? ""
        }
        //: return model
        return model
    }
}
