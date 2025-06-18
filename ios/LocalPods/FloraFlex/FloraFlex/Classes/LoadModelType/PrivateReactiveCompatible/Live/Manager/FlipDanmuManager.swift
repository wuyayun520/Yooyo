
//: Declare String Begin

/*: " customElem.data is error" :*/
fileprivate let kStr_totalName:String = "extension var cus"
fileprivate let kStr_normalTextData:[Character] = ["a","t","a"]
fileprivate let kStr_mValue:String = " is evar right of"

/*: "extra" :*/
fileprivate let kStr_equalValue:[Character] = ["e","x","t","r","a"]

/*: "MF:PartyChatSysMsg" :*/
fileprivate let kStr_fromData:[Character] = ["M","F",":","P","a","r","t","y","C","h","a","t","S","y","s","M"]
fileprivate let kStr_norName:String = "plaing"

/*: "opType" :*/
fileprivate let kStr_videoValue:String = "video make let currentopType"

/*: "roomLogout" :*/
fileprivate let kStr_toListText:String = "ROOM"
fileprivate let kStr_afterTitle:String = "Logoutview app"

/*: "MF:PartyChatWelMsg" :*/
fileprivate let kStr_imageBlockText:String = "MF:Paremain let model regular"
fileprivate let kStr_sectionFemaleName:String = "atWesuccess let view"
fileprivate let kStr_minMakeValue:String = "lMsginside count"

/*: "startLive" :*/
fileprivate let kStr_timeValue:[Character] = ["s","t","a","r","t","L","i","v","e"]

/*: "floatingScreen" :*/
fileprivate let kStr_atTitle:[UInt8] = [0x19,0x1f,0x22,0x14,0x27,0x1c,0x21,0x1a,0x6,0x16,0x25,0x18,0x18,0x21]

fileprivate func createName(control num: UInt8) -> UInt8 {
    let value = Int(num) - 179
    if value < 0 {
        return UInt8(value + 256)
    } else {
        return UInt8(value)
    }
}

/*: "mute" :*/
fileprivate let kStr_matchValue:[Character] = ["m","u","t","e"]

/*: "uid" :*/
fileprivate let kStr_sizeText:String = "uiattribute"

/*: "expireAt" :*/
fileprivate let kStr_changeContent:[Character] = ["e","x","p","i","r","e","A","t"]

/*: "unmute" :*/
fileprivate let kStr_equalData:String = "unquoteute"

/*: "MF:LiveChatGiftMsg" :*/
fileprivate let kStr_albumManagerValue:String = "user leading true toMF:L"
fileprivate let kStr_viewValue:String = "data kindtGif"

/*: "MF:PartyChatGiftMsg" :*/
fileprivate let kStr_labelName:[Character] = ["M","F",":","P","a"]
fileprivate let kStr_areaText:[Character] = ["r","t","y","C","h","a","t","G","i","f","t","M","s","g"]

/*: "gift" :*/
fileprivate let kStr_rawTitle:String = "priceft"

/*: "id" :*/
fileprivate let kStr_equalTitleData:String = "iuser"

/*: "imgPreview" :*/
fileprivate let kStr_gestureName:[Character] = ["i","m","g","P","r","e"]
fileprivate let kStr_useContent:String = "localiew"

/*: "name" :*/
fileprivate let kStr_viewText:String = "namgroup"

/*: "num" :*/
fileprivate let kStr_labTitle:String = "nupath"

/*: "mfBean" :*/
fileprivate let kStr_liveValue:[UInt8] = [0x6e,0x61,0x65,0x42,0x66,0x6d]

/*: "MF:LiveChatPrizeMsg" :*/
fileprivate let kStr_textName:String = "MF:Lresult make model equal type"
fileprivate let kStr_listValue:String = "atPrizeMrequest edit"
fileprivate let kStr_makeSizeData:[Character] = ["s","g"]

