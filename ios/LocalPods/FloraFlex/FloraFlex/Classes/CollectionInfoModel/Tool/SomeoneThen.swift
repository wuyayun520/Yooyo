
//: Declare String Begin

/*: "mf/user/getUserInfo" :*/
fileprivate let kStr_backNameText:[Character] = ["m","f","/","u","s","e","r","/","g","e","t","U","s","e"]
fileprivate let kStr_giftValue:String = "data make soundrInfo"

/*: "uid" :*/
fileprivate let kStr_makeGestureData:[UInt8] = [0x56,0x4a,0x47]

private func pathInvite(model num: UInt8) -> UInt8 {
    return num ^ 35
}

/*: "mf/user/getReceivedGifts" :*/
fileprivate let kStr_cellColorUserValue:String = "app elsemf/user/"
fileprivate let kStr_pushText:[Character] = ["g","e","t","R"]
fileprivate let kStr_makeErrorValue:String = "centerei"

/*: "mf/crush/send" :*/
fileprivate let kStr_textTitle:String = "method seat send nor mediummf/crus"
fileprivate let kStr_kitValue:String = "bottom me self userh/send"

/*: "targetUid" :*/
fileprivate let kStr_pageText:[UInt8] = [0xe4,0xf1,0xe2,0xf7,0xf5,0xe4,0xc5,0xf9,0xf4]

private func fillUp(finish num: UInt8) -> UInt8 {
    return num ^ 144
}

/*: "user/attention" :*/
fileprivate let kStr_nowTitle:[UInt8] = [0xfd,0xfb,0xed,0xfa,0xa7,0xe9,0xfc,0xfc,0xed,0xe6,0xfc,0xe1,0xe7,0xe6]

private func varTop(create num: UInt8) -> UInt8 {
    return num ^ 136
}

/*: "user/removeAttention" :*/
fileprivate let kStr_nameData:String = "text share viewuser/r"
fileprivate let kStr_topData:String = "ENTION"

/*: "attentionUid" :*/
fileprivate let kStr_areaText:[UInt8] = [0x26,0x33,0x33,0x22,0x29,0x33,0x2e,0x28,0x29,0x12,0x2e,0x23]

private func scaleTag(value num: UInt8) -> UInt8 {
    return num ^ 71
}

/*: "removeAttentionUid" :*/
fileprivate let kStr_emptyText:[UInt8] = [0xb4,0xa3,0xab,0xa9,0xb0,0xa3,0x87,0xb2,0xb2,0xa3,0xa8,0xb2,0xaf,0xa9,0xa8,0x93,0xaf,0xa2]

private func enableProduct(cell num: UInt8) -> UInt8 {
    return num ^ 198
}

/*: "user/addBlack" :*/
fileprivate let kStr_addText:[UInt8] = [0xa,0x8,0xfa,0x7,0xc4,0xf6,0xf9,0xf9,0xd7,0x1,0xf6,0xf8,0x0]

fileprivate func shareIndex(fatal num: UInt8) -> UInt8 {
    let value = Int(num) - 149
    if value < 0 {
        return UInt8(value + 256)
    } else {
        return UInt8(value)
    }
}

/*: "user/remBlack" :*/
fileprivate let kStr_playerBackgroundData:String = "bottom equaluser/r"

/*: "mf/moment/like" :*/
fileprivate let kStr_statusValue:String = "mf/momerror else equal any"

/*: "momentId" :*/
fileprivate let kStr_errData:[UInt8] = [0xa1,0xa3,0xa1,0x99,0xa2,0xa8,0x7d,0x98]

fileprivate func bodyView(user num: UInt8) -> UInt8 {
    let value = Int(num) + 204
    if value > 255 {
        return UInt8(value - 256)
    } else {
        return UInt8(value)
    }
}

/*: "type" :*/
fileprivate let kStr_iconName:[UInt8] = [0x80,0x8d,0x84,0x91]

