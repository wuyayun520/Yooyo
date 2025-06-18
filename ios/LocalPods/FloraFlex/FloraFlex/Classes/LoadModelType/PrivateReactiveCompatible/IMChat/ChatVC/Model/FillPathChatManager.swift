
//: Declare String Begin

/*: "TalkingIntimatePhotoUnlockMsgIdArrayKey" :*/
fileprivate let kStr_leadingValue:[UInt8] = [0x55,0x60,0x6d,0x6a,0x68,0x6f,0x66,0x48,0x6f,0x75,0x68,0x6c,0x60,0x75,0x64,0x51,0x69,0x6e,0x75,0x6e,0x54,0x6f,0x6d,0x6e,0x62,0x6a,0x4c,0x72,0x66,0x48,0x65,0x40,0x73,0x73,0x60,0x78,0x4a,0x64,0x78]

private func tempEnd(count num: UInt8) -> UInt8 {
    return num ^ 1
}

/*: "TalkingPrivateChatVideoTipsIsShow_ :*/
fileprivate let kStr_sectionName:[UInt8] = [0x72,0x47,0x4a,0x4d,0x4f,0x48,0x41,0x76,0x54,0x4f,0x50,0x47,0x52,0x43,0x65,0x4e,0x47,0x52,0x70,0x4f,0x42,0x43,0x49,0x72,0x4f,0x56,0x55,0x6f,0x55,0x75,0x4e,0x49,0x51,0x79]

/*: _ :*/
fileprivate let kStr_lineText:[Character] = ["_"]

/*: "Quick greeting can only be sent to him once" :*/
fileprivate let kStr_makeTitle:[UInt8] = [0x62,0x86,0x7a,0x74,0x7c,0x31,0x78,0x83,0x76,0x76,0x85,0x7a,0x7f,0x78,0x31,0x74,0x72,0x7f,0x31,0x80,0x7f,0x7d,0x8a,0x31,0x73,0x76,0x31,0x84,0x76,0x7f,0x85,0x31,0x85,0x80,0x31,0x79,0x7a,0x7e,0x31,0x80,0x7f,0x74,0x76]

fileprivate func viewImage(content num: UInt8) -> UInt8 {
    let value = Int(num) + 239
    if value > 255 {
        return UInt8(value - 256)
    } else {
        return UInt8(value)
    }
}

/*: "txt" :*/
fileprivate let kStr_sectionContent:String = "tfillt"

/*: "audio" :*/
fileprivate let kStr_tablePathName:String = "audrow"

/*: "Please add greeting text" :*/
fileprivate let kStr_minMakeName:String = "say page button application containerPlease"
fileprivate let kStr_videoContent:String = "REET"
fileprivate let kStr_normalValue:String = "ing textcount original video list"

/*: "You have not set up a photo greeting, please set it up before sending!" :*/
fileprivate let kStr_labData:[UInt8] = [0x21,0x67,0x6e,0x69,0x64,0x6e,0x65,0x73,0x20,0x65,0x72,0x6f,0x66,0x65,0x62,0x20,0x70,0x75,0x20,0x74,0x69,0x20,0x74,0x65,0x73,0x20,0x65,0x73,0x61,0x65,0x6c,0x70,0x20,0x2c,0x67,0x6e,0x69,0x74,0x65,0x65,0x72,0x67,0x20,0x6f,0x74,0x6f,0x68,0x70,0x20,0x61,0x20,0x70,0x75,0x20,0x74,0x65,0x73,0x20,0x74,0x6f,0x6e,0x20,0x65,0x76,0x61,0x68,0x20,0x75,0x6f,0x59]

/*: "Cancel" :*/
fileprivate let kStr_thirdName:String = "equal case cell self labelCancel"

/*: "Go to set" :*/
fileprivate let kStr_opTitle:[Character] = ["G","o"," ","t","o"," ","s","e"]
fileprivate let kStr_textTitle:String = "mode"

/*: "#startTime#" :*/
fileprivate let kStr_labelTitle:String = "convert gift row text will#s"
fileprivate let kStr_conversationName:String = "arrayrt"

/*: "#endTime#" :*/
fileprivate let kStr_ofData:[Character] = ["#","e","n","d","T","i","m","e","#"]

/*: "text" :*/
fileprivate let kStr_documentValue:String = "scaleexscale"

/*: "img" :*/
fileprivate let kStr_shareValue:String = "iframeg"

/*: "video" :*/
fileprivate let kStr_userMakeValue:String = "topideo"

/*: "gift" :*/
fileprivate let kStr_modelCountContent:String = "gifadd"

/*: "PrivateChat 点击引用消息 :*/
fileprivate let kStr_frameValue:String = "Privatready tool environment range"
fileprivate let kStr_areaName:String = "t 点击引\u{7528}消息"

/*: ." :*/
fileprivate let kStr_giftData:[Character] = ["."]

/*: "Sent " :*/
fileprivate let kStr_kitData:[Character] = ["S","e","n","t"," "]

/*: " x :*/
fileprivate let kStr_showValue:String = "view app self raw x"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  FillPathChatManager.swift
//  AbroadTalking
//
//  Created by young on 2023/1/5.
//

//: import UIKit
import UIKit

/// 一键打招呼Block
//: typealias QuickGreetingBlock = (_ errorCode: Int?, _ errorMsg: String?, _ textDict: [String: Any]?, _ audioDict: [String: Any]?) -> Void
typealias QuickGreetingBlock = (_ errorCode: Int?, _ errorMsg: String?, _ textDict: [String: Any]?, _ audioDict: [String: Any]?) -> Void

/// 图片打招呼Block
//: typealias BeautyPhotosBlock = (_ isPushSet: Bool, _ PhotoDict: [String: Any]?) -> Void
typealias BeautyPhotosBlock = (_ isPushSet: Bool, _ PhotoDict: [String: Any]?) -> Void