/*: "<at>@[\\S\\s]+?</at>" :*/
fileprivate let kStr_insideTitle:String = "<at>@[guard style cell normal"
fileprivate let kStr_name:[Character] = ["+"]
fileprivate let kStr_aboutValue:String = "?</at>to view let info"

/*: "加入弹幕房间" :*/
fileprivate let kStr_toName:String = "\u{52a0}入弹幕房\u{95f4}"

/*: "Failed to enter the chat room. Please try again later" :*/
fileprivate let kStr_bottomTitle:[UInt8] = [0xeb,0xcc,0xc4,0xc1,0xc8,0xc9,0x8d,0xd9,0xc2,0x8d,0xc8,0xc3,0xd9,0xc8,0xdf,0x8d,0xd9,0xc5,0xc8,0x8d,0xce,0xc5,0xcc,0xd9,0x8d,0xdf,0xc2,0xc2,0xc0,0x83,0x8d,0xfd,0xc1,0xc8,0xcc,0xde,0xc8,0x8d,0xd9,0xdf,0xd4,0x8d,0xcc,0xca,0xcc,0xc4,0xc3,0x8d,0xc1,0xcc,0xd9,0xc8,0xdf]

/*: "live/sendMsg" :*/
fileprivate let kStr_failureValue:[Character] = ["l","i"]
fileprivate let kStr_userMCountName:[Character] = ["v","e","/","s","e","n","d","M","s","g"]

/*: "groupId" :*/
fileprivate let kStr_partyNameRightText:[Character] = ["g","r","o","u","p"]
fileprivate let kStr_countValue:String = "Idif state normal type bottom"

/*: "message" :*/
fileprivate let kStr_collectionValue:[Character] = ["m","e"]
fileprivate let kStr_fewText:String = "ssapagee"

/*: "toUid" :*/
fileprivate let kStr_errorTitle:[Character] = ["t","o","U","i","d"]

/*: "party/sendMsg" :*/
fileprivate let kStr_blackToText:[Character] = ["p","a","r","t","y","/","s","e","n","d","M","s"]
fileprivate let kStr_turnData:String = "player"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  FlipDanmuManager.swift
//  AbroadTalking
//
//  Created by Charlotte on 2023/7/7.
//

//: import UIKit
import UIKit

//: protocol TalkingDanmuManagerDelegate: NSObject {
protocol PathThen: NSObject {
    /// 弹幕消息
    //: func func__DanmuRecvNewModel(Msg: TalkingLiveRoomDanmuModel)
    func viewMsg(Msg: BackgroundMeasurable)
    /// 礼物动效
    //: func func__giftRecvNewModel(Msg: TalkingLiveRoomDanmuModel)
    func totalInstance(Msg: BackgroundMeasurable)

    //: func func__actionUserNewModel(pushUid: String?)
    func towardClick(pushUid: String?)

    //: func func__longTouchUserNewModel(nickName: String, atUid: String?)
    func labelUid(nickName: String, atUid: String?)
    // 用户进入房间
    //: func func__userLogin()
    func outFunc()
    // 用户退出房间
    //: func func__userLogout()
    func dataGesture()
}

//: class TalkingDanmuManager: NSObject {
class FlipDanmuManager: NSObject {
    //: private var maxJoinRoom = 1
    private var maxJoinRoom = 1 // 重试加入弹幕房间次数
    //: private static var _instance: TalkingDanmuManager?
    private static var _instance: FlipDanmuManager? // singleton
    //: open weak var delegate: TalkingDanmuManagerDelegate?
    open weak var delegate: PathThen?

    //: override private init() {}
    override private init() {}
    //: class func shared() -> TalkingDanmuManager {
    class func underObserver() -> FlipDanmuManager {
        //: guard _instance != nil else {
        guard _instance != nil else {
            //: _instance = TalkingDanmuManager()
            _instance = FlipDanmuManager()
            //: return _instance!
            return _instance!
        }
        //: return _instance!
        return _instance!
    }
}

