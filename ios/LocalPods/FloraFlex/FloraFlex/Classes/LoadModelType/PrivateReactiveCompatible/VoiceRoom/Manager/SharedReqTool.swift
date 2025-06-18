
//: Declare String Begin

/*: "party/enter" :*/
fileprivate let kStr_recordHiddenData:String = "PARTY"

/*: "roomId" :*/
fileprivate let kStr_mBeginName:[UInt8] = [0x28,0x35,0x35,0x37,0x13,0x3e]

private func nameNor(count num: UInt8) -> UInt8 {
    return num ^ 90
}

/*: "party/start" :*/
fileprivate let kStr_recordingValue:String = "empty next selfparty/"

/*: "party/close" :*/
fileprivate let kStr_aspectTitle:String = "edit self to leading centerparty/"
fileprivate let kStr_makeText:[Character] = ["e"]

/*: "party/changeRoom" :*/
fileprivate let kStr_onTitle:[Character] = ["p","a","r","t","y","/","c","h","a","n","g","e"]
fileprivate let kStr_lockValue:String = "Roomfailure pi count let mode"

/*: "beforeRoomId" :*/
fileprivate let kStr_messageData:[UInt8] = [0x55,0x58,0x59,0x62,0x65,0x58,0x45,0x62,0x62,0x60,0x3c,0x57]

fileprivate func statusCenter(equal num: UInt8) -> UInt8 {
    let value = Int(num) + 13
    if value > 255 {
        return UInt8(value - 256)
    } else {
        return UInt8(value)
    }
}

/*: "party/mikeList" :*/
fileprivate let kStr_appFinishName:String = "party/count content make"
fileprivate let kStr_imageSizeForName:String = "mikeListguard show table"

/*: "uid" :*/
fileprivate let kStr_colorData:[UInt8] = [0x98,0x8c,0x87]

fileprivate func limitSize(make num: UInt8) -> UInt8 {
    let value = Int(num) + 221
    if value > 255 {
        return UInt8(value - 256)
    } else {
        return UInt8(value)
    }
}

/*: "type" :*/
fileprivate let kStr_birdName:[UInt8] = [0x4d,0x52,0x49,0x3e]

fileprivate func addMagnitudeimate(change num: UInt8) -> UInt8 {
    let value = Int(num) - 217
    if value < 0 {
        return UInt8(value + 256)
    } else {
        return UInt8(value)
    }
}

/*: "pos" :*/
fileprivate let kStr_awakeValue:[UInt8] = [0x63,0x7c,0x60]

/*: "toPos" :*/
fileprivate let kStr_countValue:String = "mask effecttoPos"

/*: "party/mike" :*/
fileprivate let kStr_toData:[Character] = ["p","a"]
fileprivate let kStr_viewText:[Character] = ["r","t","y","/","m","i","k","e"]

/*: "party/adminMike" :*/
fileprivate let kStr_draftContent:String = "apparty"
fileprivate let kStr_boxName:String = "/admdata error icon send position"

/*: "party/list" :*/
fileprivate let kStr_routeData:[Character] = ["p","a","r","t","y"]
fileprivate let kStr_inputData:[Character] = ["/","l","i","s","t"]

/*: "party/onlineNum" :*/
fileprivate let kStr_colorValue:[Character] = ["p","a","r"]
fileprivate let kStr_createData:[Character] = ["t","y","/","o","n","l","i","n","e","N","u","m"]

/*: "party/onlineList" :*/
fileprivate let kStr_kitValue:String = "pinfoty"
fileprivate let kStr_postTitle:[Character] = ["s","t"]

/*: "party/mute" :*/
fileprivate let kStr_kindData:String = "papadty"
fileprivate let kStr_managerScreenValue:[Character] = ["/","m","u","t","e"]

/*: "targetUid" :*/
fileprivate let kStr_emptyViewName:[UInt8] = [0xf6,0xe3,0xf4,0xe9,0xe7,0xf6,0xd7,0xeb,0xe6]

fileprivate func equalLeading(load num: UInt8) -> UInt8 {
    let value = Int(num) + 126
    if value > 255 {
        return UInt8(value - 256)
    } else {
        return UInt8(value)
    }
}

/*: "duration" :*/
fileprivate let kStr_modelContent:[UInt8] = [0x6e,0x6f,0x69,0x74,0x61,0x72,0x75,0x64]

/*: "party/unmute" :*/
fileprivate let kStr_sceneTitle:String = "pmaket"

