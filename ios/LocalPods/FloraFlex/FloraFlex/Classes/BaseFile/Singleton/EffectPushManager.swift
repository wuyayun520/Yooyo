
//: Declare String Begin

/*: "fee" :*/
fileprivate let kStr_equalLabHomeValue:String = "useree"

/*: "VIPFee" :*/
fileprivate let kStr_pendingValue:[Character] = ["V","I","P","F","e","e"]

/*: "chattingNum" :*/
fileprivate let kStr_messageData:String = "infohattin"
fileprivate let kStr_progressValue:String = "return camera calendar equalgNum"

/*: "You're already in her live room" :*/
fileprivate let kStr_borderData:[UInt8] = [0xe8,0xfe,0x4,0xb6,0x1,0xf4,0xaf,0xf0,0xfb,0x1,0xf4,0xf0,0xf3,0x8,0xaf,0xf8,0xfd,0xaf,0xf7,0xf4,0x1,0xaf,0xfb,0xf8,0x5,0xf4,0xaf,0x1,0xfe,0xfe,0xfc]

fileprivate func listPermission(status num: UInt8) -> UInt8 {
    let value = Int(num) - 143
    if value < 0 {
        return UInt8(value + 256)
    } else {
        return UInt8(value)
    }
}

/*: "toUid" :*/
fileprivate let kStr_normalName:[UInt8] = [0x64,0x69,0x55,0x6f,0x74]

/*: "momentId" :*/
fileprivate let kStr_colorName:[UInt8] = [0x56,0x58,0x56,0x4e,0x57,0x5d,0x32,0x4d]

fileprivate func totalCookie(number num: UInt8) -> UInt8 {
    let value = Int(num) - 233
    if value < 0 {
        return UInt8(value + 256)
    } else {
        return UInt8(value)
    }
}

/*: "extra" :*/
fileprivate let kStr_directionText:[UInt8] = [0x21,0x34,0x30,0x2e,0x1d]

fileprivate func letMain(make num: UInt8) -> UInt8 {
    let value = Int(num) - 188
    if value < 0 {
        return UInt8(value + 256)
    } else {
        return UInt8(value)
    }
}

/*: "uid" :*/
fileprivate let kStr_nameData:[UInt8] = [0x62,0x7e,0x73]

/*: "onlineStatus" :*/
fileprivate let kStr_imageModeValue:[UInt8] = [0x74,0x75,0x77,0x72,0x75,0x7e,0x48,0x6f,0x7a,0x6f,0x6e,0x68]

private func modelItem(sex num: UInt8) -> UInt8 {
    return num ^ 27
}

/*: "isNewUser" :*/
fileprivate let kStr_hideValue:[UInt8] = [0x58,0x42,0x7f,0x54,0x46,0x64,0x42,0x54,0x43]

/*: "userStatus" :*/
fileprivate let kStr_eventName:[UInt8] = [0xb1,0xb7,0xa1,0xb6,0x97,0xb0,0xa5,0xb0,0xb1,0xb7]

private func wrapImage(player num: UInt8) -> UInt8 {
    return num ^ 196
}

/*: "Account is restricted！" :*/
fileprivate let kStr_keyValue:String = "name for liveAcco"
fileprivate let kStr_makeValue:String = "else awake succeeds re"
fileprivate let kStr_extraName:String = "stricted！share status model lab user"

/*: "Failed to enter the chat room. Please try again later" :*/
fileprivate let kStr_showName:[UInt8] = [0xc3,0xde,0xe6,0xe9,0xe2,0xe1,0x9d,0xf1,0xec,0x9d,0xe2,0xeb,0xf1,0xe2,0xef,0x9d,0xf1,0xe5,0xe2,0x9d,0xe0,0xe5,0xde,0xf1,0x9d,0xef,0xec,0xec,0xea,0xab,0x9d,0xcd,0xe9,0xe2,0xde,0xf0,0xe2,0x9d,0xf1,0xef,0xf6,0x9d,0xde,0xe4,0xde,0xe6,0xeb,0x9d,0xe9,0xde,0xf1,0xe2,0xef]

fileprivate func replyData(content num: UInt8) -> UInt8 {
    let value = Int(num) + 131
    if value > 255 {
        return UInt8(value - 256)
    } else {
        return UInt8(value)
    }
}

/*: "url" :*/
fileprivate let kStr_meValue:[Character] = ["u","r","l"]

/*: "userDetail" :*/
fileprivate let kStr_userName:[Character] = ["u","s","e","r","D","e"]
fileprivate let kStr_contentTitle:[Character] = ["t","a","i","l"]

/*: "&type=7" :*/
fileprivate let kStr_cornerValue:[Character] = ["&","t","y","p","e","=","7"]

/*: "amount" :*/
fileprivate let kStr_colorAddName:[UInt8] = [0x92,0x9e,0x9c,0x86,0x9d,0x87]

/*: "transparency" :*/
fileprivate let kStr_withAppData:String = "tranmanagerpare"
fileprivate let kStr_gameBackName:String = "NCY"

/*: "`%^{}" :*/
fileprivate let kStr_messageTitle:String = "`add^{}"

/*: "[]|\\<>" :*/
fileprivate let kStr_showViewPathValue:String = "[]|\\<>"

/*: "version= :*/
fileprivate let kStr_serverName:[Character] = ["v","e"]
fileprivate let kStr_platformRawValue:String = "color cookiersion="

/*: &packageId= :*/
fileprivate let kStr_systemValue:String = "sufficient customer&pac"
fileprivate let kStr_dataName:String = "d=mode true image add"

