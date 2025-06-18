
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let kStr_modeValue:[UInt8] = [0x57,0x50,0x57,0x4a,0x16,0x5d,0x51,0x5a,0x5b,0x4c,0x4,0x17,0x1e,0x56,0x5f,0x4d,0x1e,0x50,0x51,0x4a,0x1e,0x5c,0x5b,0x5b,0x50,0x1e,0x57,0x53,0x4e,0x52,0x5b,0x53,0x5b,0x50,0x4a,0x5b,0x5a]

/*: "System notification" :*/
fileprivate let kStr_renderValue:[Character] = ["S","y","s","t","e","m"," ","n","o","t"]
fileprivate let kStr_nowValue:String = "hiddenfhiddenca"

/*: "http://static. :*/
fileprivate let kStr_liveData:[Character] = ["h","t","t","p",":","/","/","s","t","a"]
fileprivate let kStr_mediaData:String = "tic.type equal"

/*: .com/app/img/message/xitong-v2.png" :*/
fileprivate let kStr_tableData:[UInt8] = [0xed,0xa0,0xac,0xae,0xec,0xa2,0xb3,0xb3,0xec,0xaa,0xae,0xa4,0xec,0xae,0xa6,0xb0,0xb0,0xa2,0xa4,0xa6,0xec,0xbb,0xaa,0xb7,0xac,0xad,0xa4,0xee,0xb5,0xf1,0xed,0xb3,0xad,0xa4]

/*: "Customer Care Center" :*/
fileprivate let kStr_overValue:String = "remote hiddenCust"
fileprivate let kStr_replyValue:String = "Care true ting"

/*: .com/app/img/message/cs.png" :*/
fileprivate let kStr_viewValue:[Character] = [".","c","o","m","/","a","p","p","/","i","m","g"]
fileprivate let kStr_leadingTitle:String = "count item var info/mess"
fileprivate let kStr_colorData:String = "pic from in equalcs.png"

/*: "Public Chat Room" :*/
fileprivate let kStr_mainName:String = "if count talk viewPublic"
fileprivate let kStr_panText:String = "model"
fileprivate let kStr_bottomScreenData:String = "not color index let Room"

/*: "icon_chats_pcr" :*/
fileprivate let kStr_warningTitle:[Character] = ["i","c","o","n","_"]
fileprivate let kStr_photoValue:[Character] = ["c","h","a","t","s","_","p","c","r"]

/*: "New friends" :*/
fileprivate let kStr_cellValue:[Character] = ["N"]
fileprivate let kStr_toValue:[Character] = ["e","w"," ","f","r","i","e","n","d","s"]

/*: "icon_chats_mm" :*/
fileprivate let kStr_bubblePathTitle:[Character] = ["i","c","o","n","_","c","h","a"]
fileprivate let kStr_keyName:String = "ts_mmdata view self app"

/*: " customElem.data is error" :*/
fileprivate let kStr_succeedTitle:String = " custwhite name value appear manager"
fileprivate let kStr_plusQuoteName:String = "m.data var message a"
fileprivate let kStr_normalValue:String = "is emake in selected error"

/*: "extra" :*/
fileprivate let kStr_userName:[Character] = ["e","x","t","r","a"]

/*: "msgInfo" :*/
fileprivate let kStr_stopPathName:String = "msgInfoinput function succeed"

/*: "messageType" :*/
fileprivate let kStr_cornerData:String = "customss"
fileprivate let kStr_modeName:[Character] = ["a","g","e","T","y","p","e"]

/*: "msgType" :*/
fileprivate let kStr_changeValue:String = "msgTypelet string app let voice"

/*: "tips" :*/
fileprivate let kStr_resultName:String = "TIPS"

/*: "totalIntimate" :*/
fileprivate let kStr_topText:String = "totalocation"
fileprivate let kStr_infoData:String = "atmake"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  ViewConversationModel.swift
//  AbroadTalking
//
//  Created by Hemming on 2023/3/9.
//

//: import UIKit
import UIKit

