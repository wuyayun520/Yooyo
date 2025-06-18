
//: Declare String Begin

/*: "PingFangSC-Regular" :*/
fileprivate let kStr_voiceValue:String = "player cellPingFa"
fileprivate let kStr_interactionName:String = "laindex"

/*: "PingFangSC-Medium" :*/
fileprivate let kStr_topData:String = "var true viewPing"
fileprivate let kStr_colorArrayHeightTitle:[Character] = ["S","C","-","M","e","d","i","u","m"]

/*: "PingFangSC-Semibold" :*/
fileprivate let kStr_equalValue:String = "let self regularPingFa"
fileprivate let kStr_pathTitle:String = "extra user-Semibo"
fileprivate let kStr_layerData:[Character] = ["l","d"]

/*: "PingFangSC-Thin" :*/
fileprivate let kStr_bottomText:String = "class type toPingF"
fileprivate let kStr_sizeTitle:String = "-Thiapp on view text"
fileprivate let kStr_bottomData:String = "op"

/*: "PingFangSC-Light" :*/
fileprivate let kStr_shareTitle:[Character] = ["P","i","n","g","F","a","n","g","S","C","-","L","i","g","h","t"]

/*: "PingFangSC-Ultralight" :*/
fileprivate let kStr_extendedValue:[Character] = ["P","i","n","g","F","a","n","g","S","C","-","U","l","t","r","a","l","i"]
fileprivate let kStr_mobileValue:[Character] = ["g","h","t"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  FontExtension.swift
//  AbroadTalking
//
//  Created by Hemming on 2022/1/25.
//

//: import Foundation
import Foundation
//: import UIKit
import UIKit

//: extension UIFont {
public extension UIFont {
    //: static func pingfangFont(type: PingFangFontType, fontSize: CGFloat) -> UIFont {
    internal static func groupSize(type: TextPageFontType, fontSize: CGFloat) -> UIFont {
        //: var font: UIFont?
        var font: UIFont?
        //: switch type {
        switch type {
        //: case .Regular:
        case .Regular:
            //: font = UIFont(name: "PingFangSC-Regular", size: fontSize)
            font = UIFont(name: (String(kStr_voiceValue.suffix(6)) + "ngSC-Regu" + kStr_interactionName.replacingOccurrences(of: "index", with: "r")), size: fontSize)
        //: break
        //: case .Medium:
        case .Medium:
            //: font = UIFont(name: "PingFangSC-Medium", size: fontSize)
            font = UIFont(name: (String(kStr_topData.suffix(4)) + "Fang" + String(kStr_colorArrayHeightTitle)), size: fontSize)
        //: break
        //: case .Semibold:
        case .Semibold:
            //: font = UIFont(name: "PingFangSC-Semibold", size: fontSize)
            font = UIFont(name: (String(kStr_equalValue.suffix(6)) + "ngSC" + String(kStr_pathTitle.suffix(7)) + String(kStr_layerData)), size: fontSize)
        //: break
        //: case .Thin:
        case .Thin:
            //: font = UIFont(name: "PingFangSC-Thin", size: fontSize)
            font = UIFont(name: (String(kStr_bottomText.suffix(5)) + "angSC" + String(kStr_sizeTitle.prefix(4)) + kStr_bottomData.replacingOccurrences(of: "op", with: "n")), size: fontSize)
        //: break
        //: case .Light:
        case .Light:
            //: font = UIFont(name: "PingFangSC-Light", size: fontSize)
            font = UIFont(name: (String(kStr_shareTitle)), size: fontSize)
        //: break
        //: case .Ultralight:
        case .Ultralight:
            //: font = UIFont(name: "PingFangSC-Ultralight", size: fontSize)
            font = UIFont(name: (String(kStr_extendedValue) + String(kStr_mobileValue)), size: fontSize)
            //: break
        }
        //: return font ?? UIFont.systemFont(ofSize: fontSize)
        return font ?? UIFont.systemFont(ofSize: fontSize)
    }

    //: @objc static public func pingfangRugularFont(fontSize: CGFloat) -> UIFont {
    @objc static func messageDown(fontSize: CGFloat) -> UIFont {
        //: return UIFont.pingfangFont(type: .Regular, fontSize: fontSize)
        return UIFont.groupSize(type: .Regular, fontSize: fontSize)
    }

    //: @objc static public func pingfangMediumFont(fontSize: CGFloat) -> UIFont {
    @objc static func dorsum(fontSize: CGFloat) -> UIFont {
        //: return UIFont.pingfangFont(type: .Medium, fontSize: fontSize)
        return UIFont.groupSize(type: .Medium, fontSize: fontSize)
    }
}
