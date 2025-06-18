
//: Declare String Begin

/*: "TalkingFemaleVIPCallIdsArrayKey_ :*/
fileprivate let kStr_backgroundOutcomeValue:[UInt8] = [0xf6,0xc3,0xce,0xc9,0xcb,0xcc,0xc5,0xe4,0xc7,0xcf,0xc3,0xce,0xc7,0xf4,0xeb,0xf2,0xe1,0xc3,0xce,0xce,0xeb,0xc6,0xd1,0xe3,0xd0,0xd0,0xc3,0xdb,0xe9,0xc7,0xdb,0xfd]

private func manhuntBegin(normal num: UInt8) -> UInt8 {
    return num ^ 162
}

/*: "CHANGE_BEAN" :*/
fileprivate let kStr_managerName:[Character] = ["C","H","A"]
fileprivate let kStr_customerWillValue:[Character] = ["N","G","E","_","B","E","A","N"]

/*: "Failed to get user information, please return and try again" :*/
fileprivate let kStr_addName:[UInt8] = [0x4d,0x6a,0x62,0x67,0x6e,0x6f,0x2b,0x7f,0x64,0x2b,0x6c,0x6e,0x7f,0x2b,0x7e,0x78,0x6e,0x79,0x2b,0x62,0x65,0x6d,0x64,0x79,0x66,0x6a,0x7f,0x62,0x64,0x65,0x27,0x2b,0x7b,0x67,0x6e,0x6a,0x78,0x6e,0x2b,0x79,0x6e,0x7f,0x7e,0x79,0x65,0x2b,0x6a,0x65,0x6f,0x2b,0x7f,0x79,0x72,0x2b,0x6a,0x6c,0x6a,0x62,0x65]

private func ditheredColor(user num: UInt8) -> UInt8 {
    return num ^ 11
}

/*: "type" :*/
fileprivate let kStr_mainTitle:[UInt8] = [0x65,0x70,0x79,0x74]

/*: "uid" :*/
fileprivate let kStr_progressData:[Character] = ["u","i","d"]

/*: "fromFreeCall" :*/
fileprivate let kStr_timeName:[Character] = ["f","r","o","m","F","r","e","e","C","a"]
fileprivate let kStr_yearTitle:String = "contentcontent"

/*: "cmd" :*/
fileprivate let kStr_formatName:[UInt8] = [0xea,0xe4,0xed]

/*: "requestCall" :*/
fileprivate let kStr_coverSourceValue:[Character] = ["r","e","q","u","e","s","t","C","a"]
fileprivate let kStr_ofValue:[Character] = ["l","l"]

/*: "data" :*/
fileprivate let kStr_sizeMessageContent:[UInt8] = [0x83,0x80,0x93,0x80]

fileprivate func sumTitle(center num: UInt8) -> UInt8 {
    let value = Int(num) - 31
    if value < 0 {
        return UInt8(value + 256)
    } else {
        return UInt8(value)
    }
}

/*: "onRequestCall" :*/
fileprivate let kStr_inviteTitle:String = "small self icononRe"
fileprivate let kStr_topValue:String = "on send label continue inputtCall"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  AdministratorMatchDelegate.swift
//  AbroadTalking
//
//  Created by young on 2023/8/15.
//

//: import UIKit
import UIKit

//: enum CallMenuType: Int {
enum SubVideoComparable: Int {
    //: case VideoCall = 0
    case VideoCall = 0 // 视频通话
    //: case VoiceCall = 1
    case VoiceCall = 1 // 语音通话
}

//: typealias OnReqestCallBlock = () -> Void
typealias OnReqestCallBlock = () -> Void

//: class TalkingCallMenuManager: NSObject {
class AdministratorMatchDelegate: NSObject {
    // 被呼叫用户ID
    //: var uid: String?
    var uid: String?
    //: var onReqestCallBlock: OnReqestCallBlock?
    var onReqestCallBlock: OnReqestCallBlock? /// 发起建立通话成功

    // 女性用户VIP折扣弹窗Key
    //: let FemaleVIPCallIdsArrayKey = "TalkingFemaleVIPCallIdsArrayKey_\(LocationThen.share.loginUid)"
    let FemaleVIPCallIdsArrayKey = String(bytes: kStr_backgroundOutcomeValue.map{manhuntBegin(normal: $0)}, encoding: .utf8)! + "\(LocationThen.share.loginUid)"