//: public class TalkingPrivateChatManager: NSObject {
public class FillPathChatManager: NSObject {
    /// 记录私信对端已读回执时间 [key：userID，value：对端最后已读回执时间]
    //: var readReceiptDict = [String: Int]()
    var readReceiptDict = [String: Int]()

    //: @objc static let share = TalkingPrivateChatManager()
    @objc static let share = FillPathChatManager()
    //: private override init() {}
    override private init() {}

    //: @objc let UnlockMsgIdArrayKey = "TalkingIntimatePhotoUnlockMsgIdArrayKey"  // 私密照片已解锁礼物消息数组的key
    @objc let UnlockMsgIdArrayKey = String(bytes: kStr_leadingValue.map{tempEnd(count: $0)}, encoding: .utf8)! // 私密照片已解锁礼物消息数组的key
}

// MARK: - 插入音视频通话提示消息

//: extension TalkingPrivateChatManager {
extension FillPathChatManager {
    /// 判断是否需要插入音视频通话提示消息
    /// - Parameters:
    ///   - toUid: 对方Id
    ///   - msgView: TUI视图
    ///   - completionHandler: 回调
    //: static func chat_privateChatVideo_insertTipMsg(toUid: String, msgView: TUIMessageController, needInsertHandler: (() -> Void)?) {
    static func makeHandler(toUid: String, msgView: TUIMessageController, needInsertHandler: (() -> Void)?) {
        // 非审核模式
        //: guard LocationThen.share.appStatus == AppSkinStatus.normal.rawValue else { return }
        guard LocationThen.share.appStatus == SharedInsetTarget.normal.rawValue else { return }
        // 男性
        //: guard LocationThen.share.loginUserMode.sex == Gender.male.rawValue else { return }
        guard LocationThen.share.loginUserMode.sex == SucceedComparable.male.rawValue else { return }

        // 是否展示过提示文案
        //: let TalkingPrivateChatVideoTipsIsShow = "TalkingPrivateChatVideoTipsIsShow_\(String(LocationThen.share.loginUserMode.userID))_\(toUid)"
        let TalkingPrivateChatVideoTipsIsShow = String(bytes: kStr_sectionName.map{$0^38}, encoding: .utf8)! + "\(String(LocationThen.share.loginUserMode.userID))_\(toUid)"
        //: let isShow = Defaults.bool(forKey: TalkingPrivateChatVideoTipsIsShow)
        let isShow = kLet_managerValue.bool(forKey: TalkingPrivateChatVideoTipsIsShow)
        //: guard isShow == false else { return }
        guard isShow == false else { return }

        // 消息达到5条
        //: guard msgView.uiMsgs.count >= 5 else { return }
        guard msgView.uiMsgs.count >= 5 else { return }

        //: var hasVoiceVideo = false
        var hasVoiceVideo = false // 是否有音视频通话消息
        //: var outgoingMsgCount = 0
        var outgoingMsgCount = 0 // 消息发送方已发送消息数量
        //: for indexModel in msgView.uiMsgs {
        for indexModel in msgView.uiMsgs {
            //: let indexModel = indexModel as? TUIMessageCellData
            let indexModel = indexModel as? TUIMessageCellData
            //: if indexModel != nil {
            if indexModel != nil {
                //: if indexModel!.isKind(of: ShowCellData.self) {
                if indexModel!.isKind(of: ShowCellData.self) { // 是否包含音视频文本
                    //: let textMsgModel = indexModel as! ShowCellData
                    let textMsgModel = indexModel as! ShowCellData
                    //: if textMsgModel.isVoiceVideo == true {
                    if textMsgModel.isVoiceVideo == true {
                        //: hasVoiceVideo = true
                        hasVoiceVideo = true
                        //: break
                        break
                    }
                }

                // 语音消息 || 文本消息 || 图片消息 || 视频消息
                //: if indexModel!.isKind(of: CanPointCellData.self) ||
                if indexModel!.isKind(of: CanPointCellData.self) ||
                    //: indexModel!.isKind(of: ShowCellData.self) ||
                    indexModel!.isKind(of: ShowCellData.self) ||
                    //: indexModel!.isKind(of: LayerCellData.self) ||
                    indexModel!.isKind(of: LayerCellData.self) ||
                    //: indexModel!.isKind(of: CountCellData.self) {
                    indexModel!.isKind(of: CountCellData.self)
                {
                    //: if indexModel?.direction == .MsgDirectionOutgoing {
                    if indexModel?.direction == .MsgDirectionOutgoing { // 消息发送方
                        //: outgoingMsgCount += 1
                        outgoingMsgCount += 1
                    }
                }
            }
        }

        //: guard hasVoiceVideo == false else {
        guard hasVoiceVideo == false else {
            //: Defaults.set(true, forKey: TalkingPrivateChatVideoTipsIsShow)
            kLet_managerValue.set(true, forKey: TalkingPrivateChatVideoTipsIsShow)
            //: return
            return
        }
        //: guard outgoingMsgCount >= 5 else { return }
        guard outgoingMsgCount >= 5 else { return }

        // 回调外部插入音视频提示消息
        //: if needInsertHandler != nil {
        if needInsertHandler != nil {
            //: needInsertHandler!()
            needInsertHandler!()
            //: Defaults.set(true, forKey: TalkingPrivateChatVideoTipsIsShow)
            kLet_managerValue.set(true, forKey: TalkingPrivateChatVideoTipsIsShow)
        }
    }
}

// MARK: - 一键打招呼

