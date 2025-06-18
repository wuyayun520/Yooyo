
//: Declare String Begin

/*: "live/enter" :*/
fileprivate let kStr_makeName:[Character] = ["l","i","v","e","/","e","n"]
fileprivate let kStr_valueName:String = "tegift"

/*: "streamerUid" :*/
fileprivate let kStr_titleValue:[UInt8] = [0x64,0x69,0x55,0x72,0x65,0x6d,0x61,0x65,0x72,0x74,0x73]

/*: "live/userNum" :*/
fileprivate let kStr_makeTitleValue:String = "live/text equal first to"

/*: "chatGroupId" :*/
fileprivate let kStr_picContent:[UInt8] = [0xfb,0x0,0xf9,0xc,0xdf,0xa,0x7,0xd,0x8,0xe1,0xfc]

fileprivate func instanceView(to num: UInt8) -> UInt8 {
    let value = Int(num) - 152
    if value < 0 {
        return UInt8(value + 256)
    } else {
        return UInt8(value)
    }
}

/*: "live/members" :*/
fileprivate let kStr_onValue:String = "live/for error in title request"
fileprivate let kStr_domainValue:[Character] = ["s"]

/*: "live/mute" :*/
fileprivate let kStr_maxValue:String = "live/mutefor if share"

/*: "targetUid" :*/
fileprivate let kStr_socialStateEndTitle:[UInt8] = [0x73,0x66,0x75,0x60,0x62,0x73,0x52,0x6e,0x63]

/*: "duration" :*/
fileprivate let kStr_byUpValue:[UInt8] = [0xa5,0xb4,0xb3,0xa0,0xb5,0xa8,0xae,0xaf]

/*: "live/unmute" :*/
fileprivate let kStr_makeSizeCellData:[Character] = ["l","i"]
fileprivate let kStr_iconData:String = "data view to blockve/unmute"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  AudienceThen.swift
//  AbroadTalking
//
//  Created by Charlotte on 2023/7/7.
//

//: import UIKit
import UIKit

// 观众/主播
//: class TalkingAudienceManager: NSObject {
class AudienceThen: NSObject {
    /// 进房
    //: func req_enterLiveRoom(streamerUid: String, completion: @escaping FinishBlock) {
    func dataConverterCompletion(streamerUid: String, completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel()
        let reqModel = SizeRequestModel()
        //: reqModel.requestPath = "live/enter"
        reqModel.requestPath = (String(kStr_makeName) + kStr_valueName.replacingOccurrences(of: "gift", with: "r"))
        //: reqModel.requestType = .GET
        reqModel.requestType = .GET
        //: reqModel.params = ["streamerUid": streamerUid]
        reqModel.params = [String(bytes: kStr_titleValue.reversed(), encoding: .utf8)!: streamerUid]

        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        kLet_firstName.afterFailureCompletion(model: reqModel) { succeed, result, errorModel in
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }

    /// 在线人数
    //: func req_liveRoomOnlineNum(chatGroupId: String, completion: @escaping FinishBlock) {
    func titleUp(chatGroupId: String, completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel()
        let reqModel = SizeRequestModel()
        //: reqModel.requestPath = "live/userNum"
        reqModel.requestPath = (String(kStr_makeTitleValue.prefix(5)) + "userNum")
        //: reqModel.requestType = .GET
        reqModel.requestType = .GET
        //: reqModel.params = ["chatGroupId": chatGroupId]
        reqModel.params = [String(bytes: kStr_picContent.map{instanceView(to: $0)}, encoding: .utf8)!: chatGroupId]

        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        kLet_firstName.afterFailureCompletion(model: reqModel) { succeed, result, errorModel in
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }

    /// 在线列表
    //: func req_liveRoomOnlineList(chatGroupId: String, completion: @escaping FinishBlock) {
    func liveUponCompletion(chatGroupId: String, completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel()
        let reqModel = SizeRequestModel()
        //: reqModel.requestPath = "live/members"
        reqModel.requestPath = (String(kStr_onValue.prefix(5)) + "member" + String(kStr_domainValue))
        //: reqModel.requestType = .GET
        reqModel.requestType = .GET
        //: reqModel.params = ["chatGroupId": chatGroupId]
        reqModel.params = [String(bytes: kStr_picContent.map{instanceView(to: $0)}, encoding: .utf8)!: chatGroupId]

        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        kLet_firstName.afterFailureCompletion(model: reqModel) { succeed, result, errorModel in
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }

    /// 禁言
    //: func req_liveRoomMute(targetUid: String, duration: String, completion: @escaping FinishBlock) {
    func calendar(targetUid: String, duration: String, completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel()
        let reqModel = SizeRequestModel()
        //: reqModel.requestPath = "live/mute"
        reqModel.requestPath = (String(kStr_maxValue.prefix(9)))
        //: reqModel.requestType = .GET
        reqModel.requestType = .GET
        //: reqModel.params = ["targetUid": targetUid, "duration": duration]
        reqModel.params = [String(bytes: kStr_socialStateEndTitle.map{$0^7}, encoding: .utf8)!: targetUid, String(bytes: kStr_byUpValue.map{$0^193}, encoding: .utf8)!: duration]

        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        kLet_firstName.afterFailureCompletion(model: reqModel) { succeed, result, errorModel in
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }

    /// 解禁
    //: func req_liveRoomUnmute(targetUid: String, completion: @escaping FinishBlock) {
    func makeButton(targetUid: String, completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel()
        let reqModel = SizeRequestModel()
        //: reqModel.requestPath = "live/unmute"
        reqModel.requestPath = (String(kStr_makeSizeCellData) + String(kStr_iconData.suffix(9)))
        //: reqModel.requestType = .GET
        reqModel.requestType = .GET
        //: reqModel.params = ["targetUid": targetUid]
        reqModel.params = [String(bytes: kStr_socialStateEndTitle.map{$0^7}, encoding: .utf8)!: targetUid]

        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        kLet_firstName.afterFailureCompletion(model: reqModel) { succeed, result, errorModel in
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }
}
