
//: Declare String Begin

/*: "bg_talk_other" :*/
fileprivate let kStr_fromValue:[Character] = ["b","g","_","t","a","l","k","_","o"]
fileprivate let kStr_makeName:[Character] = ["t","h","e","r"]

/*: "bg_talk_me" :*/
fileprivate let kStr_textData:[Character] = ["b","g","_","t","a","l"]
fileprivate let kStr_dataContent:String = "true model view scale ifk_me"

/*: "init(coder:) has not been implemented" :*/
fileprivate let kStr_sharedData:[UInt8] = [0x5f,0x58,0x5f,0x42,0x1e,0x55,0x59,0x52,0x53,0x44,0xc,0x1f,0x16,0x5e,0x57,0x45,0x16,0x58,0x59,0x42,0x16,0x54,0x53,0x53,0x58,0x16,0x5f,0x5b,0x46,0x5a,0x53,0x5b,0x53,0x58,0x42,0x53,0x52]

private func totalercalaryYearInfo(manager num: UInt8) -> UInt8 {
    return num ^ 54
}

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  TalkingLoadCollectionThen.swift
//  AbroadTalking
//
//  Created by Hemming on 2023/3/1.
//

//: import UIKit
import UIKit

//: @objcMembers public class TalkingChatMsgBaseCellData: TUIMessageCellData {
@objcMembers public class TalkingLoadCollectionThen: TUIMessageCellData {
    //: var bubbleTop: CGFloat = 10
    var bubbleTop: CGFloat = 10
    //: var bubbleImg: UIImage?
    var bubbleImg: UIImage?

    //: override public init(direction: TMsgDirection) {
    override public init(direction: TMsgDirection) {
        //: super.init(direction: direction)
        super.init(direction: direction)
        //: if direction == .MsgDirectionIncoming {
        if direction == .MsgDirectionIncoming {
            //: self.bubbleImg = UIImage.resizedInImageWithName(name: "bg_talk_other")
            self.bubbleImg = UIImage.duringStreetwise(name: (String(kStr_fromValue) + String(kStr_makeName)))
            //: self.cellLayout = MessageCellLayout.incommingTextMessageLayout()
            self.cellLayout = MessageCellLayout.incommingTextMessageLayout()
            //: } else {
        } else {
            //: self.bubbleImg = UIImage.resizedInImageWithName(name: "bg_talk_me")
            self.bubbleImg = UIImage.duringStreetwise(name: (String(kStr_textData) + String(kStr_dataContent.suffix(4))))
            //: self.cellLayout = MessageCellLayout.outgoingTextMessageLayout()
            self.cellLayout = MessageCellLayout.outgoingTextMessageLayout()
        }
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: kStr_sharedData.map{totalercalaryYearInfo(manager: $0)}, encoding: .utf8)!)
    }
}