    //: override init() {
    override init() {
        //: super.init()
        super.init()
    }

    //: deinit {
    deinit {
        //: TalkingSocketManager.shared.videoMatchDelegate = nil
        ToSocketManager.shared.videoMatchDelegate = nil
        //: TalkingSocketManager.shared.errorDelegate = nil
        ToSocketManager.shared.errorDelegate = nil
    }
}

// MARK: - Event

//: extension TalkingCallMenuManager {
extension AdministratorMatchDelegate {
    /// 展示音视频通话选择菜单
    /// - Parameters:
    ///   - videoPrice: 视频通话价格
    ///   - voicePrice: 语音通话价格
    ///   - vipPrompt: 女性呼叫VIP用户价格变动提醒
    //: func showVideoCallMenu(videoPrice: String?, voicePrice: String?, vipPrompt: String? = nil) {
    func evaluate(videoPrice: String?, voicePrice: String?, vipPrompt: String? = nil) {
        // 音视频通话中
        //: guard TalkingSocketManager.shared.isTalking == false else {
        guard ToSocketManager.shared.isTalking == false else {
            //: self.func__showStatusBarErrorMsg(showMsg: kMessage_videoTalking_limit)
            self.detailDownArray(showMsg: kLet_tableEndValue)
            //: return
            return
        }

        //: let vc = TalkingMunuPopView(frame: UIScreen.main.bounds)
        let vc = FillView(frame: UIScreen.main.bounds)
        //: vc.initWithList(type: .Call, videoPrice: videoPrice, voicePrice: voicePrice)
        vc.targetView(type: .Call, videoPrice: videoPrice, voicePrice: voicePrice)
        //: vc.munuBlock = { [weak self] index, _ in
        vc.munuBlock = { [weak self] index, _ in
            //: guard let self = self else { return }
            guard let self = self else { return }
            //: let type = CallMenuType(rawValue: index) ?? .VideoCall
            let type = SubVideoComparable(rawValue: index) ?? .VideoCall
            // 展示VIP折扣提醒弹窗
            //: if vipPrompt != nil, vipPrompt?.count ?? 0 > 0 {
            if vipPrompt != nil, vipPrompt?.count ?? 0 > 0 {
                //: var prompt = ""
                var prompt = ""
                //: if index == 0 {
                if index == 0 {
                    //: prompt = vipPrompt!.replacingOccurrences(of: "CHANGE_BEAN", with: videoPrice ?? "0")
                    prompt = vipPrompt!.replacingOccurrences(of: (String(kStr_managerName) + String(kStr_customerWillValue)), with: videoPrice ?? "0")
                    //: } else {
                } else {
                    //: prompt = vipPrompt!.replacingOccurrences(of: "CHANGE_BEAN", with: voicePrice ?? "0")
                    prompt = vipPrompt!.replacingOccurrences(of: (String(kStr_managerName) + String(kStr_customerWillValue)), with: voicePrice ?? "0")
                }
                //: self.showFemaleVIPCallAlertView(type: type, vipPrompt: prompt)
                self.showSize(type: type, vipPrompt: prompt)
                //: return
                return
            }

            //: requestCall(type: type)
            dub(type: type)
        }
    }

    /// 发起音/视频通话
    /// - Parameter type: 通话类型
    //: func requestCall(type: CallMenuType) {
    func dub(type: SubVideoComparable) {
        //: switch(type) {
        switch type {
        //: case .VideoCall:
        case .VideoCall:
            //: self.checkAndCallVideo()
            self.engraft()
        //: case .VoiceCall:
        case .VoiceCall:
            //: self.checkAndCallVoice()
            self.modePosition()
        }
    }