//: public class TalkingConversationModel: NSObject {
public class ViewConversationModel: NSObject {
    //: var type: V2TIMConversationType?
    var type: V2TIMConversationType?
    //: var userID = ""         // 如果会话类型为 C2C 单聊，userID 会存储对方的用户ID，否则为 ni
    var userID = "" // 如果会话类型为 C2C 单聊，userID 会存储对方的用户ID，否则为 ni
    //: var sender = ""         // 消息发送者ID
    var sender = "" // 消息发送者ID
    //: var groupID = ""        // 如果会话类型为群聊，groupID 会存储当前群的群 ID，否则为 nil
    var groupID = "" // 如果会话类型为群聊，groupID 会存储当前群的群 ID，否则为 nil
    //: var groupType = ""      // 如果会话类型为群聊，groupType 为当前群类型
    var groupType = "" // 如果会话类型为群聊，groupType 为当前群类型
    //: var targetId = ""
    var targetId = ""
    //: var conversationID = "" // 会话唯一 ID，C2C 单聊组成方式为 c2c_userID，群聊组成方式为 group_groupID
    var conversationID = "" // 会话唯一 ID，C2C 单聊组成方式为 c2c_userID，群聊组成方式为 group_groupID

    //: var showName = ""
    var showName = ""
    //: var faceUrl = ""
    var faceUrl = ""
    //: var unreadCount: Int = 0
    var unreadCount: Int = 0 // 未读数
    //: var orderKey: Int = 0
    var orderKey: Int = 0 // 排序
    //: var isPinned = false
    var isPinned = false // 是否置顶
    //: var isShowMsgUnread = false
    var isShowMsgUnread = false // 会话中最后一条消息是否未读

    //: var draftText = ""      // 草稿信息
    var draftText = "" // 草稿信息
    //: var draftTimestamp: NSDate?
    var draftTimestamp: NSDate? // 草稿编辑时间，草稿设置的时候自动生成

    //: var onlyOneRoomId = "" // 聊天室ID,如果只有一个聊天室，则返回此字段
    var onlyOneRoomId = "" // 聊天室ID,如果只有一个聊天室，则返回此字段
    //: var num = 0
    var num = 0 // 聊天室当前在线人数

    //: var hasTimestamp = false
    var hasTimestamp = false // swift 解包
    //: var timestamp: NSDate?
    var timestamp: NSDate? // 会话中最后一条消息的时间
    //: var listShowMessage: V2TIMMessage?
    var listShowMessage: V2TIMMessage? // 最后一条消息
    //: var gj_userInfo: FailureReactiveCompatible?
    var gj_userInfo: FailureReactiveCompatible? // 用户信息
    //: var chatType: TalkingIMChatType = .unDefined
    var chatType: TalkingIMChatType = .unDefined
    //: var listOnlineStatus = 0
    var listOnlineStatus = 0 // 记录是否在线;1=在线,0=不在线（自定义字段）
    //: var isNewUser = false
    var isNewUser = false // 表示是否是新用户（自定义字段）
    //: var ismoreAPAuto = false
    var ismoreAPAuto = false // 更多会话认证
    //: var totalIntimate = 0
    var totalIntimate = 0 // 与当前用户的亲密值
    //: var userStatus    = 1
    var userStatus = 1 // 用户状态  1正常2被禁言3被封号5被拉黑

    //: override init() {
    override init() {
        //: super.init()
        super.init()
    }

