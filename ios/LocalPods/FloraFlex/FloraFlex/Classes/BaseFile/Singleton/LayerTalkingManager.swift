
//: Declare String Begin

/*: "launchFromApns" :*/
fileprivate let kStr_topTitle:String = "LAUNCH"
fileprivate let kStr_privacyContent:[Character] = ["s"]

/*: "type" :*/
fileprivate let kStr_modelValue:[Character] = ["t","y","p","e"]

/*: "fromUid" :*/
fileprivate let kStr_dataTitle:String = "part"
fileprivate let kStr_collectionData:String = "user up feed center giftromUid"

/*: "roomId" :*/
fileprivate let kStr_rangeTitle:String = "make"
fileprivate let kStr_liveData:[Character] = ["o","o","m","I","d"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  LayerTalkingManager.swift
//  AbroadTalking
//
//  Created by Hemming on 2022/9/26.
//

//: import UIKit
import UIKit

// 推送跳转
//: enum ANPSPushType: String {
enum SubTextConvertible: String {
    //: case IM = "6"           // 私聊页
    case IM = "6" // 私聊页
    //: case Chat_Room = "7"    // 聊天室
    case Chat_Room = "7" // 聊天室
    //: case Calling = "11"     // 音视频通话
    case Calling = "11" // 音视频通话
    //: case User_Info = "12"   // 用户详情
    case User_Info = "12" // 用户详情
}

//: class TalkingAPNSManager: NSObject {
class LayerTalkingManager: NSObject {
    //: var APNSUserInfoStr = ""
    var APNSUserInfoStr = ""
    //: @objc dynamic var launchFromApns = false
    @objc dynamic var launchFromApns = false
    //: private let disposeBag = DisposeBag()
    private let disposeBag = DisposeBag()
    //: @objc static let share = TalkingAPNSManager()
    @objc static let share = LayerTalkingManager()
    //: private override init() {}
    override private init() {}
    //: override func copy() -> Any { return self }
    override func copy() -> Any { return self }
    //: override func mutableCopy() -> Any { return self }
    override func mutableCopy() -> Any { return self }

    //: func func__listenAPNSInit() {
    func statusInit() {
        //: self.rx.observeWeakly(Bool.self, "launchFromApns")
        self.rx.observeWeakly(Bool.self, (kStr_topTitle.lowercased() + "FromApn" + String(kStr_privacyContent)))
            //: .subscribe(onNext: { (value) in
            .subscribe(onNext: { value in
                //: let valueBool = value ?? false
                let valueBool = value ?? false
                //: if valueBool {
                if valueBool {
                    //: self.func__actionWithPushInfo()
                    self.streetSmartEqual()
                }
                //: }).disposed(by: disposeBag)
            }).disposed(by: disposeBag)
    }

    //: func func__actionWithPushInfo() {
    func streetSmartEqual() {
        //: if !APNSUserInfoStr.isEmptyString {
        if !APNSUserInfoStr.isEmptyString {
            //: let json = JSON(parseJSON: APNSUserInfoStr)
            let json = JSON(parseJSON: APNSUserInfoStr)
            //: let type = json["type"].stringValue
            let type = json[(String(kStr_modelValue))].stringValue
            //: let apnsType = ANPSPushType(rawValue: type)
            let apnsType = SubTextConvertible(rawValue: type)
            //: DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 0.5) {
            DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 0.5) {
                //: switch(apnsType) {
                switch apnsType {
                //: case .IM:
                case .IM:
                    //: let fromUid = json["fromUid"].stringValue
                    let fromUid = json[(kStr_dataTitle.replacingOccurrences(of: "part", with: "f") + String(kStr_collectionData.suffix(6)))].stringValue
                    //: EffectPushManager.share.func__pushToPriveteChatVC(chatID: fromUid)
                    EffectPushManager.share.fromCompletion(chatID: fromUid)

                //: case .Chat_Room:
                case .Chat_Room:
                    //: let roomId = json["roomId"].stringValue
                    let roomId = json[(kStr_rangeTitle.replacingOccurrences(of: "make", with: "r") + String(kStr_liveData))].stringValue
                    //: EffectPushManager.share.func__pushToGroupChat(groupId: roomId)
                    EffectPushManager.share.alongOf(groupId: roomId)

                //: case .Calling:
                case .Calling:
                    //: break
                    break

                //: case .User_Info:
                case .User_Info:
                    //: let fromUid = json["fromUid"].stringValue
                    let fromUid = json[(kStr_dataTitle.replacingOccurrences(of: "part", with: "f") + String(kStr_collectionData.suffix(6)))].stringValue
                    //: EffectPushManager.share.func__pushToUserDetailVC(uid: fromUid)
                    EffectPushManager.share.userAdd(uid: fromUid)

                //: case .none:
                case .none:
                    //: break
                    break
                }

                // 跳转后还原数据
                //: TalkingAPNSManager.share.APNSUserInfoStr = ""
                LayerTalkingManager.share.APNSUserInfoStr = ""
                //: TalkingAPNSManager.share.launchFromApns = false
                LayerTalkingManager.share.launchFromApns = false
            }
        }
    }
}
