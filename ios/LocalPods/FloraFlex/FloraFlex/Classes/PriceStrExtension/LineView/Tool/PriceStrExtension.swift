
//: Declare String Begin

/*: "Free" :*/
fileprivate let kStr_lastTitle:String = "model var view select letFree"

/*: " Free 1min" :*/
fileprivate let kStr_stopTitle:String = " Freelet else"
fileprivate let kStr_listName:[Character] = [" ","1","m","i","n"]

/*: "Video Call" :*/
fileprivate let kStr_actionName:String = "Video Calif bar screen back"
fileprivate let kStr_timeData:String = "player"

/*: "icon_video_bd" :*/
fileprivate let kStr_errorTitle:[Character] = ["i","c","o","n","_","v","i"]
fileprivate let kStr_totalValue:[Character] = ["d","e","o","_","b","d"]

/*: "\n %@/min" :*/
fileprivate let kStr_normalData:String = "\n %"
fileprivate let kStr_viewValue:String = "name false@/min"

/*: "icon_coin_pre" :*/
fileprivate let kStr_iconData:String = "icon_colet in make"
fileprivate let kStr_downData:[Character] = ["i","n","_","p","r","e"]

/*: "\n %@ %@/min" :*/
fileprivate let kStr_blockValue:String = "\n %@ %@"
fileprivate let kStr_sizeValue:[Character] = ["/","m","i","n"]

/*: "%@/min" :*/
fileprivate let kStr_iconTitle:[Character] = ["%","@","/","m","i","n"]

/*: "#D8D8D8" :*/
fileprivate let kStr_emptyData:String = "model broadcast name value make#D8D8D8"

/*: "Free 1 min" :*/
fileprivate let kStr_pushValue:String = "app var equal false stackFree 1 "
fileprivate let kStr_liveData:[Character] = ["m","i","n"]

/*: "%@ Coins/min" :*/
fileprivate let kStr_countName:String = "selected value else container let%@ Coi"
fileprivate let kStr_labelText:[Character] = ["n","s","/","m","i","n"]

/*: "%@ Gold coins / Min" :*/
fileprivate let kStr_sectionName:String = "let live self%@ G"
fileprivate let kStr_downName:String = "let color frame / Min"

/*: "Video Call (%@ Coins/min)" :*/
fileprivate let kStr_modelContent:String = "super min sizeVideo C"
fileprivate let kStr_makeValue:String = "show"
fileprivate let kStr_giftData:String = "ll (%with var type self"
fileprivate let kStr_value:String = "ins/min)sense background section"

/*: "Voice Call" :*/
fileprivate let kStr_constraintTitle:[Character] = ["V","o","i","c","e"]
fileprivate let kStr_pathRowName:String = "transform var Call"

/*: "Voice Call (%@ Coins/min)" :*/
fileprivate let kStr_whiteData:[Character] = ["V","o","i","c","e"," ","C","a","l","l"," ","(","%","@"," ","C","o","i","n"]
fileprivate let kStr_hideContent:String = "s/min)mode fee home"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  PriceStrExtension.swift
//  AbroadTalking
//
//  Created by Charlotte on 2023/6/15.
//

//: import Foundation
import Foundation

