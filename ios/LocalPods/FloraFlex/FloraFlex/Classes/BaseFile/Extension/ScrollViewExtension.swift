
//: Declare String Begin

/*: "Drop down to refresh" :*/
fileprivate let kStr_blockName:String = "price top toDrop d"
fileprivate let kStr_rawImageName:String = "to rself view by user advice"
fileprivate let kStr_keyName:[Character] = ["e","f","r","e","s","h"]

/*: "Release Refresh" :*/
fileprivate let kStr_addText:String = "Releaseelse height"
fileprivate let kStr_myTitle:String = "self input show title Refresh"

/*: "Refreshing" :*/
fileprivate let kStr_headValue:String = "return asRefr"
fileprivate let kStr_thenGoingTextName:String = "levelg"

/*: "Pull up to load more" :*/
fileprivate let kStr_succeedName:[Character] = ["P","u","l","l"," ","u","p"," ","t","o"," ","l","o"]
fileprivate let kStr_actionToValue:String = "ad morewhite self"

/*: "No more data." :*/
fileprivate let kStr_targetData:[Character] = ["N","o"," ","m","o","r"]
fileprivate let kStr_buttonData:String = "item"
fileprivate let kStr_managerTitle:[Character] = [" ","d","a","t","a","."]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  ScrollViewExtension.swift
//  AbroadTalking
//
//  Created by young on 2022/9/8.
//

//: import UIKit
import UIKit

//: extension UIScrollView {
extension UIScrollView {
    //: typealias CompletionBlock = () -> Void
    typealias CompletionBlock = () -> Void

    /// 下拉刷新
    //: func addHeaderRefresh(complection: @escaping CompletionBlock) {
    func subReload(complection: @escaping CompletionBlock) {
        //: if LanguageManager.shared.direction == .rightToLeft {
        if DeleteClientThen.shared.direction == .rightToLeft {
            //: let header = MJRefreshNormalHeader()
            let header = MJRefreshNormalHeader()
            //: header.setTitle("Drop down to refresh".localized, for: .idle)
            header.setTitle((String(kStr_blockName.suffix(6)) + "own " + String(kStr_rawImageName.prefix(4)) + String(kStr_keyName)).localized, for: .idle)
            //: header.setTitle("Release Refresh".localized, for: .pulling)
            header.setTitle((String(kStr_addText.prefix(7)) + String(kStr_myTitle.suffix(8))).localized, for: .pulling)
            //: header.setTitle("Refreshing".localized, for: .refreshing)
            header.setTitle((String(kStr_headValue.suffix(4)) + "eshi" + kStr_thenGoingTextName.replacingOccurrences(of: "level", with: "n")).localized, for: .refreshing)
            //: header.lastUpdatedTimeLabel?.isHidden = true
            header.lastUpdatedTimeLabel?.isHidden = true

            //: self.mj_header = header
            self.mj_header = header
            //: self.mj_header?.refreshingBlock = {
            self.mj_header?.refreshingBlock = {
                //: complection()
                complection()
            }
            //: } else {
        } else {
            //: self.mj_header = MJRefreshNormalHeader {
            self.mj_header = MJRefreshNormalHeader {
                //: complection()
                complection()
            }
        }
    }

    /// 上拉加载
    //: func addFooterRefresh(complection: @escaping CompletionBlock) {
    func reloadName(complection: @escaping CompletionBlock) {
        //: if LanguageManager.shared.direction == .rightToLeft {
        if DeleteClientThen.shared.direction == .rightToLeft {
            //: let footer = MJRefreshAutoNormalFooter()
            let footer = MJRefreshAutoNormalFooter()
            //: footer.setTitle("Pull up to load more".localized, for: .idle)
            footer.setTitle((String(kStr_succeedName) + String(kStr_actionToValue.prefix(7))).localized, for: .idle)
            //: footer.setTitle("Release Refresh".localized, for: .pulling)
            footer.setTitle((String(kStr_addText.prefix(7)) + String(kStr_myTitle.suffix(8))).localized, for: .pulling)
            //: footer.setTitle("Refreshing".localized, for: .refreshing)
            footer.setTitle((String(kStr_headValue.suffix(4)) + "eshi" + kStr_thenGoingTextName.replacingOccurrences(of: "level", with: "n")).localized, for: .refreshing)
            //: footer.setTitle("No more data.".localized, for: .noMoreData)
            footer.setTitle((String(kStr_targetData) + kStr_buttonData.replacingOccurrences(of: "item", with: "e") + String(kStr_managerTitle)).localized, for: .noMoreData)
            //: self.mj_footer = footer
            self.mj_footer = footer
            //: self.mj_footer?.refreshingBlock = {
            self.mj_footer?.refreshingBlock = {
                //: complection()
                complection()
            }
            //: } else {
        } else {
            //: self.mj_footer = MJRefreshAutoNormalFooter {
            self.mj_footer = MJRefreshAutoNormalFooter {
                //: complection()
                complection()
            }
        }
    }

    /// 结束刷新
    //: func endRefresh() {
    func takeUp() {
        //: if (self.mj_header?.isRefreshing) != nil {
        if (self.mj_header?.isRefreshing) != nil {
            //: self.mj_header?.endRefreshing()
            self.mj_header?.endRefreshing()
        }
        //: if (self.mj_footer?.isRefreshing) != nil {
        if (self.mj_footer?.isRefreshing) != nil {
            //: self.mj_footer?.endRefreshing()
            self.mj_footer?.endRefreshing()
        }
    }
}
