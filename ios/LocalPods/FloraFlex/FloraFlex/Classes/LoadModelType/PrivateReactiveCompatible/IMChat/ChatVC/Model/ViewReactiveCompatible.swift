
//: Declare String Begin

/*: "msgInfo" :*/
fileprivate let kStr_appFrameIfValue:[Character] = ["m","s","g","I","n","f","o"]

/*: "jumps" :*/
fileprivate let kStr_designName:[Character] = ["j","u","m","p","s"]

/*: "uid" :*/
fileprivate let kStr_currentValue:String = "layerd"

/*: "roomId" :*/
fileprivate let kStr_tableName:[UInt8] = [0xab,0xb6,0xb6,0xb4,0x90,0xbd]

private func sphericalAngle(max num: UInt8) -> UInt8 {
    return num ^ 217
}

/*: "msgId" :*/
fileprivate let kStr_normalRemoveData:[UInt8] = [0x64,0x49,0x67,0x73,0x6d]

/*: "time" :*/
fileprivate let kStr_giftValue:[UInt8] = [0x20,0x3d,0x39,0x31]

private func serverAfter(time num: UInt8) -> UInt8 {
    return num ^ 84
}

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  ViewReactiveCompatible.swift
//  AbroadTalking
//
//  Created by young on 2023/4/12.
//

//: import UIKit
import UIKit

//: class TalkingGroupChatManager: NSObject {
class ViewReactiveCompatible: NSObject {
    //: weak var chatRoomVC: TalkingGroupChatController?
    weak var chatRoomVC: ProfitSharingChatController?
    //: @objc static let share = TalkingGroupChatManager()
    @objc static let share = ViewReactiveCompatible()
    //: private override init() {}
    override private init() {}
    //: override func copy() -> Any { return self }
    override func copy() -> Any { return self }
    //: override func mutableCopy() -> Any { return self }
    override func mutableCopy() -> Any { return self }
}

// MARK: - 处理@ 消息

//: extension TalkingGroupChatManager {
extension ViewReactiveCompatible {
    /// 接收到@ 消息
    /// - Parameters:
    ///   - msg: 腾讯消息体
    ///   - extraInfo: "extra" 数据
    //: func receivedMentionMsg(msg: V2TIMMessage, extraInfo: [AnyHashable: Any]) {
    func mention(msg: V2TIMMessage, extraInfo: [AnyHashable: Any]) {
        //: let dict = JSON(extraInfo)
        let dict = JSON(extraInfo)
        //: let jumps = dict["msgInfo"]["jumps"].arrayValue
        let jumps = dict[(String(kStr_appFrameIfValue))][(String(kStr_designName))].arrayValue

        // 判断是否有@ 本人
        //: var atMe = false
        var atMe = false
        //: for dict in jumps {
        for dict in jumps {
            //: if dict["uid"].stringValue == LocationThen.share.loginUid {
            if dict[(kStr_currentValue.replacingOccurrences(of: "layer", with: "ui"))].stringValue == LocationThen.share.loginUid {
                //: atMe = true
                atMe = true
                //: break
                break
            }
        }
        //: guard atMe == true else { return }
        guard atMe == true else { return }

        //: let sendTime = msg.timestamp.timeIntervalSince1970*1000
        let sendTime = msg.timestamp.timeIntervalSince1970 * 1000
        //: if TableMacroDefine.isGroupChat(msg.groupID) {
        if TableMacroDefine.peopleValue(msg.groupID) { // 家族
            //: } else {
        } else { // 公共聊天室
            //: guard let vc = chatRoomVC else { return }
            guard let vc = chatRoomVC else { return }
            //: let dict: [String: Any] = ["roomId": msg.groupID ?? "",
            let dict: [String: Any] = [String(bytes: kStr_tableName.map{sphericalAngle(max: $0)}, encoding: .utf8)!: msg.groupID ?? "",
                                       //: "msgId": msg.msgID ?? "",
                                       String(bytes: kStr_normalRemoveData.reversed(), encoding: .utf8)!: msg.msgID ?? "",
                                       //: "time": sendTime]
                                       String(bytes: kStr_giftValue.map{serverAfter(time: $0)}, encoding: .utf8)!: sendTime]
            //: vc.handleMentionMsg(info: dict)
            vc.handleInfo(info: dict)
        }
    }
}