// MARK: - 展示消息通知

//: extension TalkingDanmuManager {
extension FlipDanmuManager {
    /// 公告消息
    //: func showAnnouncementMsg(str: String) {
    func finishVoice(str: String) {
        //: var model = TalkingLiveRoomDanmuModel()
        var model = BackgroundMeasurable()
        //: var msgInfo = TalkingDanmuMsgInfo()
        var msgInfo = FailureToMsgInfo()
        //: msgInfo.messageType = 1
        msgInfo.messageType = 1 /// (公告算是特殊的文本消息)
        //: msgInfo.content = str
        msgInfo.content = str
        //: model.msgInfo = msgInfo
        model.msgInfo = msgInfo
        //: let celldata = TalkingLiveRoomDammuCellData()
        let celldata = ImageThen()
        //: model = celldata.showAnnouncementMsg(model: model)
        model = celldata.someRequest(model: model)
        //: delegate?.func__DanmuRecvNewModel(Msg: model)
        delegate?.viewMsg(Msg: model)
    }

    /// 处理接收到的弹幕消息，展示
    /// - Parameters:
    ///   - msg: V2TIMMessage
    //: func onRecvDanmuNewMsg(msg: V2TIMMessage) {
    func nameMsg(msg: V2TIMMessage) {
        //: guard let extra = String(data: msg.customElem.data, encoding: .utf8) else {
        guard let extra = String(data: msg.customElem.data, encoding: .utf8) else {
            //: printLog(message: " customElem.data is error")
            pathLine(message: (String(kStr_totalName.suffix(4)) + "tomElem.d" + String(kStr_normalTextData) + String(kStr_mValue.prefix(5)) + "rror"))
            //: return
            return
        }
        //: let jsonData: Data = extra.data(using: .utf8)!
        let jsonData: Data = extra.data(using: .utf8)!
        //: let dict = try? JSONSerialization.jsonObject(with: jsonData, options: .mutableContainers) as? NSDictionary
        let dict = try? JSONSerialization.jsonObject(with: jsonData, options: .mutableContainers) as? NSDictionary
        //: let extraDic = dict?["extra"] as? [String: Any]
        let extraDic = dict?[(String(kStr_equalValue))] as? [String: Any]
        //: let ext = msg.customElem.extension
        let ext = msg.customElem.extension

        //: if ext == "MF:PartyChatSysMsg", extraDic?["opType"] as? String == "roomLogout" { // 语聊房退房操作
        if ext == (String(kStr_fromData) + kStr_norName.replacingOccurrences(of: "plain", with: "s")), extraDic?[(String(kStr_videoValue.suffix(6)))] as? String == (kStr_toListText.lowercased() + String(kStr_afterTitle.prefix(6))) { // 语聊房退房操作
            //: self.delegate?.func__userLogout()
            self.delegate?.dataGesture()
            //: return
            return

                    //: } else if ext == "MF:PartyChatWelMsg" { // 语聊房进入欢迎消息
        } else if ext == (String(kStr_imageBlockText.prefix(5)) + "rtyCh" + String(kStr_sectionFemaleName.prefix(4)) + String(kStr_minMakeValue.prefix(4))) { // 语聊房进入欢迎消息
            //: self.delegate?.func__userLogin()
            self.delegate?.outFunc()

            //: } else if let opType = extraDic?["opType"], opType as? String == "startLive" {
        } else if let opType = extraDic?[(String(kStr_videoValue.suffix(6)))], opType as? String == (String(kStr_timeValue)) {
            //: NotificationCenter.default.post(name: LIVE_RECIVE_STARTLIVE_NOTIFICATION, object: nil)
            NotificationCenter.default.post(name: kLet_nameValue, object: nil)
            //: return
            return

                    //: } else if let opType = extraDic?["opType"], opType as? String == "floatingScreen" { // 飘屏
        } else if let opType = extraDic?[(String(kStr_videoValue.suffix(6)))], opType as? String == String(bytes: kStr_atTitle.map{createName(control: $0)}, encoding: .utf8)! { // 飘屏
            //: if let dict = extraDic?["floatingScreen"] {
            if let dict = extraDic?[String(bytes: kStr_atTitle.map{createName(control: $0)}, encoding: .utf8)!] {
                //: NotificationCenter.default.post(name: LIVE_RECIVE_FLOATSCREEN_NOTIFICATION, object: nil, userInfo: ["floatingScreen": dict])
                NotificationCenter.default.post(name: kLet_viewText, object: nil, userInfo: [String(bytes: kStr_atTitle.map{createName(control: $0)}, encoding: .utf8)!: dict])
            }
            //: return
            return

                    //: } else if let opType = extraDic?["opType"], opType as? String == "mute" { // 禁言
        } else if let opType = extraDic?[(String(kStr_videoValue.suffix(6)))], opType as? String == (String(kStr_matchValue)) { // 禁言
            //: if let uid = extraDic?["uid"] as? Int {
            if let uid = extraDic?[(kStr_sizeText.replacingOccurrences(of: "attribute", with: "d"))] as? Int {
                //: if LocationThen.share.loginUserMode.userID == "\(uid)" {
                if LocationThen.share.loginUserMode.userID == "\(uid)" {
                    //: if ext == "MF:PartyChatSysMsg" { // 语聊房
                    if ext == (String(kStr_fromData) + kStr_norName.replacingOccurrences(of: "plain", with: "s")) { // 语聊房
                        //: TalkingVoiceRoomManager.shared().partyModel.muteExpireAt = extraDic?["expireAt"] as? Int ?? 0
                        SubCheckedReactiveCompatible.replyShared().partyModel.muteExpireAt = extraDic?[(String(kStr_changeContent))] as? Int ?? 0
                        //: }else {
                    } else {
                        //: TalkingLiveManager.shared().liveRoomModel.muteExpireAt = extraDic?["expireAt"] as? Int ?? 0
                        VideoPushListener.isGesture().liveRoomModel.muteExpireAt = extraDic?[(String(kStr_changeContent))] as? Int ?? 0
                    }
                }
            }
            //: return
            return

                    //: } else if let opType = extraDic?["opType"], opType as? String == "unmute" { // 解禁
        } else if let opType = extraDic?[(String(kStr_videoValue.suffix(6)))], opType as? String == (kStr_equalData.replacingOccurrences(of: "quote", with: "m")) { // 解禁
            //: if let uid = extraDic?["uid"] as? Int {
            if let uid = extraDic?[(kStr_sizeText.replacingOccurrences(of: "attribute", with: "d"))] as? Int {
                //: if LocationThen.share.loginUserMode.userID == "\(uid)" {
                if LocationThen.share.loginUserMode.userID == "\(uid)" {
                    //: if LocationThen.share.loginUserMode.userID == "\(uid)" {
                    if LocationThen.share.loginUserMode.userID == "\(uid)" {
                        //: if ext == "MF:PartyChatSysMsg" { // 语聊房
                        if ext == (String(kStr_fromData) + kStr_norName.replacingOccurrences(of: "plain", with: "s")) { // 语聊房
                            //: TalkingVoiceRoomManager.shared().partyModel.muteExpireAt = 0
                            SubCheckedReactiveCompatible.replyShared().partyModel.muteExpireAt = 0
                            //: }else {
                        } else {
                            //: TalkingLiveManager.shared().liveRoomModel.muteExpireAt = 0
                            VideoPushListener.isGesture().liveRoomModel.muteExpireAt = 0
                        }
                    }
                }
            }
            //: return
            return
        }

        //: if var model = TalkingLiveRoomDanmuModel.deserialize(from: extraDic as? Dictionary) {
        if var model = BackgroundMeasurable.deserialize(from: extraDic as? Dictionary) {
            //: model.MsgExtension = msg.customElem.extension
            model.MsgExtension = msg.customElem.extension

            //: if model.msgInfo?.messageType == 3, model.MsgExtension == "MF:LiveChatGiftMsg" || model.MsgExtension == "MF:PartyChatGiftMsg" {
            if model.msgInfo?.messageType == 3, model.MsgExtension == (String(kStr_albumManagerValue.suffix(4)) + "iveCha" + String(kStr_viewValue.suffix(4)) + "tMsg") || model.MsgExtension == (String(kStr_labelName) + String(kStr_areaText)) {
                //: let dic: Dictionary? = extraDic?["gift"] as? [String: Any]
                let dic: Dictionary? = extraDic?[(kStr_rawTitle.replacingOccurrences(of: "price", with: "gi"))] as? [String: Any]
                //: if dic == nil {
                if dic == nil {
                    //: return
                    return
                }
                //: model.gift?.fromUid = model.user?.uid ?? 0
                model.gift?.fromUid = model.user?.uid ?? 0
                //: model.gift?.fromNickname = model.user?.nickname ?? ""
                model.gift?.fromNickname = model.user?.nickname ?? ""
                //: model.gift?.fromHeadPic = model.user?.headPic ?? ""
                model.gift?.fromHeadPic = model.user?.headPic ?? ""
                //: model.gift?.pid = Int(dic?["id"] as! String)
                model.gift?.pid = Int(dic?["id"] as! String)
                //: model.gift?.giftPic = dic?["imgPreview"] as? String ?? ""
                model.gift?.giftPic = dic?[(String(kStr_gestureName) + kStr_useContent.replacingOccurrences(of: "local", with: "v"))] as? String ?? ""
                //: model.gift?.pname = dic?["name"] as! String
                model.gift?.pname = dic?[(kStr_viewText.replacingOccurrences(of: "group", with: "e"))] as! String
                //: if model.gift?.animationTimes ?? 0 <= 0 {
                if model.gift?.animationTimes ?? 0 <= 0 {
                    //: model.gift?.animationTimes = dic?["num"] as? Int ?? 0
                    model.gift?.animationTimes = dic?[(kStr_labTitle.replacingOccurrences(of: "path", with: "m"))] as? Int ?? 0
                }

                //: if TalkingLiveManager.shared().liveRoomModel.roomId.count > 0 {
                if VideoPushListener.isGesture().liveRoomModel.roomId.count > 0 { // 直播间弹幕礼物(包含男性用户)
                    //: if TalkingLiveManager.shared().config.isSmallMode {
                    if VideoPushListener.isGesture().config.isSmallMode {
                        //: AbTalkingPrivateChatAnimatTool.shared.disposeReceiveLiveRoomGiftMsg(giftMessageDic: dict! as NSDictionary)
                        PrivateReactiveCompatible.shared.toFile(giftMessageDic: dict! as NSDictionary)
                        //: } else {
                    } else {
                        //: delegate?.func__giftRecvNewModel(Msg: model)
                        delegate?.totalInstance(Msg: model)
                    }

                    //: } else if TalkingVoiceRoomManager.shared().isParty && model.gift?.isDisplay == true {
                } else if SubCheckedReactiveCompatible.replyShared().isParty, model.gift?.isDisplay == true { // 语聊房弹幕礼物
                    //: if TalkingVoiceRoomManager.shared().isSmallMode {
                    if SubCheckedReactiveCompatible.replyShared().isSmallMode {
                        //: AbTalkingPrivateChatAnimatTool.shared.disposeReceiveLiveRoomGiftMsg(giftMessageDic: dict! as NSDictionary)
                        PrivateReactiveCompatible.shared.toFile(giftMessageDic: dict! as NSDictionary)
                        //: } else {
                    } else {
                        //: delegate?.func__giftRecvNewModel(Msg: model)
                        delegate?.totalInstance(Msg: model)
                    }
                }

                //: let mfBean = model.msgInfo?.mfBean
                let mfBean = model.msgInfo?.mfBean
                //: NotificationCenter.default.post(name: LIVE_USER_POINT_CHANGE, object: nil, userInfo: ["mfBean": mfBean ?? 0.0])
                NotificationCenter.default.post(name: kLet_countData, object: nil, userInfo: [String(bytes: kStr_liveValue.reversed(), encoding: .utf8)!: mfBean ?? 0.0])

                //: if model.gift?.giftPic.count ?? 0 > 0 {
                if model.gift?.giftPic.count ?? 0 > 0 {
                    //: if let newStr = model.gift?.giftPic.replacingOccurrences(of: UrlDomin.urlAes256Decrypt(), with: ReplaceUrlDomain) {
                    if let newStr = model.gift?.giftPic.replacingOccurrences(of: kLet_voiceData.location6decrypt(), with: kLet_priceName) {
                        //: URLSession.shared.dataTask(with: URL(string: newStr)!) { data, _, error in
                        URLSession.shared.dataTask(with: URL(string: newStr)!) { data, _, error in
                            //: DispatchQueue.main.async {
                            DispatchQueue.main.async {
                                //: guard let data = data, error == nil, let image = UIImage(data: data) else {
                                guard let data = data, error == nil, let image = UIImage(data: data) else {
                                    //: self.setLiveRoomDammuCellData(danmuModel: model)
                                    self.renderPosition(danmuModel: model)
                                    //: return
                                    return
                                }
                                //: model.gift?.giftImg = image
                                model.gift?.giftImg = image
                                //: self.setLiveRoomDammuCellData(danmuModel: model)
                                self.renderPosition(danmuModel: model)
                            }
                            //: }.resume()
                        }.resume()
                    }
                }
                //: return
                return
            }
            //: if LocationThen.share.appStatus == AppSkinStatus.special.rawValue, model.MsgExtension == "MF:LiveChatPrizeMsg" {
            if LocationThen.share.appStatus == SharedInsetTarget.special.rawValue, model.MsgExtension == (String(kStr_textName.prefix(4)) + "iveCh" + String(kStr_listValue.prefix(8)) + String(kStr_makeSizeData)) {
                //: return
                return
            }

            //: setLiveRoomDammuCellData(danmuModel: model)
            renderPosition(danmuModel: model)
        }
    }