//: extension TalkingPrivateChatManager {
extension FillPathChatManager {
    /// 判断是否可以一键打招呼，回调结果
    /// - Parameters:
    ///   - toUserId: 接收方UserId
    ///   - handler: errorCode：1 = 已发送过；2=未添加打招呼数据;
    //: static func chat_sendQuickGreeting(toUserId: String, completionHandler: @escaping QuickGreetingBlock) {
    static func beauty(toUserId: String, completionHandler: @escaping QuickGreetingBlock) {
        //: let key = "\(LocationThen.share.loginUserMode.userID)_\(TalkingSendAutoGreetIsToKey)_\(toUserId)"
        let key = "\(LocationThen.share.loginUserMode.userID)_\(kLet_failTitle)_\(toUserId)"
        //: let ishave = UserDefaults.standard.bool(forKey: key)
        let ishave = UserDefaults.standard.bool(forKey: key)
        //: guard !ishave else {
        guard !ishave else {
            //: completionHandler(1, "Quick greeting can only be sent to him once".localized, nil, nil)
            completionHandler(1, String(bytes: kStr_makeTitle.map{viewImage(content: $0)}, encoding: .utf8)!.localized, nil, nil)
            //: return
            return
        }

        //: ProgressHUD.show()
        TintProgressHUD.weight()
        //: UpsetCountRequestTool.req_getAutoGreetContent { succeed, result, errorModel in
        UpsetCountRequestTool.mainTargetCompletion { succeed, result, errorModel in
            //: ProgressHUD.dismiss()
            TintProgressHUD.inkingPadDismiss()
            //: guard succeed == true else {
            guard succeed == true else {
                //: if errorModel?.errorCode == 60003, !LocationThen.share.loginUserMode.isNaUser {
                if errorModel?.errorCode == 60003, !LocationThen.share.loginUserMode.isNaUser {
                    /// 真人认证提示弹窗
                    //: TalkingPopupWindowManager.shared.faceVerificationPopUpWindow()
                    ClientBottomReactiveCompatible.shared.destabilisation()
                    //: return
                    return
                }
                //: completionHandler(2, errorModel?.errorMsg ?? "", nil, nil)
                completionHandler(2, errorModel?.errorMsg ?? "", nil, nil)
                //: return
                return
            }
            //: guard let dict = result as? [String: Any] else {
            guard let dict = result as? [String: Any] else {
                //: completionHandler(2, "", nil, nil)
                completionHandler(2, "", nil, nil)
                //: return
                return
            }
            //: let textDict = dict["txt"] as? [String: Any]
            let textDict = dict[(kStr_sectionContent.replacingOccurrences(of: "fill", with: "x"))] as? [String: Any]
            //: let audioDict = dict["audio"] as? [String: Any]
            let audioDict = dict[(kStr_tablePathName.replacingOccurrences(of: "row", with: "io"))] as? [String: Any]
            //: if textDict?.count == 0 && audioDict?.count == 0 {
            if textDict?.count == 0, audioDict?.count == 0 {
                //: completionHandler(2, "Please add greeting text".localized, nil, nil)
                completionHandler(2, (String(kStr_minMakeName.suffix(6)) + " add g" + kStr_videoContent.lowercased() + String(kStr_normalValue.prefix(8))).localized, nil, nil)
                //: return
                return
            }

            // 一键打招呼本地存储
            //: chat_changeSaveGreetData(toUserId: toUserId, isHave: true)
            fromEachOffe(toUserId: toUserId, isHave: true)
            //: completionHandler(nil, nil, textDict, audioDict)
            completionHandler(nil, nil, textDict, audioDict)
        }
    }

    /// 一键打招呼状态本地存储
    /// - Parameters:
    ///   - toUserId: 接收方UserId
    ///   - isHave: 是否已发送
    //: static func chat_changeSaveGreetData(toUserId: String, isHave: Bool) {
    static func fromEachOffe(toUserId: String, isHave: Bool) {
        // 一键打招呼本地cunc
        //: let key = "\(LocationThen.share.loginUserMode.userID)_\(TalkingSendAutoGreetIsToKey)_\(toUserId)"
        let key = "\(LocationThen.share.loginUserMode.userID)_\(kLet_failTitle)_\(toUserId)"
        //: UserDefaults.standard.set(isHave, forKey: key)
        UserDefaults.standard.set(isHave, forKey: key)
    }

    /// 图片打招呼
    /// - Parameters:
    ///   - toUserId: 接收方UserId
    ///   - handler: errorCode：1 = 已发送过；2=未添加打招呼数据；
    //: static func chat_sendBeautyPhotos(toUserId: String, completionHandler: @escaping BeautyPhotosBlock) {
    static func everyLast(toUserId: String, completionHandler: @escaping BeautyPhotosBlock) {
        //: ProgressHUD.show()
        TintProgressHUD.weight()
        //: UpsetCountRequestTool.req_getIntimatePhoto(toUid: toUserId) { succeed, result, errorModel in
        UpsetCountRequestTool.sumimate(toUid: toUserId) { succeed, result, errorModel in
            //: ProgressHUD.dismiss()
            TintProgressHUD.inkingPadDismiss()
            /// 未添加打招呼图片
            //: if errorModel?.errorCode == 111 {
            if errorModel?.errorCode == 111 {
                //: let config = ShowAlertConfig()
                let config = StreetwiseAlertConfig()
                //: config.alignment = .center
                config.alignment = .center
                //: if TalkingRequestAddrTool.share.interfaceLang == LangType.pt.rawValue {
                if ViewManagerAddrTool.share.interfaceLang == CountClusterLiteral.pt.rawValue {
                    //: config.width = 330
                    config.width = 330
                }
                //: TalkingAlertShow.customAlert(message: "You have not set up a photo greeting, please set it up before sending!".localized, leftBtnTitle: "Cancel".localized, rightBtnTitle: "Go to set".localized, leftBlock: {
                ClickReactiveCompatible.anyAppearConfig(message: String(bytes: kStr_labData.reversed(), encoding: .utf8)!.localized, leftBtnTitle: (String(kStr_thirdName.suffix(6))).localized, rightBtnTitle: (String(kStr_opTitle) + kStr_textTitle.replacingOccurrences(of: "mode", with: "t")).localized, leftBlock: {
                    //: TalkingAlertShow.hideAlert()
                    ClickReactiveCompatible.closeHideRelease()

                    //: }, rightBlock: {
                }, rightBlock: {
                    //: TalkingAlertShow.hideAlert()
                    ClickReactiveCompatible.closeHideRelease()
                    //: completionHandler(true, nil)
                    completionHandler(true, nil)
                    //: }, config: config)
                }, config: config)
                //: return
                return
                    //: } else if errorModel?.errorCode == 60003, !LocationThen.share.loginUserMode.isNaUser {
            } else if errorModel?.errorCode == 60003, !LocationThen.share.loginUserMode.isNaUser {
                /// 真人认证提示弹窗
                //: TalkingPopupWindowManager.shared.faceVerificationPopUpWindow()
                ClientBottomReactiveCompatible.shared.destabilisation()
                //: return
                return
            }
            //: if succeed {
            if succeed {
                //: guard let dict = result as? [String: Any] else {
                guard let dict = result as? [String: Any] else {
                    //: return
                    return
                }
                //: completionHandler(false, dict)
                completionHandler(false, dict)
            }
        }
    }
}