    //: init(conv: V2TIMConversation) {
    init(conv: V2TIMConversation) {
        //: super.init()
        super.init()
        //: self.type = conv.type
        self.type = conv.type
        //: self.userID     = conv.userID ?? ""
        self.userID = conv.userID ?? ""
        //: self.sender     = conv.lastMessage?.sender ?? ""
        self.sender = conv.lastMessage?.sender ?? ""
        //: self.groupID    = conv.groupID ?? ""
        self.groupID = conv.groupID ?? ""
        //: self.groupType  = conv.groupType ?? ""
        self.groupType = conv.groupType ?? ""
        //: self.targetId   = self.userID.count > 0 ? self.userID:self.groupID
        self.targetId = self.userID.count > 0 ? self.userID : self.groupID
        //: self.conversationID = conv.conversationID
        self.conversationID = conv.conversationID
        //: self.showName = conv.showName
        self.showName = conv.showName
        //: self.faceUrl = conv.faceUrl ?? ""
        self.faceUrl = conv.faceUrl ?? ""
        //: self.unreadCount = Int(conv.unreadCount)
        self.unreadCount = Int(conv.unreadCount)
        //: self.orderKey = Int(conv.orderKey)
        self.orderKey = Int(conv.orderKey)
        //: self.isPinned = conv.isPinned
        self.isPinned = conv.isPinned
        //: if conv.lastMessage?.timestamp != nil {
        if conv.lastMessage?.timestamp != nil {
            //: self.hasTimestamp = true
            self.hasTimestamp = true
            //: self.timestamp = conv.lastMessage?.timestamp as NSDate?
            self.timestamp = conv.lastMessage?.timestamp as NSDate?
        }
        //: self.draftText = conv.draftText ?? ""
        self.draftText = conv.draftText ?? ""
        //: self.isShowMsgUnread = (!(conv.lastMessage?.isSelf ?? true) && conv.unreadCount > 0)
        self.isShowMsgUnread = (!(conv.lastMessage?.isSelf ?? true) && conv.unreadCount > 0)
        //: if conv.type == .C2C {
        if conv.type == .C2C {
            //: self.chatType = .private
            self.chatType = .private
            //: if conv.userID == TableMacroDefine.getXiaoMiID() {
            if conv.userID == TableMacroDefine.toVoice() {
                //: self.chatType = .system
                self.chatType = .system
                //: } else if conv.userID == TableMacroDefine.getCustomerServiceID() {
            } else if conv.userID == TableMacroDefine.isothermal() {
                //: self.chatType = .service
                self.chatType = .service
            }

            //: } else {
        } else {
            //: self.chatType = .group
            self.chatType = .group
        }
        //: if conv.lastMessage != nil {
        if conv.lastMessage != nil {
            //: if self.func__checkMsgCanShow(msg: conv.lastMessage) {
            if self.checkVideo(msg: conv.lastMessage) {
                //: self.listShowMessage = conv.lastMessage
                self.listShowMessage = conv.lastMessage
            }
        }
        //: if self.listShowMessage != nil {
        if self.listShowMessage != nil {
            //: self.func__updateLastShowMsg()
            self.withMsg()
        }
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: kStr_modeValue.map{$0^62}, encoding: .utf8)!)
    }
}

// MARK: - 获取占位model

//: extension TalkingConversationModel {
extension ViewConversationModel {
    /// 获取占位model
    /// - Parameter chatType: model类型
    /// - Returns: model
    //: class func getPlaceholderModel(chatType: TalkingIMChatType) -> TalkingConversationModel {
    class func packet(chatType: TalkingIMChatType) -> ViewConversationModel {
        //: let model = TalkingConversationModel()
        let model = ViewConversationModel()
        //: model.chatType = chatType
        model.chatType = chatType
        //: if chatType == .system {
        if chatType == .system { // 系统通知
            //: model.userID = TableMacroDefine.getXiaoMiID()
            model.userID = TableMacroDefine.toVoice()
            //: model.targetId = TableMacroDefine.getXiaoMiID()
            model.targetId = TableMacroDefine.toVoice()
            //: model.showName = "System notification".localized
            model.showName = (String(kStr_renderValue) + kStr_nowValue.replacingOccurrences(of: "hidden", with: "i") + "tion").localized
            //: model.faceUrl = "http://static.\(ReplaceUrlDomain).com/app/img/message/xitong-v2.png"
            model.faceUrl = (String(kStr_liveData) + String(kStr_mediaData.prefix(4))) + "\(kLet_priceName)" + String(bytes: kStr_tableData.map{$0^195}, encoding: .utf8)!

            //: } else if chatType == .service {
        } else if chatType == .service { // 官方客服
            //: model.userID = TableMacroDefine.getCustomerServiceID()
            model.userID = TableMacroDefine.isothermal()
            //: model.targetId = TableMacroDefine.getCustomerServiceID()
            model.targetId = TableMacroDefine.isothermal()
            //: model.showName = "Customer Care Center".localized
            model.showName = (String(kStr_overValue.suffix(4)) + "omer " + String(kStr_replyValue.prefix(5)) + "Center").localized
            //: model.faceUrl = "http://static.\(ReplaceUrlDomain).com/app/img/message/cs.png"
            model.faceUrl = (String(kStr_liveData) + String(kStr_mediaData.prefix(4))) + "\(kLet_priceName)" + (String(kStr_viewValue) + String(kStr_leadingTitle.suffix(5)) + "age/" + String(kStr_colorData.suffix(6)))

            //: } else if chatType == .group {
        } else if chatType == .group { // 公共聊天室
            //: model.showName = "Public Chat Room".localized
            model.showName = (String(kStr_mainName.suffix(6)) + " Cha" + kStr_panText.replacingOccurrences(of: "model", with: "t") + String(kStr_bottomScreenData.suffix(5))).localized
            //: model.faceUrl = "icon_chats_pcr"
            model.faceUrl = (String(kStr_warningTitle) + String(kStr_photoValue))

            //: } else if chatType == .moreMsg {
        } else if chatType == .moreMsg { // 更多消息
            //: model.showName = "New friends".localized
            model.showName = (String(kStr_cellValue) + String(kStr_toValue)).localized
            //: model.faceUrl = "icon_chats_mm"
            model.faceUrl = (String(kStr_bubblePathTitle) + String(kStr_keyName.prefix(5)))
        }