/*: "party/kickout" :*/
fileprivate let kStr_giftColorTitle:[Character] = ["p","a","r","t","y","/","k","i","c","k","o","u","t"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  SharedReqTool.swift
//  FloraFlex
//
//  Created by DouXiu on 2024/9/19.
//

/// 语聊房相关接口
//: class TalkingVoiceRoomReqTool {
class SharedReqTool {
    /// 开启语聊房
    /// - Parameters:
    ///   - roomId: 房间Id（nil：创建房间；有值：进入房间）
    ///   - completion: 回调
    //: class func req_voiceRoomCheck(roomId: String? = nil, completion: @escaping FinishBlock) {
    class func requestTarget(roomId: String? = nil, completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel()
        let reqModel = SizeRequestModel()
        //: reqModel.requestType = .GET
        reqModel.requestType = .GET
        //: reqModel.showErrorStatusBar = false
        reqModel.showErrorStatusBar = false
        //: if let roomId = roomId {
        if let roomId = roomId { // 进入房间
            //: reqModel.requestPath = "party/enter"
            reqModel.requestPath = (kStr_recordHiddenData.lowercased() + "/enter")
            //: reqModel.params = ["roomId": roomId]
            reqModel.params = [String(bytes: kStr_mBeginName.map{nameNor(count: $0)}, encoding: .utf8)!: roomId]
            //: } else {
        } else { // 创建房间
            //: reqModel.requestPath = "party/start"
            reqModel.requestPath = (String(kStr_recordingValue.suffix(6)) + "start")
        }
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        kLet_firstName.afterFailureCompletion(model: reqModel) { succeed, result, errorModel in
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }

    /// 房主销毁语聊房
    //: class func req_voiceRoomClose(roomId: String, completion: FinishBlock? = nil) {
    class func completion(roomId: String, completion: FinishBlock? = nil) {
        //: let reqModel = TalkingRequestModel()
        let reqModel = SizeRequestModel()
        //: reqModel.requestPath = "party/close"
        reqModel.requestPath = (String(kStr_aspectTitle.suffix(6)) + "clos" + String(kStr_makeText))
        //: reqModel.requestType = .POST
        reqModel.requestType = .POST
        //: reqModel.params = ["roomId": roomId]
        reqModel.params = [String(bytes: kStr_mBeginName.map{nameNor(count: $0)}, encoding: .utf8)!: roomId]
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        kLet_firstName.afterFailureCompletion(model: reqModel) { succeed, result, errorModel in
            //: completion?(succeed, result, errorModel)
            completion?(succeed, result, errorModel)
        }
    }

    /// 切房
    /// - Parameters:
    ///   - roomId: 当前进入房间Id
    ///   - beforeRoomId: 上一房间Id
    ///   - completion: 回调
    //: class func req_voiceRoomSwitch(roomId: String, beforeRoomId: String, completion: @escaping FinishBlock) {
    class func viewStatus(roomId: String, beforeRoomId: String, completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel()
        let reqModel = SizeRequestModel()
        //: reqModel.requestType = .GET
        reqModel.requestType = .GET
        //: reqModel.requestPath = "party/changeRoom"
        reqModel.requestPath = (String(kStr_onTitle) + String(kStr_lockValue.prefix(4)))
        //: reqModel.params = ["roomId": roomId, "beforeRoomId": beforeRoomId]
        reqModel.params = [String(bytes: kStr_mBeginName.map{nameNor(count: $0)}, encoding: .utf8)!: roomId, String(bytes: kStr_messageData.map{statusCenter(equal: $0)}, encoding: .utf8)!: beforeRoomId]
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        kLet_firstName.afterFailureCompletion(model: reqModel) { succeed, result, errorModel in
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }

    /// 获取语聊房麦位列表
    //: class func req_getMikeList(roomId: String, completion: @escaping (_ data: [TalkingMikeListItemModel]) -> Void) {
    class func writeOff(roomId: String, completion: @escaping (_ data: [SharedModelMeasurable]) -> Void) {
        //: let reqModel = TalkingRequestModel()
        let reqModel = SizeRequestModel()
        //: reqModel.requestPath = "party/mikeList"
        reqModel.requestPath = (String(kStr_appFinishName.prefix(6)) + String(kStr_imageSizeForName.prefix(8)))
        //: reqModel.params = ["roomId": roomId]
        reqModel.params = [String(bytes: kStr_mBeginName.map{nameNor(count: $0)}, encoding: .utf8)!: roomId]
        //: reqModel.requestType = .GET
        reqModel.requestType = .GET
        //: GJ.startRequest(model: reqModel) { _, result, _ in
        kLet_firstName.afterFailureCompletion(model: reqModel) { _, result, _ in
            //: var dataArr: [TalkingMikeListItemModel] = []
            var dataArr: [SharedModelMeasurable] = []
            //: guard let arr = result as? [[String: Any]] else {
            guard let arr = result as? [[String: Any]] else {
                //: completion(dataArr)
                completion(dataArr)
                //: return
                return
            }
            //: if let datas = Array<TalkingMikeListItemModel>.deserialize(from: arr as? Array) as? [TalkingMikeListItemModel] {
            if let datas = Array<SharedModelMeasurable>.deserialize(from: arr as? Array) as? [SharedModelMeasurable] {
                //: dataArr.append(contentsOf: datas)
                dataArr.append(contentsOf: datas)
            }
            //: completion(dataArr)
            completion(dataArr)
        }
    }

    /// 房主/观众 语音房操作请求
    /// - Parameters:
    ///   - roomId: 房间Id
    ///   - uid: 用户Id
    ///   - type: 1 上麦，2 下麦，3 切麦，4 开麦，5 闭麦
    ///   - position: 当前麦位
    ///   - toPos: 目标麦位（切麦传值）
    ///   - completion: 回调
    //: class func req_changeMike(roomId: String, uid: Int, type: Int, position: Int, toPos: Int? = nil, completion: @escaping FinishBlock) {
    class func subscribe(roomId: String, uid: Int, type: Int, position: Int, toPos: Int? = nil, completion: @escaping FinishBlock) {
        //: var params: [String: Any] = ["roomId": roomId, "uid": uid, "type": type, "pos": position]
        var params: [String: Any] = [String(bytes: kStr_mBeginName.map{nameNor(count: $0)}, encoding: .utf8)!: roomId, String(bytes: kStr_colorData.map{limitSize(make: $0)}, encoding: .utf8)!: uid, String(bytes: kStr_birdName.map{addMagnitudeimate(change: $0)}, encoding: .utf8)!: type, String(bytes: kStr_awakeValue.map{$0^19}, encoding: .utf8)!: position]
        //: if type == 3 {
        if type == 3 {
            //: params["toPos"] = toPos
            params[(String(kStr_countValue.suffix(5)))] = toPos
        }
        //: let reqModel = TalkingRequestModel()
        let reqModel = SizeRequestModel()
        //: reqModel.requestPath = "party/mike"
        reqModel.requestPath = (String(kStr_toData) + String(kStr_viewText))
        //: reqModel.requestType = .POST
        reqModel.requestType = .POST
        //: reqModel.params = params
        reqModel.params = params
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        kLet_firstName.afterFailureCompletion(model: reqModel) { succeed, result, errorModel in
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }

    /// 房主对他人操作请求
    /// - Parameters:
    ///   - roomId: 房间Id
    ///   - uid: 用户Id
    ///   - type: 1 锁麦，2 解锁麦，3 踢下麦，4 开麦，5 闭麦
    ///   - position: 麦位
    ///   - completion: 回调
    //: class func req_adminChangeMike(roomId: String, uid: Int, type: Int, position: Int, completion: @escaping FinishBlock) {
    class func nativityWindow(roomId: String, uid: Int, type: Int, position: Int, completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel()
        let reqModel = SizeRequestModel()
        //: reqModel.requestPath = "party/adminMike"
        reqModel.requestPath = (kStr_draftContent.replacingOccurrences(of: "app", with: "p") + String(kStr_boxName.prefix(4)) + "inMike")
        //: reqModel.requestType = .POST
        reqModel.requestType = .POST
        //: reqModel.params = ["roomId": roomId, "uid": uid, "type": type, "pos": position]
        reqModel.params = [String(bytes: kStr_mBeginName.map{nameNor(count: $0)}, encoding: .utf8)!: roomId, String(bytes: kStr_colorData.map{limitSize(make: $0)}, encoding: .utf8)!: uid, String(bytes: kStr_birdName.map{addMagnitudeimate(change: $0)}, encoding: .utf8)!: type, String(bytes: kStr_awakeValue.map{$0^19}, encoding: .utf8)!: position]
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        kLet_firstName.afterFailureCompletion(model: reqModel) { succeed, result, errorModel in
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }

    /// Party 列表
    /// - Parameters:
    ///   - completion: 回调
    //: class func req_partyList(params: Dictionary<String, Any>, completion: @escaping FinishBlock) {
    class func farmerLaborParty(params: [String: Any], completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel()
        let reqModel = SizeRequestModel()
        //: reqModel.requestType = .GET
        reqModel.requestType = .GET
        //: reqModel.requestPath = "party/list"
        reqModel.requestPath = (String(kStr_routeData) + String(kStr_inputData))
        //: reqModel.params = params
        reqModel.params = params
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        kLet_firstName.afterFailureCompletion(model: reqModel) { succeed, result, errorModel in
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }

    /// 查询房间在线人数
    /// - Parameters:
    ///   - roomId: 房间Id
    ///   - completion: 回调
    //: class func req_partyOnlineNum(roomId: String, completion: @escaping FinishBlock) {
    class func socialDemocraticParty(roomId: String, completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel()
        let reqModel = SizeRequestModel()
        //: reqModel.requestPath = "party/onlineNum"
        reqModel.requestPath = (String(kStr_colorValue) + String(kStr_createData))
        //: reqModel.requestType = .GET
        reqModel.requestType = .GET
        //: reqModel.params = ["roomId": roomId]
        reqModel.params = [String(bytes: kStr_mBeginName.map{nameNor(count: $0)}, encoding: .utf8)!: roomId]
        //: reqModel.showErrorStatusBar = false
        reqModel.showErrorStatusBar = false
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        kLet_firstName.afterFailureCompletion(model: reqModel) { succeed, result, errorModel in
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }

    /// 查询房间在线用户列表
    /// - Parameters:
    ///   - roomId: 房间Id
    ///   - completion: 回调
    //: class func req_partyOnlineList(roomId: String, completion: @escaping FinishBlock) {
    class func prohibitionPartyPathCompletion(roomId: String, completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel()
        let reqModel = SizeRequestModel()
        //: reqModel.requestPath = "party/onlineList"
        reqModel.requestPath = (kStr_kitValue.replacingOccurrences(of: "info", with: "ar") + "/onlineLi" + String(kStr_postTitle))
        //: reqModel.requestType = .GET
        reqModel.requestType = .GET
        //: reqModel.params = ["roomId": roomId]
        reqModel.params = [String(bytes: kStr_mBeginName.map{nameNor(count: $0)}, encoding: .utf8)!: roomId]
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        kLet_firstName.afterFailureCompletion(model: reqModel) { succeed, result, errorModel in
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }

    /// 禁言
    //: class func req_VoiceRoomMute(targetUid: String, roomID: String, duration: String, completion: @escaping FinishBlock) {
    class func targetTop(targetUid: String, roomID: String, duration: String, completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel()
        let reqModel = SizeRequestModel()
        //: reqModel.requestPath = "party/mute"
        reqModel.requestPath = (kStr_kindData.replacingOccurrences(of: "pad", with: "r") + String(kStr_managerScreenValue))
        //: reqModel.requestType = .GET
        reqModel.requestType = .GET
        //: reqModel.params = ["targetUid": targetUid, "roomId": roomID, "duration": duration]
        reqModel.params = [String(bytes: kStr_emptyViewName.map{equalLeading(load: $0)}, encoding: .utf8)!: targetUid, String(bytes: kStr_mBeginName.map{nameNor(count: $0)}, encoding: .utf8)!: roomID, String(bytes: kStr_modelContent.reversed(), encoding: .utf8)!: duration]

        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        kLet_firstName.afterFailureCompletion(model: reqModel) { succeed, result, errorModel in
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }

    /// 解禁
    //: class func req_VoiceRoomUnMute(targetUid: String, roomID: String, completion: @escaping FinishBlock) {
    class func magnitudeercalate(targetUid: String, roomID: String, completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel()
        let reqModel = SizeRequestModel()
        //: reqModel.requestPath = "party/unmute"
        reqModel.requestPath = (kStr_sceneTitle.replacingOccurrences(of: "make", with: "ar") + "y/unmute")
        //: reqModel.requestType = .GET
        reqModel.requestType = .GET
        //: reqModel.params = ["targetUid": targetUid, "roomId": roomID]
        reqModel.params = [String(bytes: kStr_emptyViewName.map{equalLeading(load: $0)}, encoding: .utf8)!: targetUid, String(bytes: kStr_mBeginName.map{nameNor(count: $0)}, encoding: .utf8)!: roomID]

        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        kLet_firstName.afterFailureCompletion(model: reqModel) { succeed, result, errorModel in
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }

    /// 踢出房间
    //: class func req_VoiceRoomKickout(targetUid: String, roomId: String, completion: @escaping FinishBlock) {
    class func doRecord(targetUid: String, roomId: String, completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel()
        let reqModel = SizeRequestModel()
        //: reqModel.requestPath = "party/kickout"
        reqModel.requestPath = (String(kStr_giftColorTitle))
        //: reqModel.requestType = .POST
        reqModel.requestType = .POST
        //: reqModel.params = ["targetUid": targetUid, "roomId": roomId]
        reqModel.params = [String(bytes: kStr_emptyViewName.map{equalLeading(load: $0)}, encoding: .utf8)!: targetUid, String(bytes: kStr_mBeginName.map{nameNor(count: $0)}, encoding: .utf8)!: roomId]

        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        kLet_firstName.afterFailureCompletion(model: reqModel) { succeed, result, errorModel in
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }
}
