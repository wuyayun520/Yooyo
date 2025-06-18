
//: Declare String Begin

/*: "DBUserVoiceTable" :*/
fileprivate let kStr_tagName:String = "coordinator labelDBUser"
fileprivate let kStr_cookieData:String = "center"

/*: "msgId" :*/
fileprivate let kStr_withValue:String = "view hidden model in countmsgId"

/*: "toUid" :*/
fileprivate let kStr_bindContent:[Character] = ["t","o","U","i","d"]

/*: "senderId" :*/
fileprivate let kStr_valueContent:String = "senderIdview video var"

/*: "audioSandbox" :*/
fileprivate let kStr_labVoiceContent:[Character] = ["a","u","d","i","o"]
fileprivate let kStr_playerData:[Character] = ["S","a"]
fileprivate let kStr_titleText:String = "ndbmessage"

/*: "audioLength" :*/
fileprivate let kStr_countText:String = "info moment sharedaudioL"
fileprivate let kStr_translationValue:[Character] = ["e","n","g","t","h"]

/*: "audioData" :*/
fileprivate let kStr_centerPathValue:String = "audsucceed"

/*: "audioUri" :*/
fileprivate let kStr_dataValue:String = "audioUriin title"

/*: "isRead" :*/
fileprivate let kStr_userText:String = "isReadvar edit view screen"

/*: "WCDB表 :*/
fileprivate let kStr_byTitle:String = "WCDB\u{8868}"

/*: : 批量插入数据失败。error： :*/
fileprivate let kStr_textName:[Character] = [":"," ","批","量"]
fileprivate let kStr_makeValue:[Character] = ["插","入","\u{6570}","据","\u{5931}","败","。","e","r","r","o","r","\u{ff1a}"]

/*: ." :*/
fileprivate let kStr_photoEqualTitle:String = "info"

/*: : 更新数据失败。error： :*/
fileprivate let kStr_norData:[Character] = [":"," ","更","新","\u{6570}","据","\u{5931}","败","。","e","r","r","o","r","："]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  GoFarReactiveCompatible.swift
//  FloraFlex
//
//  Created by DouXiu on 2024/8/29.
//

//: import UIKit
import UIKit
//: import WCDBSwift
import WCDBSwift

/// 表名
//: let GoFarReactiveCompatibleName = "DBUserVoiceTable"
let kLet_closeContent = (String(kStr_tagName.suffix(6)) + "VoiceTab" + kStr_cookieData.replacingOccurrences(of: "center", with: "le"))
//: @objcMembers
@objcMembers
//: public final class GoFarReactiveCompatible: NSObject, TableCodable {
public final class GoFarReactiveCompatible: NSObject, TableCodable {
    /// 消息Id【主键】
    //: public var msgId: String = ""
    public var msgId: String = ""
    /// 语音长度
    //: public var db_audioLength: String = ""
    public var db_audioLength: String = ""
    /// 缓存路径
    //: public var db_filePath: String = ""
    public var db_filePath: String = ""
    /// 下载路径
    //: var db_voiceUri: String = ""
    var db_voiceUri: String = ""
    /// 发送方
    //: var db_senduid: String = ""
    var db_senduid: String = ""
    /// 接收方
    //: var db_touid: String = ""
    var db_touid: String = ""
    /// 是否已读; 0未读，1已读
    //: var db_isRead: String = ""
    var db_isRead: String = ""
    /// 下载状态
    //: var downloadStatus: String = ""
    var downloadStatus: String = ""

    //: public enum CodingKeys: String, CodingTableKey {
    public enum CodingKeys: String, CodingTableKey {
        //: public typealias Root = GoFarReactiveCompatible
        public typealias Root = GoFarReactiveCompatible
        //: case msgId
        case msgId
        //: case db_voiceUri
        case db_voiceUri
        //: case db_filePath
        case db_filePath
        //: case db_senduid
        case db_senduid
        //: case db_touid
        case db_touid
        //: case db_isRead
        case db_isRead
        //: case db_audioLength
        case db_audioLength
        //: case downloadStatus
        case downloadStatus

        //: public static let objectRelationalMapping = TableBinding(CodingKeys.self) {
        public static let objectRelationalMapping = TableBinding(CodingKeys.self) {
            //: BindColumnConstraint(msgId, isPrimary: true)
            BindColumnConstraint(msgId, isPrimary: true)
        }
    }
}

// MARK: - 增、删、改、查