    //: private func setLiveRoomDammuCellData(danmuModel: TalkingLiveRoomDanmuModel) {
    private func renderPosition(danmuModel: BackgroundMeasurable) {
        //: var model = danmuModel
        var model = danmuModel
        //: let celldata = TalkingLiveRoomDammuCellData()
        let celldata = ImageThen()
        //: model = celldata.caculateMsgHeight(model: model)
        model = celldata.pathAction(model: model)
        //: celldata.actionUserBlock = { [weak self] atUid in
        celldata.actionUserBlock = { [weak self] atUid in
            //: guard let self = self else { return }
            guard let self = self else { return }
            //: self.delegate?.func__actionUserNewModel(pushUid: atUid)
            self.delegate?.towardClick(pushUid: atUid)
        }
        //: celldata.longUserBlock = { [weak self] atUid in
        celldata.longUserBlock = { [weak self] atUid in
            //: guard let self = self else { return }
            guard let self = self else { return }

            //: var uid = String(model.user?.uid ?? 0)
            var uid = String(model.user?.uid ?? 0)
            //: var name = model.user?.nickname ?? ""
            var name = model.user?.nickname ?? ""
            //: if atUid != nil, model.msgInfo?.jumps.count ?? 0 > 0, atUid != LocationThen.share.loginUserMode.userID, atUid != String(model.user?.uid ?? 0) {
            if atUid != nil, model.msgInfo?.jumps.count ?? 0 > 0, atUid != LocationThen.share.loginUserMode.userID, atUid != String(model.user?.uid ?? 0) {
                //: uid = atUid!
                uid = atUid!
                //: let text = model.msgInfo?.content ?? ""
                let text = model.msgInfo?.content ?? ""
                //: let regex = try! NSRegularExpression(pattern: "<at>@[\\S\\s]+?</at>", options: [])
                let regex = try! NSRegularExpression(pattern: (String(kStr_insideTitle.prefix(6)) + "\\S\\s]" + String(kStr_name) + String(kStr_aboutValue.prefix(6))), options: [])
                //: let result = regex.matches(in: text, options: [], range: NSRange(location: 0, length: text.utf16.count))
                let result = regex.matches(in: text, options: [], range: NSRange(location: 0, length: text.utf16.count))
                //: let matchRange = result.first?.range
                let matchRange = result.first?.range
                //: if matchRange?.length ?? 0 > 10 {
                if matchRange?.length ?? 0 > 10 {
                    //: let subStr = String.substringByUnicodeIndex(str: text, from: (matchRange?.location ?? 0) + 5, to: (matchRange?.length ?? 0) - 5)
                    let subStr = String.everyIndex(str: text, from: (matchRange?.location ?? 0) + 5, to: (matchRange?.length ?? 0) - 5)
                    //: name = subStr
                    name = subStr
                }
            }

            //: self.delegate?.func__longTouchUserNewModel(nickName: name, atUid: uid)
            self.delegate?.labelUid(nickName: name, atUid: uid)
        }

        //: delegate?.func__DanmuRecvNewModel(Msg: model)
        delegate?.viewMsg(Msg: model)
    }
}

