
//: Declare String Begin

/*: "app_marsxlog" :*/
fileprivate let kStr_rawContent:String = "app_info clear app text"

/*: "Install" :*/
fileprivate let kStr_toolModelName:[Character] = ["I","n","s","t","a","l"]
fileprivate let kStr_arrayValue:String = "balance"

/*: "LinkedME finished init with params(params.description)" :*/
fileprivate let kStr_equalText:[UInt8] = [0x66,0x43,0x44,0x41,0x4f,0x4e,0x67,0x6f,0xa,0x4c,0x43,0x44,0x43,0x59,0x42,0x4f,0x4e,0xa,0x43,0x44,0x43,0x5e,0xa,0x5d,0x43,0x5e,0x42,0xa,0x5a,0x4b,0x58,0x4b,0x47,0x59,0x2,0x5a,0x4b,0x58,0x4b,0x47,0x59,0x4,0x4e,0x4f,0x59,0x49,0x58,0x43,0x5a,0x5e,0x43,0x45,0x44,0x3]

private func colorRequest(add num: UInt8) -> UInt8 {
    return num ^ 42
}

/*: "$control" :*/
fileprivate let kStr_voiceTitle:String = "table manager message equal$con"

/*: "inviteCode" :*/
fileprivate let kStr_videoValue:[Character] = ["i","n","v","i","t"]
fileprivate let kStr_equalName:String = "succeed pic data typeeCode"

/*: "TXUGCBase初始化：result:  :*/
fileprivate let kStr_actionData:String = "partyXUGCB"
fileprivate let kStr_placeViewTitleName:[Character] = ["化","：","r","e","s","u","l","t",":"," "]

/*: , reason:  :*/
fileprivate let kStr_countValue:[Character] = [","," ","r","e","a","s","o","n",":"," "]

/*: ." :*/
fileprivate let kStr_piName:String = "."

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  ItemLineBaseDelegate+ThirdParty.swift
//  AbroadTalking
//
//  Created by Charlotte on 2022/11/3.
//

//: import Adjust
import Adjust
//: import DXMarsXlog
import DXMarsXlog
//: import Foundation
import Foundation
//: import TXLiteAVSDK_Professional
import TXLiteAVSDK_Professional
//: import UIKit
import UIKit

// MARK: - Public Event

//: extension AppDelegateHelper {
extension ItemLineBaseDelegate {
    /// 第三方sdk初始化
    /// - Parameter application: application
    //: func initThirdPartySetup(_ application: UIApplication) {
    func mottle(_: UIApplication) {
        // 程序启动就实例化进行监听（处理自动续订的情况）
        //: _ = AppleIAPManager.shared
        _ = ViewLayerManager.shared

        //: createMsgVoicePath()
        constructVolumeItem()

        //: DXMarsXLogger.shared().initWithNamePrefix("app_marsxlog")
        DXMarsXLogger.shared().initWithNamePrefix((String(kStr_rawContent.prefix(4)) + "marsxlog"))

        //: LayerConversationListener.shared.func__TXSDKInit()
        LayerConversationListener.shared.byFrom()

        //: initADjust()
        addVoice()
        // 首次打开埋点【只记录一次】
        //: TalkingAdjustManager.share.addOnceEvent(key: "Install")
        QualityAdjustManager.share.colorKey(key: (String(kStr_toolModelName) + kStr_arrayValue.replacingOccurrences(of: "balance", with: "l")))
        //: setupTXLive()
        transmutationMethod()
        //: setupTXUGC()
        sizePopDismiss()

        //: guard SenseTime_Use == true else { return }
        guard kLet_intervalName == true else { return }
        //: DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 3) {
        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 3) {
            //: if STLicHelper.share.checkLicense() == false {
            if STLicHelper.share.checkLicense() == false {
                //: SenseTime_Use = false
                kLet_intervalName = false
                //: STLicHelper.share.checkRemoteLicInfoWith { succeed in
                STLicHelper.share.checkRemoteLicInfoWith { succeed in
                    // 更新商汤美颜是否可用
                    //: SenseTime_Use = succeed
                    kLet_intervalName = succeed
                }
            }
        }
    }

    /// LinkedME初始化
    //: func initLinkedME(launchOptions: [UIApplication.LaunchOptionsKey: Any]?) {
    func optionsAcross(launchOptions _: [UIApplication.LaunchOptionsKey: Any]?) {
        //: let linkedme = LinkedME.getInstance()
        let linkedme = LinkedME.getInstance()
        // 解析深度链获取参数
        //: linkedme?.initSession(andRegisterDeepLinkHandler: { params, error in if error == nil {
        linkedme?.initSession(andRegisterDeepLinkHandler: { params, error in if error == nil {
            //: printLog(message: "LinkedME finished init with params(params.description)")
            pathLine(message: String(bytes: kStr_equalText.map{colorRequest(add: $0)}, encoding: .utf8)!)

            //: let inviteCode = UserDefaults.standard.string(forKey: SaveInviteCodeKey)
            let inviteCode = UserDefaults.standard.string(forKey: kLet_tableText)
            //: guard inviteCode == nil else {
            guard inviteCode == nil else {
                //: return
                return
            }
            //: let dic = params?["$control"] as? [String: Any]
            let dic = params?[(String(kStr_voiceTitle.suffix(4)) + "trol")] as? [String: Any]
            //: let code = dic?["inviteCode"] as? String
            let code = dic?[(String(kStr_videoValue) + String(kStr_equalName.suffix(5)))] as? String
            //: if code != nil, code?.count ?? 0 > 1 {
            if code != nil, code?.count ?? 0 > 1 {
                //: UserDefaults.standard.set(code, forKey: SaveInviteCodeKey)
                UserDefaults.standard.set(code, forKey: kLet_tableText)
            }

            //: } else {
        } else {
            //: printLog(message: error as Any)
            pathLine(message: error as Any)
        }

        //: })
        })
    }
}