        //: return model
        return model
    }
}

//: extension TalkingConversationModel {
extension ViewConversationModel {
    //: func func__updateLastShowMsg() {
    func withMsg() {
        //: if self.type == .C2C {
        if self.type == .C2C {
            //: V2TIMManager.sharedInstance().getC2CHistoryMessageList(self.userID, count: 10, lastMsg: nil) { msgs in
            V2TIMManager.sharedInstance().getC2CHistoryMessageList(self.userID, count: 10, lastMsg: nil) { msgs in
                //: guard let msgsList: [V2TIMMessage] = msgs  else {
                guard let msgsList: [V2TIMMessage] = msgs else {
                    //: return
                    return
                }
                //: for msg in msgsList {
                for msg in msgsList {
                    //: if self.func__checkMsgCanShow(msg: msg) {
                    if self.checkVideo(msg: msg) {
                        //: self.listShowMessage = msg
                        self.listShowMessage = msg
                        //: if msg.timestamp != nil {
                        if msg.timestamp != nil {
                            //: self.timestamp = msg.timestamp as NSDate?
                            self.timestamp = msg.timestamp as NSDate?
                            //: self.hasTimestamp = true
                            self.hasTimestamp = true
                        }
                        //: self.isShowMsgUnread = (!msg.isSelf && !msg.isRead)
                        self.isShowMsgUnread = (!msg.isSelf && !msg.isRead)
                        //: break
                        break
                    }
                }
                //: } fail: { code, des in
            } fail: { _, _ in
            }
            //: } else {
        } else {
            //: V2TIMManager.sharedInstance().getGroupHistoryMessageList(self.groupID, count: 10, lastMsg: nil) { msgs in
            V2TIMManager.sharedInstance().getGroupHistoryMessageList(self.groupID, count: 10, lastMsg: nil) { msgs in
                //: guard let msgsList: [V2TIMMessage] = msgs  else {
                guard let msgsList: [V2TIMMessage] = msgs else {
                    //: return
                    return
                }
                //: for msg in msgsList {
                for msg in msgsList {
                    //: if self.func__checkMsgCanShow(msg: msg) {
                    if self.checkVideo(msg: msg) {
                        //: self.listShowMessage = msg
                        self.listShowMessage = msg
                        //: if msg.timestamp != nil {
                        if msg.timestamp != nil {
                            //: self.timestamp = msg.timestamp as NSDate?
                            self.timestamp = msg.timestamp as NSDate?
                            //: self.hasTimestamp = true
                            self.hasTimestamp = true
                        }
                        //: self.isShowMsgUnread = (!msg.isSelf && !msg.isRead)
                        self.isShowMsgUnread = (!msg.isSelf && !msg.isRead)
                        //: break
                        break
                    }
                }
                //: } fail: { code, des in
            } fail: { _, _ in
            }
        }
    }

    //: func func__checkMsgCanShow(msg: V2TIMMessage) -> Bool {
    func checkVideo(msg: V2TIMMessage) -> Bool {
        //: guard let extra = String(data: msg.customElem.data, encoding: .utf8) else {
        guard let extra = String(data: msg.customElem.data, encoding: .utf8) else {
            //: printLog(message: " customElem.data is error")
            pathLine(message: (String(kStr_succeedTitle.prefix(5)) + "omEle" + String(kStr_plusQuoteName.prefix(7)) + String(kStr_normalValue.prefix(4)) + "rror"))
            //: return false
            return false
        }
        //: let json = JSON(parseJSON: extra)
        let json = JSON(parseJSON: extra)
        //: let extraDic = json["extra"]
        let extraDic = json[(String(kStr_userName))]
        //: let msgInfo = extraDic["msgInfo"]
        let msgInfo = extraDic[(String(kStr_stopPathName.prefix(7)))]
        //: var messageType = extraDic["messageType"].intValue
        var messageType = extraDic[(kStr_cornerData.replacingOccurrences(of: "custom", with: "me") + String(kStr_modeName))].intValue
        //: let msgType = msgInfo["msgType"].stringValue
        let msgType = msgInfo[(String(kStr_changeValue.prefix(7)))].stringValue
        //: if messageType == 0 {
        if messageType == 0 {
            //: messageType = msgInfo["messageType"].intValue
            messageType = msgInfo[(kStr_cornerData.replacingOccurrences(of: "custom", with: "me") + String(kStr_modeName))].intValue
        }
        //: if (!msgType.isEmptyString && msgType == "tips") || messageType == 15 || messageType == 17 {
        if (!msgType.isEmptyString && msgType == (kStr_resultName.lowercased())) || messageType == 15 || messageType == 17 {
            //: return false
            return false
        }
        //: return true
        return true
    }

