
//: Declare String Begin

/*: "DispatchQueueToken_StatusBarInit" :*/
fileprivate let kStr_modelTitle:[UInt8] = [0x73,0x5e,0x44,0x47,0x56,0x43,0x54,0x5f,0x66,0x42,0x52,0x42,0x52,0x63,0x58,0x5c,0x52,0x59,0x68,0x64,0x43,0x56,0x43,0x42,0x44,0x75,0x56,0x45,0x7e,0x59,0x5e,0x43]

private func answerParty(position num: UInt8) -> UInt8 {
    return num ^ 55
}

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  DispatchExtension.swift
//  AbroadTalking
//
//  Created by Hemming on 2022/9/1.
//

//: import UIKit
import UIKit

//: let DispatchQueueToken_StatusBarInit = "DispatchQueueToken_StatusBarInit"  //状态栏初始化
let kLet_sizeValue = String(bytes: kStr_modelTitle.map{answerParty(position: $0)}, encoding: .utf8)! // 状态栏初始化

//: extension DispatchQueue {
extension DispatchQueue {
    //: private static var _onceTracket = [String]()
    private static var _onceTracket = [String]()
    //: class func once(token:String , block:() -> Void) {
    class func percipient(token: String, block: () -> Void) {
        //: if _onceTracket.contains(token) {
        if _onceTracket.contains(token) {
            //: return
            return
        }
        //: _onceTracket.append(token)
        _onceTracket.append(token)
        //: block()
        block()
    }
}