/*: &bundleId= :*/
fileprivate let kStr_priorityData:String = "value"
fileprivate let kStr_frameName:[Character] = ["b","u","n","d","l","e","I","d","="]

/*: & :*/
fileprivate let kStr_modelDelayValue:String = "&"

/*: ? :*/
fileprivate let kStr_familyData:[Character] = ["?"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  EffectPushManager.swift
//  AbroadTalking
//
//  Created by Hemming on 2022/8/31.
//

//: import UIKit
import UIKit

//: public class EffectPushManager: NSObject {
public class EffectPushManager: NSObject {
    //: @objc static public let share = EffectPushManager()
    @objc public static let share = EffectPushManager()
    //: private override init() {}
    override private init() {}
}

//: extension EffectPushManager {
extension EffectPushManager {
    // MARK: - 随机视频入口

    //: func func__pushToRandomVideoVC(isBeginRand: Bool) {
    func die(isBeginRand: Bool) {
        //: uploadRecord.uploadRecordEvent(eventID: ClickInRandomvideo)
        kLet_dismissValue.digitizerInsideStatus(eventID: kLet_progressData)
        //: guard TalkingSocketManager.shared.isTalking == false else {
        guard ToSocketManager.shared.isTalking == false else {
            //: self.func__showStatusBarErrorMsg(showMsg: kMessage_videoTalking_limit)
            self.detailDownArray(showMsg: kLet_tableEndValue)
            //: return
            return
        }
        //: TalkingPermissionTool.checkCameraAndMicrophone { isOpen in
        PerspectiveThen.disappearEvent { isOpen in
            //: guard isOpen == true else { return }
            guard isOpen == true else { return }
            //: TalkingQuickVideoManager.req_videoMatchCheck() { succeed, result, errorModel in
            ContentVideoManager.videoToCompletion { succeed, result, _ in
                //: guard succeed else { return }
                guard succeed else { return }
                //: let json = JSON(result ?? [String: Any]())
                let json = JSON(result ?? [String: Any]())
                //: let vc = TalkingRandomVideoViewController()
                let vc = MiniskirtObjectProtocol()
                //: vc.fee = json["fee"].intValue
                vc.fee = json[(kStr_equalLabHomeValue.replacingOccurrences(of: "user", with: "f"))].intValue
                //: vc.vipFee = json["VIPFee"].intValue
                vc.vipFee = json[(String(kStr_pendingValue))].intValue
                //: vc.chattingNum = json["chattingNum"].intValue
                vc.chattingNum = json[(kStr_messageData.replacingOccurrences(of: "info", with: "c") + String(kStr_progressValue.suffix(4)))].intValue
                //: vc.isBeginRand = isBeginRand
                vc.isBeginRand = isBeginRand
                //: vc.isFirstRandow = isBeginRand
                vc.isFirstRandow = isBeginRand
                //: self.currentViewController()?.navigationController?.pushViewController(vc, animated: true)
                self.giftFew()?.navigationController?.pushViewController(vc, animated: true)
            }
        }
    }

    // MARK: - 完善资料

    //: func func__pushToFillUserInfoVC() {
    func viewBind() {
        //: LocationThen.share.userFillInfoMode = UserFillInfoModel.init()
        LocationThen.share.userFillInfoMode = LoadInfoModel()
        //: let VC = TalkingLoginGenderVC()
        let VC = GenderButtonThen()
        //: let currentVC = func__getCurrentActivityVC()
        let currentVC = quantityimateTarget()
        //: if currentVC != nil {
        if currentVC != nil {
            //: currentVC?.navigationController?.pushViewController(VC, animated: true)
            currentVC?.navigationController?.pushViewController(VC, animated: true)
        }
    }

    // MARK: - 绑定邮箱

    /// - Parameters:
    ///   - type: 类型
    ///   - isShowBack: 是否显示返回按钮
    //: func func__pushToLockUserEmailVC(isShowBack: Bool = true) {
    func emphasizing(isShowBack: Bool = true) {
        //: let currentVC = func__getCurrentActivityVC()
        let currentVC = quantityimateTarget()
        //: if currentVC != nil {
        if currentVC != nil {
            //: if currentVC!.isKind(of: TalkingLoginBindEmailVC.self) ||
            if currentVC!.isKind(of: LayerEmailVc.self) ||
                //: currentVC!.isKind(of: TalkingLoginMainViewController.self) {
                currentVC!.isKind(of: SizeViewController.self)
            {
                //: return
                return
            }
            //: let vc = TalkingLoginBindEmailVC()
            let vc = LayerEmailVc()
            //: vc.isBack = isShowBack
            vc.isBack = isShowBack
            //: currentVC?.navigationController?.pushViewController(vc, animated: true)
            currentVC?.navigationController?.pushViewController(vc, animated: true)
        }
    }

    // MARK: - 跳转个人资料

    //: func func__pushToUserDetailVC(uid: String?) {
    func userAdd(uid: String?) {
        //: guard let currentVC = self.currentViewController() else { return }
        guard let currentVC = self.giftFew() else { return }
        //: if let liveVC = currentVC as? TalkingLiveBeautifyViewController, TalkingLiveManager.shared().isLive {
        if let liveVC = currentVC as? SharedViewRecognizerDelegate, VideoPushListener.isGesture().isLive {
            // 从主播页跳转个人资料时，切小屏模式
            //: liveVC.topView.miniButtonClick()
            liveVC.topView.clickMiniCoatButton()

            //: } else if currentVC.isKind(of: TalkingVoiceRoomViewController.self), TalkingVoiceRoomManager.shared().isParty {
        } else if currentVC.isKind(of: BottomViewObserverDelegate.self), SubCheckedReactiveCompatible.replyShared().isParty {
            //: TalkingVoiceRoomManager.shared().voiceRoom_mini()
            SubCheckedReactiveCompatible.replyShared().capabilityName()

            //: } else if let profileVC = currentVC as? TalkingUserDetailViewController {
        } else if let profileVC = currentVC as? ClientShowViewDelegate {
            // 同一用户的资料页已经在顶部，只刷新
            //: if profileVC.uid == uid {
            if profileVC.uid == uid {
                //: profileVC.requestAllData()
                profileVC.withToolClick()
                //: return
                return
            }
        }

        //: let vc = TalkingUserDetailViewController(tempUid: uid)
        let vc = ClientShowViewDelegate(tempUid: uid)
        //: getNavigationController()?.pushViewController(vc, animated: true)
        showBorder()?.pushViewController(vc, animated: true)
    }

    // MARK: - 观众侧进入直播间

    /// 观众侧跳转到直播间
    /// - Parameters:
    ///   - uid: 主播id
    ///   - enterType: 入口
    //: func func_audiencePushToLiveRoomVC(uid: String, enterType: LiveEnterType) {
    func audience(uid: String, enterType: ObtrudeUponLocationEnterType) {
        //: guard TalkingPermissionTool.isLiveOrPartyActive() == false else { return }
        guard PerspectiveThen.blockMonth() == false else { return }

        // 同一直播间只能进一次
        //: guard String(TalkingLiveManager.shared().liveRoomModel.streamerInfo.uid) != uid else {
        guard String(VideoPushListener.isGesture().liveRoomModel.streamerInfo.uid) != uid else {
            //: self.func__showStatusBarErrorMsg(showMsg: "You're already in her live room".localized)
            self.detailDownArray(showMsg: String(bytes: kStr_borderData.map{listPermission(status: $0)}, encoding: .utf8)!.localized)
            //: return
            return
        }
        // 校验接口，通过后进入直播间
        //: TalkingAudienceManager().req_enterLiveRoom(streamerUid: uid) { succeed, result, errorModel in
        AudienceThen().dataConverterCompletion(streamerUid: uid) { succeed, result, _ in
            //: guard succeed else { return }
            guard succeed else { return }
            //: guard let livemodel = TalkingLiveRoomModel.deserialize(from: result as? Dictionary) else { return }
            guard let livemodel = SharedModel.deserialize(from: result as? Dictionary) else { return }
            // 退出之前的直播间
            //: let currentVC = self.func__getCurrentActivityVC()
            let currentVC = self.quantityimateTarget()
            //: if let vcArr = currentVC?.navigationController?.viewControllers {
            if let vcArr = currentVC?.navigationController?.viewControllers {
                //: for index in 0..<(vcArr.count) {
                for index in 0 ..< (vcArr.count) {
                    //: let vc = vcArr[index]
                    let vc = vcArr[index]
                    //: if vc.isKind(of: TalkingLivePullStreamsViewController.self) == true {
                    if vc.isKind(of: ValueViewController.self) == true {
                        //: (vc as! TalkingLivePullStreamsViewController).popCurrentViewController()
                        (vc as! ValueViewController).sendAnimated()
                    }
                }
            }

            // 进入新直播间
            //: TalkingLiveManager.shared().liveRoomModel = livemodel
            VideoPushListener.isGesture().liveRoomModel = livemodel
            //: let liveVc = TalkingLivePullStreamsViewController()
            let liveVc = ValueViewController()
            //: liveVc.type = enterType
            liveVc.type = enterType
            //: currentVC?.navigationController?.pushViewController(liveVc, animated: true)
            currentVC?.navigationController?.pushViewController(liveVc, animated: true)
            // 埋点
            //: switch enterType {
            switch enterType {
            //: case .match:
            case .match:
                //: uploadRecord.uploadRecordEvent(eventID: ClickMatchLiveWindowNoP, toUid: uid)
                kLet_dismissValue.digitizerInsideStatus(eventID: kLet_purchaseTitle, toUid: uid)
            //: case .userDetail:
            case .userDetail:
                //: uploadRecord.uploadRecordEvent(eventID: ClickProfileLiveWindowNoP, toUid: uid)
                kLet_dismissValue.digitizerInsideStatus(eventID: kLet_exploreName, toUid: uid)
            //: case .unknown: break
            case .unknown: break
            }
        }
    }

    /// 进入语聊房
    /// - Parameters:
    ///   - roomId: 房间Id（nil：创建房间；有值：进入房间）
    //: func func_pushToVoiceRoomVC(roomId: String? = nil) {
    func formerId(roomId: String? = nil) {
        //: if TalkingLiveManager.shared().isLive == true {
        if VideoPushListener.isGesture().isLive == true { // 直播中
            //: func__showStatusBarErrorMsg(showMsg: kMessage_live_limit)
            detailDownArray(showMsg: kLet_serverValue)
            //: return
            return
        }
        //: if roomId == TalkingVoiceRoomManager.shared().partyModel.roomId {
        if roomId == SubCheckedReactiveCompatible.replyShared().partyModel.roomId { // 返回语聊房
            //: TalkingVoiceRoomManager.shared().voiceRoom_goback()
            SubCheckedReactiveCompatible.replyShared().reaction()
            //: return
            return
        }
        //: if TalkingVoiceRoomManager.shared().isParty == true {
        if SubCheckedReactiveCompatible.replyShared().isParty == true { // 切换语聊房
            //: if roomId != nil {
            if roomId != nil {
                //: TalkingVoiceRoomManager.shared().voiceRoom_switch(roomId: roomId!, beforeRoomId: TalkingVoiceRoomManager.shared().partyModel.roomId)
                SubCheckedReactiveCompatible.replyShared().withdraw(roomId: roomId!, beforeRoomId: SubCheckedReactiveCompatible.replyShared().partyModel.roomId)
            }
            //: return
            return
        }
        //: TalkingVoiceRoomManager.shared().voiceRoom_checkAndTurnOn(roomId: roomId)
        SubCheckedReactiveCompatible.replyShared().viewId(roomId: roomId)
    }

    // MARK: - 跳转聊天

    /// 跳转到消息列表页
    /// - Parameter isHalf: 是否半屏展示
    //: func func__pushToChatListVC(isHalfView: Bool = false) {
    func conclude(isHalfView: Bool = false) {
        //: let vc = TalkingChatListViewController(isHalfView: isHalfView)
        let vc = ShadowRecognizerDelegate(isHalfView: isHalfView)
        //: let currentVC = func__getCurrentActivityVC()
        let currentVC = quantityimateTarget()
        //: if isHalfView == false {
        if isHalfView == false {
            //: currentVC?.navigationController?.pushViewController(vc, animated: true)
            currentVC?.navigationController?.pushViewController(vc, animated: true)
            //: } else {
        } else {
            //: currentVC?.addChild(vc)
            currentVC?.addChild(vc)
            //: currentVC?.view.addSubview(vc.view)
            currentVC?.view.addSubview(vc.view)
        }
    }

    /// 跳转到消息聊天页
    /// - Parameters:
    ///   - chatID: 对方Id
    ///   - isFrom: 私聊页入口
    /// - Returns: 消息聊天页

    //: func func__pushToPriveteChatVC(chatID: String, isFrom: PrivateChatIsFromEnum = .Normal, completion: ((_ vc: TalkingPrivateChatController) -> Void)? = nil ) {
    func fromCompletion(chatID: String, isFrom: ClientFromEnum = .Normal, completion: ((_ vc: SucceedTitleControllerDelegate) -> Void)? = nil) {
        //: guard chatID.count > 0 else { return }
        guard chatID.count > 0 else { return }

        //: if chatID != TableMacroDefine.getXiaoMiID() {
        if chatID != TableMacroDefine.toVoice() { // 系统消息
            //: ProgressHUD.show()
            TintProgressHUD.weight()
            //: let param = ["toUid": chatID, "momentId": "0", "extra": "1"]
            let param = [String(bytes: kStr_normalName.reversed(), encoding: .utf8)!: chatID, String(bytes: kStr_colorName.map{totalCookie(number: $0)}, encoding: .utf8)!: "0", String(bytes: kStr_directionText.map{letMain(make: $0)}, encoding: .utf8)!: "1"]
            //: UpsetCountRequestTool.req_refreshUserChatInfo(param: param) { [weak self] succeed, result, errorModel in
            UpsetCountRequestTool.atCompletion(param: param) { [weak self] succeed, result, _ in
                //: ProgressHUD.dismiss()
                TintProgressHUD.inkingPadDismiss()
                //: guard let self = self else {return}
                guard let self = self else { return }
                //: guard succeed else { return }
                guard succeed else { return }

                //: let userWrap = FailureReactiveCompatible.func__transformedChatinfo(userDic: result as! Dictionary<String, Any>)
                let userWrap = FailureReactiveCompatible.uprise(userDic: result as! [String: Any])
                //: ExamineedReactiveCompatible.cache_updateMsgUserInfoAndPostNotif(with: userWrap)
                ExamineedReactiveCompatible.lastWith(with: userWrap)
                // 更新消息列表用户在线状态
                //: let userInfo = ["uid": chatID,
                let userInfo = [String(bytes: kStr_nameData.map{$0^23}, encoding: .utf8)!: chatID,
                                //: "onlineStatus": userWrap.onlineStatus,
                                String(bytes: kStr_imageModeValue.map{modelItem(sex: $0)}, encoding: .utf8)!: userWrap.onlineStatus,
                                //: "isNewUser":userWrap.isNewUser,
                                String(bytes: kStr_hideValue.map{$0^49}, encoding: .utf8)!: userWrap.isNewUser,
                                //: "userStatus": userWrap.userStatus]
                                String(bytes: kStr_eventName.map{wrapImage(player: $0)}, encoding: .utf8)!: userWrap.userStatus]
                //: NotificationCenter.default.post(name: MSGLIST_UPDATE_ONLINESTATUS_NOTIFICATION,
                NotificationCenter.default.post(name: kLet_screenStatusData,
                                                //: object: nil,
                                                object: nil,
                                                //: userInfo: userInfo)
                                                userInfo: userInfo)
                //: if userWrap.userStatus == 3 {
                if userWrap.userStatus == 3 { /// 被封号
                    //: self.func__showStatusBarErrorMsg(showMsg: "Account is restricted！".localized)
                    self.detailDownArray(showMsg: (String(kStr_keyValue.suffix(4)) + "unt i" + String(kStr_makeValue.suffix(4)) + String(kStr_extraName.prefix(9))).localized)
                    //: return
                    return
                }
                //: DispatchQueue.main.async {
                DispatchQueue.main.async {
                    //: let chatVC = self.func__canPushToPriveteChatVC(chatID: chatID, isFrom: isFrom, userWrap: userWrap)
                    let chatVC = self.totalerval(chatID: chatID, isFrom: isFrom, userWrap: userWrap)
                    //: completion?(chatVC)
                    completion?(chatVC)
                }
            }
            //: }else{
        } else {
            //: DispatchQueue.main.async {
            DispatchQueue.main.async {
                //: let chatVC = self.func__canPushToPriveteChatVC(chatID: chatID, isFrom: isFrom, userWrap: FailureReactiveCompatible())
                let chatVC = self.totalerval(chatID: chatID, isFrom: isFrom, userWrap: FailureReactiveCompatible())
                //: completion?(chatVC)
                completion?(chatVC)
            }
        }
    }

    //: func func__canPushToPriveteChatVC(chatID: String, isFrom: PrivateChatIsFromEnum = .Normal, userWrap: FailureReactiveCompatible ) -> TalkingPrivateChatController {
    func totalerval(chatID: String, isFrom: ClientFromEnum = .Normal, userWrap: FailureReactiveCompatible) -> SucceedTitleControllerDelegate {
        //: let currentVC = func__getCurrentActivityVC()
        let currentVC = quantityimateTarget()
        //: if isFrom != .LiveRoom, let vcArr = currentVC?.navigationController?.viewControllers {
        if isFrom != .LiveRoom, let vcArr = currentVC?.navigationController?.viewControllers {
            //: for index in 0..<(vcArr.count) {
            for index in 0 ..< (vcArr.count) {
                //: if vcArr[index] .isKind(of: TalkingPrivateChatController.self) == true {
                if vcArr[index].isKind(of: SucceedTitleControllerDelegate.self) == true {
                    //: let vc = vcArr[index] as! TalkingPrivateChatController
                    let vc = vcArr[index] as! SucceedTitleControllerDelegate
                    //: if vc.targetId == chatID {
                    if vc.targetId == chatID {
                        //: currentVC?.navigationController?.popToViewController(vc, animated: true)
                        currentVC?.navigationController?.popToViewController(vc, animated: true)
                        //: return vc
                        return vc
                    }
                }
            }
        }

        //: let vc = TalkingPrivateChatController(chatID: chatID, isFrom: isFrom, userWrap: userWrap)
        let vc = SucceedTitleControllerDelegate(chatID: chatID, isFrom: isFrom, userWrap: userWrap)
        //: if isFrom == .LiveRoom {
        if isFrom == .LiveRoom {
            //: currentVC?.addChild(vc)
            currentVC?.addChild(vc)
            //: currentVC?.view.addSubview(vc.view)
            currentVC?.view.addSubview(vc.view)
            //: } else {
        } else {
            //: currentVC?.navigationController?.pushViewController(vc, animated: true)
            currentVC?.navigationController?.pushViewController(vc, animated: true)
        }
        //: return vc
        return vc
    }

    // MARK: - 跳转群聊

    //: func func__pushToGroupChat(groupId: String) {
    func alongOf(groupId: String) {
        //: guard groupId.count > 0 else { return }
        guard groupId.count > 0 else { return }
        //: ProgressHUD.show()
        TintProgressHUD.weight()
        //: UpsetCountRequestTool.req_checkChatRoom(roomId: groupId) { succeed, result, errorModel in
        UpsetCountRequestTool.setAboutCompletion(roomId: groupId) { succeed, result, errorModel in
            //: ProgressHUD.dismiss()
            TintProgressHUD.inkingPadDismiss()
            //: guard succeed == true else {
            guard succeed == true else {
                //: if errorModel?.errorCode == 106 {
                if errorModel?.errorCode == 106 {
                    //: } else {
                } else {
                    //: self.func__showStatusBarErrorMsg(showMsg: errorModel?.errorMsg ?? "")
                    self.detailDownArray(showMsg: errorModel?.errorMsg ?? "")
                    //: if errorModel?.errorCode == 103 {
                    if errorModel?.errorCode == 103 { // 不在家族里
                    }
                }

                //: return
                return
            }

            //: guard let data = result as? [String: Any] else {
            guard let data = result as? [String: Any] else {
                //: return
                return
            }

            //: if TableMacroDefine.isGroupChat(groupId) {
            if TableMacroDefine.peopleValue(groupId) {
                //: } else {
            } else { // 公共聊天室
                //: V2TIMManager.sharedInstance().joinGroup(groupId, msg: nil) {
                V2TIMManager.sharedInstance().joinGroup(groupId, msg: nil) {
                    //: guard self.func__checkIsGroupChatVC(roomId: groupId) == false else { return }
                    guard self.economicAidToSunroom(roomId: groupId) == false else { return }
                    //: let vc = TalkingGroupChatController(groupType: GroupType_Meeting, infoData: data)
                    let vc = ProfitSharingChatController(groupType: GroupType_Meeting, infoData: data)
                    //: self.func__getCurrentActivityVC()?.navigationController?.pushViewController(vc, animated: true)
                    self.quantityimateTarget()?.navigationController?.pushViewController(vc, animated: true)

                    //: } fail: { code, desc in
                } fail: { code, _ in
                    //: if code == 10013 {
                    if code == 10013 { // 程序异常退出，未退出聊天室
                        //: guard self.func__checkIsGroupChatVC(roomId: groupId) == false else { return }
                        guard self.economicAidToSunroom(roomId: groupId) == false else { return }
                        //: let vc = TalkingGroupChatController(groupType: GroupType_Meeting, infoData: data)
                        let vc = ProfitSharingChatController(groupType: GroupType_Meeting, infoData: data)
                        //: self.func__getCurrentActivityVC()?.navigationController?.pushViewController(vc, animated: true)
                        self.quantityimateTarget()?.navigationController?.pushViewController(vc, animated: true)
                        //: } else {
                    } else {
                        //: self.func__showStatusBarErrorMsg(showMsg: "Failed to enter the chat room. Please try again later".localized)
                        self.detailDownArray(showMsg: String(bytes: kStr_showName.map{replyData(content: $0)}, encoding: .utf8)!.localized)
                    }
                }
            }
        }
    }

    /// 检测堆栈中是否有群聊控制器，有则跳转到群聊页
    /// - Parameter roomId: 房间Id
    /// - Returns: 检测结果（true: 有; false: 无）
    //: private func func__checkIsGroupChatVC(roomId: String) -> Bool {
    private func economicAidToSunroom(roomId: String) -> Bool {
        //: let currentVC = self.func__getCurrentActivityVC()
        let currentVC = self.quantityimateTarget()
        //: if let vcArr = currentVC?.navigationController?.viewControllers {
        if let vcArr = currentVC?.navigationController?.viewControllers {
            //: for index in 0..<(vcArr.count) {
            for index in 0 ..< (vcArr.count) {
                //: if vcArr[index].isKind(of: TalkingGroupChatController.self) == true {
                if vcArr[index].isKind(of: ProfitSharingChatController.self) == true {
                    //: let vc = vcArr[index] as! TalkingGroupChatController
                    let vc = vcArr[index] as! ProfitSharingChatController
                    //: if vc.infoModel.roomId == roomId {
                    if vc.infoModel.roomId == roomId {
                        //: currentVC?.navigationController?.popToViewController(vc, animated: true)
                        currentVC?.navigationController?.popToViewController(vc, animated: true)
                        //: return true
                        return true
                    }
                }
            }
        }

        //: return false
        return false
    }

    // MARK: - 真人认证

    //: func func__pushUserVerifyController(toast: String?) {
    func retirement(toast: String?) {
        //: let tpAuth = TPUserAuth(rawValue: LocationThen.share.loginUserMode.isTPAuth)
        let tpAuth = FillContiguousBytes(rawValue: LocationThen.share.loginUserMode.isTPAuth)
        //: switch(tpAuth) {
        switch tpAuth {
        //: case .unknown, .isRefused:
        case .unknown, .isRefused:
            //: let vc = TalkingFaceVerificationVC()
            let vc = EngineViewController()
            //: vc.toastStr = toast ?? ""
            vc.toastStr = toast ?? ""
            //: let currentVC = func__getCurrentActivityVC()
            let currentVC = quantityimateTarget()
            //: currentVC?.navigationController?.pushViewController(vc, animated: true)
            currentVC?.navigationController?.pushViewController(vc, animated: true)

        //: case .isOnGoing:
        case .isOnGoing:
            //: let vc = TalkingFinalVerificationVC()
            let vc = ClientPathViewController()
            //: let currentVC = func__getCurrentActivityVC()
            let currentVC = quantityimateTarget()
            //: currentVC?.navigationController?.pushViewController(vc, animated: true)
            currentVC?.navigationController?.pushViewController(vc, animated: true)

        //: default:
        default:
            //: break
            break
        }
    }

    // MARK: - 任意用户的动态列表

    //: func func__pushUserPostListWithUid(uid: String) {
    func militaryInstallationName(uid _: String) {}

    // MARK: - 反馈feebook

    //: func func__pushFeedbackVC() {
    func bindVc() {
        //: let currentVC = func__getCurrentActivityVC()
        let currentVC = quantityimateTarget()
        //: let vc = TalkingFeedbackVC.init()
        let vc = LawyerClientRelationFieldDelegate()
        //: currentVC?.navigationController?.pushViewController(vc, animated: true)
        currentVC?.navigationController?.pushViewController(vc, animated: true)
    }

    // MARK: - 消息跳转

    //: func func__actionPushForMessage(jumpModel: TalkingMessageJumpModel) {
    func requestModel(jumpModel: SharedTransformable) {
        //: if jumpModel.jumpKey == "url" {
        if jumpModel.jumpKey == (String(kStr_meValue)) {
            //: func__pushToWebVC(urlStr: jumpModel.url)
            deleteTake(urlStr: jumpModel.url)
            //: } else if jumpModel.jumpKey == "userDetail"{
        } else if jumpModel.jumpKey == (String(kStr_userName) + String(kStr_contentTitle)) {}
    }

    // MARK: - 会员订阅网页

    //: @objc public func func__pushToSubscribePageWebVC() {
    @objc public func verso() {
        //: EffectPushManager.share.func__pushToWebVC(webViewType: .SubscribePage)
        EffectPushManager.share.selectUp(webViewType: .SubscribePage)
    }

    // MARK: - 设置密码页面

    /// 跳转设置密码页面
    /// - Parameters:
    ///   - type: 手机号/邮箱
    ///   - content: 展示内容
    ///   - isNewPwd: 是否新设置密码（修改需要验证码）
    //: func func__pushToSetNewPasswordVC(type: LoginType, content: String, isNewPwd: Bool) {
    func sieve(type: MiniLoginClusterLiteral, content: String, isNewPwd: Bool) {
        //: let vc = TalkingSetNewPasswordVC()
        let vc = SubPasswordVc()
        //: vc.type = type
        vc.type = type
        //: vc.content = content
        vc.content = content
        //: vc.isNewPwd = isNewPwd
        vc.isNewPwd = isNewPwd
        //: func__getCurrentActivityVC()?.navigationController?.pushViewController(vc, animated: true)
        quantityimateTarget()?.navigationController?.pushViewController(vc, animated: true)
    }
}

// MARK: - 跳转H5

//: extension EffectPushManager {
extension EffectPushManager {
    // 跳转全屏H5入口
    //: func func__pushToWebVC(webViewType: WebUrlType) {
    func selectUp(webViewType: VariantLayerNameProtocol) {
        //: func__pushToWebVC(webViewType: webViewType, webConfig: TalkingWebConfig())
        anyReason(webViewType: webViewType, webConfig: CanPlumeConfig())
    }

    /// 余额不足跳转充值/订阅页
    /// - Parameters:
    ///   - clickEvent: 埋点事件
    ///   - sufficient: 余额是否充足（默认true）
    //: func func__jumpToWebRecharge(clickEvent: String = "", sufficient: Bool = true, appendParams: String = "&type=7") {
    func physicsLab(clickEvent: String = "", sufficient: Bool = true, appendParams: String = (String(kStr_cornerValue))) {
        //: let payWinType = LocationThen.share.appUserConfigMode.payWinType
        let payWinType = LocationThen.share.appUserConfigMode.payWinType
        // 样式：半屏充值页 || (已订阅 && 余额不足)
        //: if payWinType == 1 || (LocationThen.share.loginUserMode.loungePlus && sufficient == false) {
        if payWinType == 1 || (LocationThen.share.loginUserMode.loungePlus && sufficient == false) { // 半屏充值页
            //: func__pushToHalfWebVC(webViewType: .RechargeHalfPage, clickEvent: clickEvent)
            markColor(webViewType: .RechargeHalfPage, clickEvent: clickEvent)

            //: } else if payWinType == 2 {
        } else if payWinType == 2 { // 会员订阅弹窗
            //: func__pushToSubscribeAlert(appendParams: appendParams)
            toShould(appendParams: appendParams)
        }
    }

    /// 跳转会员订阅弹窗
    /// - Parameter appendParams: url拼接参数（假视频流程拼接："&type=6；默认流程："&type=7"）
    //: func func__pushToSubscribeAlert(appendParams: String = "&type=7") {
    func toShould(appendParams: String = (String(kStr_cornerValue))) {
        //: var urlStr = TalkingWebManager.getFullUrl(urlType: .SubscribeAlert)
        var urlStr = ContentThen.inviteType(urlType: .SubscribeAlert)
        //: urlStr.append(appendParams)
        urlStr.append(appendParams)
        //: EffectPushManager.share.func__pushToWebVC(urlStr: urlStr)
        EffectPushManager.share.deleteTake(urlStr: urlStr)
        // 曝光用户数埋点
        //: uploadRecord.uploadRecordEvent(eventID: subscribtionRecordButton, parameterStr: ["amount": 0])
        kLet_dismissValue.showTheme(eventID: kLet_screenReplaceName, parameterStr: [String(bytes: kStr_colorAddName.map{$0^243}, encoding: .utf8)!: 0])
    }

    /// 跳转半屏H5入口
    /// - Parameters:
    ///   - webViewType: 网页URL
    ///   - clickEvent: 埋点事件
    //: func func__pushToHalfWebVC(webViewType: WebUrlType, clickEvent: String = "") {
    func markColor(webViewType: VariantLayerNameProtocol, clickEvent: String = "") {
        //: var config = TalkingWebConfig.init()
        var config = CanPlumeConfig()
        //: config.showLoadingView = false
        config.showLoadingView = false
        //: config.isHalfView = true
        config.isHalfView = true
        //: func__pushToWebVC(webViewType: webViewType, webConfig: config)
        anyReason(webViewType: webViewType, webConfig: config)
        // 充值埋点
        //: if webViewType == .RechargeHalfPage {
        if webViewType == .RechargeHalfPage {
            //: RECHARGE_CLICK_EVENT = clickEvent
            kLet_tableNameValue = clickEvent
            //: if clickEvent.count > 0 {
            if clickEvent.count > 0 {
                //: uploadRecord.uploadRecordEvent(eventID: clickEvent, parameterStr: ["amount": 0])
                kLet_dismissValue.showTheme(eventID: clickEvent, parameterStr: [String(bytes: kStr_colorAddName.map{$0^243}, encoding: .utf8)!: 0])
            }
        }
    }

    //: func func__pushToWebVC(webViewType: WebUrlType, webConfig: TalkingWebConfig) {
    func anyReason(webViewType: VariantLayerNameProtocol, webConfig: CanPlumeConfig) {
        //: let urlStr = TalkingWebManager.getFullUrl(urlType: webViewType)
        let urlStr = ContentThen.inviteType(urlType: webViewType)
        //: func__pushToWebView(urlStr: urlStr, webViewType: webViewType, webConfig: webConfig)
        bladeConfig(urlStr: urlStr, webViewType: webViewType, webConfig: webConfig)
    }

    //: func func__pushToWebVC(urlStr: String?, webConfig: TalkingWebConfig? = nil) {
    func deleteTake(urlStr: String?, webConfig: CanPlumeConfig? = nil) {
        //: let config = (webConfig == nil) ? TalkingWebConfig():webConfig
        let config = (webConfig == nil) ? CanPlumeConfig() : webConfig
        //: func__pushToWebView(urlStr: urlStr, webViewType: nil, webConfig: config!)
        bladeConfig(urlStr: urlStr, webViewType: nil, webConfig: config!)
    }

    //: func func__pushToWebView(urlStr: String?, webViewType: WebUrlType?, webConfig: TalkingWebConfig) {
    func bladeConfig(urlStr: String?, webViewType: VariantLayerNameProtocol?, webConfig: CanPlumeConfig) {
        //: guard urlStr != nil && urlStr != "" else { return }
        guard urlStr != nil, urlStr != "" else { return }
        //: var config = webConfig
        var config = webConfig

        // 有值且大于0，半屏按照比例展示
        //: if config.widthHeight ?? 0 > 0 {
        if config.widthHeight ?? 0 > 0 {
            //: config.isHalfView = true
            config.isHalfView = true
        }
        // 解析url中带的参数
        //: let urlParams = JSON(urlStr!.urlParameters ?? [:])
        let urlParams = JSON(urlStr!.urlParameters ?? [:])
        //: if urlParams["transparency"].stringValue == "1" { // 透明背景
        if urlParams[(kStr_withAppData.replacingOccurrences(of: "manager", with: "s") + kStr_gameBackName.lowercased())].stringValue == "1" { // 透明背景
            //: config.clearBgColor = true
            config.clearBgColor = true
        }

        // url拼接参数
        //: let allowCharSet: CharacterSet = CharacterSet.init(charactersIn: "`%^{}\"[]|\\<>").inverted
        let allowCharSet = CharacterSet(charactersIn: "`%^{}" + "\"" + "[]|\\<>").inverted
        //: var urlStr = urlStr!.addingPercentEncoding(withAllowedCharacters: allowCharSet)!
        var urlStr = urlStr!.addingPercentEncoding(withAllowedCharacters: allowCharSet)!
        //: let otherParams = "version=\(AppNetVersion)&packageId=\(PackageID)&bundleId=\(AppBundle)"
        let otherParams = (String(kStr_serverName) + String(kStr_platformRawValue.suffix(6))) + "\(kLet_inviteTitle)" + (String(kStr_systemValue.suffix(4)) + "kageI" + String(kStr_dataName.prefix(2))) + "\(kLet_guideDoingTitle)" + (kStr_priorityData.replacingOccurrences(of: "value", with: "&") + String(kStr_frameName)) + "\(kLet_listTitle)"
        //: if urlStr.contains("?") {
        if urlStr.contains("?") {
            //: urlStr = "\(urlStr)&\(otherParams)"
            urlStr = "\(urlStr)&\(otherParams)"
            //: } else {
        } else {
            //: urlStr = "\(urlStr)?\(otherParams)"
            urlStr = "\(urlStr)?\(otherParams)"
        }

        //: let vc = TalkingWebViewController.init(urlString: urlStr, webViewType: webViewType, webConfig: config)
        let vc = ClientReactiveCompatible(urlString: urlStr, webViewType: webViewType, webConfig: config)

        // 展示网页
        //: if let currentVC = func__getCurrentActivityVC() {
        if let currentVC = quantityimateTarget() {
            // 如果当前视图是模态上来的，跳转到下级时只能使用模态效果跳转
            //: var currentVCIsPresent = false
            var currentVCIsPresent = false
            //: if currentVC.isKind(of: TalkingWebViewController.self) &&
            if currentVC.isKind(of: ClientReactiveCompatible.self) &&
                //: (currentVC as! TalkingWebViewController).isModal == true {
                (currentVC as! ClientReactiveCompatible).isModal == true
            {
                //: currentVCIsPresent = true
                currentVCIsPresent = true
            }

            //: if config.isHalfView {
            if config.isHalfView { // 半屏使用present
                //: if config.widthHeight == nil {
                if config.widthHeight == nil {
                    //: vc.tranConfig.frameOfPresentedView = CGRect(x: 0, y: 0, width: ScreenWidth, height: ScreenHeight*2/3)
                    vc.tranConfig.frameOfPresentedView = CGRect(x: 0, y: 0, width: kLet_halfData, height: kLet_noSeatName * 2 / 3)
                    //: vc.tranConfig.configCorner(corners: [.topLeft, .topRight], radius: 18)
                    vc.tranConfig.conversionError(corners: [.topLeft, .topRight], radius: 18)
                    //: } else {
                } else {
                    //: vc.tranConfig.frameOfPresentedView = CGRect(x: 0, y: 0, width: ScreenWidth, height: ScreenWidth/config.widthHeight!)
                    vc.tranConfig.frameOfPresentedView = CGRect(x: 0, y: 0, width: kLet_halfData, height: kLet_halfData / config.widthHeight!)
                }
                //: vc.isModal = true
                vc.isModal = true
                //: currentVC.present(vc, animated: true)
                currentVC.present(vc, animated: true)

                //: } else if config.clearBgColor || currentVCIsPresent {
            } else if config.clearBgColor || currentVCIsPresent { // 透明背景只能用present
                //: vc.tranConfig.frameOfPresentedView = CGRect(x: 0, y: 0, width: ScreenWidth, height: ScreenHeight)
                vc.tranConfig.frameOfPresentedView = CGRect(x: 0, y: 0, width: kLet_halfData, height: kLet_noSeatName)
                //: vc.isModal = true
                vc.isModal = true
                //: currentVC.present(vc, animated: true)
                currentVC.present(vc, animated: true)

                //: } else {
            } else {
                //: vc.isModal = false
                vc.isModal = false
                //: currentVC.navigationController?.pushViewController(vc, animated: true)
                currentVC.navigationController?.pushViewController(vc, animated: true)
            }
        }
    }
}

// MARK: - 获取当前视图、导航

//: extension EffectPushManager {
public extension EffectPushManager {
    //: @objc public func func__getCurrentActivityVC() -> UIViewController? {
    @objc func quantityimateTarget() -> UIViewController? {
        //: return currentViewController()
        return giftFew()
    }
}

//: struct TalkingMessageJumpModel: HandyJSON {
struct SharedTransformable: HandyJSON {
    //: var jumpKey: String?
    var jumpKey: String? // 评论的id
    //: var jumpUid: String?
    var jumpUid: String?
    //: var url: String?
    var url: String?
}