//: extension GoFarReactiveCompatible {
extension GoFarReactiveCompatible {
    /// 插入单条数据
    /// - Parameter dic: 字典
    /// - Returns: 模型
    //: @discardableResult
    @discardableResult
    //: public class func db_inserVoiceMsgToDB(_ dic: [AnyHashable: Any]) -> GoFarReactiveCompatible {
    public class func mini(_ dic: [AnyHashable: Any]) -> GoFarReactiveCompatible {
        //: let cache = GoFarReactiveCompatible()
        let cache = GoFarReactiveCompatible()
        //: cache.msgId = dic["msgId"] as? String ?? ""
        cache.msgId = dic[(String(kStr_withValue.suffix(5)))] as? String ?? ""
        //: cache.db_touid = String(dic["toUid"] as? Int ?? 0)
        cache.db_touid = String(dic[(String(kStr_bindContent))] as? Int ?? 0)
        //: cache.db_senduid = dic["senderId"] as? String ?? ""
        cache.db_senduid = dic[(String(kStr_valueContent.prefix(8)))] as? String ?? ""
        //: cache.db_filePath = dic["audioSandbox"] as? String ?? ""
        cache.db_filePath = dic[(String(kStr_labVoiceContent) + String(kStr_playerData) + kStr_titleText.replacingOccurrences(of: "message", with: "ox"))] as? String ?? ""
        //: cache.db_audioLength = dic["audioLength"] as? String ?? ""
        cache.db_audioLength = dic[(String(kStr_countText.suffix(6)) + String(kStr_translationValue))] as? String ?? ""
        //: if dic.keys.contains("audioData") {
        if dic.keys.contains((kStr_centerPathValue.replacingOccurrences(of: "succeed", with: "i") + "oData")) {
            //: cache.db_voiceUri = dic["audioData"] as? String ?? ""
            cache.db_voiceUri = dic[(kStr_centerPathValue.replacingOccurrences(of: "succeed", with: "i") + "oData")] as? String ?? ""
        }
        //: if cache.db_voiceUri.isEmpty {
        if cache.db_voiceUri.isEmpty {
            //: if dic.keys.contains("audioUri") {
            if dic.keys.contains((String(kStr_dataValue.prefix(8)))) {
                //: cache.db_voiceUri = dic["audioUri"] as? String ?? ""
                cache.db_voiceUri = dic[(String(kStr_dataValue.prefix(8)))] as? String ?? ""
            }
        }
        //: cache.db_isRead = dic["isRead"] as? String ?? ""
        cache.db_isRead = dic[(String(kStr_userText.prefix(6)))] as? String ?? ""
        //: cache.downloadStatus = "0"
        cache.downloadStatus = "0"
        //: db_updateVoiceMsg(cache)
        gestureModelHandle(cache)
        //: return cache
        return cache
    }

    /// 插入单条数据
    /// - Parameter voiceMsg: 数据模型
    //: class func db_insertVoiceMsg(_ voiceMsg: GoFarReactiveCompatible) {
    class func putUp(_ voiceMsg: GoFarReactiveCompatible) {
        //: GoFarReactiveCompatible.db_insertVoiceMsgs([voiceMsg])
        GoFarReactiveCompatible.imagePlant([voiceMsg])
    }

    /// 插入多条数据
    /// - Parameter voiceMsgs: 数据数组
    //: class func db_insertVoiceMsgs(_ voiceMsgs: [GoFarReactiveCompatible]) {
    class func imagePlant(_ voiceMsgs: [GoFarReactiveCompatible]) {
        //: try? WCDBManager.shared.database?.run(transaction: { _ in
        try? TableManager.shared.database?.run(transaction: { _ in
            //: do {
            do {
                //: try WCDBManager.shared.database?.insert(voiceMsgs, intoTable: GoFarReactiveCompatibleName)
                try TableManager.shared.database?.insert(voiceMsgs, intoTable: kLet_closeContent)
                //: } catch {
            } catch {
                //: MiniLoadThen.appLine(msg: "WCDB表\(GoFarReactiveCompatibleName): 批量插入数据失败。error：\(error).")
                MiniLoadThen.appLine(msg: (kStr_byTitle) + "\(kLet_closeContent)" + (String(kStr_textName) + String(kStr_makeValue)) + "\(error).")
            }
            //: })
        })
    }

    /// 查询单个数据
    /// - Parameter msgId: 消息id
    /// - Returns: 模型
    //: public class func db_getVoiceMsg(with msgId: String) -> GoFarReactiveCompatible? {
    public class func pressOut(with msgId: String) -> GoFarReactiveCompatible? {
        //: if let voiceMsgs = GoFarReactiveCompatible.db_getVoiceMsgs(with: [msgId]) {
        if let voiceMsgs = GoFarReactiveCompatible.combine(with: [msgId]) {
            //: return voiceMsgs.first
            return voiceMsgs.first
        }
        //: return nil
        return nil
    }

    /// 查询多条数据
    /// - Parameter msgIds: id数据
    /// - Returns: 数据数组
    //: class func db_getVoiceMsgs(with msgIds: [String]) -> [GoFarReactiveCompatible]? {
    class func combine(with msgIds: [String]) -> [GoFarReactiveCompatible]? {
        //: do {
        do {
            //: let condition = GoFarReactiveCompatible.Properties.msgId.in(msgIds)
            let condition = GoFarReactiveCompatible.Properties.msgId.in(msgIds)
            //: let voiceMsgs: [GoFarReactiveCompatible]? = try WCDBManager.shared.database?.getObjects(on: GoFarReactiveCompatible.Properties.all, fromTable: GoFarReactiveCompatibleName, where: condition)
            let voiceMsgs: [GoFarReactiveCompatible]? = try TableManager.shared.database?.getObjects(on: GoFarReactiveCompatible.Properties.all, fromTable: kLet_closeContent, where: condition)
            //: return voiceMsgs
            return voiceMsgs
            //: } catch {
        } catch {
            //: return nil
            return nil
        }
    }