//: extension String {
extension String {
    //: static func setPriceStr(fee: Int, originalFee: Int, freeCallTimes: Int = 0, callBtnStyle: Int = 0)-> NSMutableAttributedString {
    static func overText(fee: Int, originalFee: Int, freeCallTimes: Int = 0, callBtnStyle: Int = 0) -> NSMutableAttributedString {
        //: if LocationThen.share.appStatus == AppSkinStatus.special.rawValue {
        if LocationThen.share.appStatus == SharedInsetTarget.special.rawValue {
            //: return NSMutableAttributedString.init(string: "Free".localized)
            return NSMutableAttributedString(string: (String(kStr_lastTitle.suffix(4))).localized)
            //: } else if freeCallTimes > 0 || fee == 0 {
        } else if freeCallTimes > 0 || fee == 0 {
            //: var text = ""
            var text = ""
            //: if fee == 0 {
            if fee == 0 {
                //: text = "Free".localized
                text = (String(kStr_lastTitle.suffix(4))).localized
                //: } else {
            } else {
                //: if callBtnStyle == 1 {
                if callBtnStyle == 1 {
                    //: text = " Free 1min".localized
                    text = (String(kStr_stopTitle.prefix(5)) + String(kStr_listName)).localized
                    //: } else {
                } else {
                    //: text = "Video Call".localized
                    text = (String(kStr_actionName.prefix(9)) + kStr_timeData.replacingOccurrences(of: "player", with: "l")).localized
                }
            }
            //: let attrS = NSMutableAttributedString(string: text)
            let attrS = NSMutableAttributedString(string: text)
            //: let attributes = [.foregroundColor: UIColor.white, .font: UIFont.pingfangFont(type: .Medium, fontSize: 17)] as [NSAttributedString.Key: Any]
            let attributes = [.foregroundColor: UIColor.white, .font: UIFont.groupSize(type: .Medium, fontSize: 17)] as [NSAttributedString.Key: Any]
            //: attrS.addAttributes(attributes, range: NSRange(location: 0, length: attrS.length))
            attrS.addAttributes(attributes, range: NSRange(location: 0, length: attrS.length))

            //: let attach = NSTextAttachment()
            let attach = NSTextAttachment()
            //: attach.image = UIImage.bundleBy(name: "icon_video_bd")
            attach.image = UIImage.bundleBy(name: (String(kStr_errorTitle) + String(kStr_totalValue)))
            //: attach.bounds = CGRect(x: 0, y: -8, width: 22, height: 22)
            attach.bounds = CGRect(x: 0, y: -8, width: 22, height: 22)
            //: let attachImage = NSMutableAttributedString(attachment: attach)
            let attachImage = NSMutableAttributedString(attachment: attach)
            //: attrS.insert(attachImage, at: 0)
            attrS.insert(attachImage, at: 0)
            //: return attrS
            return attrS

            //: } else if fee != 0 || originalFee != 0 {
        } else if fee != 0 || originalFee != 0 {
            //: let text = "Video Call".localized
            let text = (String(kStr_actionName.prefix(9)) + kStr_timeData.replacingOccurrences(of: "player", with: "l")).localized
            //: let attrS = NSMutableAttributedString(string: text)
            let attrS = NSMutableAttributedString(string: text)
            //: let attributes = [.foregroundColor: UIColor.white, .font: UIFont.pingfangFont(type: .Medium, fontSize: 17)] as [NSAttributedString.Key: Any]
            let attributes = [.foregroundColor: UIColor.white, .font: UIFont.groupSize(type: .Medium, fontSize: 17)] as [NSAttributedString.Key: Any]
            //: attrS.addAttributes(attributes, range: NSRange(location: 0, length: attrS.length))
            attrS.addAttributes(attributes, range: NSRange(location: 0, length: attrS.length))

            //: let attach = NSTextAttachment()
            let attach = NSTextAttachment()
            //: attach.image = UIImage.bundleBy(name: "icon_video_bd")
            attach.image = UIImage.bundleBy(name: (String(kStr_errorTitle) + String(kStr_totalValue)))
            //: attach.bounds = CGRect(x: 0, y: -8, width: 22, height: 22)
            attach.bounds = CGRect(x: 0, y: -8, width: 22, height: 22)
            //: let attachImage = NSMutableAttributedString(attachment: attach)
            let attachImage = NSMutableAttributedString(attachment: attach)
            //: attrS.insert(attachImage, at: 0)
            attrS.insert(attachImage, at: 0)

            //: if fee == originalFee {
            if fee == originalFee {
                //: let feetext = "\n %@/min".localizedArguments(fee)
                let feetext = (kStr_normalData + String(kStr_viewValue.suffix(5))).imageArguments(fee)
                //: let feetattrS = NSMutableAttributedString(string: feetext)
                let feetattrS = NSMutableAttributedString(string: feetext)
                //: let attach2 = NSTextAttachment()
                let attach2 = NSTextAttachment()
                //: attach2.image = UIImage.bundleBy(name: "icon_coin_pre")
                attach2.image = UIImage.bundleBy(name: (String(kStr_iconData.prefix(7)) + String(kStr_downData)))
                //: attach2.bounds = CGRect(x: 0, y: -3, width: 14, height: 14)
                attach2.bounds = CGRect(x: 0, y: -3, width: 14, height: 14)
                //: let attachImage2 = NSMutableAttributedString(attachment: attach2)
                let attachImage2 = NSMutableAttributedString(attachment: attach2)
                //: feetattrS.insert(attachImage2, at: 1)
                feetattrS.insert(attachImage2, at: 1)

                //: let attributes = [.foregroundColor: UIColor.white, .font: UIFont.pingfangFont(type: .Medium, fontSize: 10)] as [NSAttributedString.Key: Any]
                let attributes = [.foregroundColor: UIColor.white, .font: UIFont.groupSize(type: .Medium, fontSize: 10)] as [NSAttributedString.Key: Any]
                //: feetattrS.addAttributes(attributes, range: NSRange(location: 2, length: feetext.count-1))
                feetattrS.addAttributes(attributes, range: NSRange(location: 2, length: feetext.count - 1))
                //: attrS.insert(feetattrS, at: text.count+1)
                attrS.insert(feetattrS, at: text.count + 1)

                //: let paragraphStyle = NSMutableParagraphStyle.init()
                let paragraphStyle = NSMutableParagraphStyle()
                //: paragraphStyle.lineSpacing = 0
                paragraphStyle.lineSpacing = 0
                //: paragraphStyle.alignment = .center
                paragraphStyle.alignment = .center
                //: attrS.addAttribute(NSAttributedString.Key.paragraphStyle, value: paragraphStyle, range: NSRange(location: 0, length: text.count + feetext.count))
                attrS.addAttribute(NSAttributedString.Key.paragraphStyle, value: paragraphStyle, range: NSRange(location: 0, length: text.count + feetext.count))
                //: return attrS
                return attrS
                //: } else {
            } else {
                //: let ptext = "\n %@ %@/min".localizedArguments(fee, originalFee)
                let ptext = (kStr_blockValue + String(kStr_sizeValue)).imageArguments(fee, originalFee)
                //: let newAttrS = NSMutableAttributedString(string: ptext)
                let newAttrS = NSMutableAttributedString(string: ptext)

                //: let attach2 = NSTextAttachment()
                let attach2 = NSTextAttachment()
                //: attach2.image = UIImage.bundleBy(name: "icon_coin_pre")
                attach2.image = UIImage.bundleBy(name: (String(kStr_iconData.prefix(7)) + String(kStr_downData)))
                //: attach2.bounds = CGRect(x: 0, y: -3, width: 14, height: 14)
                attach2.bounds = CGRect(x: 0, y: -3, width: 14, height: 14)
                //: let attachImage2 = NSMutableAttributedString(attachment: attach2)
                let attachImage2 = NSMutableAttributedString(attachment: attach2)
                //: newAttrS.insert(attachImage2, at: 1)
                newAttrS.insert(attachImage2, at: 1)

                //: let attributes = [.foregroundColor: UIColor.white, .font: UIFont.pingfangFont(type: .Medium, fontSize: 10)] as [NSAttributedString.Key: Any]
                let attributes = [.foregroundColor: UIColor.white, .font: UIFont.groupSize(type: .Medium, fontSize: 10)] as [NSAttributedString.Key: Any]
                //: newAttrS.addAttributes(attributes, range: NSRange(location: 2, length: ptext.count-1))
                newAttrS.addAttributes(attributes, range: NSRange(location: 2, length: ptext.count - 1))
                //: let originalFeemin = "%@/min".localizedArguments(originalFee)
                let originalFeemin = (String(kStr_iconTitle)).imageArguments(originalFee)
                //: let range: Range = ptext.range(of: originalFeemin)!
                let range: Range = ptext.range(of: originalFeemin)!
                //: let location = ptext.distance(from: ptext.startIndex, to: range.lowerBound )
                let location = ptext.distance(from: ptext.startIndex, to: range.lowerBound)
                //: let attributes2 = [.foregroundColor: UIColor.init(hex: "#D8D8D8")!, .font: UIFont.pingfangFont(type: .Medium, fontSize: 10)] as [NSAttributedString.Key: Any]
                let attributes2 = [.foregroundColor: UIColor(hex: (String(kStr_emptyData.suffix(7))))!, .font: UIFont.groupSize(type: .Medium, fontSize: 10)] as [NSAttributedString.Key: Any]
                //: newAttrS.addAttributes(attributes2, range: NSRange(location: location+1, length: originalFeemin.count))
                newAttrS.addAttributes(attributes2, range: NSRange(location: location + 1, length: originalFeemin.count))

                //: newAttrS.addAttribute(.strikethroughStyle, value: NSUnderlineStyle.single.rawValue, range: NSRange(location: location+1, length: originalFeemin.count))
                newAttrS.addAttribute(.strikethroughStyle, value: NSUnderlineStyle.single.rawValue, range: NSRange(location: location + 1, length: originalFeemin.count))

                //: attrS.insert(newAttrS, at: text.count+1)
                attrS.insert(newAttrS, at: text.count + 1)

                //: let paragraphStyle = NSMutableParagraphStyle.init()
                let paragraphStyle = NSMutableParagraphStyle()
                //: paragraphStyle.lineSpacing = 0
                paragraphStyle.lineSpacing = 0
                //: paragraphStyle.alignment = .center
                paragraphStyle.alignment = .center
                //: attrS.addAttribute(NSAttributedString.Key.paragraphStyle, value: paragraphStyle, range: NSRange(location: 0, length: text.count + ptext.count))
                attrS.addAttribute(NSAttributedString.Key.paragraphStyle, value: paragraphStyle, range: NSRange(location: 0, length: text.count + ptext.count))
                //: return attrS
                return attrS
            }
        }
        //: return NSMutableAttributedString.init()
        return NSMutableAttributedString()
    }

