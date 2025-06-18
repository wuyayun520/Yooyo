
//: Declare String Begin

/*: "JDStatusBarStyleDefault" :*/
fileprivate let kStr_upSourceEqualValue:String = "JDStatlike model pic"
fileprivate let kStr_managerText:String = "rStyin pic"

/*: "JDStatusBarStyleError" :*/
fileprivate let kStr_popValue:String = "JDStleft data let"
fileprivate let kStr_totalName:String = "text color first text thumbBarSt"
fileprivate let kStr_shareData:String = "allr"

/*: "JDStatusBarStyleSuccess" :*/
fileprivate let kStr_toTimeText:[Character] = ["J","D","S","t","a","t","u","s","B","a","r","S","t","y","l","e","S","u","c","c","e","s"]
fileprivate let kStr_modelText:String = "index"

/*: "2AB572" :*/
fileprivate let kStr_nameData:String = "view file if self2AB57"
fileprivate let kStr_signTitle:String = "2"

/*: "F05E5E" :*/
fileprivate let kStr_seatTitle:String = "FlabE5E"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  TalkingTipExtension.swift
//  AbroadTalking
//
//  Created by Hemming on 2022/9/1.
//

//: import JDStatusBarNotification
import JDStatusBarNotification
//: import UIKit
import UIKit

//: extension NSObject {
extension NSObject {
    //: @objc public func func__showStatusBarNormrlMsg(showMsg: String) {
    @objc public func imageText(showMsg: String) {
        //: self.func__showStatusBarMsg(showMsg: showMsg, dismissTime: 1.5, styleName: "JDStatusBarStyleDefault")
        self.equalText(showMsg: showMsg, dismissTime: 1.5, styleName: (String(kStr_upSourceEqualValue.prefix(6)) + "usBa" + String(kStr_managerText.prefix(4)) + "leDefault"))
    }

    //: @objc public func func__showStatusBarErrorMsg(showMsg: String) {
    @objc public func detailDownArray(showMsg: String) {
        //: self.func__showStatusBarMsg(showMsg: showMsg, dismissTime: 1.5, styleName: "JDStatusBarStyleError")
        self.equalText(showMsg: showMsg, dismissTime: 1.5, styleName: (String(kStr_popValue.prefix(4)) + "atus" + String(kStr_totalName.suffix(5)) + "yleEr" + kStr_shareData.replacingOccurrences(of: "all", with: "ro")))
    }

    //: func func__showStatusBarSuccessMsg(showMsg: String) {
    func property(showMsg: String) {
        //: self.func__showStatusBarMsg(showMsg: showMsg, dismissTime: 1.5, styleName: "JDStatusBarStyleSuccess")
        self.equalText(showMsg: showMsg, dismissTime: 1.5, styleName: (String(kStr_toTimeText) + kStr_modelText.replacingOccurrences(of: "index", with: "s")))
    }

    //: func func__showStatusBarMsg(showMsg: String, dismissTime: TimeInterval, styleName: String) {
    func equalText(showMsg: String, dismissTime: TimeInterval, styleName: String) {
        //: DispatchQueue.main.async {
        DispatchQueue.main.async {
            //: DispatchQueue.once(token: DispatchQueueToken_StatusBarInit, block: {
            DispatchQueue.percipient(token: kLet_sizeValue, block: {
                //: NotificationPresenter.shared().updateDefaultStyle { style in
                NotificationPresenter.shared().updateDefaultStyle { style in
                    //: style.backgroundStyle.backgroundColor = UIColor(hex: "2AB572")!
                    style.backgroundStyle.backgroundColor = UIColor(hex: (String(kStr_nameData.suffix(5)) + kStr_signTitle.capitalized))!
                    //: style.textStyle.textColor = .white
                    style.textStyle.textColor = .white
                    //: style.textStyle.font = UIFont.pingfangFont(type: .Regular, fontSize: 14)
                    style.textStyle.font = UIFont.groupSize(type: .Regular, fontSize: 14)
                    //: return style
                    return style
                }
                //: NotificationPresenter.shared().addStyle(styleName: styleName) { stype in
                NotificationPresenter.shared().addStyle(styleName: styleName) { stype in
                    //: if styleName == "JDStatusBarStyleError" {
                    if styleName == (String(kStr_popValue.prefix(4)) + "atus" + String(kStr_totalName.suffix(5)) + "yleEr" + kStr_shareData.replacingOccurrences(of: "all", with: "ro")) {
                        //: stype.backgroundStyle.backgroundColor = UIColor(hex: "F05E5E")!
                        stype.backgroundStyle.backgroundColor = UIColor(hex: (kStr_seatTitle.replacingOccurrences(of: "lab", with: "05")))!
                        //: }else {
                    } else {
                        //: stype.backgroundStyle.backgroundColor = UIColor(hex: "2AB572")!
                        stype.backgroundStyle.backgroundColor = UIColor(hex: (String(kStr_nameData.suffix(5)) + kStr_signTitle.capitalized))!
                    }
                    //: return stype
                    return stype
                }
                //: })
            })

            //: if NotificationPresenter.shared().isVisible() {
            if NotificationPresenter.shared().isVisible() {
                //: DispatchQueue.main.asyncAfter(deadline: .now()+0.5) {
                DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
                    //: NotificationPresenter.shared().present(text: showMsg, dismissAfterDelay: dismissTime, customStyle: styleName)
                    NotificationPresenter.shared().present(text: showMsg, dismissAfterDelay: dismissTime, customStyle: styleName)
                }
                //: }else {
            } else {
                //: NotificationPresenter.shared().present(text: showMsg, dismissAfterDelay: dismissTime, customStyle: styleName)
                NotificationPresenter.shared().present(text: showMsg, dismissAfterDelay: dismissTime, customStyle: styleName)
            }
        }
    }
}
