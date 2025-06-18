
//: Declare String Begin

/*: "http://" :*/
fileprivate let kStr_appText:[Character] = ["h","t","t","p",":"]
fileprivate let kStr_actionName:String = "equalequal"

/*: "https://" :*/
fileprivate let kStr_voiceSectionData:[Character] = ["h","t"]
fileprivate let kStr_subName:String = "error color capture mediumtps://"

/*: "platform=iphone&version=%@&packageId=%@&bundleId=%@" :*/
fileprivate let kStr_equalModelVideoName:[UInt8] = [0xf2,0xee,0xe3,0xf6,0xe4,0xed,0xf0,0xef,0xbf,0xeb,0xf2,0xea,0xed,0xec,0xe7,0xa4,0xf4,0xe7,0xf0,0xf1,0xeb,0xed,0xec,0xbf,0xa7,0xc2,0xa4,0xf2,0xe3,0xe1,0xe9,0xe3,0xe5,0xe7,0xcb,0xe6,0xbf,0xa7,0xc2,0xa4,0xe0,0xf7,0xec,0xe6,0xee,0xe7,0xcb,0xe6,0xbf,0xa7,0xc2]

/*: "%@%@&%@" :*/
fileprivate let kStr_toValue:String = "%selected%selected&"
fileprivate let kStr_allListValue:String = "title@"

/*: "url" :*/
fileprivate let kStr_cornerValue:String = "ursex"

/*: "id" :*/
fileprivate let kStr_modelTitle:String = "ierror"

/*: "length" :*/
fileprivate let kStr_labelName:[Character] = ["l","e","n","g","t"]
fileprivate let kStr_textData:[Character] = ["h"]

/*: "getFileSize error : :*/
fileprivate let kStr_makeData:[Character] = ["g","e","t","F","i","l","e","S","i"]
fileprivate let kStr_rowData:String = "else state view icon ifze err"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  EqualTaskModel.swift
//  FloraFlex
//
//  Created by DouXiu on 2024/8/26.
//

//: import UIKit
import UIKit

//: enum DownloadTaskStatus: Int {
enum GiftWithOnsetTarget: Int {
    //: case none = 0
    case none = 0 // 未定义
    //: case prepare = 1
    case prepare = 1 // 准备
    //: case running = 10
    case running = 10 // 下载中
    //: case pause = 20
    case pause = 20 // 暂停
    //: case cancel = 30
    case cancel = 30 // 取消
    //: case expired = 40
    case expired = 40 // 过期
    //: case finish = 100
    case finish = 100 // 完成
    //: case error = 1000
    case error = 1000 // 错误
}

//: enum DownloadTaskTypeID: Int {
enum FromSucceedAdditiveArithmetic: Int {
    //: case undefined = 0
    case undefined = 0 // 未定义
    //: case chatRecord = 1
    case chatRecord = 1 // 语音聊天
    //: case oneKeyGreet = 2
    case oneKeyGreet = 2 // 一键发送打招呼语音
}

//: class VoiceDownloadTaskModel: NSObject {
class EqualTaskModel: NSObject {
    //: var taskId: String = ""
    var taskId: String = ""
    /// 下载地址
    //: var downloadUri: String = ""
    var downloadUri: String = ""
    /// 输出路径zip包
    //: var zipFilePath: String = ""
    var zipFilePath: String = ""
    /// 已下载大小
    //: var currentSize: Double = 0.0
    var currentSize: Double = 0.0
    /// 总大小
    //: var totalSize: Double = 0.0
    var totalSize: Double = 0.0
    /// 下载状态
    //: var taskStatus: DownloadTaskStatus = .none
    var taskStatus: GiftWithOnsetTarget = .none
    /// 解压后路径
    //: var unZipFilePath: String = ""
    var unZipFilePath: String = ""
    /// 下载区分标识回调
    //: var taskTypeId: DownloadTaskTypeID = .undefined
    var taskTypeId: FromSucceedAdditiveArithmetic = .undefined
    /// 语音id
    //: var vid: String = ""
    var vid: String = ""
    /// 时长
    //: var length = 0
    var length = 0
    /// 输出流
    //: var stream: OutputStream?
    var stream: OutputStream?
    /// session
    //: var dataTask: URLSessionDataTask?
    var dataTask: URLSessionDataTask?