    /// 免费1分钟通话结束弹窗
    /// - Parameters:
    ///   - originalFee: 原价
    ///   - vipFee: VIP价格（0：执行原价逻辑）
    /// - Returns: string
    //: static func setFreeStopPriceStr(originalFee: Int, vipFee: Int = 0) -> String {
    static func dataFinish(originalFee: Int, vipFee: Int = 0) -> String {
        //: guard LocationThen.share.appStatus == AppSkinStatus.normal.rawValue else {
        guard LocationThen.share.appStatus == SharedInsetTarget.normal.rawValue else {
            //: return "Video Call".localized
            return (String(kStr_actionName.prefix(9)) + kStr_timeData.replacingOccurrences(of: "player", with: "l")).localized
        }
        //: if LocationThen.share.loginUserMode.freeCallTimes > 0 {
        if LocationThen.share.loginUserMode.freeCallTimes > 0 {
            //: if LocationThen.share.appUserConfigMode.callBtnStyle == 1 {
            if LocationThen.share.appUserConfigMode.callBtnStyle == 1 {
                //: return "Free 1 min".localized
                return (String(kStr_pushValue.suffix(7)) + String(kStr_liveData)).localized
                //: } else {
            } else {
                //: return "Video Call".localized
                return (String(kStr_actionName.prefix(9)) + kStr_timeData.replacingOccurrences(of: "player", with: "l")).localized
            }
            //: } else {
        } else {
            //: if vipFee > 0 {
            if vipFee > 0 {
                //: return "%@ Coins/min".localizedArguments(vipFee)
                return (String(kStr_countName.suffix(6)) + String(kStr_labelText)).imageArguments(vipFee)
                //: } else {
            } else {
                //: return  "%@ Gold coins / Min".localizedArguments(originalFee)
                return (String(kStr_sectionName.suffix(4)) + "old coins" + String(kStr_downName.suffix(6))).imageArguments(originalFee)
            }
        }
    }

