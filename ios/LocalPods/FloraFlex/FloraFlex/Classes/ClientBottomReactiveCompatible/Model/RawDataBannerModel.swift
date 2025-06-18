
//: Declare String Begin

/*: "/dist/loungePlus/index.html" :*/
fileprivate let kStr_playerTitleName:String = "mode extension input/dist"
fileprivate let kStr_whiteData:String = "height view collection bubblegePl"
fileprivate let kStr_cellTitle:String = "let text let bottom modelex.ht"
fileprivate let kStr_modelPlayerVideoValue:[Character] = ["m","l"]

/*: "PremiumStarPlanBanner" :*/
fileprivate let kStr_taskContent:String = "Premimanager make"
fileprivate let kStr_playName:String = "block let color self userPlan"
fileprivate let kStr_modeValue:[Character] = ["e","r"]

/*: "uid" :*/
fileprivate let kStr_titleValue:String = "uiinsert"

/*: "mfChatGift" :*/
fileprivate let kStr_frameValue:String = "mfChtrue count extension"
fileprivate let kStr_pointText:String = "FT"

/*: "mfChat" :*/
fileprivate let kStr_managerSValue:String = "mfChattrue to count equal return"

/*: "user" :*/
fileprivate let kStr_directionImageHeightName:[Character] = ["u","s","e","r"]

/*: "Please verification first" :*/
fileprivate let kStr_topTitle:String = "Pleasefor text control"
fileprivate let kStr_bottomContent:String = "icacontentio"
fileprivate let kStr_moreText:String = "n firstview up index ok"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  RawDataBannerModel.swift
//  AbroadTalking
//
//  Created by young on 2022/9/9.
//

//: import UIKit
import UIKit

//: struct SocialAdBannerModel: HandyJSON {
struct RawDataBannerModel: HandyJSON {
    // 广告图
    //: var pic: String = ""
    var pic: String = ""
    // 跳转链接
    //: var url: String = ""
    var url: String = ""
    // 跳转类型 0=无，1=跳转网页，2=跳转原生页面，3=游戏跳转，4=外部网页
    //: var type = 0
    var type = 0
    // 游戏宽高
    //: var widthHeight: Double?
    var widthHeight: Double?
    // 广告小图
    //: var thumbnail: String = ""
    var thumbnail: String = ""
}

// MARK: - Event

//: extension SocialAdBannerModel {
extension RawDataBannerModel {
    /// 跳转事件
    //: static func jumpEvent(model: SocialAdBannerModel) {
    static func topOpen(model: RawDataBannerModel) {
        //: if model.type == 1 {
        if model.type == 1 { // 网页跳转
            //: let newUrl: String = model.url
            let newUrl: String = model.url
            //: if newUrl.contains("/dist/loungePlus/index.html") {
            if newUrl.contains((String(kStr_playerTitleName.suffix(5)) + "/loun" + String(kStr_whiteData.suffix(4)) + "us/ind" + String(kStr_cellTitle.suffix(5)) + String(kStr_modelPlayerVideoValue))) {
                //: EffectPushManager.share.func__pushToSubscribePageWebVC()
                EffectPushManager.share.verso()
                //: return
                return
            }
            //: EffectPushManager.share.func__pushToWebVC(urlStr: model.url)
            EffectPushManager.share.deleteTake(urlStr: model.url)

            //: } else if model.type == 2 {
        } else if model.type == 2 { // 原生跳转
            //: guard let url = URL(string: model.url),
            guard let url = URL(string: model.url),
                  //: let components = URLComponents(url: url, resolvingAgainstBaseURL: false) else {
                  let components = URLComponents(url: url, resolvingAgainstBaseURL: false)
            else {
                //: return
                return
            }
            //: if model.url.contains("PremiumStarPlanBanner") { // 巨星计划
            if model.url.contains((String(kStr_taskContent.prefix(5)) + "umStar" + String(kStr_playName.suffix(4)) + "Bann" + String(kStr_modeValue))) { // 巨星计划
                //: SocialAdBannerModel.premiumStarPlanBanner()
                RawDataBannerModel.valueSun()
                //: return
                return
            }

            //: if let uidItem = components.queryItems?.first(where: { $0.name == "uid" }) {
            if let uidItem = components.queryItems?.first(where: { $0.name == (kStr_titleValue.replacingOccurrences(of: "insert", with: "d")) }) {
                //: let uid = uidItem.value ?? ""
                let uid = uidItem.value ?? ""
                //: if model.url.contains("mfChatGift") { // 私聊打开礼物面板
                if model.url.contains((String(kStr_frameValue.prefix(4)) + "atGi" + kStr_pointText.lowercased())) { // 私聊打开礼物面板
                    //: EffectPushManager.share.func__pushToPriveteChatVC(chatID: uid) { vc in
                    EffectPushManager.share.fromCompletion(chatID: uid) { vc in
                        //: vc.msgInputView.clickgiftBtn()
                        vc.msgInputView.giveAndTake()
                    }
                    //: } else if model.url.contains("mfChat") { // 私聊
                } else if model.url.contains((String(kStr_managerSValue.prefix(6)))) { // 私聊
                    //: EffectPushManager.share.func__pushToPriveteChatVC(chatID: uid)
                    EffectPushManager.share.fromCompletion(chatID: uid)
                    //: } else if model.url.contains("user") { // 用户详情
                } else if model.url.contains((String(kStr_directionImageHeightName))) { // 用户详情
                    //: EffectPushManager.share.func__pushToUserDetailVC(uid: uid)
                    EffectPushManager.share.userAdd(uid: uid)
                }
            }

            //: } else if model.type == 3 {
        } else if model.type == 3 { // 游戏跳转
            //: var config = TalkingWebConfig()
            var config = CanPlumeConfig()
            //: config.widthHeight = model.widthHeight
            config.widthHeight = model.widthHeight
            //: config.clearBgColor = true
            config.clearBgColor = true
            //: EffectPushManager.share.func__pushToWebVC(urlStr: model.url, webConfig: config)
            EffectPushManager.share.deleteTake(urlStr: model.url, webConfig: config)

            //: } else if model.type == 4 {
        } else if model.type == 4 { // 外部网页
            //: if let url = URL(string: model.url) {
            if let url = URL(string: model.url) {
                //: UIApplication.shared.open(url, options: [:], completionHandler: nil)
                UIApplication.shared.open(url, options: [:], completionHandler: nil)
            }
        }
    }

