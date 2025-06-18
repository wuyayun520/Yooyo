
//: Declare String Begin

/*: "mf/videoMatch/switch" :*/
fileprivate let kStr_atText:String = "mf/vidby icon view image"
fileprivate let kStr_noLiveTitleValue:String = "task video gesture original statusch/switch"

/*: "status" :*/
fileprivate let kStr_shareFrameData:[UInt8] = [0xa0,0xa1,0x8e,0xa1,0xa2,0xa0]

fileprivate func atTable(selected num: UInt8) -> UInt8 {
    let value = Int(num) + 211
    if value > 255 {
        return UInt8(value - 256)
    } else {
        return UInt8(value)
    }
}

/*: "mf/videoMatch/checkMatch" :*/
fileprivate let kStr_detailTitle:String = "count make model equalmf/vide"
fileprivate let kStr_normalName:String = "make equal topoMatc"
fileprivate let kStr_listValue:String = "kMatchtime popular height"

/*: "matchVersion" :*/
fileprivate let kStr_videoContent:[UInt8] = [0x6e,0x6f,0x69,0x73,0x72,0x65,0x56,0x68,0x63,0x74,0x61,0x6d]

/*: "v4" :*/
fileprivate let kStr_statusData:[Character] = ["v","4"]

/*: "enterType" :*/
fileprivate let kStr_labelBlockData:[UInt8] = [0xfd,0xf6,0xec,0xfd,0xea,0xcc,0xe1,0xe8,0xfd]

/*: "mf/videoMatch/headPics" :*/
fileprivate let kStr_controlLoopData:[Character] = ["m","f","/","v","i","d","e","o","M","a","t","c","h","/","h","e","a","d","P","i","c"]
fileprivate let kStr_backgroundName:String = "record"

/*: "mf/videoMatch/matchV3" :*/
fileprivate let kStr_modelTitle:String = "let on view error timemf/vi"
fileprivate let kStr_rawNowValue:[Character] = ["h","/","m","a","t","c","h","V","3"]

/*: "matchId" :*/
fileprivate let kStr_dragName:[UInt8] = [0x78,0x6c,0x7f,0x6e,0x73,0x54,0x6f]

fileprivate func bioLab(weight num: UInt8) -> UInt8 {
    let value = Int(num) - 11
    if value < 0 {
        return UInt8(value + 256)
    } else {
        return UInt8(value)
    }
}

/*: "mf/videoMatch/matchV4" :*/
fileprivate let kStr_equalName:[Character] = ["m","f","/","v","i","d","e","o","M","a","t","c","h","/"]
fileprivate let kStr_scaleText:String = "matchV4send layer self time make"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  ContentVideoManager.swift
//  AbroadTalking
//
//  Created by young on 2022/11/4.
//

//: import UIKit
import UIKit

//: class TalkingQuickVideoManager: NSObject {
class ContentVideoManager: NSObject {
    /// 视频速配开关（女）
    /// - Parameters:
    ///   - status: status=1开启，status=0关闭
    ///   - completion: 回调
    //: class func req_videoMatchSwitch(status: Bool, completion: @escaping FinishBlock) {
    class func statusDelete(status: Bool, completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel.init()
        let reqModel = SizeRequestModel()
        //: reqModel.requestPath = "mf/videoMatch/switch"
        reqModel.requestPath = (String(kStr_atText.prefix(6)) + "eoMat" + String(kStr_noLiveTitleValue.suffix(9)))
        //: reqModel.requestType = .POST
        reqModel.requestType = .POST
        //: reqModel.showErrorStatusBar = false
        reqModel.showErrorStatusBar = false
        //: reqModel.params = ["status": status]
        reqModel.params = [String(bytes: kStr_shareFrameData.map{atTable(selected: $0)}, encoding: .utf8)!: status]
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        kLet_firstName.afterFailureCompletion(model: reqModel) { succeed, result, errorModel in
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }

    /// 视频速配资格检查（男）
    /// - Parameters:
    ///   - isRandomVideo: 是否是随机视频
    ///   - completion: 回调
    //: class func req_videoMatchCheck(enterType: Int = 0, completion: @escaping FinishBlock) {
    class func videoToCompletion(enterType: Int = 0, completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel.init()
        let reqModel = SizeRequestModel()
        //: reqModel.requestPath = "mf/videoMatch/checkMatch"
        reqModel.requestPath = (String(kStr_detailTitle.suffix(7)) + String(kStr_normalName.suffix(5)) + "h/chec" + String(kStr_listValue.prefix(6)))
        //: reqModel.params = ["matchVersion": "v4", "enterType": enterType]
        reqModel.params = [String(bytes: kStr_videoContent.reversed(), encoding: .utf8)!: "v4", String(bytes: kStr_labelBlockData.map{$0^152}, encoding: .utf8)!: enterType]
        //: reqModel.requestType = .POST
        reqModel.requestType = .POST
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        kLet_firstName.afterFailureCompletion(model: reqModel) { succeed, result, errorModel in
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }

    /// 速配头像列表（男）
    /// - Parameter completion: 回调
    //: class func req_videoMatchHeadPics(completion: @escaping FinishBlock) {
    class func handleCompletion(completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel.init()
        let reqModel = SizeRequestModel()
        //: reqModel.requestPath = "mf/videoMatch/headPics"
        reqModel.requestPath = (String(kStr_controlLoopData) + kStr_backgroundName.replacingOccurrences(of: "record", with: "s"))
        //: reqModel.requestType = .GET
        reqModel.requestType = .GET
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        kLet_firstName.afterFailureCompletion(model: reqModel) { succeed, result, errorModel in
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }

    /// 开始视频速配（男）
    /// - Parameters:
    ///   - matchId: 默认传0，skip的时候传之前的matchId
    ///   - completion: 回调
    //: class func req_videoMatchToMatch(matchId: Int, completion: @escaping FinishBlock) {
    class func equidistantUser(matchId: Int, completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel.init()
        let reqModel = SizeRequestModel()
        //: reqModel.requestPath = "mf/videoMatch/matchV3"
        reqModel.requestPath = (String(kStr_modelTitle.suffix(5)) + "deoMatc" + String(kStr_rawNowValue))
        //: reqModel.requestType = .GET
        reqModel.requestType = .GET
        //: reqModel.params = ["matchId": matchId]
        reqModel.params = [String(bytes: kStr_dragName.map{bioLab(weight: $0)}, encoding: .utf8)!: matchId]
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        kLet_firstName.afterFailureCompletion(model: reqModel) { succeed, result, errorModel in
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }

    /// 开始随机视频（男）
    /// - Parameters:
    ///   - params: 参数
    ///   - completion: 回调
    //: class func req_randomVideoToMatch(params: [String: Any], completion: @escaping FinishBlock) {
    class func bold(params: [String: Any], completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel.init()
        let reqModel = SizeRequestModel()
        //: reqModel.requestPath = "mf/videoMatch/matchV4"
        reqModel.requestPath = (String(kStr_equalName) + String(kStr_scaleText.prefix(7)))
        //: reqModel.requestType = .GET
        reqModel.requestType = .GET
        //: reqModel.params = params
        reqModel.params = params
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        kLet_firstName.afterFailureCompletion(model: reqModel) { succeed, result, errorModel in
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }
}