// MARK: - Private Event

//: extension AppDelegateHelper {
extension ItemLineBaseDelegate {
    //: private func setupTXLive() {
    private func transmutationMethod() {
        // 腾讯SDK 6.4版本之后，推流功能需要license验证SDK，
        //: if TXLIVE_LICENSE_URL.count > 0 {
        if kLet_errPathName.count > 0 {
            //: TXLiveBase.setLicenceURL(TXLIVE_LICENSE_URL, key: TXLIVE_LICENSE_KEY)
            TXLiveBase.setLicenceURL(kLet_errPathName, key: kLet_indexValue)
            //: TXLiveBase.setLogLevel(.LOGLEVEL_VERBOSE)
            TXLiveBase.setLogLevel(.LOGLEVEL_VERBOSE)
        }
    }

    // 短视频license
    //: private func setupTXUGC() {
    private func sizePopDismiss() {
        //: TXUGCBase.setLicenceURL(TXLIVE_LICENSE_URL, key: TXLIVE_LICENSE_KEY)
        TXUGCBase.setLicenceURL(kLet_errPathName, key: kLet_indexValue)
        //: TXUGCBase.sharedInstance().delegate = self
        TXUGCBase.sharedInstance().delegate = self
    }

    /// adjust事件买点统计
    //: private func initADjust() {
    private func addVoice() {
        //: var environment = ""
        var environment = ""
        //: if !Environment_Formal {
        if !kLet_barVoiceValue {
            //: environment = ADJEnvironmentSandbox
            environment = ADJEnvironmentSandbox
            //: } else {
        } else {
            //: environment = ADJEnvironmentProduction
            environment = ADJEnvironmentProduction
        }
        //: let yourAppToken = AdjustKey
        let yourAppToken = kLet_halfContent
        //: let adjustConfig = ADJConfig(appToken: yourAppToken, environment: environment)
        let adjustConfig = ADJConfig(appToken: yourAppToken, environment: environment)
        //: adjustConfig?.logLevel = ADJLogLevelWarn
        adjustConfig?.logLevel = ADJLogLevelWarn
        //: Adjust.appDidLaunch(adjustConfig)
        Adjust.appDidLaunch(adjustConfig)
    }
}

// MARK: - TXUGCBaseDelegate【短视频压缩、上传】

//: extension AppDelegateHelper: TXUGCBaseDelegate {
extension ItemLineBaseDelegate: TXUGCBaseDelegate {
    //: public func onLicenceLoaded(_ result: Int32, reason: String!) {
    public func onLicenceLoaded(_ result: Int32, reason: String!) {
        //: MiniLoadThen.appLine(msg: "TXUGCBase初始化：result: \(result), reason: \(String(describing: reason)).")
        MiniLoadThen.appLine(msg: (kStr_actionData.replacingOccurrences(of: "party", with: "T") + "ase\u{521d}\u{59cb}" + String(kStr_placeViewTitleName)) + "\(result)" + (String(kStr_countValue)) + "\(String(describing: reason)).")
    }
}
