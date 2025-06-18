
//: Declare String Begin

/*: "identifier" :*/
fileprivate let kStr_colorMakeValue:[UInt8] = [0xdc,0xd1,0xd0,0xdb,0xc1,0xdc,0xd3,0xdc,0xd0,0xc7]

private func whitePoint(current num: UInt8) -> UInt8 {
    return num ^ 181
}

/*: "token" :*/
fileprivate let kStr_capacityValue:[UInt8] = [0xde,0xc5,0xc1,0xcf,0xc4]

private func returnVideo(position num: UInt8) -> UInt8 {
    return num ^ 170
}

/*: "authCode" :*/
fileprivate let kStr_labContent:[UInt8] = [0x38,0x2c,0x2d,0x31,0x1a,0x36,0x3d,0x3c]

private func copernicanSystem(to num: UInt8) -> UInt8 {
    return num ^ 89
}

/*:   :*/
fileprivate let kStr_centerValue:[Character] = [" "]

/*: "nickname" :*/
fileprivate let kStr_labValue:String = "fieldickfielda"
fileprivate let kStr_collectionValue:String = "labele"

/*: "授权请求失败未知原因" :*/
fileprivate let kStr_recordName:String = "授权share求失"
fileprivate let kStr_postValue:String = "败未知原因"

/*: "用户取消了授权请求" :*/
fileprivate let kStr_topTitle:[Character] = ["用","户"]
fileprivate let kStr_makeContent:String = "取消了授权请note"

/*: "授权请求失败" :*/
fileprivate let kStr_halfName:String = "授权请求失"
fileprivate let kStr_blackData:String = "\u{8d25}"

/*: "授权请求响应无效" :*/
fileprivate let kStr_activeLeadingTitle:String = "授权请求响view无效"