/*: "mf/user/uploadAuthPic" :*/
fileprivate let kStr_readingData:String = "name content model bagmf/u"
fileprivate let kStr_languageValue:String = "lappd"

/*: "auth_pic" :*/
fileprivate let kStr_noName:[UInt8] = [0xae,0xba,0xbb,0xa7,0x90,0xbf,0xa6,0xac]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  SomeoneThen.swift
//  AbroadTalking
//
//  Created by Bolo on 2022/9/8.
//

//: import UIKit
import UIKit

//: class TalkingUserRequestManager: NSObject {
class SomeoneThen: NSObject {
    // MARK: - 用户信息

    //: class func func__otherUserInfo(uid: String, completion: @escaping FinishBlock) {
    class func misquote(uid: String, completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel.init()
        let reqModel = SizeRequestModel()
        //: reqModel.requestPath = "mf/user/getUserInfo"
        reqModel.requestPath = (String(kStr_backNameText) + String(kStr_giftValue.suffix(5)))
        //: reqModel.params = ["uid": uid]
        reqModel.params = [String(bytes: kStr_makeGestureData.map{pathInvite(model: $0)}, encoding: .utf8)!: uid]
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        kLet_firstName.afterFailureCompletion(model: reqModel) { succeed, result, errorModel in
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }

    // MARK: - 收到的礼物

    //: class func func__getReceivedGift(uid: String, completion: @escaping FinishBlock) {
    class func playerPush(uid: String, completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel.init()
        let reqModel = SizeRequestModel()
        //: reqModel.requestPath = "mf/user/getReceivedGifts"
        reqModel.requestPath = (String(kStr_cellColorUserValue.suffix(8)) + String(kStr_pushText) + kStr_makeErrorValue.replacingOccurrences(of: "center", with: "ec") + "vedGifts")
        //: reqModel.params = ["uid": uid]
        reqModel.params = [String(bytes: kStr_makeGestureData.map{pathInvite(model: $0)}, encoding: .utf8)!: uid]
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        kLet_firstName.afterFailureCompletion(model: reqModel) { succeed, result, errorModel in
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }

    // MARK: - 发送心动

    //: class func func__sendCrushWithUserId(targetUid: String, completion: @escaping FinishBlock) {
    class func belowMessage(targetUid: String, completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel.init()
        let reqModel = SizeRequestModel()
        //: reqModel.requestType = .POST
        reqModel.requestType = .POST
        //: reqModel.requestPath = "mf/crush/send"
        reqModel.requestPath = (String(kStr_textTitle.suffix(7)) + String(kStr_kitValue.suffix(6)))
        //: reqModel.params = ["targetUid": targetUid]
        reqModel.params = [String(bytes: kStr_pageText.map{fillUp(finish: $0)}, encoding: .utf8)!: targetUid]
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        kLet_firstName.afterFailureCompletion(model: reqModel) { succeed, result, errorModel in
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }

    // MARK: - 关注

    //: class func func__attentionWithUserId(uid: String, isAttention: Bool, completion: @escaping FinishBlock) {
    class func publish(uid: String, isAttention: Bool, completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel.init()
        let reqModel = SizeRequestModel()
        //: reqModel.requestType = .GET
        reqModel.requestType = .GET
        //: reqModel.requestPath = isAttention == true ? "user/attention" : "user/removeAttention"
        reqModel.requestPath = isAttention == true ? String(bytes: kStr_nowTitle.map{varTop(create: $0)}, encoding: .utf8)! : (String(kStr_nameData.suffix(6)) + "emoveAtt" + kStr_topData.lowercased())
        //: reqModel.params = isAttention == true ? ["attentionUid": uid] : ["removeAttentionUid": uid]
        reqModel.params = isAttention == true ? [String(bytes: kStr_areaText.map{scaleTag(value: $0)}, encoding: .utf8)!: uid] : [String(bytes: kStr_emptyText.map{enableProduct(cell: $0)}, encoding: .utf8)!: uid]
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        kLet_firstName.afterFailureCompletion(model: reqModel) { succeed, result, errorModel in
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }

    // MARK: - 拉黑

    //: class func func__pullBlackWithUserId(uid: String, isBlack: Bool, completion: @escaping FinishBlock) {
    class func viewUser(uid: String, isBlack: Bool, completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel.init()
        let reqModel = SizeRequestModel()
        //: reqModel.requestType = .GET
        reqModel.requestType = .GET
        //: reqModel.requestPath = isBlack == true ? "user/addBlack" : "user/remBlack"
        reqModel.requestPath = isBlack == true ? String(bytes: kStr_addText.map{shareIndex(fatal: $0)}, encoding: .utf8)! : (String(kStr_playerBackgroundData.suffix(6)) + "emBlack")
        //: reqModel.params = ["uid": uid]
        reqModel.params = [String(bytes: kStr_makeGestureData.map{pathInvite(model: $0)}, encoding: .utf8)!: uid]
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        kLet_firstName.afterFailureCompletion(model: reqModel) { succeed, result, errorModel in
            //: if succeed == true {
            if succeed == true {
                //: if isBlack {
                if isBlack {
                    //: TalkingBlockListManager.shared.addUserToBlockList(userId: uid)
                    VideoEqualReactiveCompatible.shared.snapColor(userId: uid)
                    //: } else {
                } else {
                    //: TalkingBlockListManager.shared.removeUserForBlockList(userId: uid)
                    VideoEqualReactiveCompatible.shared.managerDrag(userId: uid)
                }
            }
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }

    // MARK: - 点赞

    //: class func func__likeMoment(mid: String, type: String, completion: @escaping FinishBlock) {
    class func statusCompletion(mid: String, type: String, completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel.init()
        let reqModel = SizeRequestModel()
        //: reqModel.requestType = .POST
        reqModel.requestType = .POST
        //: reqModel.requestPath = "mf/moment/like"
        reqModel.requestPath = (String(kStr_statusValue.prefix(6)) + "ent/like")
        //: reqModel.params = ["momentId": mid, "type": type]
        reqModel.params = [String(bytes: kStr_errData.map{bodyView(user: $0)}, encoding: .utf8)!: mid, String(bytes: kStr_iconName.map{$0^244}, encoding: .utf8)!: type]
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        kLet_firstName.afterFailureCompletion(model: reqModel) { succeed, result, errorModel in
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }

    // MARK: - 举报

    //: class func func__reportRequest(reqPath: String, reqParams: Dictionary<String, String>, completion: @escaping FinishBlock) {
    class func tap(reqPath: String, reqParams: [String: String], completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel.init()
        let reqModel = SizeRequestModel()
        //: reqModel.requestType = .POST
        reqModel.requestType = .POST
        //: reqModel.requestPath = reqPath
        reqModel.requestPath = reqPath
        //: reqModel.params = reqParams
        reqModel.params = reqParams
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        kLet_firstName.afterFailureCompletion(model: reqModel) { succeed, result, errorModel in
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }

    // MARK: - 真人认证

    //: class func func__realVerifyUploadPic(pic: UIImage, completion: @escaping FinishBlock) {
    class func onObserver(pic: UIImage, completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel.init()
        let reqModel = SizeRequestModel()
        //: reqModel.requestType = .POST
        reqModel.requestType = .POST
        //: reqModel.requestPath = "mf/user/uploadAuthPic"
        reqModel.requestPath = (String(kStr_readingData.suffix(4)) + "ser/up" + kStr_languageValue.replacingOccurrences(of: "app", with: "oa") + "AuthPic")
        //: let data = pic.jpegData(compressionQuality: 1)
        let data = pic.jpegData(compressionQuality: 1)
        //: reqModel.params = ["auth_pic": data ?? ""]
        reqModel.params = [String(bytes: kStr_noName.map{$0^207}, encoding: .utf8)!: data ?? ""]
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        kLet_firstName.afterFailureCompletion(model: reqModel) { succeed, result, errorModel in
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }
}