    /// 获取语音下载model
    //: class func getVoiceModel(_ tempModel: GoFarReactiveCompatible) -> VoiceDownloadTaskModel {
    class func accountPossibility(_ tempModel: GoFarReactiveCompatible) -> EqualTaskModel {
        //: let model = VoiceDownloadTaskModel()
        let model = EqualTaskModel()
        //: model.taskTypeId = .chatRecord
        model.taskTypeId = .chatRecord
        //: model.taskId = tempModel.msgId
        model.taskId = tempModel.msgId
        //: model.zipFilePath = tempModel.db_filePath
        model.zipFilePath = tempModel.db_filePath
        //: if tempModel.db_voiceUri.contains("http://") || tempModel.db_voiceUri.contains("https://") {
        if tempModel.db_voiceUri.contains((String(kStr_appText) + kStr_actionName.replacingOccurrences(of: "equal", with: "/"))) || tempModel.db_voiceUri.contains((String(kStr_voiceSectionData) + String(kStr_subName.suffix(6)))) {
            //: model.downloadUri = tempModel.db_voiceUri
            model.downloadUri = tempModel.db_voiceUri
            //: } else {
        } else {
            //: let otherParams = String(format: "platform=iphone&version=%@&packageId=%@&bundleId=%@", TableMacroDefine.getAppNetVersion(), TableMacroDefine.getPackageID(), TableMacroDefine.getAppBundle())
            let otherParams = String(format: String(bytes: kStr_equalModelVideoName.map{$0^130}, encoding: .utf8)!, TableMacroDefine.effectDoingTool(), TableMacroDefine.catchToId(), TableMacroDefine.titleSumimate())
            //: model.downloadUri = String(format: "%@%@&%@", TalkingRequestAddrTool.share.serverUrlStr, tempModel.db_voiceUri, otherParams)
            model.downloadUri = String(format: "%@%@&%@", ViewManagerAddrTool.share.serverUrlStr, tempModel.db_voiceUri, otherParams)

            //: model.currentSize = VoiceDownloadTaskModel.getFileSize(path: tempModel.db_filePath)
            model.currentSize = EqualTaskModel.errorPath(path: tempModel.db_filePath)
        }
        //: return model
        return model
    }

    /// 获取一键打招呼model
    //: class func getOneKeyGreetModel(_ voiceInfo: [String: Any]) -> VoiceDownloadTaskModel {
    class func part(_ voiceInfo: [String: Any]) -> EqualTaskModel {
        //: let model = VoiceDownloadTaskModel()
        let model = EqualTaskModel()
        //: model.taskTypeId = .oneKeyGreet
        model.taskTypeId = .oneKeyGreet
        //: model.downloadUri = voiceInfo["url"] as? String ?? ""
        model.downloadUri = voiceInfo[(kStr_cornerValue.replacingOccurrences(of: "sex", with: "l"))] as? String ?? ""
        //: model.vid = voiceInfo["id"] as? String ?? ""
        model.vid = voiceInfo["id"] as? String ?? ""
        //: model.length = Int(voiceInfo["length"] as? String ?? "0") ?? 0
        model.length = Int(voiceInfo[(String(kStr_labelName) + String(kStr_textData))] as? String ?? "0") ?? 0
        //: let fileName = (model.downloadUri as NSString).lastPathComponent
        let fileName = (model.downloadUri as NSString).lastPathComponent
        //: let pathName = fileName.replacingOccurrences(of: ".", with: "_")
        let pathName = fileName.replacingOccurrences(of: ".", with: "_")
        //: let timeInterval = Int(Date().timeIntervalSince1970)
        let timeInterval = Int(Date().timeIntervalSince1970)
        //: model.zipFilePath = "\(CacheReactiveCompatible.getChatVoicePath())\(pathName)\(timeInterval)"
        model.zipFilePath = "\(CacheReactiveCompatible.cover())\(pathName)\(timeInterval)"
        //: return model
        return model
    }
}

//: extension VoiceDownloadTaskModel {
extension EqualTaskModel {
    /// 获取文件大小
    /// - Parameter path: 文件完整路径
    /// - Returns: 文件size
    //: class func getFileSize(path: String) -> Double {
    class func errorPath(path: String) -> Double {
        //: let fileManager = FileManager.default
        let fileManager = FileManager.default
        //: guard fileManager.fileExists(atPath: path) else {
        guard fileManager.fileExists(atPath: path) else {
            //: return 0.0
            return 0.0
        }
        //: do {
        do {
            //: let attr = try fileManager.attributesOfItem(atPath: path)
            let attr = try fileManager.attributesOfItem(atPath: path)
            //: let fileSize = attr[FileAttributeKey.size] as! UInt64
            let fileSize = attr[FileAttributeKey.size] as! UInt64
            //: return Double(fileSize)
            return Double(fileSize)
            //: } catch {
        } catch {
            //: printLog(message: "getFileSize error :\(error)")
            pathLine(message: (String(kStr_makeData) + String(kStr_rowData.suffix(6)) + "or :") + "\(error)")
            //: return 0.0
            return 0.0
        }
    }

    /// 获取文件本地存储路径
    /// - Returns: 路径
    //: func getDownloadZipFilePath() -> String {
    func addView() -> String {
        //: guard self.zipFilePath.isEmpty else {
        guard self.zipFilePath.isEmpty else {
            //: return self.zipFilePath
            return self.zipFilePath
        }
        //: let timeInterval = Int(Date().timeIntervalSince1970)
        let timeInterval = Int(Date().timeIntervalSince1970)
        //: return "\(CacheReactiveCompatible.getChatVoicePath())\(self.taskId)\(timeInterval)"
        return "\(CacheReactiveCompatible.cover())\(self.taskId)\(timeInterval)"
    }
}
