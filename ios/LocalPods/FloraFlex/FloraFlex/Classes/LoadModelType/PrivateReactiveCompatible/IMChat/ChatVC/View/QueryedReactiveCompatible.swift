
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let kStr_addName:[UInt8] = [0x65,0x62,0x65,0x78,0x24,0x6f,0x63,0x68,0x69,0x7e,0x36,0x25,0x2c,0x64,0x6d,0x7f,0x2c,0x62,0x63,0x78,0x2c,0x6e,0x69,0x69,0x62,0x2c,0x65,0x61,0x7c,0x60,0x69,0x61,0x69,0x62,0x78,0x69,0x68]

/*: "gift" :*/
fileprivate let kStr_pageName:[Character] = ["g","i","f","t"]

/*: "iosEffect" :*/
fileprivate let kStr_managerData:String = "iosEffmake burn greet"
fileprivate let kStr_styleNameValue:[Character] = ["e","c","t"]

/*: "iosEmperorEffect" :*/
fileprivate let kStr_makeName:String = "iosEapp make top at"
fileprivate let kStr_colorUserData:String = "orEffeindex send lab"
fileprivate let kStr_wrapContentData:String = "cbackground"

/*: "fromUid" :*/
fileprivate let kStr_lessValue:[Character] = ["f","r","o","m","U"]
fileprivate let kStr_listValue:[Character] = ["i","d"]

/*: "fromNickname" :*/
fileprivate let kStr_indexName:String = "fromNickinfo make self color"
fileprivate let kStr_styleContent:String = "NAME"

/*: "fromHeadPic" :*/
fileprivate let kStr_locationValue:[Character] = ["f","r","o","m","H","e","a"]
fileprivate let kStr_postReasonName:String = "dPicpresentation return ok"

/*: "pid" :*/
fileprivate let kStr_contentName:[Character] = ["p","i","d"]

/*: "num" :*/
fileprivate let kStr_modelValue:String = "nuspring"

/*: "pname" :*/
fileprivate let kStr_equalPicData:[Character] = ["p","n","a","m","e"]

/*: "name" :*/
fileprivate let kStr_messageValue:String = "ntitleme"

/*: "giftPic" :*/
fileprivate let kStr_data:String = "let lab visitor bygiftPic"

/*: "imgPreview" :*/
fileprivate let kStr_toContent:String = "true inimgPr"

/*: "comboNum" :*/
fileprivate let kStr_endText:String = "comboNuequal label icon app file"
fileprivate let kStr_keyTitle:String = "M"

/*: "showType" :*/
fileprivate let kStr_viewTitle:[Character] = ["s","h","o","w","T","y","p","e"]

/*: "animationTimes" :*/
fileprivate let kStr_scriptData:String = "antargetatio"
fileprivate let kStr_hiddenAppElseName:String = "data let change bring mainnTimes"

/*: "id" :*/
fileprivate let kStr_onValue:String = "iequal"

/*: "iosVapEffect" :*/
fileprivate let kStr_conData:[Character] = ["i","o","s","V","a"]
fileprivate let kStr_appearAspectSendTitle:[Character] = ["p","E","f","f","e","c","t"]

/*: "giftNum" :*/
fileprivate let kStr_listData:[Character] = ["g","i","f","t","N"]
fileprivate let kStr_pathLabelName:[Character] = ["u","m"]

/*: "Send to %@" :*/
fileprivate let kStr_receiveValue:String = "page voiceSend t"

/*: "all" :*/
fileprivate let kStr_gestureWrapValue:String = "rowll"

/*: "Send to All Numbers" :*/
fileprivate let kStr_tableTapName:[Character] = ["S","e","n","d"," ","t","o"," ","A","l","l"," ","N","u"]
fileprivate let kStr_currentContent:String = "mlabrs"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  QueryedReactiveCompatible.swift
//  AbroadTalking
//
//  Created by Charlotte on 2023/3/7.
//

//: import UIKit
import UIKit

/// 私聊 礼物动效层
//: class TalkingPrivateChatAnimatView: UIView {
class QueryedReactiveCompatible: UIView {
    //: var animatArray: NSMutableArray =  NSMutableArray.init(capacity: 0)
    var animatArray: NSMutableArray = .init(capacity: 0)
    //: var isPlayAnimat = false
    var isPlayAnimat = false

    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: self.setupSubviews()
        self.setupText()
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: kStr_addName.map{$0^12}, encoding: .utf8)!)
    }

    //: deinit {
    deinit {}

    // 懒加载初始化
    //: public lazy var giftAnimatView: TalkingGiftAnimatView = {
    public lazy var giftAnimatView: CheckedView = {
        //: let view = TalkingGiftAnimatView.init()
        let view = CheckedView()
        //: return view
        return view
        //: }()
    }()
}

