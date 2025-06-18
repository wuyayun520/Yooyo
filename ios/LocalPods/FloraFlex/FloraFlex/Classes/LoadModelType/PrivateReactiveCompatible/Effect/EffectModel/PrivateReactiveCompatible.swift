
//: Declare String Begin

/*: "unarchive failure in init" :*/
fileprivate let kStr_processorData:String = "unarmid"
fileprivate let kStr_maxValue:String = "faileadingr"
fileprivate let kStr_value:String = "extrait"

/*: "App" :*/
fileprivate let kStr_addName:[Character] = ["A","p","p"]

/*: "privateChatEffect%@" :*/
fileprivate let kStr_photoText:String = "privdevice"
fileprivate let kStr_fileValue:String = "empty bag make string cancelect%@"

/*: "extra" :*/
fileprivate let kStr_viewValue:String = "extmakea"

/*: "user" :*/
fileprivate let kStr_infoData:String = "shareser"

/*: "%@" :*/
fileprivate let kStr_endName:[Character] = ["%","@"]

/*: "id" :*/
fileprivate let kStr_backToName:[Character] = ["i","d"]

/*: "gift" :*/
fileprivate let kStr_sizeTitle:String = "gviewt"

/*: "fromUid" :*/
fileprivate let kStr_layerData:String = "fromUif self cancel"
fileprivate let kStr_tabModelInData:[Character] = ["i","d"]

/*: "fromNickname" :*/
fileprivate let kStr_explainTitle:String = "fromNiheight model text error gesture"

/*: "name" :*/
fileprivate let kStr_appName:[Character] = ["n","a","m","e"]

/*: "fromHeadPic" :*/
fileprivate let kStr_factorName:String = "fromHeraw status"

/*: "icon" :*/
fileprivate let kStr_lastData:String = "itingn"

/*: "pid" :*/
fileprivate let kStr_meValue:String = "PID"

/*: "num" :*/
fileprivate let kStr_detailMenuTitle:String = "nuicon"

/*: "pname" :*/
fileprivate let kStr_cardTitle:[Character] = ["p","n","a","m","e"]

/*: "giftPic" :*/
fileprivate let kStr_gameText:String = "color messagegiftPic"

/*: "comboNum" :*/
fileprivate let kStr_equalDetailValue:String = "indicator"
fileprivate let kStr_picName:String = "window make self pageomboNum"

/*: "iosEffect" :*/
fileprivate let kStr_withTitle:String = "iosEmessage view or"

/*: "showType" :*/
fileprivate let kStr_appValue:[Character] = ["s","h","o","w","T","y","p","e"]

/*: "animationTimes" :*/
fileprivate let kStr_makeMinimumName:[Character] = ["a","n","i","m","a","t","i","o","n","T","i","m"]
fileprivate let kStr_rawColumnName:String = "datas"

/*: "iosVapEffect" :*/
fileprivate let kStr_mainValue:[Character] = ["i","o","s","V","a","p","E","f","f","e","c","t"]

/*: "msgInfo" :*/
fileprivate let kStr_photoViewText:String = "msgInfback top return border"
fileprivate let kStr_listMakeValue:String = "title"

/*: "mfBean" :*/
fileprivate let kStr_groupText:[UInt8] = [0xf2,0xf9,0xdd,0xfa,0xfe,0xf1]

private func contentIndexBlock(reply num: UInt8) -> UInt8 {
    return num ^ 159
}

/*: "toUser" :*/
fileprivate let kStr_headValue:String = "toUserhead type name array false"

/*: "uid" :*/
fileprivate let kStr_arrayBarSucceedContent:[Character] = ["u","i","d"]

/*: "giftNum" :*/
fileprivate let kStr_titleRenderName:[Character] = ["g","i","f","t","N","u","m"]

/*: "nickname" :*/
fileprivate let kStr_toData:[Character] = ["n","i","c","k","n","a","m"]
fileprivate let kStr_shareAppInData:String = "mode"

/*: "Send to %@" :*/
fileprivate let kStr_normalData:String = "cell share title title normalSend"
fileprivate let kStr_managerImageValue:[Character] = ["@"]

/*: "Send to All Numbers" :*/
fileprivate let kStr_videoText:[Character] = ["S","e","n","d"," ","t","o"]
fileprivate let kStr_coverData:String = "else import All"

/*: "headPic" :*/
fileprivate let kStr_targetValue:String = "hmake"
fileprivate let kStr_nameData:String = "class index user topadPic"

/*: "LiveGift_%@" :*/
fileprivate let kStr_acrossData:[Character] = ["L","i","v","e","G","i","f","t","_","%","@"]

/*: "toUid" :*/
fileprivate let kStr_sharedData:String = "to cell return self positiontoUid"