// MARK: - 插入与官方客服聊天提示消息

//: extension TalkingPrivateChatManager {
extension FillPathChatManager {
    ///  判断是否需要插入与官方客服聊天提示消息
    /// - Parameter needInsertHandler: 回调
    //: static func chat_customerServiceCenter_insertTipMsg(needInsertHandler: ((_ tipsStr: String?) -> Void)?) {
    static func centerName(needInsertHandler: ((_ tipsStr: String?) -> Void)?) {
        //: guard LocationThen.share.appConfigMode.CSConfig.systemTips.count > 0 else {
        guard LocationThen.share.appConfigMode.CSConfig.systemTips.count > 0 else { // 接口没下发，无需提示
            //: if needInsertHandler != nil {
            if needInsertHandler != nil {
                //: needInsertHandler!(nil)
                needInsertHandler!(nil)
            }
            //: return
            return
        }

        // 根据设备所在时区转换时间
        //: let startTime = NSDate.getCurrentZoneDateString(shDateStr: LocationThen.share.appConfigMode.CSConfig.startTime)
        let startTime = NSDate.videoUser(shDateStr: LocationThen.share.appConfigMode.CSConfig.startTime)
        //: let endTime = NSDate.getCurrentZoneDateString(shDateStr: LocationThen.share.appConfigMode.CSConfig.endTime)
        let endTime = NSDate.videoUser(shDateStr: LocationThen.share.appConfigMode.CSConfig.endTime)
        //: let isIncluded = NSDate.compareCurrentTimeIsIncluded(startTime: startTime, endTime: endTime)
        let isIncluded = NSDate.buttonByTime(startTime: startTime, endTime: endTime)

        //: guard isIncluded == false else {
        guard isIncluded == false else {
            //: if needInsertHandler != nil {
            if needInsertHandler != nil {
                //: needInsertHandler!(nil)
                needInsertHandler!(nil)
            }
            //: return
            return
        }

        // 非工作时间段内，添加提示
        //: var tips = LocationThen.share.appConfigMode.CSConfig.systemTips
        var tips = LocationThen.share.appConfigMode.CSConfig.systemTips
        //: tips = tips.replacingOccurrences(of: "#startTime#", with: "\(startTime)")
        tips = tips.replacingOccurrences(of: (String(kStr_labelTitle.suffix(2)) + kStr_conversationName.replacingOccurrences(of: "array", with: "ta") + "Time#"), with: "\(startTime)")
        //: tips = tips.replacingOccurrences(of: "#endTime#", with: "\(endTime)")
        tips = tips.replacingOccurrences(of: (String(kStr_ofData)), with: "\(endTime)")
        //: if needInsertHandler != nil {
        if needInsertHandler != nil {
            //: needInsertHandler!(tips)
            needInsertHandler!(tips)
        }
    }
}

// MARK: - 刷新私密消息（照片、视频）展示状态