    /// 视频通话价格
    //: static func setVideoPriceStr(VideoPrice: Int) -> NSMutableAttributedString {
    static func telecastingPrice(VideoPrice: Int) -> NSMutableAttributedString {
        //: let index = EnableFreeCallType.nor
        let index = EndueProtectionBasicType.nor
        //: if LocationThen.share.loginUserMode.freeCallTimes > 0 && LocationThen.share.appUserConfigMode.enableFreeCallType & index.rawValue == index.rawValue {
        if LocationThen.share.loginUserMode.freeCallTimes > 0 && LocationThen.share.appUserConfigMode.enableFreeCallType & index.rawValue == index.rawValue {
            //: var text = ""
            var text = ""
            //: if LocationThen.share.appUserConfigMode.callBtnStyle == 1 {
            if LocationThen.share.appUserConfigMode.callBtnStyle == 1 {
                //: text = "Free 1 min".localized
                text = (String(kStr_pushValue.suffix(7)) + String(kStr_liveData)).localized
                //: } else {
            } else {
                //: text = "Video Call".localized
                text = (String(kStr_actionName.prefix(9)) + kStr_timeData.replacingOccurrences(of: "player", with: "l")).localized
            }

            //: let attrString = NSMutableAttributedString(string: text)
            let attrString = NSMutableAttributedString(string: text)
            //: let attributes = [.foregroundColor: UIColor.appTitleColor(), .font: UIFont.pingfangFont(type: .Regular, fontSize: 16)] as [NSAttributedString.Key: Any]
            let attributes = [.foregroundColor: UIColor.dataFormat(), .font: UIFont.groupSize(type: .Regular, fontSize: 16)] as [NSAttributedString.Key: Any]
            //: attrString.addAttributes(attributes, range: NSRange(location: 0, length: attrString.length))
            attrString.addAttributes(attributes, range: NSRange(location: 0, length: attrString.length))
            //: return attrString
            return attrString

            //: } else {
        } else {
            //: let VideoCall = "Video Call".localized
            let VideoCall = (String(kStr_actionName.prefix(9)) + kStr_timeData.replacingOccurrences(of: "player", with: "l")).localized
            //: let videoStr = "Video Call (%@ Coins/min)".localizedArguments(VideoPrice)
            let videoStr = (String(kStr_modelContent.suffix(7)) + kStr_makeValue.replacingOccurrences(of: "show", with: "a") + String(kStr_giftData.prefix(5)) + "@ Co" + String(kStr_value.prefix(8))).imageArguments(VideoPrice)
            //: let attrString = NSMutableAttributedString(string: videoStr)
            let attrString = NSMutableAttributedString(string: videoStr)
            //: let attributes = [.foregroundColor: UIColor.appTitleColor(), .font: UIFont.pingfangFont(type: .Regular, fontSize: 16)] as [NSAttributedString.Key: Any]
            let attributes = [.foregroundColor: UIColor.dataFormat(), .font: UIFont.groupSize(type: .Regular, fontSize: 16)] as [NSAttributedString.Key: Any]
            //: attrString.addAttributes(attributes, range: NSRange(location: 0, length: attrString.length))
            attrString.addAttributes(attributes, range: NSRange(location: 0, length: attrString.length))
            //: let attributes2 = [.foregroundColor: UIColor.fromBuild(), .font: UIFont.pingfangFont(type: .Regular, fontSize: 14)] as [NSAttributedString.Key: Any]
            let attributes2 = [.foregroundColor: UIColor.fromBuild(), .font: UIFont.groupSize(type: .Regular, fontSize: 14)] as [NSAttributedString.Key: Any]
            //: attrString.addAttributes(attributes2, range: NSRange(location: VideoCall.count, length: attrString.length-VideoCall.count))
            attrString.addAttributes(attributes2, range: NSRange(location: VideoCall.count, length: attrString.length - VideoCall.count))
            //: return attrString
            return attrString
        }
    }