//: extension TalkingDanmuManager {
extension FlipDanmuManager {
    /// 释放单利
    //: class func danmu_releaseAllResource() {
    class func noAt() {
        //: if TalkingDanmuManager._instance != nil {
        if FlipDanmuManager._instance != nil {
            //: TalkingDanmuManager._instance = nil
            FlipDanmuManager._instance = nil
        }
    }

    /// 加入直播弹幕
    //: class func joinLiveRoomDanmu(groupId: String, announcementMsg: String, completion: ((_ succeed: Bool) -> Void)? = nil) {
    class func lay(groupId: String, announcementMsg: String, completion: ((_ succeed: Bool) -> Void)? = nil) {
        //: V2TIMManager.sharedInstance().joinGroup(groupId, msg: nil) {
        V2TIMManager.sharedInstance().joinGroup(groupId, msg: nil) {
            //: printLog(message: "加入弹幕房间")
            pathLine(message: (kStr_toName))
            //: if announcementMsg.count > 0 {
            if announcementMsg.count > 0 {
                //: TalkingDanmuManager.shared().showAnnouncementMsg(str: announcementMsg)
                FlipDanmuManager.underObserver().finishVoice(str: announcementMsg)
            }
            //: completion?(true)
            completion?(true)

            //: } fail: { _, _ in
        } fail: { _, _ in
            //: if TalkingDanmuManager.shared().maxJoinRoom == 1 {
            if FlipDanmuManager.underObserver().maxJoinRoom == 1 {
                //: TalkingDanmuManager.shared().maxJoinRoom = 0
                FlipDanmuManager.underObserver().maxJoinRoom = 0
                //: joinLiveRoomDanmu(groupId: groupId, announcementMsg: "")
                lay(groupId: groupId, announcementMsg: "")
                //: } else {
            } else {
                //: TalkingDanmuManager.shared().func__showStatusBarErrorMsg(showMsg: "Failed to enter the chat room. Please try again later".localized)
                FlipDanmuManager.underObserver().detailDownArray(showMsg: String(bytes: kStr_bottomTitle.map{$0^173}, encoding: .utf8)!.localized)
            }
            //: completion?(false)
            completion?(false)
        }
    }