//: extension TalkingPrivateChatManager {
extension FillPathChatManager {
    /// 接收到解锁私密消息（照片、视频）的礼物，刷新本地消息状态
    /// - Parameters:
    ///   - cellData: 数据
    ///   - msgView: TUI视图
    //: static func chat_onNewMessage_refreshLocalIntimateMsgStatus(cellData: TUIMessageCellData, msgView: TUIMessageController) {
    static func endEqual(cellData: TUIMessageCellData, msgView: TUIMessageController) {
        //: guard msgView.uiMsgs.count > 0 else {
        guard msgView.uiMsgs.count > 0 else {
            // --------- 【外部页面】收到了解锁礼物消息 ---------
            // 首次进入到当前页面，刷新消息状态
            //: var array = Defaults.object(forKey: TalkingPrivateChatManager.share.UnlockMsgIdArrayKey) as? [String]
            var array = kLet_managerValue.object(forKey: FillPathChatManager.share.UnlockMsgIdArrayKey) as? [String]

            // 本地有私密消息解锁礼物缓存，且是图片消息 或 视频消息
            //: guard array?.count ?? 0 > 0 &&
            guard array?.count ?? 0 > 0,
                  //: (cellData.isKind(of: LayerCellData.self) ||
                  cellData.isKind(of: LayerCellData.self) ||
                  //: cellData.isKind(of: CountCellData.self)) else { return }
                  cellData.isKind(of: CountCellData.self) else { return }

            // 找到本人发送的私密消息，更新状态为已解锁
            //: if array!.contains(cellData.msgModel.msgInfo.msgId) {
            if array!.contains(cellData.msgModel.msgInfo.msgId) {
                //: inner_changeIntimateMsg(cellData, msgView)
                appCell(cellData, msgView)

                // 更新本地缓存
                //: array!.removeAll(where: { $0 == cellData.msgModel.msgInfo.msgId })
                array!.removeAll(where: { $0 == cellData.msgModel.msgInfo.msgId })
                //: Defaults.set(array, forKey: TalkingPrivateChatManager.share.UnlockMsgIdArrayKey)
                kLet_managerValue.set(array, forKey: FillPathChatManager.share.UnlockMsgIdArrayKey)
            }

            //: return
            return
        }

        //  --------- 在【当前页面】收到解锁礼物消息 ---------
        // 只有收到礼物解锁消息才刷新
        //: guard cellData.isKind(of: FillCellData.self) && cellData.msgModel.gift.unlockMsgId.count > 0 else { return }
        guard cellData.isKind(of: FillCellData.self), cellData.msgModel.gift.unlockMsgId.count > 0 else { return }

        // 找到本人发送的私密消息，更新状态为已解锁
        //: let unlockMsgId = cellData.msgModel.gift.unlockMsgId
        let unlockMsgId = cellData.msgModel.gift.unlockMsgId
        //: for msgCellData in msgView.uiMsgs {
        for msgCellData in msgView.uiMsgs {
            //: let data = msgCellData as! TUIMessageCellData
            let data = msgCellData as! TUIMessageCellData
            //: if data.msgModel.msgInfo.msgId == unlockMsgId {
            if data.msgModel.msgInfo.msgId == unlockMsgId {
                //: inner_changeIntimateMsg(data, msgView)
                appCell(data, msgView)
                //: break
                break
            }
        }
    }

    /// 刷新本地消息状态
    /// - Parameters:
    ///   - cellData: 数据
    ///   - msgView: TUI视图
    //: static private func inner_changeIntimateMsg(_ cellData: TUIMessageCellData, _ msgView: TUIMessageController) {
    private static func appCell(_ cellData: TUIMessageCellData, _ msgView: TUIMessageController) {
        //: if cellData.isKind(of: LayerCellData.self) {
        if cellData.isKind(of: LayerCellData.self) { // 私密照片
            //: let model = cellData.msgModel.msgInfo.intimatePhoto
            let model = cellData.msgModel.msgInfo.intimatePhoto
            //: if model.lockStatus != 0 {
            if model.lockStatus != 0 {
                //: model.lockStatus = 0
                model.lockStatus = 0
                //: msgView.changeIntimatePhotoMsg(cellData, photoModel: model)
                msgView.changeIntimatePhotoMsg(cellData, photoModel: model)
            }

            //: } else if cellData.isKind(of: CountCellData.self) {
        } else if cellData.isKind(of: CountCellData.self) { // 私密视频
            //: let model = cellData.msgModel.msgInfo.video
            let model = cellData.msgModel.msgInfo.video
            //: if model.lockStatus != 0 {
            if model.lockStatus != 0 {
                //: model.lockStatus = 0
                model.lockStatus = 0
                //: msgView.changeIntimateVideoMsg(cellData, videoModel: model)
                msgView.changeIntimateVideoMsg(cellData, videoModel: model)
            }
        }
    }
}

// MARK: - 未回复Reply to get points~逻辑

//: extension TalkingPrivateChatManager {
extension FillPathChatManager {
    /// 女性记录最新回复时间, 刷新表格
    /// - Parameters:
    ///   - cellData: 数据
    ///   - msgView: TUI视图
    //: static func updateReplyLatestTimeAndReload(_ msgIncome: CGFloat, _ msgTime: Date?, _ msgView: TUIMessageController) {
    static func createFlush(_ msgIncome: CGFloat, _ msgTime: Date?, _ msgView: TUIMessageController) {
        //: guard LocationThen.share.loginUserMode.sex == Gender.female.rawValue else { return }
        guard LocationThen.share.loginUserMode.sex == SucceedComparable.female.rawValue else { return }
        //: guard msgIncome > 0 else { return }
        guard msgIncome > 0 else { return }
        //: guard let msgTime = msgTime else { return }
        guard let msgTime = msgTime else { return }
        //: guard TalkingPrivateChatController.replyLatestTimes.compare(msgTime) == .orderedAscending else { return }
        guard SucceedTitleControllerDelegate.replyLatestTimes.compare(msgTime) == .orderedAscending else { return }
        //: TalkingPrivateChatController.replyLatestTimes = msgTime
        SucceedTitleControllerDelegate.replyLatestTimes = msgTime
        //: msgView.tableView.reloadData()
        msgView.tableView.reloadData()
    }

    /// 判断是否展示未回复付费消息提示
    //: @objc public static func needShowReplyTipsMessage(_ direction: TMsgDirection, msgType: Int, msgTime: Date?) -> Bool {
    @objc public static func information(_ direction: TMsgDirection, msgType: Int, msgTime: Date?) -> Bool {
        //: guard LocationThen.share.loginUserMode.sex == Gender.female.rawValue else { return false }
        guard LocationThen.share.loginUserMode.sex == SucceedComparable.female.rawValue else { return false }
        //: guard direction == .MsgDirectionIncoming else { return false }
        guard direction == .MsgDirectionIncoming else { return false }
        //: guard let msgTime = msgTime else { return false }
        guard let msgTime = msgTime else { return false }
        //: guard TalkingPrivateChatController.replyLatestTimes.compare(msgTime) == .orderedAscending else { return false }
        guard SucceedTitleControllerDelegate.replyLatestTimes.compare(msgTime) == .orderedAscending else { return false }
        //: guard TalkingPrivateChatManager.isReplyToGetPointsMsg(direction, msgType, msgTime: msgTime) else { return false }
        guard FillPathChatManager.straddleTime(direction, msgType, msgTime: msgTime) else { return false }
        //: return true
        return true
    }