    //: func func__updateLastConvModel(conv: V2TIMConversation) {
    func playListConv(conv: V2TIMConversation) {
        //: self.draftText = conv.draftText ?? ""
        self.draftText = conv.draftText ?? ""
        //: self.orderKey = Int(conv.orderKey)
        self.orderKey = Int(conv.orderKey)
        //: self.unreadCount = Int(conv.unreadCount)
        self.unreadCount = Int(conv.unreadCount)

        //: if conv.lastMessage != nil {
        if conv.lastMessage != nil {
            //: if self.func__checkMsgCanShow(msg: conv.lastMessage) {
            if self.checkVideo(msg: conv.lastMessage) {
                //: self.listShowMessage = conv.lastMessage
                self.listShowMessage = conv.lastMessage
                //: if conv.lastMessage.timestamp != nil {
                if conv.lastMessage.timestamp != nil {
                    //: self.timestamp = conv.lastMessage.timestamp as NSDate?
                    self.timestamp = conv.lastMessage.timestamp as NSDate?
                    //: self.hasTimestamp = true
                    self.hasTimestamp = true
                }
                //: self.sender = conv.lastMessage.sender
                self.sender = conv.lastMessage.sender
                //: self.isShowMsgUnread = (!conv.lastMessage.isSelf && conv.unreadCount > 0)
                self.isShowMsgUnread = (!conv.lastMessage.isSelf && conv.unreadCount > 0)
                //: self.updateIntimateTool(conv: conv)
                self.sizeFrom(conv: conv)
                //: } else {
            } else {
                //: self.func__updateLastShowMsg()
                self.withMsg()
            }
        }
    }
}

/// 亲密度
//: extension TalkingConversationModel {
extension ViewConversationModel {
    //: private func updateIntimateTool(conv: V2TIMConversation) {
    private func sizeFrom(conv: V2TIMConversation) {
        /// 新消息会话变更时，获取亲密度
        //: let data = conv.lastMessage!
        let data = conv.lastMessage!
        //: let dic = TUIMsgChatManager.parseTXMessageData(data: data.customElem.data)
        let dic = TUIMsgChatManager.parseTXMessageData(data: data.customElem.data)
        //: let jsonDic = JSON(dic)
        let jsonDic = JSON(dic)
        //: let extra = jsonDic["extra"].dictionary
        let extra = jsonDic[(String(kStr_userName))].dictionary
        //: let msgInfo = extra?["msgInfo"]?.dictionary
        let msgInfo = extra?[(String(kStr_stopPathName.prefix(7)))]?.dictionary
        //: if let totalIntimate = msgInfo?["totalIntimate"]?.int {
        if let totalIntimate = msgInfo?[(kStr_topText.replacingOccurrences(of: "location", with: "l") + "Intim" + kStr_infoData.replacingOccurrences(of: "make", with: "e"))]?.int {
            //: if let model = ExamineedReactiveCompatible.cache_getCachedUserInfo(targetId: self.userID) {
            if let model = ExamineedReactiveCompatible.belowStart(targetId: self.userID) {
                /// 获取消息为最新时
                //: let time = Int(data.timestamp.timeIntervalSince1970)
                let time = Int(data.timestamp.timeIntervalSince1970)
                //: if time > model.intimateTime {
                if time > model.intimateTime {
                    //: self.totalIntimate = totalIntimate
                    self.totalIntimate = totalIntimate
                    /// 更新
                    //: ExamineedReactiveCompatible.cache_updateIntimate(with: userID, intimate: totalIntimate, currTime: time)
                    ExamineedReactiveCompatible.addPosition(with: userID, intimate: totalIntimate, currTime: time)
                    //: } else {
                } else {
                    //: self.totalIntimate = model.intimate
                    self.totalIntimate = model.intimate
                }
                //: } else {
            } else {
                //: self.totalIntimate = totalIntimate
                self.totalIntimate = totalIntimate
            }
        }
    }
}