    /// 退出群聊弹幕
    //: class func qiutGroupDanmu(groupId: String, completion: ((_ succeed: Bool) -> Void)? = nil) {
    class func outStatus(groupId: String, completion: ((_ succeed: Bool) -> Void)? = nil) {
        //: V2TIMManager.sharedInstance().quitGroup(groupId, succ: {
        V2TIMManager.sharedInstance().quitGroup(groupId, succ: {
            //: completion?(true)
            completion?(true)
            //: }, fail: { _, _ in
        }, fail: { _, _ in
            //: completion?(false)
            completion?(false)
            //: })
        })
    }
}

// MARK: - 发送接口

//: extension TalkingDanmuManager {
extension FlipDanmuManager {
    /// 发送文本弹幕消息
    /// - Parameters:
    ///   - groupId: 弹幕群组id
    ///   - message: 消息内容
    ///   - toUid:   @用户的uid
    ///   - completion: 回调
    //: class func uploadToTextMsg(groupId: String, message: String, toUid: String? = "", completion: FinishBlock? = nil) {
    class func recordAlbum(groupId: String, message: String, toUid: String? = "", completion: FinishBlock? = nil) {
        //: let reqModel = TalkingRequestModel()
        let reqModel = SizeRequestModel()
        //: reqModel.requestPath = "live/sendMsg"
        reqModel.requestPath = (String(kStr_failureValue) + String(kStr_userMCountName))
        //: reqModel.requestType = .POST
        reqModel.requestType = .POST
        //: var dict = [String: Any]()
        var dict = [String: Any]()
        //: dict["groupId"] = groupId
        dict[(String(kStr_partyNameRightText) + String(kStr_countValue.prefix(2)))] = groupId
        //: dict["message"] = message
        dict[(String(kStr_collectionValue) + kStr_fewText.replacingOccurrences(of: "page", with: "g"))] = message
        //: if toUid?.count ?? 0 > 0 {
        if toUid?.count ?? 0 > 0 {
            //: dict["toUid"] = toUid
            dict[(String(kStr_errorTitle))] = toUid
        }
        //: reqModel.params = dict
        reqModel.params = dict
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        kLet_firstName.afterFailureCompletion(model: reqModel) { succeed, result, errorModel in
            //: completion?(succeed, result, errorModel)
            completion?(succeed, result, errorModel)
        }
    }