    /// 是否是回复获取积分消息
    /// - Parameters:
    ///   - direction: 消息方向
    ///   - msgType: 消息类型
    ///   - msgTime: 消息时间
    /// - Returns: 结果
    //: static func isReplyToGetPointsMsg(_ direction: TMsgDirection, _ msgType: Int, msgTime: Date?) -> Bool {
    static func straddleTime(_ direction: TMsgDirection, _ msgType: Int, msgTime: Date?) -> Bool {
        // 非审核模式, messageType == 5, 时间<24小时
        //: guard LocationThen.share.appStatus == AppSkinStatus.normal.rawValue else { return false }
        guard LocationThen.share.appStatus == SharedInsetTarget.normal.rawValue else { return false }
        //: guard direction == .MsgDirectionIncoming else { return false }
        guard direction == .MsgDirectionIncoming else { return false }
        //: guard msgType == 5 else { return false }
        guard msgType == 5 else { return false }
        //: guard let msgTime = msgTime else { return false }
        guard let msgTime = msgTime else { return false }
        //: guard Date().timeIntervalSince(msgTime) < 24*60*60 else { return false }
        guard Date().timeIntervalSince(msgTime) < 24 * 60 * 60 else { return false }
        //: return true
        return true
    }
}

// MARK: - VIP展示消息已读逻辑

//: extension TalkingPrivateChatManager {
extension FillPathChatManager {
    /// 是否需要插入已读回执引导充值VIP提醒消息
    /// - Parameter cellData: 消息数据
    /// - Returns: 结果
    //: static func needInsertVIPReadReceiptMsg(cellData: TUIMessageCellData) -> Bool {
    static func vox(cellData: TUIMessageCellData) -> Bool {
        //: if LocationThen.share.loginUserMode.loungePlus == false,
        if LocationThen.share.loginUserMode.loungePlus == false,
           //: cellData.innerMessage.groupID == nil,
           cellData.innerMessage.groupID == nil,
           //: cellData.status == .Msg_Status_Succ,
           cellData.status == .Msg_Status_Succ,
           //: cellData.direction == .MsgDirectionOutgoing,
           cellData.direction == .MsgDirectionOutgoing,
           //: cellData.msgModel.msgInfo.callCmd.count <= 0 {
           cellData.msgModel.msgInfo.callCmd.count <= 0
        {
            //: return true
            return true
        }
        //: return false
        return false
    }

    /// 是否展示消息 已读/未读 标识
    /// - Parameter cellData: 消息数据
    /// - Returns: 结果
    //: static func isShowReadMsg(cellData: TUIMessageCellData) -> Bool {
    static func topRead(cellData: TUIMessageCellData) -> Bool {
        // vip && 非群聊 && 发送成功 && 本人发送 && 非音视频通话文本消息，展示消息是否已读标识
        //: if LocationThen.share.loginUserMode.loungePlus == true,
        if LocationThen.share.loginUserMode.loungePlus == true,
           //: cellData.innerMessage.groupID == nil,
           cellData.innerMessage.groupID == nil,
           //: cellData.status == .Msg_Status_Succ,
           cellData.status == .Msg_Status_Succ,
           //: cellData.direction == .MsgDirectionOutgoing,
           cellData.direction == .MsgDirectionOutgoing,
           //: cellData.msgModel.msgInfo.callCmd.count <= 0 {
           cellData.msgModel.msgInfo.callCmd.count <= 0
        {
            //: return true
            return true
        }
        //: return false
        return false
    }

    /// 消息对方是否已读
    /// - Parameter cellData: 消息数据
    /// - Returns: 结果
    //: static func msgIsRead(cellData: TUIMessageCellData) -> Bool {
    static func sizeData(cellData: TUIMessageCellData) -> Bool {
        //: guard let selfMsgTime = cellData.innerMessage.timestamp else { return false }
        guard let selfMsgTime = cellData.innerMessage.timestamp else { return false }
        //: if cellData.innerMessage.isPeerRead == true {
        if cellData.innerMessage.isPeerRead == true {
            //: return true
            return true
        }
        //: let readTimeInterval = TalkingPrivateChatManager.share.readReceiptDict[cellData.innerMessage.userID] ?? 0
        let readTimeInterval = FillPathChatManager.share.readReceiptDict[cellData.innerMessage.userID] ?? 0
        //: let readTime = Date(timeIntervalSince1970: TimeInterval(readTimeInterval))
        let readTime = Date(timeIntervalSince1970: TimeInterval(readTimeInterval))
        //: if selfMsgTime <= readTime {
        if selfMsgTime <= readTime {
            //: return true
            return true
        }
        //: return false
        return false
    }
}

// MARK: - Reply消息逻辑

