
//: Declare String Begin

/*: "App" :*/
fileprivate let kStr_nowPhoneName:[Character] = ["A","p","p"]

/*: "blockList_ :*/
fileprivate let kStr_sizeTimingTitle:String = "start"
fileprivate let kStr_centerEndValue:String = "for frame return var importockL"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  VideoEqualReactiveCompatible.swift
//  AbroadTalking
//
//  Created by young on 2022/9/19.
//

//: import UIKit
import UIKit

//: class TalkingBlockListManager: NSObject {
class VideoEqualReactiveCompatible: NSObject {
    //: var blockList: [String]?
    var blockList: [String]? // 拉黑列表

    // singleton
    //: static let shared = TalkingBlockListManager()
    static let shared = VideoEqualReactiveCompatible()
    //: override func copy() -> Any { return self }
    override func copy() -> Any { return self }
    //: override func mutableCopy() -> Any { return self }
    override func mutableCopy() -> Any { return self }
    //: private override init() {
    override private init() {
        //: super.init()
        super.init()
        //: loadBlockList()
        metalBar()
    }

    /// 加载拉黑列表
    //: func loadBlockList() {
    func metalBar() {
        //: let diskPath = getCachePath()
        let diskPath = pathClick()
        //: if FileManager.default.fileExists(atPath: diskPath) {
        if FileManager.default.fileExists(atPath: diskPath) {
            //: blockList = NSKeyedUnarchiver.unarchiveObject(withFile: diskPath) as? [String]
            blockList = NSKeyedUnarchiver.unarchiveObject(withFile: diskPath) as? [String]
            //: if blockList == nil {
            if blockList == nil {
                //: try? FileManager.default.removeItem(atPath: diskPath)
                try? FileManager.default.removeItem(atPath: diskPath)
            }
        }
        //: if blockList == nil {
        if blockList == nil {
            //: blockList = []
            blockList = []
        }
    }

    /// 添加用户到拉黑列表
    /// - Parameter userId: 用户ID
    //: func addUserToBlockList(userId: String) {
    func snapColor(userId: String) {
        //: blockList?.append(userId)
        blockList?.append(userId)
        //: let diskPath = getCachePath()
        let diskPath = pathClick()
        //: NSKeyedArchiver.archiveRootObject(blockList!, toFile: diskPath)
        NSKeyedArchiver.archiveRootObject(blockList!, toFile: diskPath)
    }

    /// 从拉黑列表中移除用户
    /// - Parameter userId: 用户ID
    //: func removeUserForBlockList(userId: String) {
    func managerDrag(userId: String) {
        //: if let index = blockList?.firstIndex(of: userId) {
        if let index = blockList?.firstIndex(of: userId) {
            //: blockList?.remove(at: index)
            blockList?.remove(at: index)
        }
        //: let diskPath = getCachePath()
        let diskPath = pathClick()
        //: NSKeyedArchiver.archiveRootObject(blockList!, toFile: diskPath)
        NSKeyedArchiver.archiveRootObject(blockList!, toFile: diskPath)
    }

    /// 判断是否在拉黑列表中
    /// - Parameter userId: 用户ID
    /// - Returns: 是否在拉黑列表
    //: func isInBlockList(userId: String) -> Bool {
    func labelLine(userId: String) -> Bool {
        //: if (blockList?.firstIndex(of: userId)) != nil {
        if (blockList?.firstIndex(of: userId)) != nil {
            //: return true
            return true
        }

        //: return false
        return false
    }

    // 获取缓存路径【和uid关联】
    //: private func getCachePath() -> String {
    private func pathClick() -> String {
        //: let documentDirectoryPath = NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true).first ?? ""
        let documentDirectoryPath = NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true).first ?? ""
        //: let appDirectoryPath = (documentDirectoryPath as NSString).appendingPathComponent("App")
        let appDirectoryPath = (documentDirectoryPath as NSString).appendingPathComponent((String(kStr_nowPhoneName)))

        //: let fileManager = FileManager.default
        let fileManager = FileManager.default
        //: if fileManager.fileExists(atPath: appDirectoryPath) == false {
        if fileManager.fileExists(atPath: appDirectoryPath) == false {
            //: try? fileManager.createDirectory(atPath: appDirectoryPath, withIntermediateDirectories: true)
            try? fileManager.createDirectory(atPath: appDirectoryPath, withIntermediateDirectories: true)
        }

        //: let uid = Defaults.string(forKey: TalkingLoginUidCacheKey) ?? ""
        let uid = kLet_managerValue.string(forKey: kLet_bottomText) ?? ""
        //: let filePath = (appDirectoryPath as NSString).appendingPathComponent("blockList_\(uid)")
        let filePath = (appDirectoryPath as NSString).appendingPathComponent((kStr_sizeTimingTitle.replacingOccurrences(of: "start", with: "bl") + String(kStr_centerEndValue.suffix(4)) + "ist_") + "\(uid)")
        //: return filePath
        return filePath
    }
}