//: extension TalkingPrivateChatAnimatView {
extension QueryedReactiveCompatible {
    /// 自己私聊送礼,动效处理

    //: func dealGiftAnimatData(dict: Dictionary<String, Any>) {
    func primrosePath(dict: [String: Any]) {
        //: if dict.keys.isEmpty {
        if dict.keys.isEmpty {
            //: return
            return
        }
        //: let  giftInfo: Dictionary? = dict["gift"] as? Dictionary<String, Any>
        let giftInfo: Dictionary? = dict[(String(kStr_pageName))] as? [String: Any]
        //: if giftInfo == nil || giftInfo?.keys.contains("iosEffect") == false {
        if giftInfo == nil || giftInfo?.keys.contains((String(kStr_managerData.prefix(6)) + String(kStr_styleNameValue))) == false {
            //: return
            return
        }

        // 帝王礼物特效
        //: if  giftInfo?.keys.contains("iosEmperorEffect") != false {
        if giftInfo?.keys.contains((String(kStr_makeName.prefix(4)) + "mper" + String(kStr_colorUserData.prefix(6)) + kStr_wrapContentData.replacingOccurrences(of: "background", with: "t"))) != false {
            // 开头动效
            //: let giftArr: NSMutableArray = giftInfo?["iosEmperorEffect"] as! NSMutableArray
            let giftArr: NSMutableArray = giftInfo?[(String(kStr_makeName.prefix(4)) + "mper" + String(kStr_colorUserData.prefix(6)) + kStr_wrapContentData.replacingOccurrences(of: "background", with: "t"))] as! NSMutableArray

            //: giftArr.insert(giftInfo!["iosEffect"] ?? "", at: 0)
            giftArr.insert(giftInfo![(String(kStr_managerData.prefix(6)) + String(kStr_styleNameValue))] ?? "", at: 0)
            //: let tempArr = NSMutableArray.init()
            let tempArr = NSMutableArray()

            //: for giftStr in giftArr {
            for giftStr in giftArr {
                //: let dictM = NSMutableDictionary.init(capacity: 0)
                let dictM = NSMutableDictionary(capacity: 0)
                //: dictM["fromUid"] = LocationThen.share.loginUserMode.userID
                dictM[(String(kStr_lessValue) + String(kStr_listValue))] = LocationThen.share.loginUserMode.userID
                //: dictM["fromNickname"] = LocationThen.share.loginUserMode.nickname
                dictM[(String(kStr_indexName.prefix(8)) + kStr_styleContent.lowercased())] = LocationThen.share.loginUserMode.nickname
                //: dictM["fromHeadPic"] = LocationThen.share.loginUserMode.headPic
                dictM[(String(kStr_locationValue) + String(kStr_postReasonName.prefix(4)))] = LocationThen.share.loginUserMode.headPic
                //: dictM["pid"] = "0" // 缓存兼容
                dictM[(String(kStr_contentName))] = "0" // 缓存兼容
                //: dictM["num"] =  giftInfo?["num"]
                dictM[(kStr_modelValue.replacingOccurrences(of: "spring", with: "m"))] = giftInfo?[(kStr_modelValue.replacingOccurrences(of: "spring", with: "m"))]
                //: dictM["pname"] = giftInfo?["name"]
                dictM[(String(kStr_equalPicData))] = giftInfo?[(kStr_messageValue.replacingOccurrences(of: "title", with: "a"))]
                //: dictM["giftPic"] = giftInfo?["imgPreview"]
                dictM[(String(kStr_data.suffix(7)))] = giftInfo?[(String(kStr_toContent.suffix(5)) + "eview")]
                //: dictM["comboNum"] = giftInfo?["comboNum"]
                dictM[(String(kStr_endText.prefix(7)) + kStr_keyTitle.lowercased())] = giftInfo?[(String(kStr_endText.prefix(7)) + kStr_keyTitle.lowercased())]
                //: dictM["iosEffect"] = giftStr
                dictM[(String(kStr_managerData.prefix(6)) + String(kStr_styleNameValue))] = giftStr
                //: dictM["showType"] = giftInfo?["showType"]
                dictM[(String(kStr_viewTitle))] = giftInfo?[(String(kStr_viewTitle))]
                //: dictM["animationTimes"] = "1"
                dictM[(kStr_scriptData.replacingOccurrences(of: "target", with: "im") + String(kStr_hiddenAppElseName.suffix(6)))] = "1"
                //: if let giftModel = JSONDeserializer<TalkingGiftMsgAnimatModel>.deserializeFrom(dict: dictM as? Dictionary<String, Any>, designatedPath: nil) {
                if let giftModel = JSONDeserializer<SubMeasurable>.deserializeFrom(dict: dictM as? [String: Any], designatedPath: nil) {
                    //: tempArr.add(giftModel)
                    tempArr.add(giftModel)
                }
            }
            // 循环播放次数
            //: var animationTimes = 1
            var animationTimes = 1
            //: if giftInfo?.keys.contains("animationTimes") != false {
            if giftInfo?.keys.contains((kStr_scriptData.replacingOccurrences(of: "target", with: "im") + String(kStr_hiddenAppElseName.suffix(6)))) != false {
                //: animationTimes = giftInfo!["animationTimes"] as! Int
                animationTimes = giftInfo![(kStr_scriptData.replacingOccurrences(of: "target", with: "im") + String(kStr_hiddenAppElseName.suffix(6)))] as! Int
                //: } else {
            } else {
                //: animationTimes = giftInfo!["num"] as! Int
                animationTimes = giftInfo![(kStr_modelValue.replacingOccurrences(of: "spring", with: "m"))] as! Int
            }
            //: let tempGiftArr = tempArr
            let tempGiftArr = tempArr
            //: for _ in 0..<animationTimes {
            for _ in 0 ..< animationTimes {
                //: self.animatArray.addObjects(from: tempGiftArr as! [Any])
                self.animatArray.addObjects(from: tempGiftArr as! [Any])
            }

            //: } else {
        } else {
            //: let dictM = NSMutableDictionary.init(capacity: 0)
            let dictM = NSMutableDictionary(capacity: 0)
            //: dictM["fromUid"] = LocationThen.share.loginUserMode.userID
            dictM[(String(kStr_lessValue) + String(kStr_listValue))] = LocationThen.share.loginUserMode.userID
            //: dictM["fromNickname"] = LocationThen.share.loginUserMode.nickname
            dictM[(String(kStr_indexName.prefix(8)) + kStr_styleContent.lowercased())] = LocationThen.share.loginUserMode.nickname
            //: dictM["fromHeadPic"] = LocationThen.share.loginUserMode.headPic
            dictM[(String(kStr_locationValue) + String(kStr_postReasonName.prefix(4)))] = LocationThen.share.loginUserMode.headPic
            //: dictM["pid"] = giftInfo?["id"]
            dictM[(String(kStr_contentName))] = giftInfo?["id"]
            //: dictM["num"] =  giftInfo?["num"]
            dictM[(kStr_modelValue.replacingOccurrences(of: "spring", with: "m"))] = giftInfo?[(kStr_modelValue.replacingOccurrences(of: "spring", with: "m"))]
            //: dictM["pname"] = giftInfo?["name"]
            dictM[(String(kStr_equalPicData))] = giftInfo?[(kStr_messageValue.replacingOccurrences(of: "title", with: "a"))]
            //: dictM["giftPic"] = giftInfo?["imgPreview"]
            dictM[(String(kStr_data.suffix(7)))] = giftInfo?[(String(kStr_toContent.suffix(5)) + "eview")]
            //: dictM["comboNum"] = giftInfo?["comboNum"]
            dictM[(String(kStr_endText.prefix(7)) + kStr_keyTitle.lowercased())] = giftInfo?[(String(kStr_endText.prefix(7)) + kStr_keyTitle.lowercased())]
            //: dictM["iosEffect"] = giftInfo?["iosEffect"]
            dictM[(String(kStr_managerData.prefix(6)) + String(kStr_styleNameValue))] = giftInfo?[(String(kStr_managerData.prefix(6)) + String(kStr_styleNameValue))]
            //: dictM["showType"] = giftInfo?["showType"]
            dictM[(String(kStr_viewTitle))] = giftInfo?[(String(kStr_viewTitle))]
            //: dictM["iosVapEffect"] = giftInfo?["iosVapEffect"]
            dictM[(String(kStr_conData) + String(kStr_appearAspectSendTitle))] = giftInfo?[(String(kStr_conData) + String(kStr_appearAspectSendTitle))]

            //: if giftInfo?.keys.contains("animationTimes") != false {
            if giftInfo?.keys.contains((kStr_scriptData.replacingOccurrences(of: "target", with: "im") + String(kStr_hiddenAppElseName.suffix(6)))) != false {
                //: dictM["animationTimes"] = giftInfo?["animationTimes"]
                dictM[(kStr_scriptData.replacingOccurrences(of: "target", with: "im") + String(kStr_hiddenAppElseName.suffix(6)))] = giftInfo?[(kStr_scriptData.replacingOccurrences(of: "target", with: "im") + String(kStr_hiddenAppElseName.suffix(6)))]
                //: } else {
            } else {
                //: dictM["animationTimes"] = dictM["num"]
                dictM[(kStr_scriptData.replacingOccurrences(of: "target", with: "im") + String(kStr_hiddenAppElseName.suffix(6)))] = dictM[(kStr_modelValue.replacingOccurrences(of: "spring", with: "m"))]
            }
            //: if let giftModel = JSONDeserializer<TalkingGiftMsgAnimatModel>.deserializeFrom(dict: dictM as? Dictionary<String, Any>, designatedPath: nil) {
            if let giftModel = JSONDeserializer<SubMeasurable>.deserializeFrom(dict: dictM as? [String: Any], designatedPath: nil) {
                //: self.animatArray.add(giftModel)
                self.animatArray.add(giftModel)
            }
        }
        //: judgePlay()
        equality()
    }