    /// 更新单个数据【如果没有则插入】
    /// - Parameter voiceMsg: 数据模型
    //: class func db_updateVoiceMsg(_ voiceMsg: GoFarReactiveCompatible) {
    class func gestureModelHandle(_ voiceMsg: GoFarReactiveCompatible) {
        //: try? WCDBManager.shared.database?.run(transaction: { _ in
        try? TableManager.shared.database?.run(transaction: { _ in
            // 数据库中已存在，则更新数据
            //: if GoFarReactiveCompatible.db_getVoiceMsg(with: voiceMsg.msgId) != nil {
            if GoFarReactiveCompatible.pressOut(with: voiceMsg.msgId) != nil {
                //: do {
                do {
                    //: let condition = GoFarReactiveCompatible.Properties.msgId == voiceMsg.msgId
                    let condition = GoFarReactiveCompatible.Properties.msgId == voiceMsg.msgId
                    //: try WCDBManager.shared.database?.update(table: GoFarReactiveCompatibleName,
                    try TableManager.shared.database?.update(table: kLet_closeContent,
                                                            //: on: GoFarReactiveCompatible.Properties.all,
                                                            on: GoFarReactiveCompatible.Properties.all,
                                                            //: with: voiceMsg,
                                                            with: voiceMsg,
                                                            //: where: condition)
                                                            where: condition)
                    //: } catch {
                } catch {
                    //: MiniLoadThen.appLine(msg: "WCDB表\(GoFarReactiveCompatibleName): 更新数据失败。error：\(error).")
                    MiniLoadThen.appLine(msg: (kStr_byTitle) + "\(kLet_closeContent)" + (String(kStr_norData)) + "\(error).")
                }

                //: } else {
            } else {
                // 数据库中不存在，则插入数据
                //: GoFarReactiveCompatible.db_insertVoiceMsg(voiceMsg)
                GoFarReactiveCompatible.putUp(voiceMsg)
            }
            //: })
        })
    }

    /// 更新单个数据【如果没有则插入】
    /// - Parameters:
    ///   - msgId: 消息Id
    ///   - status: 状态
    ///   - filePath: 路径
    //: class func db_updateVoiceMsg(msgId: String, status: String = "", filePath: String = "") {
    class func sendRegister(msgId: String, status: String = "", filePath: String = "") {
        //: guard let dbModel = GoFarReactiveCompatible.db_getVoiceMsg(with: msgId) else { return }
        guard let dbModel = GoFarReactiveCompatible.pressOut(with: msgId) else { return }
        //: if status.isEmpty == false {
        if status.isEmpty == false {
            //: dbModel.downloadStatus = status
            dbModel.downloadStatus = status
        }
        //: if filePath.isEmpty == false {
        if filePath.isEmpty == false {
            //: dbModel.db_filePath = filePath
            dbModel.db_filePath = filePath
        }
        //: GoFarReactiveCompatible.db_updateVoiceMsg(dbModel)
        GoFarReactiveCompatible.gestureModelHandle(dbModel)
    }

    /// 根据消息Id删除数据
    /// - Parameter msgId: 消息Id
    //: class func db_deleteVoiceMsg(msgId: String) {
    class func voiceAppear(msgId: String) {
        //: try? WCDBManager.shared.database?.run(transaction: { _ in
        try? TableManager.shared.database?.run(transaction: { _ in
            //: let condition = GoFarReactiveCompatible.Properties.msgId == msgId
            let condition = GoFarReactiveCompatible.Properties.msgId == msgId
            //: try? WCDBManager.shared.database?.delete(fromTable: GoFarReactiveCompatibleName,
            try? TableManager.shared.database?.delete(fromTable: kLet_closeContent,
                                                     //: where: condition)
                                                     where: condition)
            //: })
        })
    }

    /// 根据userId、toUid删除数据
    /// - Parameters:
    ///   - userId: 用户id
    ///   - toUid: 对方id
    //: class func db_deleteVoiceMsg(_ userId: String, toUid: String) {
    class func videoVocalisation(_ userId: String, toUid: String) {
        //: try? WCDBManager.shared.database?.run(transaction: { _ in
        try? TableManager.shared.database?.run(transaction: { _ in
            //: let condition = GoFarReactiveCompatible.Properties.db_senduid == userId && GoFarReactiveCompatible.Properties.db_touid == toUid
            let condition = GoFarReactiveCompatible.Properties.db_senduid == userId && GoFarReactiveCompatible.Properties.db_touid == toUid
            //: try? WCDBManager.shared.database?.delete(fromTable: GoFarReactiveCompatibleName,
            try? TableManager.shared.database?.delete(fromTable: kLet_closeContent,
                                                     //: where: condition)
                                                     where: condition)
            //: })
        })
    }
}