    /// 音频通话价格
    //: static func setVoicePriceStr(VoicePrice: Int)-> NSMutableAttributedString {
    static func priceTo(VoicePrice: Int) -> NSMutableAttributedString {
        //: let index = EnableFreeCallType.nor
        let index = EndueProtectionBasicType.nor
        //: if LocationThen.share.loginUserMode.freeCallTimes > 0 && LocationThen.share.appUserConfigMode.enableFreeCallType & index.rawValue == index.rawValue {
        if LocationThen.share.loginUserMode.freeCallTimes > 0 && LocationThen.share.appUserConfigMode.enableFreeCallType & index.rawValue == index.rawValue {
            //: var text = ""
            var text = ""
            //: if LocationThen.share.appUserConfigMode.callBtnStyle == 1 {
            if LocationThen.share.appUserConfigMode.callBtnStyle == 1 {
                //: text = "Free 1 min".localized
                text = (String(kStr_pushValue.suffix(7)) + String(kStr_liveData)).localized
                //: } else {
            } else {
                //: text = "Voice Call".localized
                text = (String(kStr_constraintTitle) + String(kStr_pathRowName.suffix(5))).localized
            }

            //: let attrString = NSMutableAttributedString(string: text)
            let attrString = NSMutableAttributedString(string: text)
            //: let attributes = [.foregroundColor: UIColor.appTitleColor(), .font: UIFont.pingfangFont(type: .Regular, fontSize: 16)] as [NSAttributedString.Key: Any]
            let attributes = [.foregroundColor: UIColor.dataFormat(), .font: UIFont.groupSize(type: .Regular, fontSize: 16)] as [NSAttributedString.Key: Any]
            //: attrString.addAttributes(attributes, range: NSRange(location: 0, length: attrString.length))
            attrString.addAttributes(attributes, range: NSRange(location: 0, length: attrString.length))
            //: return attrString
            return attrString

            //: } else {
        } else {
            //: let VoiceCall = "Voice Call".localized
            let VoiceCall = (String(kStr_constraintTitle) + String(kStr_pathRowName.suffix(5))).localized
            //: let videoStr = "Voice Call (%@ Coins/min)".localizedArguments(VoicePrice)
            let videoStr = (String(kStr_whiteData) + String(kStr_hideContent.prefix(6))).imageArguments(VoicePrice)
            //: let attrString = NSMutableAttributedString(string: videoStr)
            let attrString = NSMutableAttributedString(string: videoStr)
            //: let attributes = [.foregroundColor: UIColor.appTitleColor(), .font: UIFont.pingfangFont(type: .Regular, fontSize: 16)] as [NSAttributedString.Key: Any]
            let attributes = [.foregroundColor: UIColor.dataFormat(), .font: UIFont.groupSize(type: .Regular, fontSize: 16)] as [NSAttributedString.Key: Any]
            //: attrString.addAttributes(attributes, range: NSRange(location: 0, length: attrString.length))
            attrString.addAttributes(attributes, range: NSRange(location: 0, length: attrString.length))
            //: let attributes2 = [.foregroundColor: UIColor.fromBuild(), .font: UIFont.pingfangFont(type: .Regular, fontSize: 14)] as [NSAttributedString.Key: Any]
            let attributes2 = [.foregroundColor: UIColor.fromBuild(), .font: UIFont.groupSize(type: .Regular, fontSize: 14)] as [NSAttributedString.Key: Any]
            //: attrString.addAttributes(attributes2, range: NSRange(location: VoiceCall.count, length: attrString.length-VoiceCall.count))
            attrString.addAttributes(attributes2, range: NSRange(location: VoiceCall.count, length: attrString.length - VoiceCall.count))
            //: return attrString
            return attrString
        }
    }
}

