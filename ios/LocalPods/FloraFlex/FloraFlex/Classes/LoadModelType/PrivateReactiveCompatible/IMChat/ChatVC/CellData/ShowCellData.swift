
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let kStr_finishInviteData:[UInt8] = [0x1,0x6,0x1,0x1c,0x40,0xb,0x7,0xc,0xd,0x1a,0x52,0x41,0x48,0x0,0x9,0x1b,0x48,0x6,0x7,0x1c,0x48,0xa,0xd,0xd,0x6,0x48,0x1,0x5,0x18,0x4,0xd,0x5,0xd,0x6,0x1c,0xd,0xc]

private func indexInfo(start num: UInt8) -> UInt8 {
    return num ^ 104
}

/*: "[未知消息]" :*/
fileprivate let kStr_viewValue:String = "manager"
fileprivate let kStr_leadingData:String = "未知消\u{606f}]"

/*: "extra" :*/
fileprivate let kStr_noName:String = "excolora"

/*: "rYMsgType" :*/
fileprivate let kStr_countInsideData:String = "live poprYMsgType"

/*: "GJ:CallCustom" :*/
fileprivate let kStr_playerPlaceLetTitle:[Character] = ["G","J",":"]
fileprivate let kStr_applicationName:[Character] = ["C","a","l","l","C","u","s","t","o","m"]

/*: "stopCall" :*/
fileprivate let kStr_giftHeadValue:[Character] = ["s","t","o","p","C","a","l","l"]

/*: "#FF5A4D" :*/
fileprivate let kStr_styleTitle:String = "index size make record#FF5A"
fileprivate let kStr_colorValue:String = "4Dcontent true title sign"

/*: "msgInfo" :*/
fileprivate let kStr_hiddenName:[Character] = ["m","s","g","I","n"]
fileprivate let kStr_sexData:String = "fmargin"

/*: "logType" :*/
fileprivate let kStr_toTitle:String = "lface"
fileprivate let kStr_resultNameData:[Character] = ["g","T","y","p","e"]

/*: "  " :*/
fileprivate let kStr_centerText:String = "titletitle"

/*: "jumps" :*/
fileprivate let kStr_upValue:String = "jumpapp"

/*: "jumpKey" :*/
fileprivate let kStr_textName:String = "jumpKeelse table user"
fileprivate let kStr_viewTitle:[Character] = ["y"]

/*: "chat_video_me" :*/
fileprivate let kStr_removeValue:[UInt8] = [0xd1,0xd6,0xcf,0xe2,0xcd,0xe4,0xd7,0xd2,0xd3,0xdd,0xcd,0xdb,0xd3]

fileprivate func sharedMake(model num: UInt8) -> UInt8 {
    let value = Int(num) - 110
    if value < 0 {
        return UInt8(value + 256)
    } else {
        return UInt8(value)
    }
}

/*: "chat_voice_me" :*/
fileprivate let kStr_managerShareData:String = "chat_voclear color"
fileprivate let kStr_popVideoValue:String = "name labice_me"

/*: "chat_video_call" :*/
fileprivate let kStr_directionData:[UInt8] = [0xf0,0xfb,0xf2,0xe7,0xcc,0xe5,0xfa,0xf7,0xf6,0xfc,0xcc,0xf0,0xf2,0xff,0xff]

private func birthFinish(awake num: UInt8) -> UInt8 {
    return num ^ 147
}

/*: "chat_voice_call" :*/
fileprivate let kStr_effectValue:String = "chtarget"
fileprivate let kStr_downName:String = "model model storme_call"

/*: "chat_video_cancel" :*/
fileprivate let kStr_textQueryValue:[UInt8] = [0xfb,0x0,0xf9,0xc,0xf7,0xe,0x1,0xfc,0xfd,0x7,0xf7,0xfb,0xf9,0x6,0xfb,0xfd,0x4]

fileprivate func labColor(back num: UInt8) -> UInt8 {
    let value = Int(num) + 104
    if value > 255 {
        return UInt8(value - 256)
    } else {
        return UInt8(value)
    }
}

/*: "chat_voice_cancel" :*/
fileprivate let kStr_equalValue:String = "chat_view model"
fileprivate let kStr_listData:String = "lab app of_can"
fileprivate let kStr_clickValue:String = "keyl"