/*: "未能处理授权请求" :*/
fileprivate let kStr_attachName:[Character] = ["未","\u{80fd}","\u{5904}","理","授","权","请","求"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  LayerThen.swift
//  AbroadTalking
//
//  Created by young on 2022/8/30.
//

//: import AuthenticationServices
import AuthenticationServices
//: import UIKit
import UIKit

//: enum AppLeLoginError: Error {
enum LocationSendable: Error {
    //: case unknow
    case unknow
    //: case canceled
    case canceled
    //: case failed
    case failed
    //: case invalidResponse
    case invalidResponse
    //: case notHandled
    case notHandled
}

//: typealias LoginCompletionBlock = ([String: String]?) -> Void
typealias LoginCompletionBlock = ([String: String]?) -> Void

//: class AppleLoginManager: NSObject, ASAuthorizationControllerDelegate {
class LayerThen: NSObject, ASAuthorizationControllerDelegate {
    //: private var block: LoginCompletionBlock?
    private var block: LoginCompletionBlock?
    //: static let shared = AppleLoginManager()
    static let shared = LayerThen()
    //: private override init() { super.init() }
    override private init() { super.init() }
    //: override func copy() -> Any { return self }
    override func copy() -> Any { return self }
    //: override func mutableCopy() -> Any { return self }
    override func mutableCopy() -> Any { return self }

    /// 登录按钮
    /// - Parameter closure: 回调
    //: func login(closure: @escaping LoginCompletionBlock) {
    func loginToAtClosure(closure: @escaping LoginCompletionBlock) {
        //: if #available(iOS 13.0, *) {
        if #available(iOS 13.0, *) {
            //: self.block = closure
            self.block = closure
            //: let appleIDProvider = ASAuthorizationAppleIDProvider()
            let appleIDProvider = ASAuthorizationAppleIDProvider()
            //: let appleIDRequest = appleIDProvider.createRequest()
            let appleIDRequest = appleIDProvider.createRequest()
            // 用户授权请求的联系信息
            //: appleIDRequest.requestedScopes = [.fullName, .email]
            appleIDRequest.requestedScopes = [.fullName, .email]
            //: let authorizationController = ASAuthorizationController(authorizationRequests: [appleIDRequest])
            let authorizationController = ASAuthorizationController(authorizationRequests: [appleIDRequest])
            //: authorizationController.delegate = self
            authorizationController.delegate = self
            //: authorizationController.presentationContextProvider = self
            authorizationController.presentationContextProvider = self
            //: authorizationController.performRequests()
            authorizationController.performRequests()
        }
    }

    // MARK: - ASAuthorizationControllerDelegate

    //: @available(iOS 13.0, *)
    @available(iOS 13.0, *)
    //: func authorizationController(controller: ASAuthorizationController, didCompleteWithAuthorization authorization: ASAuthorization) {
    func authorizationController(controller _: ASAuthorizationController, didCompleteWithAuthorization authorization: ASAuthorization) {
        //: switch authorization.credential {
        switch authorization.credential {
        //: case let appleIDCredential as ASAuthorizationAppleIDCredential:
        case let appleIDCredential as ASAuthorizationAppleIDCredential:
            //: let user = appleIDCredential.user
            let user = appleIDCredential.user
            //: let identityTokenStr = String(data: appleIDCredential.identityToken!, encoding: .utf8)
            let identityTokenStr = String(data: appleIDCredential.identityToken!, encoding: .utf8)
            //: let authorizationCodeStr = String(data: appleIDCredential.authorizationCode!, encoding: .utf8)
            let authorizationCodeStr = String(data: appleIDCredential.authorizationCode!, encoding: .utf8)
            //: var params: [String: String]?
            var params: [String: String]?
            //: if (identityTokenStr != nil) && (authorizationCodeStr != nil) {
            if (identityTokenStr != nil) && (authorizationCodeStr != nil) {
                //: params = ["identifier": user,
                params = [String(bytes: kStr_colorMakeValue.map{whitePoint(current: $0)}, encoding: .utf8)!: user,
                          //: "token": identityTokenStr!,
                          String(bytes: kStr_capacityValue.map{returnVideo(position: $0)}, encoding: .utf8)!: identityTokenStr!,
                          //: "authCode": authorizationCodeStr!]
                          String(bytes: kStr_labContent.map{copernicanSystem(to: $0)}, encoding: .utf8)!: authorizationCodeStr!]

                //: if let familyName = appleIDCredential.fullName?.familyName, let givenName = appleIDCredential.fullName?.givenName {
                if let familyName = appleIDCredential.fullName?.familyName, let givenName = appleIDCredential.fullName?.givenName {
                    //: let nickname = "\(givenName) \(familyName)"
                    let nickname = "\(givenName) \(familyName)"
                    //: params!["nickname"] = nickname
                    params![(kStr_labValue.replacingOccurrences(of: "field", with: "n") + kStr_collectionValue.replacingOccurrences(of: "label", with: "m"))] = nickname
                    //: Defaults.set(nickname, forKey: TalkingAppleLoginNickNameKey)
                    kLet_managerValue.set(nickname, forKey: kLet_clickName)
                    //: } else {
                } else {
                    //: let nickname = Defaults.string(forKey: TalkingAppleLoginNickNameKey)
                    let nickname = kLet_managerValue.string(forKey: kLet_clickName)
                    //: if nickname != nil {
                    if nickname != nil {
                        //: params!["nickname"] = nickname
                        params![(kStr_labValue.replacingOccurrences(of: "field", with: "n") + kStr_collectionValue.replacingOccurrences(of: "label", with: "m"))] = nickname
                    }
                }
            }

            //: guard let block = block else { return }
            guard let block = block else { return }
            //: block(params)
            block(params)
        //: case is ASPasswordCredential:
        case is ASPasswordCredential:
//            let username = passwordCredential.user
//            let password = passwordCredential.password
            //: break
            break
        //: default:
        default:
            //: guard let block = block else { return }
            guard let block = block else { return }
            //: block(nil)
            block(nil)
            //: break
        }
    }

    //: @available(iOS 13.0, *)
    @available(iOS 13.0, *)
    //: private func authorizationController(controller: ASAuthorizationController, didCompleteWithError error: AppLeLoginError) {
    private func authorizationController(controller _: ASAuthorizationController, didCompleteWithError error: LocationSendable) {
        //: switch error {
        switch error {
        //: case .unknow:
        case .unknow:
            //: printLog(message: "授权请求失败未知原因")
            pathLine(message: (kStr_recordName.replacingOccurrences(of: "share", with: "请") + kStr_postValue.capitalized))
        //: case .canceled:
        case .canceled:
            //: printLog(message: "用户取消了授权请求")
            pathLine(message: (String(kStr_topTitle) + kStr_makeContent.replacingOccurrences(of: "note", with: "求")))
        //: case .failed:
        case .failed:
            //: printLog(message: "授权请求失败")
            pathLine(message: (kStr_halfName.capitalized + kStr_blackData))
        //: case .invalidResponse:
        case .invalidResponse:
            //: printLog(message: "授权请求响应无效")
            pathLine(message: (kStr_activeLeadingTitle.replacingOccurrences(of: "view", with: "应")))
        //: case .notHandled:
        case .notHandled:
            //: printLog(message: "未能处理授权请求")
            pathLine(message: (String(kStr_attachName)))
        }

        //: guard let block = block else { return }
        guard let block = block else { return }
        //: block(nil)
        block(nil)
    }
}

//: extension AppleLoginManager: ASAuthorizationControllerPresentationContextProviding {
extension LayerThen: ASAuthorizationControllerPresentationContextProviding {
    //: @available(iOS 13.0, *)
    @available(iOS 13.0, *)

    // MARK: - ASAuthorizationControllerPresentationContextProviding

    //: func presentationAnchor(for controller: ASAuthorizationController) -> ASPresentationAnchor {
    func presentationAnchor(for _: ASAuthorizationController) -> ASPresentationAnchor {
        //: return TableMacroDefine.getWindow()
        return TableMacroDefine.oeilDeBoeufView()
    }
}