    /// 检查权限后发起音频通话
    /// - Parameter complection: 回调
    //: func checkAndCallVoice(complection: ((_ succeed: Bool) -> Void)? = nil) {
    func modePosition(complection: ((_ succeed: Bool) -> Void)? = nil) {
        // 音视频通话中
        //: guard TalkingSocketManager.shared.isTalking == false else {
        guard ToSocketManager.shared.isTalking == false else {
            //: self.func__showStatusBarErrorMsg(showMsg: kMessage_videoTalking_limit)
            self.detailDownArray(showMsg: kLet_tableEndValue)
            //: complection?(false)
            complection?(false)
            //: return
            return
        }

        // 麦克风权限
        //: TalkingPermissionTool.func__openRecordServiceWithBlock(true) { isOpen in
        PerspectiveThen.schlep(true) { isOpen in
            //: guard isOpen == true else {
            guard isOpen == true else {
                //: self.func__showStatusBarErrorMsg(showMsg: kMessage_permissions_error)
                self.detailDownArray(showMsg: kLet_viewValue)
                //: complection?(false)
                complection?(false)
                //: return
                return
            }
            // 发起音频通话
            //: TalkingSocketManager.shared.videoMatchDelegate = self
            ToSocketManager.shared.videoMatchDelegate = self
            //: TalkingSocketManager.shared.errorDelegate = self
            ToSocketManager.shared.errorDelegate = self
            //: self.send_socket_requestCall(type: 1)
            self.variant(type: 1)
            //: complection?(true)
            complection?(true)
        }
    }

    /// 检测权限后发起视频通话
    /// - Parameter complection: 回调
    //: func checkAndCallVideo(complection: ((_ succeed: Bool) -> Void)? = nil) {
    func engraft(complection: ((_ succeed: Bool) -> Void)? = nil) {
        // 音视频通话中
        //: guard TalkingSocketManager.shared.isTalking == false else {
        guard ToSocketManager.shared.isTalking == false else {
            //: self.func__showStatusBarErrorMsg(showMsg: kMessage_videoTalking_limit)
            self.detailDownArray(showMsg: kLet_tableEndValue)
            //: complection?(false)
            complection?(false)
            //: return
            return
        }

        // 权限判断
        //: TalkingPermissionTool.checkCameraAndMicrophone { isOpen in
        PerspectiveThen.disappearEvent { isOpen in
            //: guard isOpen == true else {
            guard isOpen == true else {
                //: self.func__showStatusBarErrorMsg(showMsg: kMessage_permissions_error)
                self.detailDownArray(showMsg: kLet_viewValue)
                //: complection?(false)
                complection?(false)
                //: return
                return
            }
            // 发起视频通话
            //: TalkingSocketManager.shared.videoMatchDelegate = self
            ToSocketManager.shared.videoMatchDelegate = self
            //: TalkingSocketManager.shared.errorDelegate = self
            ToSocketManager.shared.errorDelegate = self
            //: self.send_socket_requestCall(type: 0)
            self.variant(type: 0)
            //: complection?(true)
            complection?(true)
        }
    }
}

// MARK: - 会员折扣提示弹窗

//: extension TalkingCallMenuManager {
extension AdministratorMatchDelegate {
    /// 展示会员折扣提示弹窗
    /// - Parameters:
    ///   - index: 0：视频通话；1：音频通话
    ///   - vipPrompt: 女性呼叫VIP用户价格变动提醒
    //: private func showFemaleVIPCallAlertView(type: CallMenuType, vipPrompt: String) {
    private func showSize(type: SubVideoComparable, vipPrompt: String) {
        //: guard LocationThen.share.loginUserMode.status == AppSkinStatus.normal.rawValue else {
        guard LocationThen.share.loginUserMode.status == SharedInsetTarget.normal.rawValue else {
            //: self.requestCall(type: type)
            self.dub(type: type)
            //: return
            return
        }
        // 每个用户只展示一次
        //: var array: Array = Defaults.object(forKey: FemaleVIPCallIdsArrayKey) as? [String] ?? [String]()
        var array: Array = kLet_managerValue.object(forKey: FemaleVIPCallIdsArrayKey) as? [String] ?? [String]()
        //: if array.contains(uid ?? "") { // 已展示
        if array.contains(uid ?? "") { // 已展示
            //: self.requestCall(type: type)
            self.dub(type: type)
            //: return
            return
        }

        // 更新缓存, 展示视图
        //: array.append(uid ?? "")
        array.append(uid ?? "")
        //: Defaults.set(array, forKey: FemaleVIPCallIdsArrayKey)
        kLet_managerValue.set(array, forKey: FemaleVIPCallIdsArrayKey)
        //: let alert = TalkingFemaleVIPCallAlertView(type: type, content: vipPrompt)
        let alert = TimeReactiveCompatible(type: type, content: vipPrompt)
        //: alert.callBlock = { type in
        alert.callBlock = { type in
            //: self.requestCall(type: type)
            self.dub(type: type)
        }
        //: alert.show()
        alert.buildPoint()
    }
}