/*: "PartyGift_%@" :*/
fileprivate let kStr_sexData:String = "Partyself import original true for"
fileprivate let kStr_arrayName:[Character] = ["G","i","f","t","_","%","@"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  PrivateReactiveCompatible.swift
//  AbroadTalking
//
//  Created by Charlotte on 2023/3/6.
//

/// 私聊 动效管理  会话id->礼物动效数组  本地存起来

//: import UIKit
import UIKit

//: @objc class AbTalkingPrivateChatAnimatTool: NSObject {
@objc class PrivateReactiveCompatible: NSObject {
    //: var cachDict = NSMutableDictionary(capacity: 0)
    var cachDict = NSMutableDictionary(capacity: 0)

    //: @objc static let shared = AbTalkingPrivateChatAnimatTool()
    @objc static let shared = PrivateReactiveCompatible()

    //: override private init() {
    override private init() {
        //: super.init()
        super.init()
        //: readAnimatData()
        laissezPasserData()
    }

    //: override func copy() -> Any { return self }
    override func copy() -> Any { return self }
    //: override func mutableCopy() -> Any { return self }
    override func mutableCopy() -> Any { return self }
}

//: @objc extension AbTalkingPrivateChatAnimatTool {
@objc extension PrivateReactiveCompatible {
    /// 初始化,读取缓存归档的文件
    //: func readAnimatData() {
    func laissezPasserData() {
        //: if #available(iOS 11.0, *) {
        if #available(iOS 11.0, *) {
            //: do {
            do {
                //: let data = try Data(contentsOf: URL(fileURLWithPath: getPrivateChatAnimtoFile()))
                let data = try Data(contentsOf: URL(fileURLWithPath: keyMake()))
                //: if let dict: NSDictionary = try NSKeyedUnarchiver.unarchiveTopLevelObjectWithData(data) as? NSDictionary {
                if let dict: NSDictionary = try NSKeyedUnarchiver.unarchiveTopLevelObjectWithData(data) as? NSDictionary {
                    //: self.cachDict = NSMutableDictionary(dictionary: dict)
                    self.cachDict = NSMutableDictionary(dictionary: dict)
                }
                //: } catch {
            } catch {
                //: printLog(message: "unarchive failure in init")
                pathLine(message: (kStr_processorData.replacingOccurrences(of: "mid", with: "c") + "hive " + kStr_maxValue.replacingOccurrences(of: "leading", with: "lu") + "e in i" + kStr_value.replacingOccurrences(of: "extra", with: "n")))
            }
            //: } else {
        } else {
            //: let dict: NSDictionary? = NSKeyedUnarchiver.unarchiveObject(withFile: self.getPrivateChatAnimtoFile()) as? NSDictionary
            let dict: NSDictionary? = NSKeyedUnarchiver.unarchiveObject(withFile: self.keyMake()) as? NSDictionary
            //: if dict != nil {
            if dict != nil {
                //: self.cachDict = NSMutableDictionary(dictionary: dict!)
                self.cachDict = NSMutableDictionary(dictionary: dict!)
            }
        }
    }

    /// 存储缓存
    //: func saveAnimatDataToFile() {
    func instanceFile() {
        //: if #available(iOS 11.0, *) {
        if #available(iOS 11.0, *) {
            //: do {
            do {
                //: let data = try NSKeyedArchiver.archivedData(withRootObject: self.cachDict, requiringSecureCoding: true)
                let data = try NSKeyedArchiver.archivedData(withRootObject: self.cachDict, requiringSecureCoding: true)
                //: try data.write(to: URL(fileURLWithPath: getPrivateChatAnimtoFile()))
                try data.write(to: URL(fileURLWithPath: keyMake()))
                //: } catch {
            } catch {
                //: printLog(message: error)
                pathLine(message: error)
            }

            //: } else {
        } else {
            //: NSKeyedArchiver.archiveRootObject(self.cachDict, toFile: self.getPrivateChatAnimtoFile())
            NSKeyedArchiver.archiveRootObject(self.cachDict, toFile: self.keyMake())
        }
    }

    //: func getPrivateChatAnimtoFile() -> String {
    func keyMake() -> String {
        //: let documentFilePath = NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true).first ?? ""
        let documentFilePath = NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true).first ?? ""
        //: let appPath = (documentFilePath as NSString).appendingPathComponent("App")
        let appPath = (documentFilePath as NSString).appendingPathComponent((String(kStr_addName)))

        //: let fm = FileManager.default
        let fm = FileManager.default
        //: if fm.fileExists(atPath: appPath) == false {
        if fm.fileExists(atPath: appPath) == false {
            //: try? FileManager.default.createDirectory(atPath: appPath, withIntermediateDirectories: true)
            try? FileManager.default.createDirectory(atPath: appPath, withIntermediateDirectories: true)
        }

        //: let name = String(format: "privateChatEffect%@", LocationThen.share.loginUserMode.userID)
        let name = String(format: (kStr_photoText.replacingOccurrences(of: "device", with: "a") + "teChatEff" + String(kStr_fileValue.suffix(5))), LocationThen.share.loginUserMode.userID)
        //: let filePath = (appPath as NSString).appendingPathComponent(name)
        let filePath = (appPath as NSString).appendingPathComponent(name)
        //: return filePath
        return filePath
    }

    /// 根据会话获取需要播放的礼物动效数组,同时会删除
    //: func getConverCacheGiftAnimat(tagetId: String) -> NSMutableArray {
    func withModel(tagetId: String) -> NSMutableArray {
        //: let data: NSMutableArray? = self.cachDict.object(forKey: tagetId) as? NSMutableArray
        let data: NSMutableArray? = self.cachDict.object(forKey: tagetId) as? NSMutableArray
        //: let modelArray = NSMutableArray(capacity: 0)
        let modelArray = NSMutableArray(capacity: 0)
        //: if data != nil {
        if data != nil {
            //: for dict in data! {
            for dict in data! {
                //: if let giftModel = JSONDeserializer<TalkingGiftMsgAnimatModel>.deserializeFrom(dict: dict as? [String: Any], designatedPath: nil) {
                if let giftModel = JSONDeserializer<SubMeasurable>.deserializeFrom(dict: dict as? [String: Any], designatedPath: nil) {
                    //: modelArray.add(giftModel)
                    modelArray.add(giftModel)
                }
            }
            //: self.cachDict.removeObject(forKey: tagetId)
            self.cachDict.removeObject(forKey: tagetId)
        }
        //: self.saveAnimatDataToFile()
        self.instanceFile()
        //: return modelArray
        return modelArray
    }

    /// 删除会话,同步删除缓存
    //: func removeConversionAnimat(targetID: String) {
    func nameOfBy(targetID: String) {
        //: if !targetID.isEmptyString, self.cachDict.object(forKey: targetID) != nil {
        if !targetID.isEmptyString, self.cachDict.object(forKey: targetID) != nil {
            //: self.cachDict.removeObject(forKey: targetID)
            self.cachDict.removeObject(forKey: targetID)
            //: self.saveAnimatDataToFile()
            self.instanceFile()
        }
    }

    /// 收到礼物消息处理
    //: func disposeReceiveGiftMsg(giftMessageDic: NSDictionary) {
    func anPlus(giftMessageDic: NSDictionary) {
        //: DispatchQueue.main.async {
        DispatchQueue.main.async {
            //: let extraDict: Dictionary? = giftMessageDic["extra"] as? [String: Any]
            let extraDict: Dictionary? = giftMessageDic[(kStr_viewValue.replacingOccurrences(of: "make", with: "r"))] as? [String: Any]
            //: let user: NSDictionary? = giftMessageDic["user"] as? NSDictionary
            let user: NSDictionary? = giftMessageDic[(kStr_infoData.replacingOccurrences(of: "share", with: "u"))] as? NSDictionary
            //: let targetId = String(format: "%@", user?["id"] as! CVarArg)
            let targetId = String(format: "%@", user?["id"] as! CVarArg)

            //: if extraDict == nil || extraDict?.keys.contains("gift") == false {
            if extraDict == nil || extraDict?.keys.contains((kStr_sizeTitle.replacingOccurrences(of: "view", with: "if"))) == false {
                //: return
                return
            }
            //: if let roomGiftModel = JSONDeserializer<TalkingGiftChatMsgAnimatModel>.deserializeFrom(dict: extraDict!["gift"] as? [String: Any], designatedPath: nil) {
            if let roomGiftModel = JSONDeserializer<AscertainModelType>.deserializeFrom(dict: extraDict![(kStr_sizeTitle.replacingOccurrences(of: "view", with: "if"))] as? [String: Any], designatedPath: nil) {
                //: var effect = roomGiftModel.iosEffect
                var effect = roomGiftModel.iosEffect
                //: if effect.count == 0 {
                if effect.count == 0 {
                    //: effect = roomGiftModel.effect
                    effect = roomGiftModel.effect
                }

                //: let tempGiftModel = NSMutableArray()
                let tempGiftModel = NSMutableArray()
                //: let tempDictM = NSMutableArray()
                let tempDictM = NSMutableArray()

                // 帝王礼物特效
                //: if roomGiftModel.iosEmperorEffect?.count ?? 0 > 0 {
                if roomGiftModel.iosEmperorEffect?.count ?? 0 > 0 {
                    // 开头动效
                    //: let giftArr: NSMutableArray? = roomGiftModel.iosEmperorEffect as? NSMutableArray
                    let giftArr: NSMutableArray? = roomGiftModel.iosEmperorEffect as? NSMutableArray
                    //: giftArr?.insert(roomGiftModel.iosEffect, at: 0)
                    giftArr?.insert(roomGiftModel.iosEffect, at: 0)

                    //: let tempArr = NSMutableArray()
                    let tempArr = NSMutableArray()
                    //: let tempDicArr = NSMutableArray()
                    let tempDicArr = NSMutableArray()

                    //: for giftStr in giftArr! {
                    for giftStr in giftArr! {
                        //: let dictM = NSMutableDictionary(capacity: 0)
                        let dictM = NSMutableDictionary(capacity: 0)
                        //: dictM["fromUid"] = targetId
                        dictM[(String(kStr_layerData.prefix(5)) + String(kStr_tabModelInData))] = targetId
                        //: dictM["fromNickname"] = user?["name"]
                        dictM[(String(kStr_explainTitle.prefix(6)) + "ckname")] = user?[(String(kStr_appName))]
                        //: dictM["fromHeadPic"] = user?["icon"]
                        dictM[(String(kStr_factorName.prefix(6)) + "adPic")] = user?[(kStr_lastData.replacingOccurrences(of: "ting", with: "co"))]
                        //: dictM["pid"] = "0" // 缓存兼容
                        dictM[(kStr_meValue.lowercased())] = "0" // 缓存兼容
                        //: dictM["num"] = (roomGiftModel.giftNum)
                        dictM[(kStr_detailMenuTitle.replacingOccurrences(of: "icon", with: "m"))] = (roomGiftModel.giftNum)
                        //: dictM["pname"] = roomGiftModel.name
                        dictM[(String(kStr_cardTitle))] = roomGiftModel.name
                        //: dictM["giftPic"] = roomGiftModel.imgPreview
                        dictM[(String(kStr_gameText.suffix(7)))] = roomGiftModel.imgPreview
                        //: dictM["comboNum"] = (roomGiftModel.comboNum)
                        dictM[(kStr_equalDetailValue.replacingOccurrences(of: "indicator", with: "c") + String(kStr_picName.suffix(7)))] = (roomGiftModel.comboNum)
                        //: dictM["iosEffect"] = giftStr
                        dictM[(String(kStr_withTitle.prefix(4)) + "ffect")] = giftStr
                        //: dictM["showType"] = (roomGiftModel.showType)
                        dictM[(String(kStr_appValue))] = (roomGiftModel.showType)
                        //: dictM["animationTimes"] = "1"
                        dictM[(String(kStr_makeMinimumName) + kStr_rawColumnName.replacingOccurrences(of: "data", with: "e"))] = "1"

                        //: if let giftModel = JSONDeserializer<TalkingGiftMsgAnimatModel>.deserializeFrom(dict: dictM as? [String: Any], designatedPath: nil) {
                        if let giftModel = JSONDeserializer<SubMeasurable>.deserializeFrom(dict: dictM as? [String: Any], designatedPath: nil) {
                            //: tempArr.add(giftModel)
                            tempArr.add(giftModel)
                            //: tempDicArr.add(dictM)
                            tempDicArr.add(dictM)
                        }
                    }
                    // 循环播放次数
                    //: var animationTimes = 1
                    var animationTimes = 1
                    //: if roomGiftModel.animationTimes > 0 {
                    if roomGiftModel.animationTimes > 0 {
                        //: animationTimes = roomGiftModel.animationTimes
                        animationTimes = roomGiftModel.animationTimes
                        //: } else {
                    } else {
                        //: animationTimes = roomGiftModel.giftNum
                        animationTimes = roomGiftModel.giftNum
                    }
                    //: let tempGiftArr = tempArr
                    let tempGiftArr = tempArr
                    //: for _ in 0..<animationTimes {
                    for _ in 0 ..< animationTimes {
                        //: tempGiftModel.addObjects(from: tempGiftArr as! [Any])
                        tempGiftModel.addObjects(from: tempGiftArr as! [Any])
                        //: tempDictM.addObjects(from: tempDicArr as! [Any])
                        tempDictM.addObjects(from: tempDicArr as! [Any])
                    }
                    //: } else {
                } else {
                    //: let dictM = NSMutableDictionary(capacity: 0)
                    let dictM = NSMutableDictionary(capacity: 0)

                    //: dictM["fromUid"] = targetId
                    dictM[(String(kStr_layerData.prefix(5)) + String(kStr_tabModelInData))] = targetId
                    //: dictM["fromNickname"] = user?["name"]
                    dictM[(String(kStr_explainTitle.prefix(6)) + "ckname")] = user?[(String(kStr_appName))]
                    //: dictM["fromHeadPic"] = user?["icon"]
                    dictM[(String(kStr_factorName.prefix(6)) + "adPic")] = user?[(kStr_lastData.replacingOccurrences(of: "ting", with: "co"))]

                    //: dictM["pid"] = roomGiftModel.giftId
                    dictM[(kStr_meValue.lowercased())] = roomGiftModel.giftId
                    //: dictM["num"] = (roomGiftModel.giftNum)
                    dictM[(kStr_detailMenuTitle.replacingOccurrences(of: "icon", with: "m"))] = (roomGiftModel.giftNum)
                    //: dictM["pname"] = roomGiftModel.name
                    dictM[(String(kStr_cardTitle))] = roomGiftModel.name
                    //: dictM["giftPic"] = roomGiftModel.imgPreview
                    dictM[(String(kStr_gameText.suffix(7)))] = roomGiftModel.imgPreview
                    //: dictM["comboNum"] = (roomGiftModel.comboNum)
                    dictM[(kStr_equalDetailValue.replacingOccurrences(of: "indicator", with: "c") + String(kStr_picName.suffix(7)))] = (roomGiftModel.comboNum)
                    //: dictM["iosEffect"] = effect
                    dictM[(String(kStr_withTitle.prefix(4)) + "ffect")] = effect
                    //: dictM["iosVapEffect"] = roomGiftModel.iosVapEffect
                    dictM[(String(kStr_mainValue))] = roomGiftModel.iosVapEffect

                    //: dictM["showType"] = (roomGiftModel.showType)
                    dictM[(String(kStr_appValue))] = (roomGiftModel.showType)
                    //: if roomGiftModel.animationTimes > 0 {
                    if roomGiftModel.animationTimes > 0 {
                        //: dictM["animationTimes"] = (roomGiftModel.animationTimes)
                        dictM[(String(kStr_makeMinimumName) + kStr_rawColumnName.replacingOccurrences(of: "data", with: "e"))] = (roomGiftModel.animationTimes)
                        //: } else {
                    } else {
                        //: dictM["animationTimes"] = dictM["num"]
                        dictM[(String(kStr_makeMinimumName) + kStr_rawColumnName.replacingOccurrences(of: "data", with: "e"))] = dictM[(kStr_detailMenuTitle.replacingOccurrences(of: "icon", with: "m"))]
                    }

                    //: if let giftModel = JSONDeserializer<TalkingGiftMsgAnimatModel>.deserializeFrom(dict: dictM as? [String: Any], designatedPath: nil) {
                    if let giftModel = JSONDeserializer<SubMeasurable>.deserializeFrom(dict: dictM as? [String: Any], designatedPath: nil) {
                        //: tempGiftModel.add(giftModel)
                        tempGiftModel.add(giftModel)
                        //: tempDictM.add(dictM)
                        tempDictM.add(dictM)
                    }
                }

                //: guard let currentVC = self.currentViewController() else { return }
                guard let currentVC = self.giftFew() else { return }

                // 直播收到礼物，积分更改
                //: if TalkingLiveManager.shared().isLive {
                if VideoPushListener.isGesture().isLive {
                    //: let msgInfo: Dictionary? = extraDict?["msgInfo"] as? [String: Any]
                    let msgInfo: Dictionary? = extraDict?[(String(kStr_photoViewText.prefix(6)) + kStr_listMakeValue.replacingOccurrences(of: "title", with: "o"))] as? [String: Any]
                    //: let mfBean = msgInfo?["mfBean"] as? Double
                    let mfBean = msgInfo?[String(bytes: kStr_groupText.map{contentIndexBlock(reply: $0)}, encoding: .utf8)!] as? Double
                    //: NotificationCenter.default.post(name: LIVE_USER_POINT_CHANGE, object: nil, userInfo: ["mfBean": mfBean ?? 0.0])
                    NotificationCenter.default.post(name: kLet_countData, object: nil, userInfo: [String(bytes: kStr_groupText.map{contentIndexBlock(reply: $0)}, encoding: .utf8)!: mfBean ?? 0.0])
                }
                // 当前处于该对话页 添加到当前动画队列里
                //: if let videoVC = currentVC as? TalkingVideoChatViewController {
                if let videoVC = currentVC as? ShadowErrorDelegate {
                    // 音视频通话时，只展示通话人的礼物
                    //: if LocationThen.share.loginUserMode.userID != targetId,
                    if LocationThen.share.loginUserMode.userID != targetId,
                       //: videoVC.chatModel?.pairUid == targetId
                       videoVC.chatModel?.pairUid == targetId
                    {
                        //: videoVC.receiveGiftPlay(giftArr: tempGiftModel as! [Any])
                        videoVC.graduateChangeDowery(giftArr: tempGiftModel as! [Any])
                        //: return
                        return
                    }

                    //: } else if let voiceVC = currentVC as? TalkingVoiceChatViewController {
                } else if let voiceVC = currentVC as? SucceedRecognizerDelegate {
                    // 音视频通话时，只展示通话人的礼物
                    //: if LocationThen.share.loginUserMode.userID != targetId,
                    if LocationThen.share.loginUserMode.userID != targetId,
                       //: voiceVC.chatModel?.pairUid == targetId
                       voiceVC.chatModel?.pairUid == targetId
                    {
                        //: voiceVC.receiveGiftPlay(giftArr: tempGiftModel as! [Any])
                        voiceVC.toALesserExtent(giftArr: tempGiftModel as! [Any])
                        //: return
                        return
                    }

                    //: } else if let chatVC = currentVC as? TalkingPrivateChatController {
                } else if let chatVC = currentVC as? SucceedTitleControllerDelegate {
                    //: if chatVC.getChatVCTargetId() == targetId {
                    if chatVC.ambages() == targetId {
                        //: chatVC.addGiftEffectModelArr(giftArr: tempGiftModel as! [Any])
                        chatVC.pageArr(giftArr: tempGiftModel as! [Any])
                        //: return
                        return
                    }

                    /// 直播中/语聊房 半屏私聊收到个人私聊礼物
                    //: } else if currentVC.isKind(of: TalkingLiveBeautifyViewController.self) ||
                } else if currentVC.isKind(of: SharedViewRecognizerDelegate.self) ||
                    //: currentVC.isKind(of: TalkingVoiceRoomViewController.self) {
                    currentVC.isKind(of: BottomViewObserverDelegate.self)
                {
                    //: for vc in currentVC.children {
                    for vc in currentVC.children {
                        //: if vc.isKind(of: TalkingPrivateChatController.self) {
                        if vc.isKind(of: SucceedTitleControllerDelegate.self) {
                            //: let chatVC = vc as! TalkingPrivateChatController
                            let chatVC = vc as! SucceedTitleControllerDelegate
                            //: if chatVC.getChatVCTargetId() == targetId {
                            if chatVC.ambages() == targetId {
                                //: chatVC.addGiftEffectModelArr(giftArr: tempGiftModel as! [Any])
                                chatVC.pageArr(giftArr: tempGiftModel as! [Any])
                                //: return
                                return
                            }
                        }
                    }
                }

                // 不是该会话 或者 不处于会话页  即使通话也是处于最小化, 则若是礼物动效 存到本地 供下次打开播放
                //: var giftArray: NSMutableArray? = self.cachDict[targetId] as? NSMutableArray
                var giftArray: NSMutableArray? = self.cachDict[targetId] as? NSMutableArray
                //: if giftArray == nil {
                if giftArray == nil {
                    //: giftArray = NSMutableArray(capacity: 0)
                    giftArray = NSMutableArray(capacity: 0)
                }
                //: giftArray?.addObjects(from: tempDictM as! [Any])
                giftArray?.addObjects(from: tempDictM as! [Any])
                //: self.cachDict[targetId] = giftArray
                self.cachDict[targetId] = giftArray
                //: self.saveAnimatDataToFile()
                self.instanceFile()
            }
        }
    }

    /// 聊天室收到礼物消息处理
    //: func chatRoomDisposeReceiveGiftMsg(giftMessageDic: NSDictionary) {
    func course(giftMessageDic: NSDictionary) {
        //: DispatchQueue.main.async {
        DispatchQueue.main.async {
            //: let extraDict: Dictionary? = giftMessageDic["extra"] as? [String: Any]
            let extraDict: Dictionary? = giftMessageDic[(kStr_viewValue.replacingOccurrences(of: "make", with: "r"))] as? [String: Any]
            //: let user: NSDictionary? = extraDict?["user"] as? NSDictionary
            let user: NSDictionary? = extraDict?[(kStr_infoData.replacingOccurrences(of: "share", with: "u"))] as? NSDictionary
            //: let touser: NSDictionary? = extraDict?["toUser"] as? NSDictionary
            let touser: NSDictionary? = extraDict?[(String(kStr_headValue.prefix(6)))] as? NSDictionary
            //: let targetId = user?["uid"] as? String
            let targetId = user?[(String(kStr_arrayBarSucceedContent))] as? String

            //: if extraDict == nil || extraDict?.keys.contains("gift") == false {
            if extraDict == nil || extraDict?.keys.contains((kStr_sizeTitle.replacingOccurrences(of: "view", with: "if"))) == false {
                //: return
                return
            }
            //: if var roomGiftModel = JSONDeserializer<TalkingGiftChatMsgAnimatModel>.deserializeFrom(dict: extraDict!["gift"] as? [String: Any], designatedPath: nil) {
            if var roomGiftModel = JSONDeserializer<AscertainModelType>.deserializeFrom(dict: extraDict![(kStr_sizeTitle.replacingOccurrences(of: "view", with: "if"))] as? [String: Any], designatedPath: nil) {
                //: let dic = extraDict?["gift"] as? [String: Any]
                let dic = extraDict?[(kStr_sizeTitle.replacingOccurrences(of: "view", with: "if"))] as? [String: Any]
                //: roomGiftModel.giftNum = dic?["giftNum"] as? Int ?? 0
                roomGiftModel.giftNum = dic?[(String(kStr_titleRenderName))] as? Int ?? 0
                //: var effect = roomGiftModel.iosEffect
                var effect = roomGiftModel.iosEffect
                //: if effect.count == 0 {
                if effect.count == 0 {
                    //: effect = roomGiftModel.effect
                    effect = roomGiftModel.effect
                }

                //: let tempGiftModel = NSMutableArray()
                let tempGiftModel = NSMutableArray()
                //: let tempDictM = NSMutableArray()
                let tempDictM = NSMutableArray()

                // 帝王礼物特效
                //: if roomGiftModel.iosEmperorEffect?.count ?? 0 > 0 {
                if roomGiftModel.iosEmperorEffect?.count ?? 0 > 0 {
                    // 开头动效
                    //: let giftArr: NSMutableArray? = roomGiftModel.iosEmperorEffect as? NSMutableArray
                    let giftArr: NSMutableArray? = roomGiftModel.iosEmperorEffect as? NSMutableArray
                    //: giftArr?.insert(roomGiftModel.iosEffect, at: 0)
                    giftArr?.insert(roomGiftModel.iosEffect, at: 0)

                    //: let tempArr = NSMutableArray()
                    let tempArr = NSMutableArray()
                    //: let tempDicArr = NSMutableArray()
                    let tempDicArr = NSMutableArray()

                    //: for giftStr in giftArr! {
                    for giftStr in giftArr! {
                        //: let dictM = NSMutableDictionary(capacity: 0)
                        let dictM = NSMutableDictionary(capacity: 0)
                        //: dictM["fromUid"] = targetId
                        dictM[(String(kStr_layerData.prefix(5)) + String(kStr_tabModelInData))] = targetId
                        //: dictM["fromNickname"] = user?["name"]
                        dictM[(String(kStr_explainTitle.prefix(6)) + "ckname")] = user?[(String(kStr_appName))]
                        //: dictM["fromHeadPic"] = user?["icon"]
                        dictM[(String(kStr_factorName.prefix(6)) + "adPic")] = user?[(kStr_lastData.replacingOccurrences(of: "ting", with: "co"))]
                        //: dictM["pid"] = "0" // 缓存兼容
                        dictM[(kStr_meValue.lowercased())] = "0" // 缓存兼容
                        //: dictM["num"] = (roomGiftModel.giftNum)
                        dictM[(kStr_detailMenuTitle.replacingOccurrences(of: "icon", with: "m"))] = (roomGiftModel.giftNum)
                        //: let str = touser?["nickname"] as? String ?? ""
                        let str = touser?[(String(kStr_toData) + kStr_shareAppInData.replacingOccurrences(of: "mode", with: "e"))] as? String ?? ""
                        //: dictM["pname"] = "Send to %@".localizedArguments(str)
                        dictM[(String(kStr_cardTitle))] = (String(kStr_normalData.suffix(4)) + " to %" + String(kStr_managerImageValue)).imageArguments(str)
                        //: if touser == nil {
                        if touser == nil {
                            //: dictM["pname"] = "Send to All Numbers".localized
                            dictM[(String(kStr_cardTitle))] = (String(kStr_videoText) + String(kStr_coverData.suffix(4)) + " Numbers").localized
                        }
                        //: dictM["giftPic"] = roomGiftModel.imgPreview
                        dictM[(String(kStr_gameText.suffix(7)))] = roomGiftModel.imgPreview
                        //: dictM["comboNum"] = (roomGiftModel.comboNum)
                        dictM[(kStr_equalDetailValue.replacingOccurrences(of: "indicator", with: "c") + String(kStr_picName.suffix(7)))] = (roomGiftModel.comboNum)
                        //: dictM["iosEffect"] = giftStr
                        dictM[(String(kStr_withTitle.prefix(4)) + "ffect")] = giftStr
                        //: dictM["showType"] = (roomGiftModel.showType)
                        dictM[(String(kStr_appValue))] = (roomGiftModel.showType)
                        //: dictM["animationTimes"] = "1"
                        dictM[(String(kStr_makeMinimumName) + kStr_rawColumnName.replacingOccurrences(of: "data", with: "e"))] = "1"

                        //: if let giftModel = JSONDeserializer<TalkingGiftMsgAnimatModel>.deserializeFrom(dict: dictM as? [String: Any], designatedPath: nil) {
                        if let giftModel = JSONDeserializer<SubMeasurable>.deserializeFrom(dict: dictM as? [String: Any], designatedPath: nil) {
                            //: tempArr.add(giftModel)
                            tempArr.add(giftModel)
                            //: tempDicArr.add(dictM)
                            tempDicArr.add(dictM)
                        }
                    }
                    // 循环播放次数
                    //: var animationTimes = 1
                    var animationTimes = 1
                    //: if roomGiftModel.animationTimes > 0 {
                    if roomGiftModel.animationTimes > 0 {
                        //: animationTimes = roomGiftModel.animationTimes
                        animationTimes = roomGiftModel.animationTimes
                        //: } else {
                    } else {
                        //: animationTimes = roomGiftModel.giftNum
                        animationTimes = roomGiftModel.giftNum
                    }
                    //: let tempGiftArr = tempArr
                    let tempGiftArr = tempArr
                    //: for _ in 0..<animationTimes {
                    for _ in 0 ..< animationTimes {
                        //: tempGiftModel.addObjects(from: tempGiftArr as! [Any])
                        tempGiftModel.addObjects(from: tempGiftArr as! [Any])
                        //: tempDictM.addObjects(from: tempDicArr as! [Any])
                        tempDictM.addObjects(from: tempDicArr as! [Any])
                    }
                    //: } else {
                } else {
                    //: let dictM = NSMutableDictionary(capacity: 0)
                    let dictM = NSMutableDictionary(capacity: 0)

                    //: dictM["fromUid"] = targetId
                    dictM[(String(kStr_layerData.prefix(5)) + String(kStr_tabModelInData))] = targetId
                    //: dictM["fromNickname"] = user?["nickname"]
                    dictM[(String(kStr_explainTitle.prefix(6)) + "ckname")] = user?[(String(kStr_toData) + kStr_shareAppInData.replacingOccurrences(of: "mode", with: "e"))]
                    //: dictM["fromHeadPic"] = user?["headPic"]
                    dictM[(String(kStr_factorName.prefix(6)) + "adPic")] = user?[(kStr_targetValue.replacingOccurrences(of: "make", with: "e") + String(kStr_nameData.suffix(5)))]

                    //: dictM["pid"] = roomGiftModel.giftId
                    dictM[(kStr_meValue.lowercased())] = roomGiftModel.giftId
                    //: dictM["num"] = (roomGiftModel.giftNum)
                    dictM[(kStr_detailMenuTitle.replacingOccurrences(of: "icon", with: "m"))] = (roomGiftModel.giftNum)
                    // 显示送给谁
                    //: let str = touser?["nickname"] as? String ?? ""
                    let str = touser?[(String(kStr_toData) + kStr_shareAppInData.replacingOccurrences(of: "mode", with: "e"))] as? String ?? ""
                    //: dictM["pname"] = "Send to %@".localizedArguments(str)
                    dictM[(String(kStr_cardTitle))] = (String(kStr_normalData.suffix(4)) + " to %" + String(kStr_managerImageValue)).imageArguments(str)
                    //: if touser == nil {
                    if touser == nil {
                        //: dictM["pname"] = "Send to All Numbers".localized
                        dictM[(String(kStr_cardTitle))] = (String(kStr_videoText) + String(kStr_coverData.suffix(4)) + " Numbers").localized
                    }
                    //: dictM["giftPic"] = roomGiftModel.imgPreview
                    dictM[(String(kStr_gameText.suffix(7)))] = roomGiftModel.imgPreview
                    //: dictM["comboNum"] = (roomGiftModel.comboNum)
                    dictM[(kStr_equalDetailValue.replacingOccurrences(of: "indicator", with: "c") + String(kStr_picName.suffix(7)))] = (roomGiftModel.comboNum)
                    //: dictM["iosEffect"] = effect
                    dictM[(String(kStr_withTitle.prefix(4)) + "ffect")] = effect
                    //: dictM["iosVapEffect"] = roomGiftModel.iosVapEffect
                    dictM[(String(kStr_mainValue))] = roomGiftModel.iosVapEffect

                    //: dictM["showType"] = (roomGiftModel.showType)
                    dictM[(String(kStr_appValue))] = (roomGiftModel.showType)
                    //: if roomGiftModel.animationTimes > 0 {
                    if roomGiftModel.animationTimes > 0 {
                        //: dictM["animationTimes"] = (roomGiftModel.animationTimes)
                        dictM[(String(kStr_makeMinimumName) + kStr_rawColumnName.replacingOccurrences(of: "data", with: "e"))] = (roomGiftModel.animationTimes)
                        //: } else {
                    } else {
                        //: dictM["animationTimes"] = dictM["num"]
                        dictM[(String(kStr_makeMinimumName) + kStr_rawColumnName.replacingOccurrences(of: "data", with: "e"))] = dictM[(kStr_detailMenuTitle.replacingOccurrences(of: "icon", with: "m"))]
                    }

                    //: if let giftModel = JSONDeserializer<TalkingGiftMsgAnimatModel>.deserializeFrom(dict: dictM as? [String: Any], designatedPath: nil) {
                    if let giftModel = JSONDeserializer<SubMeasurable>.deserializeFrom(dict: dictM as? [String: Any], designatedPath: nil) {
                        //: tempGiftModel.add(giftModel)
                        tempGiftModel.add(giftModel)
                        //: tempDictM.add(dictM)
                        tempDictM.add(dictM)
                    }
                }

                // 直播在聊天室收到礼物，积分更改
                //: let touid = touser?["uid"] as? Int
                let touid = touser?[(String(kStr_arrayBarSucceedContent))] as? Int
                //: if TalkingLiveManager.shared().isLive, LocationThen.share.loginUserMode.userID == "\(touid ?? 0)" || touser == nil {
                if VideoPushListener.isGesture().isLive, LocationThen.share.loginUserMode.userID == "\(touid ?? 0)" || touser == nil {
                    //: let msgInfo: Dictionary? = extraDict?["msgInfo"] as? [String: Any]
                    let msgInfo: Dictionary? = extraDict?[(String(kStr_photoViewText.prefix(6)) + kStr_listMakeValue.replacingOccurrences(of: "title", with: "o"))] as? [String: Any]
                    //: let mfBean = msgInfo?["mfBean"] as? Double
                    let mfBean = msgInfo?[String(bytes: kStr_groupText.map{contentIndexBlock(reply: $0)}, encoding: .utf8)!] as? Double
                    //: NotificationCenter.default.post(name: LIVE_USER_POINT_CHANGE, object: nil, userInfo: ["mfBean": mfBean ?? 0.0])
                    NotificationCenter.default.post(name: kLet_countData, object: nil, userInfo: [String(bytes: kStr_groupText.map{contentIndexBlock(reply: $0)}, encoding: .utf8)!: mfBean ?? 0.0])
                }

                // 当前处于该对话页 添加到当前动画队列里
                //: if EffectPushManager.share.func__getCurrentActivityVC()!.isKind(of: TalkingGroupChatController.self) {
                if EffectPushManager.share.quantityimateTarget()!.isKind(of: ProfitSharingChatController.self) {
                    //: let chatVC = EffectPushManager.share.func__getCurrentActivityVC() as! TalkingGroupChatController
                    let chatVC = EffectPushManager.share.quantityimateTarget() as! ProfitSharingChatController
                    //: chatVC.addGiftEffectModelArr(giftArr: tempGiftModel as! [Any])
                    chatVC.finishMemory(giftArr: tempGiftModel as! [Any])
                }
            }
        }
    }

    /// 收到 直播/语音房 礼物消息处理
    //: func disposeReceiveLiveRoomGiftMsg(giftMessageDic: NSDictionary) {
    func toFile(giftMessageDic: NSDictionary) {
        //: DispatchQueue.main.async {
        DispatchQueue.main.async {
            //: let extraDict: Dictionary? = giftMessageDic["extra"] as? [String: Any]
            let extraDict: Dictionary? = giftMessageDic[(kStr_viewValue.replacingOccurrences(of: "make", with: "r"))] as? [String: Any]
            //: let user: NSDictionary? = extraDict?["user"] as? NSDictionary
            let user: NSDictionary? = extraDict?[(kStr_infoData.replacingOccurrences(of: "share", with: "u"))] as? NSDictionary
            //: let targetId = String(format: "%@", user?["uid"] as! CVarArg)
            let targetId = String(format: "%@", user?[(String(kStr_arrayBarSucceedContent))] as! CVarArg)
            //: var toUid = ""
            var toUid = ""
            //: if TalkingLiveManager.shared().isLive {
            if VideoPushListener.isGesture().isLive {
                //: toUid = String(format: "LiveGift_%@", extraDict?["toUid"] as? CVarArg ?? "")
                toUid = String(format: (String(kStr_acrossData)), extraDict?[(String(kStr_sharedData.suffix(5)))] as? CVarArg ?? "")
                //: } else if TalkingVoiceRoomManager.shared().isParty {
            } else if SubCheckedReactiveCompatible.replyShared().isParty {
                //: toUid = String(format: "PartyGift_%@", extraDict?["toUid"] as? CVarArg ?? "")
                toUid = String(format: (String(kStr_sexData.prefix(5)) + String(kStr_arrayName)), extraDict?[(String(kStr_sharedData.suffix(5)))] as? CVarArg ?? "")
            }
            //: let gift = extraDict?["gift"] as? NSDictionary
            let gift = extraDict?[(kStr_sizeTitle.replacingOccurrences(of: "view", with: "if"))] as? NSDictionary

            //: if extraDict == nil || extraDict?.keys.contains("gift") == false {
            if extraDict == nil || extraDict?.keys.contains((kStr_sizeTitle.replacingOccurrences(of: "view", with: "if"))) == false {
                //: return
                return
            }
            //: if let roomGiftModel = JSONDeserializer<TalkingGiftChatMsgAnimatModel>.deserializeFrom(dict: extraDict!["gift"] as? [String: Any], designatedPath: nil) {
            if let roomGiftModel = JSONDeserializer<AscertainModelType>.deserializeFrom(dict: extraDict![(kStr_sizeTitle.replacingOccurrences(of: "view", with: "if"))] as? [String: Any], designatedPath: nil) {
                //: var effect = roomGiftModel.iosEffect
                var effect = roomGiftModel.iosEffect
                //: if effect.count == 0 {
                if effect.count == 0 {
                    //: effect = roomGiftModel.effect
                    effect = roomGiftModel.effect
                }

                //: let tempGiftModel = NSMutableArray()
                let tempGiftModel = NSMutableArray()
                //: let tempDictM = NSMutableArray()
                let tempDictM = NSMutableArray()

                //: let dictM = NSMutableDictionary(capacity: 0)
                let dictM = NSMutableDictionary(capacity: 0)

                //: dictM["fromUid"] = targetId
                dictM[(String(kStr_layerData.prefix(5)) + String(kStr_tabModelInData))] = targetId
                //: dictM["fromNickname"] = user?["nickname"]
                dictM[(String(kStr_explainTitle.prefix(6)) + "ckname")] = user?[(String(kStr_toData) + kStr_shareAppInData.replacingOccurrences(of: "mode", with: "e"))]
                //: dictM["fromHeadPic"] = user?["headPic"]
                dictM[(String(kStr_factorName.prefix(6)) + "adPic")] = user?[(kStr_targetValue.replacingOccurrences(of: "make", with: "e") + String(kStr_nameData.suffix(5)))]

                //: dictM["pid"] = gift?["id"] as? String
                dictM[(kStr_meValue.lowercased())] = gift?["id"] as? String
                //: dictM["num"] = gift?["num"] as? String
                dictM[(kStr_detailMenuTitle.replacingOccurrences(of: "icon", with: "m"))] = gift?[(kStr_detailMenuTitle.replacingOccurrences(of: "icon", with: "m"))] as? String
                //: dictM["pname"] = roomGiftModel.name
                dictM[(String(kStr_cardTitle))] = roomGiftModel.name
                //: dictM["giftPic"] = roomGiftModel.imgPreview
                dictM[(String(kStr_gameText.suffix(7)))] = roomGiftModel.imgPreview
                //: dictM["comboNum"] = (roomGiftModel.comboNum)
                dictM[(kStr_equalDetailValue.replacingOccurrences(of: "indicator", with: "c") + String(kStr_picName.suffix(7)))] = (roomGiftModel.comboNum)
                //: dictM["iosEffect"] = effect
                dictM[(String(kStr_withTitle.prefix(4)) + "ffect")] = effect
                //: dictM["iosVapEffect"] = roomGiftModel.iosVapEffect
                dictM[(String(kStr_mainValue))] = roomGiftModel.iosVapEffect

                //: dictM["showType"] = (roomGiftModel.showType)
                dictM[(String(kStr_appValue))] = (roomGiftModel.showType)
                //: if roomGiftModel.animationTimes > 0 {
                if roomGiftModel.animationTimes > 0 {
                    //: dictM["animationTimes"] = (roomGiftModel.animationTimes)
                    dictM[(String(kStr_makeMinimumName) + kStr_rawColumnName.replacingOccurrences(of: "data", with: "e"))] = (roomGiftModel.animationTimes)
                    //: } else {
                } else {
                    //: dictM["animationTimes"] = dictM["num"]
                    dictM[(String(kStr_makeMinimumName) + kStr_rawColumnName.replacingOccurrences(of: "data", with: "e"))] = dictM[(kStr_detailMenuTitle.replacingOccurrences(of: "icon", with: "m"))]
                }

                //: if let giftModel = JSONDeserializer<TalkingGiftMsgAnimatModel>.deserializeFrom(dict: dictM as? [String: Any], designatedPath: nil) {
                if let giftModel = JSONDeserializer<SubMeasurable>.deserializeFrom(dict: dictM as? [String: Any], designatedPath: nil) {
                    //: tempGiftModel.add(giftModel)
                    tempGiftModel.add(giftModel)
                    //: tempDictM.add(dictM)
                    tempDictM.add(dictM)
                }

                // 礼物动效 存到本地 供下次打开播放
                //: var giftArray: NSMutableArray? = self.cachDict[toUid] as? NSMutableArray
                var giftArray: NSMutableArray? = self.cachDict[toUid] as? NSMutableArray
                //: if giftArray == nil {
                if giftArray == nil {
                    //: giftArray = NSMutableArray(capacity: 0)
                    giftArray = NSMutableArray(capacity: 0)
                }
                //: if giftArray?.count ?? 0 >= 10 {
                if giftArray?.count ?? 0 >= 10 {
                    //: giftArray?.removeFirstObject()
                    giftArray?.removeFirstObject()
                }
                //: giftArray?.addObjects(from: tempDictM as! [Any])
                giftArray?.addObjects(from: tempDictM as! [Any])
                //: self.cachDict[toUid] = giftArray
                self.cachDict[toUid] = giftArray
                //: self.saveAnimatDataToFile()
                self.instanceFile()
            }
        }
    }
}
