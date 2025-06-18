
//: Declare String Begin

/*: "user/updateInfo" :*/
fileprivate let kStr_sizeValue:[Character] = ["u","s","e","r","/","u","p","d","a","t","e"]
fileprivate let kStr_officialText:String = "Infooriginal false color"

/*: "gallery/getGalleryByUid" :*/
fileprivate let kStr_allName:String = "playaller"
fileprivate let kStr_timeValue:[Character] = ["G","a","l","l","e","r","y","B","y","U","i","d"]

/*: "gallery/upload" :*/
fileprivate let kStr_resultTitle:[Character] = ["g","a","l","l","e","r"]
fileprivate let kStr_afterName:String = "y/uploadmain application"

/*: "gallery/deletePic" :*/
fileprivate let kStr_rangeTimeData:[Character] = ["g","a","l","l","e","r","y","/","d","e","l","e","t","e","P"]
fileprivate let kStr_marginText:String = "build"

/*: "user/tagDelete" :*/
fileprivate let kStr_libraryData:[Character] = ["u","s","e","r","/","t"]
fileprivate let kStr_sizeName:String = "self previous self asagDe"

/*: "mf/user/tagEdit" :*/
fileprivate let kStr_topValue:String = "mf/usappear equal if"
fileprivate let kStr_succeedText:String = "let selected upagEdit"

/*: "app/feedback" :*/
fileprivate let kStr_leadingTableData:String = "data size double import buttonapp/"
fileprivate let kStr_arrayValue:[Character] = ["b","a","c","k"]

/*: "IM/getMyBlackList" :*/
fileprivate let kStr_handleData:String = "who selected card falseIM/get"
fileprivate let kStr_sceneName:String = "make section raw image modekLis"
fileprivate let kStr_sexData:[Character] = ["t"]

/*: "mf/user/getSetting" :*/
fileprivate let kStr_commitViewValue:[Character] = ["m","f","/","u","s","e","r","/","g","e","t","S","e"]
fileprivate let kStr_nearbyTitle:String = "labellabeling"

/*: "mf/user/setConfig" :*/
fileprivate let kStr_outputData:[Character] = ["m","f","/","u","s","e","r","/","s","e","t","C","o","n","f","i","g"]

/*: "mf/user/settingStatus" :*/
fileprivate let kStr_moreAtText:[Character] = ["m","f","/","u","s","e"]
fileprivate let kStr_modelUserTitle:[Character] = ["r","/","s","e","t","t","i","n","g","S","t","a","t","u","s"]

/*: "type" :*/
fileprivate let kStr_specialColorName:[UInt8] = [0x79,0x74,0x7d,0x68]

private func skilledWorker(down num: UInt8) -> UInt8 {
    return num ^ 13
}

/*: "user/lockAccount" :*/
fileprivate let kStr_frameViewValue:String = "let star else let foruser/lock"
fileprivate let kStr_toValue:[Character] = ["A","c","c","o","u","n","t"]

/*: "mf/user/editInfo" :*/
fileprivate let kStr_promotionData:String = "toward makemf/u"
fileprivate let kStr_managerText:String = "size true addditInf"
fileprivate let kStr_norScreenName:String = "O"

/*: "mf/userSign/list" :*/
fileprivate let kStr_blockData:String = "mf/usetop normal self photo make"
fileprivate let kStr_layerValue:[Character] = ["i","s","t"]

/*: "mf/userSign/signIn" :*/
fileprivate let kStr_activityName:String = "mf/userpin manager selected file icon"
fileprivate let kStr_viewContent:String = "to awakeSign"

/*: "mf/dating/saveVideo" :*/
fileprivate let kStr_labValue:String = "drop meanmf/da"
fileprivate let kStr_listValue:String = "for index layeraveVideo"

/*: "mf/dating/getConfig" :*/
fileprivate let kStr_viewValue:[Character] = ["m","f","/","d","a","t","i","n","g","/","g","e","t","C","o","n","f","i","g"]

/*: "mf/dating/deleteVideo" :*/
fileprivate let kStr_captureName:String = "mf/dadetail self label view"
fileprivate let kStr_iconContent:String = "gift view array gift edgeteVideo"

