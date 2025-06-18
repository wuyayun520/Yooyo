
//: Declare String Begin

/*: "title" :*/
fileprivate let kStr_quickText:String = "tphotole"

/*: "content" :*/
fileprivate let kStr_cornerText:String = "cellntent"

/*: "init(coder:) has not been implemented" :*/
fileprivate let kStr_makeDataName:[UInt8] = [0xae,0xb3,0xae,0xb9,0x6d,0xa8,0xb4,0xa9,0xaa,0xb7,0x7f,0x6e,0x65,0xad,0xa6,0xb8,0x65,0xb3,0xb4,0xb9,0x65,0xa7,0xaa,0xaa,0xb3,0x65,0xae,0xb2,0xb5,0xb1,0xaa,0xb2,0xaa,0xb3,0xb9,0xaa,0xa9]

fileprivate func addUp(gift num: UInt8) -> UInt8 {
    let value = Int(num) + 187
    if value > 255 {
        return UInt8(value - 256)
    } else {
        return UInt8(value)
    }
}

/*: "img" :*/
fileprivate let kStr_theValue:[Character] = ["i","m","g"]

/*: "jumpKey" :*/
fileprivate let kStr_viewName:[Character] = ["j","u"]
fileprivate let kStr_coverValue:String = "mpKeyheight no equal name self"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  DiagonalCellData.swift
//  AbroadTalking
//
//  Created by young on 2023/11/8.
//

//: import UIKit
import UIKit

//: @objcMembers public class DiagonalCellData: TalkingChatMsgBaseCellData {
@objcMembers public class DiagonalCellData: TalkingLoadCollectionThen {
    // 数据
    //: var extraJson: JSON {
    var extraJson: JSON {
        //: return JSON(extraDict)
        return JSON(extraDict)
    }

    // banner size
    //: var bannerSize = CGSize(width: actualWidth(w: 210), height: actualWidth(w: 50))
    var bannerSize = CGSize(width: originalScene(w: 210), height: originalScene(w: 50))
    // 是否有标题
    //: var hasBanner = false
    var hasBanner = false
    // 标题高度
    //: var titleHeight = 0.0
    var titleHeight = 0.0
    // 内容高度
    //: var contentHeight = 0.0
    var contentHeight = 0.0
    // 跳转高度
    //: var jumpHeight = 0.0
    var jumpHeight = 0.0
    // 标题富文本
    //: public lazy var titleAttrStr: NSMutableAttributedString = {
    public lazy var titleAttrStr: NSMutableAttributedString = {
        //: let attributes = [.foregroundColor: UIColor.appTitleColor(), .font: UIFont.pingfangFont(type: .Medium, fontSize: 17)] as [NSAttributedString.Key: Any]
        let attributes = [.foregroundColor: UIColor.dataFormat(), .font: UIFont.groupSize(type: .Medium, fontSize: 17)] as [NSAttributedString.Key: Any]
        //: let attributeStr = NSMutableAttributedString(string: extraJson["title"].stringValue)
        let attributeStr = NSMutableAttributedString(string: extraJson[(kStr_quickText.replacingOccurrences(of: "photo", with: "it"))].stringValue)
        //: attributeStr.addAttributes(attributes, range: NSRange(location: 0, length: attributeStr.length))
        attributeStr.addAttributes(attributes, range: NSRange(location: 0, length: attributeStr.length))
        //: return attributeStr
        return attributeStr
        //: }()
    }()

    // 内容富文本
    //: public lazy var contentAttrStr: NSMutableAttributedString = {
    public lazy var contentAttrStr: NSMutableAttributedString = {
        //: let attributes = [.foregroundColor: UIColor.appValueColor(), .font: UIFont.pingfangFont(type: .Regular, fontSize: 14)] as [NSAttributedString.Key: Any]
        let attributes = [.foregroundColor: UIColor.priority(), .font: UIFont.groupSize(type: .Regular, fontSize: 14)] as [NSAttributedString.Key: Any]
        //: let attributeStr = NSMutableAttributedString(string: extraJson["content"].stringValue)
        let attributeStr = NSMutableAttributedString(string: extraJson[(kStr_cornerText.replacingOccurrences(of: "cell", with: "co"))].stringValue)
        //: attributeStr.addAttributes(attributes, range: NSRange(location: 0, length: attributeStr.length))
        attributeStr.addAttributes(attributes, range: NSRange(location: 0, length: attributeStr.length))
        //: return attributeStr
        return attributeStr
        //: }()
    }()

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: kStr_makeDataName.map{addUp(gift: $0)}, encoding: .utf8)!)
    }

    //: override public init(direction: TMsgDirection) {
    override public init(direction: TMsgDirection) {
        //: super.init(direction: direction)
        super.init(direction: direction)
    }

    //: override public func contentSize() -> CGSize {
    override public func contentSize() -> CGSize {
        //: let height = self.height(ofWidth: 0)-20
        let height = self.height(ofWidth: 0) - 20
        //: return CGSize(width: bannerSize.width, height: height)
        return CGSize(width: bannerSize.width, height: height)
    }

    //: override public func height(ofWidth width: CGFloat) -> CGFloat {
    override public func height(ofWidth _: CGFloat) -> CGFloat {
        //: var height = 0.0
        var height = 0.0
        //: if extraJson["img"].stringValue.count > 0 {
        if extraJson[(String(kStr_theValue))].stringValue.count > 0 {
            //: height += bannerSize.height
            height += bannerSize.height
            //: hasBanner = true
            hasBanner = true
        }
        //: height += 10
        height += 10
        //: if extraJson["title"].stringValue.count > 0 {
        if extraJson[(kStr_quickText.replacingOccurrences(of: "photo", with: "it"))].stringValue.count > 0 {
            //: let yyLayout = YYTextLayout.init(containerSize: CGSize(width: bannerSize.width-20, height: CGFLOAT_MAX), text: self.titleAttrStr)
            let yyLayout = YYTextLayout(containerSize: CGSize(width: bannerSize.width - 20, height: CGFLOAT_MAX), text: self.titleAttrStr)
            //: if let titleH = yyLayout?.textBoundingSize.height {
            if let titleH = yyLayout?.textBoundingSize.height {
                //: titleHeight = titleH
                titleHeight = titleH
                //: height += titleHeight
                height += titleHeight
            }
        }
        //: if extraJson["content"].stringValue.count > 0 {
        if extraJson[(kStr_cornerText.replacingOccurrences(of: "cell", with: "co"))].stringValue.count > 0 {
            //: height += 4
            height += 4
            //: let yyLayout = YYTextLayout.init(containerSize: CGSize(width: bannerSize.width-20, height: CGFLOAT_MAX), text: self.contentAttrStr)
            let yyLayout = YYTextLayout(containerSize: CGSize(width: bannerSize.width - 20, height: CGFLOAT_MAX), text: self.contentAttrStr)
            //: if let contentH = yyLayout?.textBoundingSize.height {
            if let contentH = yyLayout?.textBoundingSize.height {
                //: contentHeight = contentH
                contentHeight = contentH
                //: height += contentHeight
                height += contentHeight
            }
        }
        //: height += 10
        height += 10
        //: if extraJson["jumpKey"].stringValue.count > 0 {
        if extraJson[(String(kStr_viewName) + String(kStr_coverValue.prefix(5)))].stringValue.count > 0 {
            //: jumpHeight = 35
            jumpHeight = 35
            //: height += jumpHeight
            height += jumpHeight
        }
        // cell间距
        //: height += 20
        height += 20

        //: return height
        return height
    }
}