// MARK: - 男性VIP价格

//: extension String {
extension String {
    /// 获取男性侧视频通话VIP展示字符串
    /// - Parameters: videoPrice: 视频通话价格
    /// - Returns: 字符串
    //: static func getMaleVIPVideoPriceString(videoPrice: String) -> String {
    static func iconFrom(videoPrice: String) -> String {
        //: guard LocationThen.share.appStatus == AppSkinStatus.normal.rawValue else {
        guard LocationThen.share.appStatus == SharedInsetTarget.normal.rawValue else {
            //: return "Video Call".localized
            return (String(kStr_actionName.prefix(9)) + kStr_timeData.replacingOccurrences(of: "player", with: "l")).localized
        }
        //: let index = EnableFreeCallType.nor
        let index = EndueProtectionBasicType.nor
        //: if LocationThen.share.loginUserMode.freeCallTimes > 0 && LocationThen.share.appUserConfigMode.enableFreeCallType & index.rawValue == index.rawValue {
        if LocationThen.share.loginUserMode.freeCallTimes > 0 && LocationThen.share.appUserConfigMode.enableFreeCallType & index.rawValue == index.rawValue {
            //: if LocationThen.share.appUserConfigMode.callBtnStyle == 1 {
            if LocationThen.share.appUserConfigMode.callBtnStyle == 1 {
                //: return "Free 1 min".localized
                return (String(kStr_pushValue.suffix(7)) + String(kStr_liveData)).localized
                //: } else {
            } else {
                //: return "Video Call".localized
                return (String(kStr_actionName.prefix(9)) + kStr_timeData.replacingOccurrences(of: "player", with: "l")).localized
            }
            //: } else {
        } else {
            //: return "%@ Coins/min".localizedArguments(videoPrice)
            return (String(kStr_countName.suffix(6)) + String(kStr_labelText)).imageArguments(videoPrice)
        }
    }
}