/*: "mf/greet/updateAudioRemark" :*/
fileprivate let kStr_upModelContent:[Character] = ["m","f","/","g","r"]
fileprivate let kStr_toData:String = "eet/upself wrap title add"
fileprivate let kStr_equalName:[Character] = ["i","o","R","e","m","a","r","k"]

/*: "mf/greet/list" :*/
fileprivate let kStr_contextFileTitle:[Character] = ["m","f","/","g","r","e","e","t","/","l"]
fileprivate let kStr_myMainIconText:[Character] = ["i","s","t"]

/*: "mf/greet/add" :*/
fileprivate let kStr_tableViewName:String = "mf/gscreen none show"
fileprivate let kStr_modelText:String = "title lab/add"

/*: "mf/greet/del" :*/
fileprivate let kStr_nameData:[Character] = ["m","f","/","g","r","e","e","t","/","d","e","l"]

/*: "mf/greet/getSettings" :*/
fileprivate let kStr_backgroundName:[Character] = ["m","f","/","g","r","e"]
fileprivate let kStr_kindName:String = "table ifet/get"

/*: "mf/greet/extraSetting" :*/
fileprivate let kStr_appName:[Character] = ["m","f","/","g","r","e","e"]
fileprivate let kStr_iconName:[Character] = ["t","/","e","x","t","r","a","S","e","t","t","i","n","g"]

/*: "game/list" :*/
fileprivate let kStr_pathMakeData:String = "game/lview device self touch"
fileprivate let kStr_equalTitle:String = "isindex"

/*: "category" :*/
fileprivate let kStr_sendData:[UInt8] = [0x79,0x72,0x6f,0x67,0x65,0x74,0x61,0x63]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  LoadEqualRequestTool.swift
//  AbroadTalking
//
//  Created by Charlotte on 2022/9/9.
//

//: import UIKit
import UIKit