/*: "#16D073" :*/
fileprivate let kStr_targetToData:[Character] = ["#","1","6","D","0","7","3"]

/*: "#F95644" :*/
fileprivate let kStr_fileText:[Character] = ["#","F","9","5","6","4","4"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  ShowCellData.swift
//  AbroadTalking
//
//  Created by Hemming on 2023/3/2.
//

//: import UIKit
import UIKit

//: @objcMembers public class ShowCellData: TalkingChatMsgBaseCellData {
@objcMembers public class ShowCellData: TalkingLoadCollectionThen {
    //: var textColor: UIColor?
    var textColor: UIColor?
    //: let textFont = UIFont.messageDown(fontSize: 16)
    let textFont = UIFont.messageDown(fontSize: 16)
    //: var textSize = CGSize.zero
    var textSize = CGSize.zero
    //: var textOrigin = CGPoint.zero
    var textOrigin = CGPoint.zero
    //: var quoteSize = CGSize.zero
    var quoteSize = CGSize.zero

    //: var transTextSize = CGSize.zero
    var transTextSize = CGSize.zero
    //: var isVoiceVideo = false
    var isVoiceVideo = false
    /// 获取翻译内容富文本（get）
    //: var transAttrString: NSMutableAttributedString {
    var transAttrString: NSMutableAttributedString {
        //: let attr = formatTextTransMsgString()
        let attr = compartment()
        //: return attr
        return attr
    }

    //: @objc public var hasJump = false
    public var hasJump = false
    //: @objc public var contentStr: String?
    public var contentStr: String?

    //: override public init(direction: TMsgDirection) {
    override public init(direction: TMsgDirection) {
        //: super.init(direction: direction)
        super.init(direction: direction)
        //: if direction == .MsgDirectionIncoming {
        if direction == .MsgDirectionIncoming {
            //: textColor = UIColor.appTitleColor()
            textColor = UIColor.dataFormat()
            //: } else {
        } else {
            //: textColor = UIColor.white
            textColor = UIColor.white
        }
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: kStr_finishInviteData.map{indexInfo(start: $0)}, encoding: .utf8)!)
    }

    //: public override var msgModel: KeyModel {
    override public var msgModel: KeyModel {
        //: get {
        get {
            //: return super.msgModel
            return super.msgModel
        }
        //: set {
        set {
            //: super.msgModel = newValue
            super.msgModel = newValue
            //: if newValue.msgInfo.content.isEmptyString {
            if newValue.msgInfo.content.isEmptyString {
                //: contentStr = "[未知消息]"
                contentStr = (kStr_viewValue.replacingOccurrences(of: "manager", with: "[") + kStr_leadingData)
                //: } else {
            } else {
                //: contentStr = newValue.msgInfo.content
                contentStr = newValue.msgInfo.content
            }
        }
    }

    //: public override func contentSize() -> CGSize {
    override public func contentSize() -> CGSize {
        //: let maxWidth = ScreenWidth - (25 + self.cellLayout.avatarSize.width) * 2 - 44
        let maxWidth = kLet_halfData - (25 + self.cellLayout.avatarSize.width) * 2 - 44

        //: if self.msgModel.quoteMsgInfo.isQuoteMsg() {
        if self.msgModel.quoteMsgInfo.to() {
            //: self.quoteSize = self.msgModel.quoteMsgInfo.quoteSize(Int(maxWidth - 20))
            self.quoteSize = self.msgModel.quoteMsgInfo.distanceSize(Int(maxWidth - 20))
        }

        //: let yyLayout = YYTextLayout.init(containerSize: CGSize(width: maxWidth - 20, height: CGFLOAT_MAX), text: self.contentAttrString)
        let yyLayout = YYTextLayout(containerSize: CGSize(width: maxWidth - 20, height: CGFLOAT_MAX), text: self.contentAttrString)
        //: let yySize = yyLayout?.textBoundingSize ?? .zero
        let yySize = yyLayout?.textBoundingSize ?? .zero
        //: var temTextSize = CGSize(width:  ceil(yySize.width), height: ceil(yySize.height))
        var temTextSize = CGSize(width: ceil(yySize.width), height: ceil(yySize.height))
        //: self.textSize = temTextSize
        self.textSize = temTextSize

        //: self.textOrigin = CGPoint(x: self.cellLayout.bubbleInsets.left, y: self.cellLayout.bubbleInsets.top + self.quoteSize.height + (self.quoteSize.height > 0 ? 6:0))
        self.textOrigin = CGPoint(x: self.cellLayout.bubbleInsets.left, y: self.cellLayout.bubbleInsets.top + self.quoteSize.height + (self.quoteSize.height > 0 ? 6 : 0))

        //: if self.translateStatus != .MsgTranslate_init {
        if self.translateStatus != .MsgTranslate_init {
            //: let yyLayout = YYTextLayout.init(containerSize: CGSize(width: maxWidth-20, height: CGFLOAT_MAX), text: self.transAttrString)
            let yyLayout = YYTextLayout(containerSize: CGSize(width: maxWidth - 20, height: CGFLOAT_MAX), text: self.transAttrString)
            //: let transTextSize = yyLayout?.textBoundingRect.size ?? CGSize.zero
            let transTextSize = yyLayout?.textBoundingRect.size ?? CGSize.zero
            //: self.transTextSize = transTextSize
            self.transTextSize = transTextSize
        }

        //: temTextSize.width = max(temTextSize.width, self.quoteSize.width)
        temTextSize.width = max(temTextSize.width, self.quoteSize.width)

        //: temTextSize.height += self.cellLayout.bubbleInsets.top + self.cellLayout.bubbleInsets.bottom + self.quoteSize.height +  (self.quoteSize.height > 0 ? 6:0)
        temTextSize.height += self.cellLayout.bubbleInsets.top + self.cellLayout.bubbleInsets.bottom + self.quoteSize.height + (self.quoteSize.height > 0 ? 6 : 0)
        //: temTextSize.width += self.cellLayout.bubbleInsets.left+self.cellLayout.bubbleInsets.right
        temTextSize.width += self.cellLayout.bubbleInsets.left + self.cellLayout.bubbleInsets.right

        //: return CGSize(width: max(60, temTextSize.width), height: temTextSize.height)
        return CGSize(width: max(60, temTextSize.width), height: temTextSize.height)
    }

    //: public override func height(ofWidth width: CGFloat) -> CGFloat {
    override public func height(ofWidth _: CGFloat) -> CGFloat {
        //: var cellHeight = self.cellLayout.messageInsets.top
        var cellHeight = self.cellLayout.messageInsets.top // 气泡与顶部的距离

        //: let containerSize = self.contentSize()
        let containerSize = self.contentSize() // 实际气泡的高度
        //: cellHeight += containerSize.height
        cellHeight += containerSize.height
        //: cellHeight += self.cellLayout.messageInsets.bottom
        cellHeight += self.cellLayout.messageInsets.bottom // 气泡与底部的距离

        //: if self.transTextSize.height > 0 {
        if self.transTextSize.height > 0 {
            //: cellHeight += (self.transTextSize.height + 10)
            cellHeight += (self.transTextSize.height + 10)
        }

        //: if self.msgIncome > 0 {
        if self.msgIncome > 0 { // 有收益
            //: cellHeight += 15
            cellHeight += 15
        }
        // 判断是否展示未回复付费消息提示
        //: if TalkingPrivateChatManager.needShowReplyTipsMessage(self.direction,
        if FillPathChatManager.information(self.direction,
                                                 //: msgType: self.messageType,
                                                 msgType: self.messageType,
                                                 //: msgTime: self.innerMessage.timestamp) {
                                                 msgTime: self.innerMessage.timestamp)
        {
            //: cellHeight += 20
            cellHeight += 20
        }

        //: return max(65, cellHeight)
        return max(65, cellHeight)
    }

    //: public lazy var contentAttrString: NSMutableAttributedString = {
    public lazy var contentAttrString: NSMutableAttributedString = {
        //: let attr = formatTextMsgString(msgInfoModel: self.msgModel.msgInfo)
        let attr = shouldModel(msgInfoModel: self.msgModel.msgInfo)
        //: return attr
        return attr
        //: }()
    }()

    //: func formatTextMsgString(msgInfoModel: LabelOffAimChromosphereJsonModel) -> NSMutableAttributedString {
    func shouldModel(msgInfoModel: LabelOffAimChromosphereJsonModel) -> NSMutableAttributedString {
        //: if msgInfoModel.content.isEmptyString {
        if msgInfoModel.content.isEmptyString {
            //: return NSMutableAttributedString.init(string: "")
            return NSMutableAttributedString(string: "")
        }

        //: let dic = TUIMsgChatManager.parseTXMessageData(data: self.innerMessage.customElem.data)
        let dic = TUIMsgChatManager.parseTXMessageData(data: self.innerMessage.customElem.data)
        //: guard let extraDic = dic["extra"] as? Dictionary<String, Any> else {
        guard let extraDic = dic[(kStr_noName.replacingOccurrences(of: "color", with: "tr"))] as? [String: Any] else {
            //: return NSMutableAttributedString.init(string: "")
            return NSMutableAttributedString(string: "")
        }

        // 创建富文本
        //: let attributes: [NSAttributedString.Key: Any] = [
        let attributes: [NSAttributedString.Key: Any] = [
            //: .font: UIFont.messageDown(fontSize: 16),
            .font: UIFont.messageDown(fontSize: 16),
            //: .foregroundColor: self.direction == .MsgDirectionIncoming ? UIColor.appTitleColor() : UIColor.white
            .foregroundColor: self.direction == .MsgDirectionIncoming ? UIColor.dataFormat() : UIColor.white,
        ]
        //: let attr = NSMutableAttributedString(string: msgInfoModel.content, attributes: attributes)
        let attr = NSMutableAttributedString(string: msgInfoModel.content, attributes: attributes)

        // 音视频通话更改颜色
        //: if self.direction == .MsgDirectionIncoming &&
        if self.direction == .MsgDirectionIncoming &&
            //: dic["rYMsgType"] as? String == "GJ:CallCustom" &&
            dic[(String(kStr_countInsideData.suffix(9)))] as? String == (String(kStr_playerPlaceLetTitle) + String(kStr_applicationName)) &&
            //: msgInfoModel.callCmd != "stopCall" {
            msgInfoModel.callCmd != (String(kStr_giftHeadValue))
        {
            //: attr.addAttribute(.foregroundColor, value: UIColor(hex: "#FF5A4D")!, range: NSRange(location: 0, length: attr.length))
            attr.addAttribute(.foregroundColor, value: UIColor(hex: (String(kStr_styleTitle.suffix(5)) + String(kStr_colorValue.prefix(2))))!, range: NSRange(location: 0, length: attr.length))
        }

        // 音视频通话添加icon
        //: if  dic["rYMsgType"] as? String == "GJ:CallCustom" {
        if dic[(String(kStr_countInsideData.suffix(9)))] as? String == (String(kStr_playerPlaceLetTitle) + String(kStr_applicationName)) {
            //: isVoiceVideo = true
            isVoiceVideo = true
            //: var isVideoChat = true
            var isVideoChat = true
            //: let extraDic = dic["extra"] as? Dictionary<String, Any> ??  Dictionary<String, Any>.init()
            let extraDic = dic[(kStr_noName.replacingOccurrences(of: "color", with: "tr"))] as? [String: Any] ?? Dictionary<String, Any>.init()
            //: let extraJson = JSON(extraDic)
            let extraJson = JSON(extraDic)
            //: if extraJson["msgInfo"]["logType"].intValue == 1 {
            if extraJson[(String(kStr_hiddenName) + kStr_sexData.replacingOccurrences(of: "margin", with: "o"))][(kStr_toTitle.replacingOccurrences(of: "face", with: "o") + String(kStr_resultNameData))].intValue == 1 {
                //: isVideoChat = false
                isVideoChat = false
            }
            //: let callImgAttr = self.getCallImageAttributedString(msgInfoModel: msgInfoModel, isVideoChat: isVideoChat)
            let callImgAttr = self.tableRemove(msgInfoModel: msgInfoModel, isVideoChat: isVideoChat)
            //: let spaceAttr = NSMutableAttributedString.init(string: "  ")
            let spaceAttr = NSMutableAttributedString(string: "  ")
            //: attr.insert(spaceAttr, at: 0)
            attr.insert(spaceAttr, at: 0)
            //: attr.insert(callImgAttr, at: 0)
            attr.insert(callImgAttr, at: 0)
        }

        //: if extraDic.keys.contains("jumps") {
        if extraDic.keys.contains((kStr_upValue.replacingOccurrences(of: "app", with: "s"))) {
            //: hasJump = true
            hasJump = true
        }
        //: if extraDic.keys.contains("jumpKey") {
        if extraDic.keys.contains((String(kStr_textName.prefix(6)) + String(kStr_viewTitle))) {
            //: hasJump = true
            hasJump = true
        }

        //: return attr
        return attr
    }

    //: func getCallImageAttributedString(msgInfoModel: LabelOffAimChromosphereJsonModel, isVideoChat: Bool) -> NSMutableAttributedString {
    func tableRemove(msgInfoModel: LabelOffAimChromosphereJsonModel, isVideoChat: Bool) -> NSMutableAttributedString {
        //: let callImgView = UIImageView.init()
        let callImgView = UIImageView()
        //: callImgView.size = CGSize(width: 22, height: 17)
        callImgView.size = CGSize(width: 22, height: 17)
        //: callImgView.contentMode = .scaleAspectFit
        callImgView.contentMode = .scaleAspectFit
        //: var imgStr = isVideoChat ? "chat_video_me" : "chat_voice_me"
        var imgStr = isVideoChat ? String(bytes: kStr_removeValue.map{sharedMake(model: $0)}, encoding: .utf8)! : (String(kStr_managerShareData.prefix(7)) + String(kStr_popVideoValue.suffix(6)))

        //: if self.direction == .MsgDirectionIncoming {
        if self.direction == .MsgDirectionIncoming {
            //: if msgInfoModel.callCmd == "stopCall" {
            if msgInfoModel.callCmd == (String(kStr_giftHeadValue)) {
                //: imgStr = isVideoChat ?"chat_video_call":"chat_voice_call"
                imgStr = isVideoChat ?String(bytes: kStr_directionData.map{birthFinish(awake: $0)}, encoding: .utf8)! : (kStr_effectValue.replacingOccurrences(of: "target", with: "at") + "_voic" + String(kStr_downName.suffix(6)))
                //: } else {
            } else {
                //: imgStr = isVideoChat ?"chat_video_cancel":"chat_voice_cancel"
                imgStr = isVideoChat ?String(bytes: kStr_textQueryValue.map{labColor(back: $0)}, encoding: .utf8)! : (String(kStr_equalValue.prefix(5)) + "voice" + String(kStr_listData.suffix(4)) + kStr_clickValue.replacingOccurrences(of: "key", with: "ce"))
            }
        }
        //: callImgView.image = UIImage.bundleBy(name: imgStr)
        callImgView.image = UIImage.bundleBy(name: imgStr)

        //: let attachText = NSMutableAttributedString.yy_attachmentString(withContent: callImgView, contentMode: .center, attachmentSize: callImgView.size, alignTo: UIFont.messageDown(fontSize: 17), alignment: .center)
        let attachText = NSMutableAttributedString.yy_attachmentString(withContent: callImgView, contentMode: .center, attachmentSize: callImgView.size, alignTo: UIFont.messageDown(fontSize: 17), alignment: .center)

        //: return attachText
        return attachText
    }

    //: func formatTextTransMsgString() -> NSMutableAttributedString {
    func compartment() -> NSMutableAttributedString {
        //: let tempText = self.translatedContent
        let tempText = self.translatedContent
        //: let transAttrStr = NSMutableAttributedString.init(string: tempText)
        let transAttrStr = NSMutableAttributedString(string: tempText)

        //: let paragraphStyle = NSMutableParagraphStyle.init()
        let paragraphStyle = NSMutableParagraphStyle()
        //: paragraphStyle.lineBreakMode = .byWordWrapping
        paragraphStyle.lineBreakMode = .byWordWrapping
        //: paragraphStyle.alignment = .left
        paragraphStyle.alignment = .left

        //: var color = UIColor(hex: "#16D073")!
        var color = UIColor(hex: (String(kStr_targetToData)))!
        //: if self.translateStatus == .MsgTranslate_fail {
        if self.translateStatus == .MsgTranslate_fail {
            //: color = UIColor(hex: "#F95644")!
            color = UIColor(hex: (String(kStr_fileText)))!
        }
        //: transAttrStr.addAttributes([.paragraphStyle: paragraphStyle, .font: UIFont.messageDown(fontSize: 16), .foregroundColor: color], range: NSRange(location: 0, length: tempText.count))
        transAttrStr.addAttributes([.paragraphStyle: paragraphStyle, .font: UIFont.messageDown(fontSize: 16), .foregroundColor: color], range: NSRange(location: 0, length: tempText.count))
        //: return transAttrStr
        return transAttrStr
    }
}