    /// 视频通话送礼,模型转换
    //: func changeGiftToModel(dict: Dictionary<String, Any>) ->TalkingGiftMsgAnimatModel? {
    func simulationIcon(dict: [String: Any]) -> SubMeasurable? {
        //: if dict.keys.isEmpty {
        if dict.keys.isEmpty {
            //: return nil
            return nil
        }
        //: let  giftInfo: Dictionary? = dict["gift"] as? Dictionary<String, Any>
        let giftInfo: Dictionary? = dict[(String(kStr_pageName))] as? [String: Any]
        //: if giftInfo == nil {
        if giftInfo == nil {
            //: return nil
            return nil
        }

        // 帝王礼物特效
        //: if  giftInfo?.keys.contains("iosEmperorEffect") != false {
        if giftInfo?.keys.contains((String(kStr_makeName.prefix(4)) + "mper" + String(kStr_colorUserData.prefix(6)) + kStr_wrapContentData.replacingOccurrences(of: "background", with: "t"))) != false {
            // 开头动效
            //: let giftArr: NSMutableArray = giftInfo?["iosEmperorEffect"] as! NSMutableArray
            let giftArr: NSMutableArray = giftInfo?[(String(kStr_makeName.prefix(4)) + "mper" + String(kStr_colorUserData.prefix(6)) + kStr_wrapContentData.replacingOccurrences(of: "background", with: "t"))] as! NSMutableArray

            //: giftArr.insert(giftInfo!["iosEffect"] ?? "", at: 0)
            giftArr.insert(giftInfo![(String(kStr_managerData.prefix(6)) + String(kStr_styleNameValue))] ?? "", at: 0)

            //: for giftStr in giftArr {
            for giftStr in giftArr {
                //: let dictM = NSMutableDictionary.init(capacity: 0)
                let dictM = NSMutableDictionary(capacity: 0)
                //: dictM["fromUid"] = LocationThen.share.loginUserMode.userID
                dictM[(String(kStr_lessValue) + String(kStr_listValue))] = LocationThen.share.loginUserMode.userID
                //: dictM["fromNickname"] = LocationThen.share.loginUserMode.nickname
                dictM[(String(kStr_indexName.prefix(8)) + kStr_styleContent.lowercased())] = LocationThen.share.loginUserMode.nickname
                //: dictM["fromHeadPic"] = LocationThen.share.loginUserMode.headPic
                dictM[(String(kStr_locationValue) + String(kStr_postReasonName.prefix(4)))] = LocationThen.share.loginUserMode.headPic
                //: dictM["pid"] = "0" // 缓存兼容
                dictM[(String(kStr_contentName))] = "0" // 缓存兼容
                //: dictM["num"] =  giftInfo?["num"]
                dictM[(kStr_modelValue.replacingOccurrences(of: "spring", with: "m"))] = giftInfo?[(kStr_modelValue.replacingOccurrences(of: "spring", with: "m"))]
                //: dictM["pname"] = giftInfo?["name"]
                dictM[(String(kStr_equalPicData))] = giftInfo?[(kStr_messageValue.replacingOccurrences(of: "title", with: "a"))]
                //: dictM["giftPic"] = giftInfo?["imgPreview"]
                dictM[(String(kStr_data.suffix(7)))] = giftInfo?[(String(kStr_toContent.suffix(5)) + "eview")]
                //: dictM["comboNum"] = giftInfo?["comboNum"]
                dictM[(String(kStr_endText.prefix(7)) + kStr_keyTitle.lowercased())] = giftInfo?[(String(kStr_endText.prefix(7)) + kStr_keyTitle.lowercased())]
                //: dictM["iosEffect"] = giftStr
                dictM[(String(kStr_managerData.prefix(6)) + String(kStr_styleNameValue))] = giftStr
                //: dictM["showType"] = giftInfo?["showType"]
                dictM[(String(kStr_viewTitle))] = giftInfo?[(String(kStr_viewTitle))]
                //: dictM["animationTimes"] = "1"
                dictM[(kStr_scriptData.replacingOccurrences(of: "target", with: "im") + String(kStr_hiddenAppElseName.suffix(6)))] = "1"
                //: if let giftModel = JSONDeserializer<TalkingGiftMsgAnimatModel>.deserializeFrom(dict: dictM as? Dictionary<String, Any>, designatedPath: nil) {
                if let giftModel = JSONDeserializer<SubMeasurable>.deserializeFrom(dict: dictM as? [String: Any], designatedPath: nil) {
                    //: return giftModel
                    return giftModel
                }
            }
            //: } else {
        } else {
            //: let dictM = NSMutableDictionary.init(capacity: 0)
            let dictM = NSMutableDictionary(capacity: 0)
            //: dictM["fromUid"] = LocationThen.share.loginUserMode.userID
            dictM[(String(kStr_lessValue) + String(kStr_listValue))] = LocationThen.share.loginUserMode.userID
            //: dictM["fromNickname"] = LocationThen.share.loginUserMode.nickname
            dictM[(String(kStr_indexName.prefix(8)) + kStr_styleContent.lowercased())] = LocationThen.share.loginUserMode.nickname
            //: dictM["fromHeadPic"] = LocationThen.share.loginUserMode.headPic
            dictM[(String(kStr_locationValue) + String(kStr_postReasonName.prefix(4)))] = LocationThen.share.loginUserMode.headPic
            //: dictM["pid"] = giftInfo?["id"]
            dictM[(String(kStr_contentName))] = giftInfo?["id"]
            //: dictM["num"] =  giftInfo?["num"]
            dictM[(kStr_modelValue.replacingOccurrences(of: "spring", with: "m"))] = giftInfo?[(kStr_modelValue.replacingOccurrences(of: "spring", with: "m"))]
            //: dictM["pname"] = giftInfo?["name"]
            dictM[(String(kStr_equalPicData))] = giftInfo?[(kStr_messageValue.replacingOccurrences(of: "title", with: "a"))]
            //: dictM["giftPic"] = giftInfo?["imgPreview"]
            dictM[(String(kStr_data.suffix(7)))] = giftInfo?[(String(kStr_toContent.suffix(5)) + "eview")]
            //: dictM["comboNum"] = giftInfo?["comboNum"]
            dictM[(String(kStr_endText.prefix(7)) + kStr_keyTitle.lowercased())] = giftInfo?[(String(kStr_endText.prefix(7)) + kStr_keyTitle.lowercased())]
            //: dictM["iosEffect"] = giftInfo?["iosEffect"]
            dictM[(String(kStr_managerData.prefix(6)) + String(kStr_styleNameValue))] = giftInfo?[(String(kStr_managerData.prefix(6)) + String(kStr_styleNameValue))]
            //: dictM["showType"] = giftInfo?["showType"]
            dictM[(String(kStr_viewTitle))] = giftInfo?[(String(kStr_viewTitle))]
            //: dictM["iosVapEffect"] = giftInfo?["iosVapEffect"]
            dictM[(String(kStr_conData) + String(kStr_appearAspectSendTitle))] = giftInfo?[(String(kStr_conData) + String(kStr_appearAspectSendTitle))]

            //: if giftInfo?.keys.contains("animationTimes") != false {
            if giftInfo?.keys.contains((kStr_scriptData.replacingOccurrences(of: "target", with: "im") + String(kStr_hiddenAppElseName.suffix(6)))) != false {
                //: dictM["animationTimes"] = giftInfo?["animationTimes"]
                dictM[(kStr_scriptData.replacingOccurrences(of: "target", with: "im") + String(kStr_hiddenAppElseName.suffix(6)))] = giftInfo?[(kStr_scriptData.replacingOccurrences(of: "target", with: "im") + String(kStr_hiddenAppElseName.suffix(6)))]
                //: } else {
            } else {
                //: dictM["animationTimes"] = dictM["num"]
                dictM[(kStr_scriptData.replacingOccurrences(of: "target", with: "im") + String(kStr_hiddenAppElseName.suffix(6)))] = dictM[(kStr_modelValue.replacingOccurrences(of: "spring", with: "m"))]
            }
            //: if let giftModel = JSONDeserializer<TalkingGiftMsgAnimatModel>.deserializeFrom(dict: dictM as? Dictionary<String, Any>, designatedPath: nil) {
            if let giftModel = JSONDeserializer<SubMeasurable>.deserializeFrom(dict: dictM as? [String: Any], designatedPath: nil) {
                //: return giftModel
                return giftModel
            }
        }
        //: return nil
        return nil
    }