// MARK: - BackgroundMatchDelegate, CanErrorDelegate【音视频通话逻辑处理】

//: extension TalkingCallMenuManager: SocketManagerVideoMatchDelegate, TalkingSocketManagerErrorDelegate {
extension AdministratorMatchDelegate: BackgroundMatchDelegate, CanErrorDelegate {
    /// 发送音视频通话socket
    /// - Parameter type: 通话类型：0：视频通话，1：语音通话
    //: func send_socket_requestCall(type: Int) {
    func variant(type: Int) {
        //: guard let uid = self.uid else {
        guard let uid = self.uid else {
            //: self.func__showStatusBarErrorMsg(showMsg: "Failed to get user information, please return and try again".localized)
            self.detailDownArray(showMsg: String(bytes: kStr_addName.map{ditheredColor(user: $0)}, encoding: .utf8)!.localized)
            //: return
            return
        }

        //: var data: [String: Any] = ["type": type, "uid": uid]
        var data: [String: Any] = [String(bytes: kStr_mainTitle.reversed(), encoding: .utf8)!: type, (String(kStr_progressData)): uid]
        //: let index = EnableFreeCallType.nor
        let index = EndueProtectionBasicType.nor
        //: if LocationThen.share.loginUserMode.freeCallTimes > 0 && LocationThen.share.appUserConfigMode.enableFreeCallType & index.rawValue == index.rawValue && LocationThen.share.loginUserMode.sex == Gender.male.rawValue {
        if LocationThen.share.loginUserMode.freeCallTimes > 0 && LocationThen.share.appUserConfigMode.enableFreeCallType & index.rawValue == index.rawValue && LocationThen.share.loginUserMode.sex == SucceedComparable.male.rawValue {
            //: data.updateValue(1, forKey: "fromFreeCall")
            data.updateValue(1, forKey: (String(kStr_timeName) + kStr_yearTitle.replacingOccurrences(of: "content", with: "l")))
            //: TalkingSocketManager.shared.isFreeCall = true
            ToSocketManager.shared.isFreeCall = true
        }
        //: let info: [String: Any] = ["cmd": "requestCall", "data": data]
        let info: [String: Any] = [String(bytes: kStr_formatName.map{$0^137}, encoding: .utf8)!: (String(kStr_coverSourceValue) + String(kStr_ofValue)), String(bytes: kStr_sizeMessageContent.map{sumTitle(center: $0)}, encoding: .utf8)!: data]
        //: TalkingSocketManager.shared.sendMessage(info: info)
        ToSocketManager.shared.lessNutsAndBolts(info: info)
    }

    /// 匹配成功，可以拨打通话
    //: func socket_match_onRequestCall(data: [String: Any]) {        self.onReqestCallBlock?()
    func socketSpringTask(data: [String: Any]) { self.onReqestCallBlock?()
        //: var newData = data
        var newData = data
        //: newData["uid"] = self.uid
        newData[(String(kStr_progressData))] = self.uid
        //: LocationThen.share.start1v1TalkCall(info: newData)
        LocationThen.share.startCover(info: newData)
    }

    //: func socket_match_onVideoMatch(data: [String: Any]) {}
    func tableData(data _: [String: Any]) {}

    /// 失败处理
    //: func socket_didRecieveError(errorNo: Int, cmd: String, msg: String, data: [String: Any]) {
    func recieve(errorNo: Int, cmd: String, msg: String, data _: [String: Any]) {
        //: if cmd == "onRequestCall" {
        if cmd == (String(kStr_inviteTitle.suffix(4)) + "ques" + String(kStr_topValue.suffix(5))) {
            //: self.func__showStatusBarErrorMsg(showMsg: msg)
            self.detailDownArray(showMsg: msg)
            //: if errorNo == VideoChatErrorCode.MoneyLack.rawValue {
            if errorNo == CollectionNameConvertible.MoneyLack.rawValue {
                //: guard LocationThen.share.appStatus == AppSkinStatus.normal.rawValue else { return }
                guard LocationThen.share.appStatus == SharedInsetTarget.normal.rawValue else { return }
                //: EffectPushManager.share.func__jumpToWebRecharge(clickEvent: clickVideocallButton, sufficient: false)
                EffectPushManager.share.physicsLab(clickEvent: kLet_messageName, sufficient: false)
            }
        }
    }
}