//: class TalkingMeRequestTool: NSObject {
class LoadEqualRequestTool: NSObject {
    /// 资料完善
    /// - Parameters:
    ///   - completion: 回调
    //: class func req_UpdateUserInfo(params: Dictionary<String, Any>, completion: @escaping FinishBlock) {
    class func voiceCompletion(params: [String: Any], completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel.init()
        let reqModel = SizeRequestModel()
        //: reqModel.requestPath = "user/updateInfo"
        reqModel.requestPath = (String(kStr_sizeValue) + String(kStr_officialText.prefix(4)))
        //: reqModel.requestType = .POST
        reqModel.requestType = .POST
        //: reqModel.params = params
        reqModel.params = params
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        kLet_firstName.afterFailureCompletion(model: reqModel) { succeed, result, errorModel in
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }

    /// 获取用户相册
    /// - Parameters:
    ///   - completion: 回调
    //: class func req_GalleryByUid(params: Dictionary<String, Any>, completion: @escaping FinishBlock) {
    class func byEqualCompletion(params: [String: Any], completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel.init()
        let reqModel = SizeRequestModel()
        //: reqModel.requestPath = "gallery/getGalleryByUid"
        reqModel.requestPath = (kStr_allName.replacingOccurrences(of: "play", with: "g") + "y/get" + String(kStr_timeValue))
        //: reqModel.params = params
        reqModel.params = params
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        kLet_firstName.afterFailureCompletion(model: reqModel) { succeed, result, errorModel in
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }

    /// 上传图片
    /// - Parameters:
    ///   - completion: 回调
    //: class func req_UploadPic(params: Dictionary<String, Any>, completion: @escaping FinishBlock) {
    class func addModel(params: [String: Any], completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel.init()
        let reqModel = SizeRequestModel()
        //: reqModel.requestPath = "gallery/upload"
        reqModel.requestPath = (String(kStr_resultTitle) + String(kStr_afterName.prefix(8)))
        //: reqModel.requestType = .POST
        reqModel.requestType = .POST
        //: reqModel.params = params
        reqModel.params = params
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        kLet_firstName.afterFailureCompletion(model: reqModel) { succeed, result, errorModel in
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }

    /// 删除图片
    /// - Parameters:
    ///   - completion: 回调
    //: class func req_DeletePic(params: Dictionary<String, Any>, completion: @escaping FinishBlock) {
    class func dismissPath(params: [String: Any], completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel.init()
        let reqModel = SizeRequestModel()
        //: reqModel.requestPath = "gallery/deletePic"
        reqModel.requestPath = (String(kStr_rangeTimeData) + kStr_marginText.replacingOccurrences(of: "build", with: "ic"))
        //: reqModel.requestType = .POST
        reqModel.requestType = .POST
        //: reqModel.params = params
        reqModel.params = params
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        kLet_firstName.afterFailureCompletion(model: reqModel) { succeed, result, errorModel in
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }

    /// 删除单个用户标签
    /// - Parameters:
    ///   - completion: 回调
    //: class func req_DeleteTag(params: Dictionary<String, Any>, completion: @escaping FinishBlock) {
    class func deleteViewCompletion(params: [String: Any], completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel.init()
        let reqModel = SizeRequestModel()
        //: reqModel.requestPath = "user/tagDelete"
        reqModel.requestPath = (String(kStr_libraryData) + String(kStr_sizeName.suffix(4)) + "lete")
        //: reqModel.requestType = .POST
        reqModel.requestType = .POST
        //: reqModel.params = params
        reqModel.params = params
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        kLet_firstName.afterFailureCompletion(model: reqModel) { succeed, result, errorModel in
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }

    /// 编辑用户标签
    /// - Parameters:
    ///   - completion: 回调
    //: class func req_EditTag(params: Dictionary<String, Any>, completion: @escaping FinishBlock) {
    class func source(params: [String: Any], completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel.init()
        let reqModel = SizeRequestModel()
        //: reqModel.requestPath = "mf/user/tagEdit"
        reqModel.requestPath = (String(kStr_topValue.prefix(5)) + "er/t" + String(kStr_succeedText.suffix(6)))
        //: reqModel.requestType = .POST
        reqModel.requestType = .POST
        //: reqModel.params = params
        reqModel.params = params
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        kLet_firstName.afterFailureCompletion(model: reqModel) { succeed, result, errorModel in
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }

    /// 意见反馈
    /// - Parameters:
    ///   - completion: 回调
    //: class func req_Feedback(params: Dictionary<String, Any>, completion: @escaping FinishBlock) {
    class func naturalAction(params: [String: Any], completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel.init()
        let reqModel = SizeRequestModel()
        //: reqModel.requestPath = "app/feedback"
        reqModel.requestPath = (String(kStr_leadingTableData.suffix(4)) + "feed" + String(kStr_arrayValue))
        //: reqModel.requestType = .POST
        reqModel.requestType = .POST
        //: reqModel.params = params
        reqModel.params = params
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        kLet_firstName.afterFailureCompletion(model: reqModel) { succeed, result, errorModel in
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }

    /// 获取黑名单列表
    /// - Parameters:
    ///   - completion: 回调
    //: class func req_BlackList(params: Dictionary<String, Any>, completion: @escaping FinishBlock) {
    class func each(params: [String: Any], completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel.init()
        let reqModel = SizeRequestModel()
        //: reqModel.requestPath = "IM/getMyBlackList"
        reqModel.requestPath = (String(kStr_handleData.suffix(6)) + "MyBlac" + String(kStr_sceneName.suffix(4)) + String(kStr_sexData))
        //: reqModel.params = params
        reqModel.params = params
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        kLet_firstName.afterFailureCompletion(model: reqModel) { succeed, result, errorModel in
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }

    /// 获取设置信息接口
    /// - Parameters:
    ///   - completion: 回调
    //: class func req_GetSetting(params: Dictionary<String, Any>, completion: @escaping FinishBlock) {
    class func objectIcon(params: [String: Any], completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel.init()
        let reqModel = SizeRequestModel()
        //: reqModel.requestPath = "mf/user/getSetting"
        reqModel.requestPath = (String(kStr_commitViewValue) + kStr_nearbyTitle.replacingOccurrences(of: "label", with: "t"))
        //: reqModel.params = params
        reqModel.params = params
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        kLet_firstName.afterFailureCompletion(model: reqModel) { succeed, result, errorModel in
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }

    /// 个人中心设置
    /// - Parameters:
    ///   - completion: 回调
    //: class func req_SettingChange(params: Dictionary<String, Any>, completion: @escaping FinishBlock) {
    class func permissionAfter(params: [String: Any], completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel.init()
        let reqModel = SizeRequestModel()
        //: reqModel.requestPath = "mf/user/setConfig"
        reqModel.requestPath = (String(kStr_outputData))
        //: reqModel.params = params
        reqModel.params = params
        //: reqModel.requestType = .POST
        reqModel.requestType = .POST
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        kLet_firstName.afterFailureCompletion(model: reqModel) { succeed, result, errorModel in
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }

    /// 女性busy状态上报接口
    /// - Parameters:
    ///   - type: 0 :不活跃， 1:活跃
    ///   - completion: 回调
    //: class func req_settingStatus(type: Int, completion: @escaping FinishBlock) {
    class func doingCompletion(type: Int, completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel.init()
        let reqModel = SizeRequestModel()
        //: reqModel.requestPath = "mf/user/settingStatus"
        reqModel.requestPath = (String(kStr_moreAtText) + String(kStr_modelUserTitle))
        //: reqModel.params = ["type": type]
        reqModel.params = [String(bytes: kStr_specialColorName.map{skilledWorker(down: $0)}, encoding: .utf8)!: type]
        //: reqModel.requestType = .POST
        reqModel.requestType = .POST
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        kLet_firstName.afterFailureCompletion(model: reqModel) { succeed, result, errorModel in
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }

    /// 注销账号
    /// - Parameters:
    /// - completion: 回调
    //: class func req_LockAccount(params: Dictionary<String, Any>, completion: @escaping FinishBlock) {
    class func pointDoing(params: [String: Any], completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel.init()
        let reqModel = SizeRequestModel()
        //: reqModel.requestPath = "user/lockAccount"
        reqModel.requestPath = (String(kStr_frameViewValue.suffix(9)) + String(kStr_toValue))
        //: reqModel.params = params
        reqModel.params = params
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        kLet_firstName.afterFailureCompletion(model: reqModel) { succeed, result, errorModel in
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }

    /// 个人中心修改私信价格、开启语音授权
    /// - Parameters:
    /// - completion: 回调
    //: class func req_EditInfo(params: Dictionary<String, Any>, completion: @escaping FinishBlock) {
    class func minimize(params: [String: Any], completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel.init()
        let reqModel = SizeRequestModel()
        //: reqModel.requestPath = "mf/user/editInfo"
        reqModel.requestPath = (String(kStr_promotionData.suffix(4)) + "ser/e" + String(kStr_managerText.suffix(6)) + kStr_norScreenName.lowercased())
        //: reqModel.params = params
        reqModel.params = params
        //: reqModel.requestType = .POST
        reqModel.requestType = .POST
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        kLet_firstName.afterFailureCompletion(model: reqModel) { succeed, result, errorModel in
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }

    /// 获取签到日历列表
    /// - Parameter completion: 回调
    //: class func req_getUserSignList(completion: @escaping FinishBlock) {
    class func codex(completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel.init()
        let reqModel = SizeRequestModel()
        //: reqModel.requestPath = "mf/userSign/list"
        reqModel.requestPath = (String(kStr_blockData.prefix(6)) + "rSign/l" + String(kStr_layerValue))
        //: reqModel.requestType = .GET
        reqModel.requestType = .GET
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        kLet_firstName.afterFailureCompletion(model: reqModel) { succeed, result, errorModel in
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }

    /// 用户签到
    /// - Parameter completion: 回调
    //: class func req_userSignIn(completion: @escaping FinishBlock) {
    class func inwardsCoverEqual(completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel.init()
        let reqModel = SizeRequestModel()
        //: reqModel.requestPath = "mf/userSign/signIn"
        reqModel.requestPath = (String(kStr_activityName.prefix(7)) + String(kStr_viewContent.suffix(4)) + "/signIn")
        //: reqModel.requestType = .POST
        reqModel.requestType = .POST
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        kLet_firstName.afterFailureCompletion(model: reqModel) { succeed, result, errorModel in
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }

    /// 用户资料视频地址上传
    /// - Parameters:
    ///   - completion: 回调
    //: class func uploadVideoUserEdit(params: Dictionary<String, Any>, completion: @escaping FinishBlock) {
    class func con(params: [String: Any], completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel.init()
        let reqModel = SizeRequestModel()
        //: reqModel.requestPath = "mf/dating/saveVideo"
        reqModel.requestPath = (String(kStr_labValue.suffix(5)) + "ting/s" + String(kStr_listValue.suffix(8)))
        //: reqModel.params = params
        reqModel.params = params
        //: reqModel.requestType = .POST
        reqModel.requestType = .POST
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        kLet_firstName.afterFailureCompletion(model: reqModel) { succeed, result, errorModel in
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }

    /// 获取当前用户上传的视频
    /// - Parameters:
    ///   - completion: 回调
    //: class func getUploadVideoInfo(completion: @escaping FinishBlock) {
    class func release(completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel.init()
        let reqModel = SizeRequestModel()
        //: reqModel.requestPath = "mf/dating/getConfig"
        reqModel.requestPath = (String(kStr_viewValue))
        //: reqModel.requestType = .POST
        reqModel.requestType = .POST
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        kLet_firstName.afterFailureCompletion(model: reqModel) { succeed, result, errorModel in
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }

    /// 删除当前用户上传的视频
    /// - Parameters:
    ///   - completion: 回调
    //: class func deleteUserVideo(completion: @escaping FinishBlock) {
    class func touchCompletion(completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel.init()
        let reqModel = SizeRequestModel()
        //: reqModel.requestPath = "mf/dating/deleteVideo"
        reqModel.requestPath = (String(kStr_captureName.prefix(5)) + "ting/dele" + String(kStr_iconContent.suffix(7)))
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        kLet_firstName.afterFailureCompletion(model: reqModel) { succeed, result, errorModel in
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }

    /// 更新语音备注
    /// - Parameters:
    ///   - completion: 回调
    //: class func req_UpdateAudioRemark(completion: @escaping FinishBlock) {
    class func equalCompletion(completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel.init()
        let reqModel = SizeRequestModel()
        //: reqModel.requestPath = "mf/greet/updateAudioRemark"
        reqModel.requestPath = (String(kStr_upModelContent) + String(kStr_toData.prefix(6)) + "dateAud" + String(kStr_equalName))
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        kLet_firstName.afterFailureCompletion(model: reqModel) { succeed, result, errorModel in
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }

    /// 自动打招呼-查看设置列表
    /// - Parameters: type: 1=语音， 2=文本
    ///   - completion: 回调
    //: class func req_GetGreetList(params: Dictionary<String, Any>, completion: @escaping FinishBlock) {
    class func recoverFromCompletion(params: [String: Any], completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel.init()
        let reqModel = SizeRequestModel()
        //: reqModel.requestPath = "mf/greet/list"
        reqModel.requestPath = (String(kStr_contextFileTitle) + String(kStr_myMainIconText))
        //: reqModel.params = params
        reqModel.params = params
        //: reqModel.requestType = .POST
        reqModel.requestType = .POST
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        kLet_firstName.afterFailureCompletion(model: reqModel) { succeed, result, errorModel in
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }

    /// 自动打招呼-添加自定义文案/语音/图片
    /// - Parameters: type: 1：语音；2：文案；3：图片; 4:私密照片
    ///   - completion: 回调
    //: class func req_UploadGreetAdd(params: Dictionary<String, Any>, completion: @escaping FinishBlock) {
    class func tinkle(params: [String: Any], completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel.init()
        let reqModel = SizeRequestModel()
        //: reqModel.requestPath = "mf/greet/add"
        reqModel.requestPath = (String(kStr_tableViewName.prefix(4)) + "reet" + String(kStr_modelText.suffix(4)))
        //: reqModel.params = params
        reqModel.params = params
        //: reqModel.requestType = .POST
        reqModel.requestType = .POST
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        kLet_firstName.afterFailureCompletion(model: reqModel) { succeed, result, errorModel in
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }

    /// 自动打招呼-设置音频备注
    ///   - completion: 回调
    //: class func req_UpdateAudioRemark(params: Dictionary<String, Any>, completion: @escaping FinishBlock) {
    class func isSize(params: [String: Any], completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel.init()
        let reqModel = SizeRequestModel()
        //: reqModel.requestPath = "mf/greet/updateAudioRemark"
        reqModel.requestPath = (String(kStr_upModelContent) + String(kStr_toData.prefix(6)) + "dateAud" + String(kStr_equalName))
        //: reqModel.params = params
        reqModel.params = params
        //: reqModel.requestType = .POST
        reqModel.requestType = .POST
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        kLet_firstName.afterFailureCompletion(model: reqModel) { succeed, result, errorModel in
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }

    /// 自动打招呼-删除文案/音频
    ///   - completion: 回调
    //: class func req_DeleteAudio(params: Dictionary<String, Any>, completion: @escaping FinishBlock) {
    class func productCompletion(params: [String: Any], completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel.init()
        let reqModel = SizeRequestModel()
        //: reqModel.requestPath = "mf/greet/del"
        reqModel.requestPath = (String(kStr_nameData))
        //: reqModel.params = params
        reqModel.params = params
        //: reqModel.requestType = .POST
        reqModel.requestType = .POST
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        kLet_firstName.afterFailureCompletion(model: reqModel) { succeed, result, errorModel in
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }

    /// 招呼设置-查看设置
    /// - Parameters:
    ///   - completion: 回调
    //: class func req_GetGreetSetting(params: Dictionary<String, Any>, completion: @escaping FinishBlock) {
    class func isReplyCompletion(params: [String: Any], completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel.init()
        let reqModel = SizeRequestModel()
        //: reqModel.requestPath = "mf/greet/getSettings"
        reqModel.requestPath = (String(kStr_backgroundName) + String(kStr_kindName.suffix(6)) + "Settings")
        //: reqModel.params = params
        reqModel.params = params
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        kLet_firstName.afterFailureCompletion(model: reqModel) { succeed, result, errorModel in
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }

    /// 图片打招呼-额外配置礼物信息
    /// - Parameters: unlockGiftId:解锁礼物id, isBurn:设置的阅后即焚状态
    ///   - completion: 回调
    //: class func req_UploadGreetExtraSetting(params: Dictionary<String, Any>, completion: @escaping FinishBlock) {
    class func cellQuantityCompletion(params: [String: Any], completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel.init()
        let reqModel = SizeRequestModel()
        //: reqModel.requestPath = "mf/greet/extraSetting"
        reqModel.requestPath = (String(kStr_appName) + String(kStr_iconName))
        //: reqModel.params = params
        reqModel.params = params
        //: reqModel.requestType = .POST
        reqModel.requestType = .POST
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        kLet_firstName.afterFailureCompletion(model: reqModel) { succeed, result, errorModel in
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }

    /// 获取游戏列表
    /// - Parameters:
    ///   - category: 1=我的页面，2=私聊页面
    ///   - completion: 回调
    //: class func req_getGameList(category: Int, completion: @escaping FinishBlock) {
    class func jointWith(category: Int, completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel()
        let reqModel = SizeRequestModel()
        //: reqModel.requestPath = "game/list"
        reqModel.requestPath = (String(kStr_pathMakeData.prefix(6)) + kStr_equalTitle.replacingOccurrences(of: "index", with: "t"))
        //: reqModel.params = ["category": category]
        reqModel.params = [String(bytes: kStr_sendData.reversed(), encoding: .utf8)!: category]
        //: reqModel.requestType = .GET
        reqModel.requestType = .GET
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        kLet_firstName.afterFailureCompletion(model: reqModel) { succeed, result, errorModel in
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }
}
