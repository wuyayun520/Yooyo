
//: Declare String Begin

/*: ".db" :*/
fileprivate let kStr_addImageTitle:String = "model player.db"

/*: "WCDB数据库打开失败：userId为空。" :*/
fileprivate let kStr_taskTargetData:[Character] = ["W","C","D","B","数","据","库","\u{6253}"]
fileprivate let kStr_colorDetailNotName:[Character] = ["开","失","败","：","u","s","e","r","I","d","为","\u{7a7a}","。"]

/*: "WCDB/ :*/
fileprivate let kStr_giftValue:[Character] = ["W","C","D","B","/"]

/*: "WCDB数据库打开失败： :*/
fileprivate let kStr_timeText:String = "WCDB\u{6570}"
fileprivate let kStr_stackData:String = "据\u{5e93}打开失败\u{ff1a}"

/*: "WCDB数据库成功打开： :*/
fileprivate let kStr_colorName:[Character] = ["W","C","D","B","数","据","库","成","功","\u{6253}","开","："]

/*: "WCDB数据库成功关闭。" :*/
fileprivate let kStr_hiddenData:String = "select if playerWCDB数"

/*: "WCDB数据库：创建表失败。error： :*/
fileprivate let kStr_sizeGiftValue:[Character] = ["W"]
fileprivate let kStr_pathTitle:String = "CDB数\u{636e}"
fileprivate let kStr_listFormatText:String = "失\u{8d25}。error："

/*: ." :*/
fileprivate let kStr_liveValue:[Character] = ["."]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  TableManager.swift
//  FloraFlex
//
//  Created by DouXiu on 2024/8/29.
//

//: import UIKit
import UIKit
//: import WCDBSwift
import WCDBSwift

//: class WCDBManager: NSObject {
class TableManager: NSObject {
    //: static let shared = WCDBManager()
    static let shared = TableManager()
    /// 数据库
    //: var database: Database?
    var database: Database?
    /// 数据库名称
    //: private var wcdbName: String {
    private var wcdbName: String {
        //: return LocationThen.share.loginUserMode.userID + ".db"
        return LocationThen.share.loginUserMode.userID + ".db"
    }

    //: private override init() {
    override private init() {
        //: super.init()
        super.init()
        //: self.connectDatabase()
        self.dataTo()
    }

    /// 连接数据库
    //: func connectDatabase() {
    func dataTo() {
        //: closeDatabase()
        magnitudeimate()

        //: guard !LocationThen.share.loginUserMode.userID.isEmpty else {
        guard !LocationThen.share.loginUserMode.userID.isEmpty else {
            //: MiniLoadThen.appLine(msg: "WCDB数据库打开失败：userId为空。")
            MiniLoadThen.appLine(msg: (String(kStr_taskTargetData) + String(kStr_colorDetailNotName)))
            //: return
            return
        }
        //: guard let fileURL = try? FileManager.default
        guard let fileURL = try? FileManager.default
            //: .url(for: .documentDirectory, in: .userDomainMask, appropriateFor: nil, create: true)
            .url(for: .documentDirectory, in: .userDomainMask, appropriateFor: nil, create: true)
            //: .appendingPathComponent("WCDB/\(wcdbName)") else { return }
            .appendingPathComponent((String(kStr_giftValue)) + "\(wcdbName)") else { return }
        //: database = Database(at: fileURL)
        database = Database(at: fileURL)
        //: guard database?.canOpen == true else {
        guard database?.canOpen == true else {
            //: MiniLoadThen.appLine(msg: "WCDB数据库打开失败：\(fileURL.path)")
            MiniLoadThen.appLine(msg: (kStr_timeText + kStr_stackData) + "\(fileURL.path)")
            //: return
            return
        }
        //: printLog(message: "WCDB数据库成功打开：\(fileURL.path)")
        pathLine(message: (String(kStr_colorName)) + "\(fileURL.path)")
        //: createTables()
        mentalPictureBoard()
    }

    /// 关闭数据库
    //: private func closeDatabase() {
    private func magnitudeimate() {
        //: guard database != nil else { return }
        guard database != nil else { return }
        //: database?.close()
        database?.close()
        //: try? database?.close(onClosed: { [weak self] in
        try? database?.close(onClosed: { [weak self] in
            //: guard let self = self else { return }
            guard let self = self else { return }
            //: self.database = nil
            self.database = nil
            //: printLog(message: "WCDB数据库成功关闭。")
            pathLine(message: (String(kStr_hiddenData.suffix(5)) + "据\u{5e93}成\u{529f}关闭\u{3002}"))
            //: })
        })
    }
}

// MARK: - 创建表

//: extension WCDBManager {
extension TableManager {
    /// 创建表
    //: private func createTables() {
    private func mentalPictureBoard() {
        //: do {
        do {
            // 用户信息表
            //: try database?.create(table: WCDBUserInfoTableName, of: WCDBUserInfoTable.self)
            try database?.create(table: kLet_indexViewName, of: BottomInfoTable.self)
            // 语音消息表
            //: try database?.create(table: GoFarReactiveCompatibleName, of: GoFarReactiveCompatible.self)
            try database?.create(table: kLet_closeContent, of: GoFarReactiveCompatible.self)
            //: } catch {
        } catch {
            //: MiniLoadThen.appLine(msg: "WCDB数据库：创建表失败。error：\(error).")
            MiniLoadThen.appLine(msg: (String(kStr_sizeGiftValue) + kStr_pathTitle + "库：创建表" + kStr_listFormatText) + "\(error).")
        }
    }
}