//: extension TalkingPrivateChatManager {
extension FillPathChatManager {
    /// 回复消息
    /// - Parameters:
    ///   - cellData: 数据
    ///   - targetId: 对方uid
    /// - Returns: 引用消息模型
    //: static func handleReplyMsg(cellData: TUIMessageCellData, targetId: String) -> AbTalkingChatMsgQuoteModel {
    static func wedgeId(cellData: TUIMessageCellData, targetId: String) -> DataModel {
        //: let quoteModel = AbTalkingChatMsgQuoteModel()
        let quoteModel = DataModel()
        //: quoteModel.msgId = cellData.msgModel.msgInfo.msgId
        quoteModel.msgId = cellData.msgModel.msgInfo.msgId
        //: if cellData.direction == .MsgDirectionIncoming {
        if cellData.direction == .MsgDirectionIncoming {
            //: quoteModel.uid = targetId
            quoteModel.uid = targetId
            //: } else {
        } else {
            //: quoteModel.uid = LocationThen.share.loginUserMode.userID
            quoteModel.uid = LocationThen.share.loginUserMode.userID
        }
        //: let renderData = AbTalkingChatMsgQuoteDataModel()
        let renderData = BuildModel()
        //: if cellData.isKind(of: ShowCellData.self) {
        if cellData.isKind(of: ShowCellData.self) {
            //: quoteModel.renderType = "text"
            quoteModel.renderType = (kStr_documentValue.replacingOccurrences(of: "scale", with: "t"))
            //: renderData.content = cellData.msgModel.msgInfo.content
            renderData.content = cellData.msgModel.msgInfo.content

            //: } else if cellData.isKind(of: LayerCellData.self) {
        } else if cellData.isKind(of: LayerCellData.self) {
            //: quoteModel.renderType = "img"
            quoteModel.renderType = (kStr_shareValue.replacingOccurrences(of: "frame", with: "m"))
            //: renderData.previewUrl = cellData.msgModel.msgInfo.imageUri
            renderData.previewUrl = cellData.msgModel.msgInfo.imageUri

            //: } else if cellData.isKind(of: CountCellData.self) {
        } else if cellData.isKind(of: CountCellData.self) {
            //: quoteModel.renderType = "video"
            quoteModel.renderType = (kStr_userMakeValue.replacingOccurrences(of: "top", with: "v"))
            //: renderData.videoUrl = cellData.msgModel.msgInfo.video.videoUrl
            renderData.videoUrl = cellData.msgModel.msgInfo.video.videoUrl
            //: renderData.coverUrl = cellData.msgModel.msgInfo.video.coverImg
            renderData.coverUrl = cellData.msgModel.msgInfo.video.coverImg

            //: } else if cellData.isKind(of: CanPointCellData.self) {
        } else if cellData.isKind(of: CanPointCellData.self) {
            //: let audioCelldata = cellData as! CanPointCellData
            let audioCelldata = cellData as! CanPointCellData
            //: quoteModel.renderType = "audio"
            quoteModel.renderType = (kStr_tablePathName.replacingOccurrences(of: "row", with: "io"))
            //: let voiceCache = ExamineedReactiveCompatible.cache_getAudioDB(message: audioCelldata.innerMessage)
            let voiceCache = ExamineedReactiveCompatible.month(message: audioCelldata.innerMessage)
            //: renderData.duration = Int(voiceCache.db_audioLength) ?? 0
            renderData.duration = Int(voiceCache.db_audioLength) ?? 0

            //: } else if cellData.isKind(of: FillCellData.self) {
        } else if cellData.isKind(of: FillCellData.self) {
            //: quoteModel.renderType = "gift"
            quoteModel.renderType = (kStr_modelCountContent.replacingOccurrences(of: "add", with: "t"))
            //: let giftCellData = cellData as! FillCellData
            let giftCellData = cellData as! FillCellData
            //: renderData.giftName = giftCellData.msgModel.gift.name
            renderData.giftName = giftCellData.msgModel.gift.name
            //: renderData.giftNameI18n = giftCellData.msgModel.gift.nameI18n
            renderData.giftNameI18n = giftCellData.msgModel.gift.nameI18n
            //: renderData.giftIcon = giftCellData.msgModel.gift.imgPreview
            renderData.giftIcon = giftCellData.msgModel.gift.imgPreview
            //: renderData.giftPrice = giftCellData.msgModel.gift.price
            renderData.giftPrice = giftCellData.msgModel.gift.price
            //: renderData.giftNum = Int(giftCellData.msgModel.gift.num) ?? 0
            renderData.giftNum = Int(giftCellData.msgModel.gift.num) ?? 0
        }

        //: quoteModel.renderData = renderData
        quoteModel.renderData = renderData
        //: return quoteModel
        return quoteModel
    }