    /// 聊天室收到礼物消息处理
    //: func chatRoomDisposeReceiveGiftMsg(giftMessageDic: Dictionary<String, Any>, model: TalkingChatRoomMemberModel)->TalkingGiftMsgAnimatModel? {
    func bindDown(giftMessageDic: [String: Any], model: BottomMemberModel) -> SubMeasurable? {
        //: if  giftMessageDic.keys.contains("gift") == false {
        if giftMessageDic.keys.contains((String(kStr_pageName))) == false {
            //: return nil
            return nil
        }
        //: if var roomGiftModel = JSONDeserializer<TalkingGiftChatMsgAnimatModel>.deserializeFrom(dict: giftMessageDic["gift"] as? Dictionary<String, Any>, designatedPath: nil) {
        if var roomGiftModel = JSONDeserializer<AscertainModelType>.deserializeFrom(dict: giftMessageDic[(String(kStr_pageName))] as? [String: Any], designatedPath: nil) {
            //: let dic =  giftMessageDic["gift"] as? Dictionary<String, Any>
            let dic = giftMessageDic[(String(kStr_pageName))] as? [String: Any]
            //: roomGiftModel.giftNum = dic?["giftNum"] as? Int ?? 0
            roomGiftModel.giftNum = dic?[(String(kStr_listData) + String(kStr_pathLabelName))] as? Int ?? 0
            //: var effect = roomGiftModel.iosEffect
            var effect = roomGiftModel.iosEffect
            //: if effect.count == 0 {
            if effect.count == 0 {
                //: effect = roomGiftModel.effect
                effect = roomGiftModel.effect
            }

            //: let tempGiftModel = NSMutableArray.init()
            let tempGiftModel = NSMutableArray()
            //: let tempDictM = NSMutableArray.init()
            let tempDictM = NSMutableArray()

            // 帝王礼物特效
            //: if  roomGiftModel.iosEmperorEffect?.count ?? 0 > 0 {
            if roomGiftModel.iosEmperorEffect?.count ?? 0 > 0 {
                // 开头动效
                //: let giftArr: NSMutableArray? = roomGiftModel.iosEmperorEffect as? NSMutableArray
                let giftArr: NSMutableArray? = roomGiftModel.iosEmperorEffect as? NSMutableArray
                //: giftArr?.insert(roomGiftModel.iosEffect, at: 0)
                giftArr?.insert(roomGiftModel.iosEffect, at: 0)

                //: let tempArr = NSMutableArray.init()
                let tempArr = NSMutableArray()
                //: let tempDicArr = NSMutableArray.init()
                let tempDicArr = NSMutableArray()

                //: for giftStr in giftArr! {
                for giftStr in giftArr! {
                    //: let dictM = NSMutableDictionary.init(capacity: 0)
                    let dictM = NSMutableDictionary(capacity: 0)
                    //: dictM["fromUid"] = LocationThen.share.loginUserMode.userID
                    dictM[(String(kStr_lessValue) + String(kStr_listValue))] = LocationThen.share.loginUserMode.userID
                    //: dictM["fromNickname"] = LocationThen.share.loginUserMode.nickname
                    dictM[(String(kStr_indexName.prefix(8)) + kStr_styleContent.lowercased())] = LocationThen.share.loginUserMode.nickname
                    //: dictM["fromHeadPic"] = LocationThen.share.loginUserMode.headPic
                    dictM[(String(kStr_locationValue) + String(kStr_postReasonName.prefix(4)))] = LocationThen.share.loginUserMode.headPic
                    //: dictM["pid"] = "0" // 缓存兼容
                    dictM[(String(kStr_contentName))] = "0" // 缓存兼容
                    //: dictM["num"] =  (roomGiftModel.giftNum)
                    dictM[(kStr_modelValue.replacingOccurrences(of: "spring", with: "m"))] = (roomGiftModel.giftNum)
                    //: dictM["pname"] = "Send to %@".localizedArguments(model.nickname)
                    dictM[(String(kStr_equalPicData))] = (String(kStr_receiveValue.suffix(6)) + "o %@").imageArguments(model.nickname)
                    //: if model.uid == "all" {
                    if model.uid == (kStr_gestureWrapValue.replacingOccurrences(of: "row", with: "a")) {
                        //: dictM["pname"] = "Send to All Numbers".localized
                        dictM[(String(kStr_equalPicData))] = (String(kStr_tableTapName) + kStr_currentContent.replacingOccurrences(of: "lab", with: "be")).localized
                    }
                    //: dictM["giftPic"] = roomGiftModel.imgPreview
                    dictM[(String(kStr_data.suffix(7)))] = roomGiftModel.imgPreview
                    //: dictM["comboNum"] = (roomGiftModel.comboNum)
                    dictM[(String(kStr_endText.prefix(7)) + kStr_keyTitle.lowercased())] = (roomGiftModel.comboNum)
                    //: dictM["iosEffect"] = giftStr
                    dictM[(String(kStr_managerData.prefix(6)) + String(kStr_styleNameValue))] = giftStr
                    //: dictM["showType"] = (roomGiftModel.showType)
                    dictM[(String(kStr_viewTitle))] = (roomGiftModel.showType)
                    //: dictM["animationTimes"] = "1"
                    dictM[(kStr_scriptData.replacingOccurrences(of: "target", with: "im") + String(kStr_hiddenAppElseName.suffix(6)))] = "1"

                    //: if let giftModel = JSONDeserializer<TalkingGiftMsgAnimatModel>.deserializeFrom(dict: dictM as? Dictionary<String, Any>, designatedPath: nil) {
                    if let giftModel = JSONDeserializer<SubMeasurable>.deserializeFrom(dict: dictM as? [String: Any], designatedPath: nil) {
                        //: return giftModel
                        return giftModel
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
                //: let dictM = NSMutableDictionary.init(capacity: 0)
                let dictM = NSMutableDictionary(capacity: 0)

                //: dictM["fromUid"] = LocationThen.share.loginUserMode.userID
                dictM[(String(kStr_lessValue) + String(kStr_listValue))] = LocationThen.share.loginUserMode.userID
                //: dictM["fromNickname"] = LocationThen.share.loginUserMode.nickname
                dictM[(String(kStr_indexName.prefix(8)) + kStr_styleContent.lowercased())] = LocationThen.share.loginUserMode.nickname
                //: dictM["fromHeadPic"] = LocationThen.share.loginUserMode.headPic
                dictM[(String(kStr_locationValue) + String(kStr_postReasonName.prefix(4)))] = LocationThen.share.loginUserMode.headPic

                //: dictM["pid"] = roomGiftModel.giftId
                dictM[(String(kStr_contentName))] = roomGiftModel.giftId
                //: dictM["num"] =  (roomGiftModel.giftNum)
                dictM[(kStr_modelValue.replacingOccurrences(of: "spring", with: "m"))] = (roomGiftModel.giftNum)
                // 显示送给谁
                //: dictM["pname"] = "Send to %@".localizedArguments(model.nickname)
                dictM[(String(kStr_equalPicData))] = (String(kStr_receiveValue.suffix(6)) + "o %@").imageArguments(model.nickname)
                //: if model.uid == "all" {
                if model.uid == (kStr_gestureWrapValue.replacingOccurrences(of: "row", with: "a")) {
                    //: dictM["pname"] = "Send to All Numbers".localized
                    dictM[(String(kStr_equalPicData))] = (String(kStr_tableTapName) + kStr_currentContent.replacingOccurrences(of: "lab", with: "be")).localized
                }
                //: dictM["giftPic"] = roomGiftModel.imgPreview
                dictM[(String(kStr_data.suffix(7)))] = roomGiftModel.imgPreview
                //: dictM["comboNum"] = (roomGiftModel.comboNum)
                dictM[(String(kStr_endText.prefix(7)) + kStr_keyTitle.lowercased())] = (roomGiftModel.comboNum)
                //: dictM["iosEffect"] = effect
                dictM[(String(kStr_managerData.prefix(6)) + String(kStr_styleNameValue))] = effect
                //: dictM["iosVapEffect"] = roomGiftModel.iosVapEffect
                dictM[(String(kStr_conData) + String(kStr_appearAspectSendTitle))] = roomGiftModel.iosVapEffect

                //: dictM["showType"] = (roomGiftModel.showType)
                dictM[(String(kStr_viewTitle))] = (roomGiftModel.showType)
                //: if (roomGiftModel.animationTimes > 0) {
                if roomGiftModel.animationTimes > 0 {
                    //: dictM["animationTimes"] = (roomGiftModel.animationTimes)
                    dictM[(kStr_scriptData.replacingOccurrences(of: "target", with: "im") + String(kStr_hiddenAppElseName.suffix(6)))] = (roomGiftModel.animationTimes)
                    //: } else {
                } else {
                    //: dictM["animationTimes"] = dictM["num"]
                    dictM[(kStr_scriptData.replacingOccurrences(of: "target", with: "im") + String(kStr_hiddenAppElseName.suffix(6)))] = dictM[(kStr_modelValue.replacingOccurrences(of: "spring", with: "m"))]
                }

                //: if let giftModel = JSONDeserializer<TalkingGiftMsgAnimatModel>.deserializeFrom(dict: dictM as? Dictionary<String, Any>, designatedPath: nil) {
                if let giftModel = JSONDeserializer<SubMeasurable>.deserializeFrom(dict: dictM as? [String: Any], designatedPath: nil) {
                    //: return giftModel
                    return giftModel
                }
            }
        }
        //: return nil
        return nil
    }

    /// 收到礼物消息的动效模型(私信收到)
    //: func addGiftAnimatModel(model: TalkingGiftMsgAnimatModel) {
    func objectShow(model: SubMeasurable) {
        //: animatArray.add(model)
        animatArray.add(model)
        //: judgePlay()
        equality()
    }

    /// 收到礼物消息的动效组(私信收到)
    //: func addGiftAnimatModelArr(modelArr: Array<Any>) {
    func sleepingDraught(modelArr: [Any]) {
        //: animatArray.addObjects(from: modelArr)
        animatArray.addObjects(from: modelArr)
        //: judgePlay()
        equality()
    }

    /// 获取剩余的动画队列
    //: func getLeftGiftAnimat() ->NSMutableArray {
    func makeScreenAnimat() -> NSMutableArray {
        //: let data = animatArray
        let data = animatArray
        //: animatArray.removeAllObjects()
        animatArray.removeAllObjects()
        //: isPlayAnimat = false
        isPlayAnimat = false
        //: return data
        return data
    }

    /// 初始化动画资源(针对通话的显示 最小化 关闭的切换)
    //: func initAnimatData(data: NSMutableArray) {
    func aggregationColor(data: NSMutableArray) {
        //: animatArray.removeAllObjects()
        animatArray.removeAllObjects()
        //: isPlayAnimat = false
        isPlayAnimat = false
        //: if data.count > 0 {
        if data.count > 0 {
            //: animatArray.addObjects(from: data as! [Any])
            animatArray.addObjects(from: data as! [Any])
        }
        //: judgePlay()
        equality()
    }

    /// 根据会话id 将对应的缓存动画加进来

    //: func initCachAnimatData(tagetID: String) {
    func doingModel(tagetID: String) {
        //: let data = AbTalkingPrivateChatAnimatTool.shared.getConverCacheGiftAnimat(tagetId: tagetID)
        let data = PrivateReactiveCompatible.shared.withModel(tagetId: tagetID)
        //: if data.count > 0 {
        if data.count > 0 {
            //: animatArray.addObjects(from: data as! [Any])
            animatArray.addObjects(from: data as! [Any])
        }
        //: judgePlay()
        equality()
    }

    /// 判断是否要取数组动效 开始播放
    //: func judgePlay() {
    func equality() {
        //: if animatArray.count>0 && isPlayAnimat == false {
        if animatArray.count > 0, isPlayAnimat == false {
            //: playNext()
            actual()
        }
    }

    /// 播放
    //: func playNext() {
    func actual() {
        //: if animatArray.count > 0 {
        if animatArray.count > 0 {
            //: var index = 0
            var index = 0
            //: animatArray.enumerateObjects { obj, idx, stop in
            animatArray.enumerateObjects { obj, idx, stop in
                // 盲盒礼物\帝王礼物 优先播放
                //: let model: TalkingGiftMsgAnimatModel = obj as! TalkingGiftMsgAnimatModel
                let model: SubMeasurable = obj as! SubMeasurable
                //: if (model.showType == ChatGiftAnimatType.myStery.rawValue || model.showType == ChatGiftAnimatType.king.rawValue) {
                if model.showType == ClientValueWidthCount.myStery.rawValue || model.showType == ClientValueWidthCount.king.rawValue {
                    //: index = idx
                    index = idx
                    //: stop.pointee = true
                    stop.pointee = true
                }
            }
            //: let giftModel = self.animatArray[index]
            let giftModel = self.animatArray[index]
            //: self.isPlayAnimat = true
            self.isPlayAnimat = true
            //: self.animatArray.removeObject(at: index)
            self.animatArray.removeObject(at: index)
            //: let iscanPlay = self.giftAnimatView.didReceiveMsgModel(msgModel: giftModel)
            let iscanPlay = self.giftAnimatView.forename(msgModel: giftModel)
            //: if !iscanPlay {
            if !iscanPlay {
                //: self.isPlayAnimat = false
                self.isPlayAnimat = false
                //: judgePlay()
                equality()
            }
        }
    }

    //: override var contentMode: UIView.ContentMode {
    override var contentMode: UIView.ContentMode {
        //: didSet {
        didSet {
            //: self.giftAnimatView.contentMode = contentMode
            self.giftAnimatView.contentMode = contentMode
        }
    }
}

//: extension TalkingPrivateChatAnimatView {
extension QueryedReactiveCompatible {
    // 添加视图
    //: private func setupSubviews() {
    private func setupText() {
        //: self.isUserInteractionEnabled = false
        self.isUserInteractionEnabled = false

        //: self.addSubview(giftAnimatView)
        self.addSubview(giftAnimatView)

        //: giftAnimatView.snp.makeConstraints { make in
        giftAnimatView.snp.makeConstraints { make in
            //: make.edges.equalTo(self)
            make.edges.equalTo(self)
        }
        //: giftAnimatView.animationFinishCallback = { [weak self] obj in
        giftAnimatView.animationFinishCallback = { [weak self] _ in
            //: guard let self = self else { return }
            guard let self = self else { return }
            //: self.isPlayAnimat = false
            self.isPlayAnimat = false
            //: self.playNext()
            self.actual()
        }

        //: giftAnimatView.finishAnimBlock = { [weak self] success in
        giftAnimatView.finishAnimBlock = { [weak self] success in
            //: guard let self = self else { return }
            guard let self = self else { return }
            //: if !success {
            if !success {
                //: self.isPlayAnimat = false
                self.isPlayAnimat = false
                //: self.playNext()
                self.actual()
            }
        }
    }
}