    /// 加入巨星计划
    //: static func premiumStarPlanBanner() {
    static func valueSun() {
        //: if LocationThen.share.loginUserMode.isTPAuth == TPUserAuth.isSuccessed.rawValue ||
        if LocationThen.share.loginUserMode.isTPAuth == FillContiguousBytes.isSuccessed.rawValue ||
            //: LocationThen.share.loginUserMode.isRealPersonAuth == false {
            LocationThen.share.loginUserMode.isRealPersonAuth == false
        { // 真人认证成功 || 不需要真人认证
            //: if LocationThen.share.loginUserMode.premiumStarApplyStatus != PStarStatus.isOnGoing.rawValue {
            if LocationThen.share.loginUserMode.premiumStarApplyStatus != UmbraColumnConvertible.isOnGoing.rawValue {
                //: EffectPushManager.share.func__pushToWebVC(webViewType: .StarPlanIndex)
                EffectPushManager.share.selectUp(webViewType: .StarPlanIndex)
                //: } else {
            } else {
                //: EffectPushManager.share.func__pushToWebVC(webViewType: .StarPlanAudit)
                EffectPushManager.share.selectUp(webViewType: .StarPlanAudit)
            }
            //: } else if LocationThen.share.loginUserMode.isTPAuth == TPUserAuth.isOnGoing.rawValue {
        } else if LocationThen.share.loginUserMode.isTPAuth == FillContiguousBytes.isOnGoing.rawValue { // 真人认证审核中
            //: NSObject().func__showStatusBarSuccessMsg(showMsg: "Please verification first".localized)
            NSObject().property(showMsg: (String(kStr_topTitle.prefix(6)) + " verif" + kStr_bottomContent.replacingOccurrences(of: "content", with: "t") + String(kStr_moreText.prefix(7))).localized)
            //: let vc = TalkingFinalVerificationVC()
            let vc = ClientPathViewController()
            //: EffectPushManager.share.func__getCurrentActivityVC()?.navigationController?.pushViewController(vc, animated: true)
            EffectPushManager.share.quantityimateTarget()?.navigationController?.pushViewController(vc, animated: true)
            //: } else {
        } else {
            //: NSObject().func__showStatusBarSuccessMsg(showMsg: "Please verification first".localized)
            NSObject().property(showMsg: (String(kStr_topTitle.prefix(6)) + " verif" + kStr_bottomContent.replacingOccurrences(of: "content", with: "t") + String(kStr_moreText.prefix(7))).localized)
            //: EffectPushManager.share.func__pushUserVerifyController(toast: nil)
            EffectPushManager.share.retirement(toast: nil)
        }
    }
}
