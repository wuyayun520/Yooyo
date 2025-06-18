
//: Declare String Begin

/*: "call/sendMsg" :*/
fileprivate let kStr_itemModeText:String = "call/spic if since"
fileprivate let kStr_messageData:[Character] = ["e","n","d","M","s","g"]

/*: "logId" :*/
fileprivate let kStr_cellData:[Character] = ["l","o","g","I","d"]

/*: "content" :*/
fileprivate let kStr_byValue:String = "condownnt"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  AddDanmuManager.swift
//  AbroadTalking
//
//  Created by Charlotte on 2023/7/7.
//

//: import UIKit
import UIKit

//: protocol TalkingVideoDanmuManagerDelegate: NSObject {
protocol PathReactiveCompatible: NSObject {
    /// 弹幕消息
    //: func func__DanmuRecvNewModel(Msg: TalkingVideoCallDanmuModel)
    func pathMake(Msg: ShareTransformable)
}

//: class TalkingVideoDanmuManager: NSObject {
class AddDanmuManager: NSObject {
    //: private var maxJoinRoom = 1
    private var maxJoinRoom = 1 // 重试加入弹幕房间次数

    //: private static var _instance: TalkingVideoDanmuManager?
    private static var _instance: AddDanmuManager? // singleton

    //: open weak var delegate: TalkingVideoDanmuManagerDelegate?
    open weak var delegate: PathReactiveCompatible?

    //: override func copy() -> Any { return self }
    override func copy() -> Any { return self }
    //: override func mutableCopy() -> Any { return self }
    override func mutableCopy() -> Any { return self }
    //: private override init() {}
    override private init() {}
    //: class func shared() -> TalkingVideoDanmuManager {
    class func photo() -> AddDanmuManager {
        //: guard _instance != nil else {
        guard _instance != nil else {
            //: _instance = TalkingVideoDanmuManager()
            _instance = AddDanmuManager()
            //: return _instance!
            return _instance!
        }
        //: return _instance!
        return _instance!
    }
}

// MARK: - 展示消息通知

//: extension TalkingVideoDanmuManager {
extension AddDanmuManager {
    /// 处理接收到的弹幕消息，展示
    /// - Parameters:
    ///   - msg:
    //: func onRecvDanmuNewMsg(msg: [String: Any]) {
    func imageMsg(msg: [String: Any]) {
        //: if var model = TalkingVideoCallDanmuModel.deserialize(from: msg) {
        if var model = ShareTransformable.deserialize(from: msg) {
            //: let celldata = TalkingVideoCallDammuCellData.init()
            let celldata = SeekThen()
            //: model = celldata.caculateMsgHeight(model: model)
            model = celldata.caculateWithStagingTo(model: model)
            //: self.delegate?.func__DanmuRecvNewModel(Msg: model)
            self.delegate?.pathMake(Msg: model)
        }
    }

    /// 发送文本弹幕消息
    /// - Parameters:
    ///   - logId: 当前通话id
    ///   - content: 消息内容
    ///   - completion: 回调

    //: class func uploadToTextMsg(logId: String, content: String, completion: FinishBlock? = nil) {
    class func even(logId: String, content: String, completion: FinishBlock? = nil) {
        //: let reqModel = TalkingRequestModel()
        let reqModel = SizeRequestModel()
        //: reqModel.requestPath = "call/sendMsg"
        reqModel.requestPath = (String(kStr_itemModeText.prefix(6)) + String(kStr_messageData))
        //: reqModel.requestType = .POST
        reqModel.requestType = .POST
        //: var dict = Dictionary<String, Any>()
        var dict = [String: Any]()
        //: dict["logId"] = logId
        dict[(String(kStr_cellData))] = logId
        //: dict["content"] = content
        dict[(kStr_byValue.replacingOccurrences(of: "down", with: "te"))] = content
        //: reqModel.params = dict
        reqModel.params = dict
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        kLet_firstName.afterFailureCompletion(model: reqModel) { succeed, result, errorModel in
            //: completion?(succeed, result, errorModel)
            completion?(succeed, result, errorModel)
        }
    }
}

//: extension TalkingVideoDanmuManager {
extension AddDanmuManager {
    /// 释放单利
    //: class func danmu_releaseAllResource() {
    class func errorResource() {
        //: if TalkingVideoDanmuManager._instance != nil {
        if AddDanmuManager._instance != nil {
            //: TalkingVideoDanmuManager._instance = nil
            AddDanmuManager._instance = nil
        }
    }
}