    /// 点击“引用”消息
    /// - Parameters:
    ///   - cellData: 数据
    ///   - targetId: 对方uid
    //: static func handleClickReplyMsg(cellData: TUIMessageCellData, targetId: String) {
    static func executeField(cellData: TUIMessageCellData, targetId: String) {
        //: let renderData = cellData.msgModel.quoteMsgInfo
        let renderData = cellData.msgModel.quoteMsgInfo
        //: MiniLoadThen.appLine(msg: "PrivateChat 点击引用消息\(renderData.renderType).")
        MiniLoadThen.appLine(msg: (String(kStr_frameValue.prefix(6)) + "eCha" + kStr_areaName) + "\(renderData.renderType).")
        //: if renderData.renderType == "text" {
        if renderData.renderType == (kStr_documentValue.replacingOccurrences(of: "scale", with: "t")) {
            //: let popView = QuoteDetailPopView(frame: CGRect(x: 0, y: 0, width: ScreenWidth, height: ScreenHeight))
            let popView = ClickThen(frame: CGRect(x: 0, y: 0, width: kLet_halfData, height: kLet_noSeatName))
            //: popView.msgDetailText = renderData.renderData.content
            popView.msgDetailText = renderData.renderData.content
            //: popView.show()
            popView.coloured()

            //: } else if renderData.renderType == "img" {
        } else if renderData.renderType == (kStr_shareValue.replacingOccurrences(of: "frame", with: "m")) {
            //: let libraryPath = NSSearchPathForDirectoriesInDomains(.cachesDirectory, .userDomainMask, true).first!
            let libraryPath = NSSearchPathForDirectoriesInDomains(.cachesDirectory, .userDomainMask, true).first!
            //: var filePath = (libraryPath as NSString).appendingPathComponent(imageFileName)
            var filePath = (libraryPath as NSString).appendingPathComponent(kLet_deviceLikeSucceedData)
            //: filePath = (filePath as NSString).appendingPathComponent((renderData.renderData.previewUrl as NSString).lastPathComponent)
            filePath = (filePath as NSString).appendingPathComponent((renderData.renderData.previewUrl as NSString).lastPathComponent)

            //: var model = TalkingMomentPhotoModel.init()
            var model = TheoreticalAccountTransformable()
            //: if FileManager.default.fileExists(atPath: filePath) {
            if FileManager.default.fileExists(atPath: filePath) {
                //: let data = NSData.init(contentsOfFile: filePath)
                let data = NSData(contentsOfFile: filePath)
                //: model.imagePic = UIImage(data: data! as Data)
                model.imagePic = UIImage(data: data! as Data)
                //: } else {
            } else {
                //: model.imgUrl =  renderData.renderData.previewUrl
                model.imgUrl = renderData.renderData.previewUrl
            }
            //: var currenModel = TalkingMomentModel.init()
            var currenModel = ModelTransformable()
            //: var tempArr: [TalkingMomentPhotoModel] = []
            var tempArr: [TheoreticalAccountTransformable] = []
            //: tempArr.append(model)
            tempArr.append(model)
            //: currenModel.pic = tempArr
            currenModel.pic = tempArr
            //: let vc = TalkingMomentPhotosVC.init(momentModel: currenModel, index: 0, type: .normal)
            let vc = BottomRecognizerDelegate(momentModel: currenModel, index: 0, type: .normal)
            //: TalkingPrivateChatManager.share.getNavigationController()?.pushViewController(vc, animated: true)
            FillPathChatManager.share.showBorder()?.pushViewController(vc, animated: true)

            //: } else if renderData.renderType == "video" {
        } else if renderData.renderType == (kStr_userMakeValue.replacingOccurrences(of: "top", with: "v")) {
            //: let videoPath = renderData.renderData.videoUrl
            let videoPath = renderData.renderData.videoUrl
            //: let vc = TalkingMomentVideoVC.init(videoPath: videoPath)
            let vc = QueryQualityViewDelegate(videoPath: videoPath)
            //: TalkingPrivateChatManager.share.getNavigationController()?.pushViewController(vc, animated: true)
            FillPathChatManager.share.showBorder()?.pushViewController(vc, animated: true)

            //: } else if renderData.renderType == "audio" {
        } else if renderData.renderType == (kStr_tablePathName.replacingOccurrences(of: "row", with: "io")) {
            //: let cacheWrap = GoFarReactiveCompatible.db_getVoiceMsg(with: renderData.msgId)
            let cacheWrap = GoFarReactiveCompatible.pressOut(with: renderData.msgId)
            //: let playModel = TalkingVoiceMsgPlayModel()
            let playModel = VocalizationThen()
            //: if cacheWrap != nil {
            if cacheWrap != nil {
                //: playModel.db_voiceCacheWrap = cacheWrap!
                playModel.db_voiceCacheWrap = cacheWrap!

                //: } else {
            } else {
                //: let model = GoFarReactiveCompatible()
                let model = GoFarReactiveCompatible()
                //: model.msgId = renderData.msgId
                model.msgId = renderData.msgId
                //: model.db_voiceUri = renderData.renderData.url
                model.db_voiceUri = renderData.renderData.url
                //: model.db_senduid = renderData.uid
                model.db_senduid = renderData.uid
                //: if renderData.uid == LocationThen.share.loginUserMode.userID {
                if renderData.uid == LocationThen.share.loginUserMode.userID {
                    //: model.db_touid = targetId
                    model.db_touid = targetId
                    //: } else {
                } else {
                    //: model.db_touid = LocationThen.share.loginUserMode.userID
                    model.db_touid = LocationThen.share.loginUserMode.userID
                }
                //: model.db_audioLength = "\(renderData.renderData.duration)"
                model.db_audioLength = "\(renderData.renderData.duration)"
                //: GoFarReactiveCompatible.db_insertVoiceMsg(model)
                GoFarReactiveCompatible.putUp(model)
                //: playModel.db_voiceCacheWrap = model
                playModel.db_voiceCacheWrap = model
            }

            //: TalkingVoiceMsgPlayManager.shared.stopAudioPlayer()
            QueryedVoiceManagerDelegate.shared.selectLikePlayer()
            //: TalkingVoiceMsgPlayManager.shared.starPlayReplyMsg(playModel: playModel)
            QueryedVoiceManagerDelegate.shared.circumference(playModel: playModel)

            //: } else if renderData.renderType == "gift" {
        } else if renderData.renderType == (kStr_modelCountContent.replacingOccurrences(of: "add", with: "t")) {
            //: let popView = QuoteDetailPopView(frame: CGRect(x: 0, y: 0, width: ScreenWidth, height: ScreenHeight))
            let popView = ClickThen(frame: CGRect(x: 0, y: 0, width: kLet_halfData, height: kLet_noSeatName))
            //: popView.msgDetailText = "Sent ".localized + renderData.renderData.giftNameLocal() + " x\(renderData.renderData.giftNum)"
            popView.msgDetailText = (String(kStr_kitData)).localized + renderData.renderData.price() + " x\(renderData.renderData.giftNum)"
            //: popView.show()
            popView.coloured()
        }
    }
}

// MARK: - Event

//: extension TalkingPrivateChatManager {
extension FillPathChatManager {
    /// 检测用户短视频版本是否可用【> = 1.1.6 可用】
    /// - Returns: 是否可用
    //: static func checkShortVideo(userVersion: String) -> Bool {
    static func someSearch(userVersion: String) -> Bool {
        //: guard let version = Int(userVersion.replacingOccurrences(of: ".", with: "")) else {
        guard let version = Int(userVersion.replacingOccurrences(of: ".", with: "")) else {
            //: return false
            return false
        }
        //: if version*100 < 116*100 {
        if version * 100 < 116 * 100 {
            //: return false
            return false
        }

        //: return true
        return true
    }
}