    /// 语聊房发送文本弹幕消息
    /// - Parameters:
    ///   - groupId: 弹幕群组id
    ///   - message: 消息内容
    ///   - toUid:   @用户的uid
    ///   - completion: 回调
    //: class func voiceRoomSendTextMsg(groupId: String, message: String, toUid: String? = "", completion: FinishBlock? = nil) {
    class func sprechgesangWithinCompletion(groupId: String, message: String, toUid: String? = "", completion: FinishBlock? = nil) {
        //: let reqModel = TalkingRequestModel()
        let reqModel = SizeRequestModel()
        //: reqModel.requestPath = "party/sendMsg"
        reqModel.requestPath = (String(kStr_blackToText) + kStr_turnData.replacingOccurrences(of: "player", with: "g"))
        //: reqModel.requestType = .POST
        reqModel.requestType = .POST
        //: var dict = [String: Any]()
        var dict = [String: Any]()
        //: dict["groupId"] = groupId
        dict[(String(kStr_partyNameRightText) + String(kStr_countValue.prefix(2)))] = groupId
        //: dict["message"] = message
        dict[(String(kStr_collectionValue) + kStr_fewText.replacingOccurrences(of: "page", with: "g"))] = message
        //: if toUid?.count ?? 0 > 0 {
        if toUid?.count ?? 0 > 0 {
            //: dict["toUid"] = toUid
            dict[(String(kStr_errorTitle))] = toUid
        }
        //: reqModel.params = dict
        reqModel.params = dict
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        kLet_firstName.afterFailureCompletion(model: reqModel) { succeed, result, errorModel in
            //: completion?(succeed, result, errorModel)
            completion?(succeed, result, errorModel)
        }
    }
}
