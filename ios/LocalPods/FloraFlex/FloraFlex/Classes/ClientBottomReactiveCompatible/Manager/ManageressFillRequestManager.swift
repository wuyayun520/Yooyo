
//: Declare String Begin

/*: "mf/business/list" :*/
fileprivate let kStr_pathData:String = "failure classmf/bus"
fileprivate let kStr_streetData:String = "shareist"

/*: "Any" :*/
fileprivate let kStr_toValue:String = "Anyrequest text more"

/*: "58+" :*/
fileprivate let kStr_menuTitle:String = "58+"

/*: "Yes" :*/
fileprivate let kStr_cellName:[Character] = ["Y","e","s"]

/*: "tab" :*/
fileprivate let kStr_tempValue:[UInt8] = [0xab,0x98,0x99]

fileprivate func toTable(add num: UInt8) -> UInt8 {
    let value = Int(num) + 201
    if value > 255 {
        return UInt8(value - 256)
    } else {
        return UInt8(value)
    }
}

/*: "page" :*/
fileprivate let kStr_curLabelValue:[UInt8] = [0x65,0x67,0x61,0x70]

/*: "minAge" :*/
fileprivate let kStr_imageData:[UInt8] = [0x3c,0x38,0x3d,0x10,0x36,0x34]

fileprivate func rowLab(observer num: UInt8) -> UInt8 {
    let value = Int(num) + 49
    if value > 255 {
        return UInt8(value - 256)
    } else {
        return UInt8(value)
    }
}

/*: "maxAge" :*/
fileprivate let kStr_viewName:[UInt8] = [0x8,0x4,0x1d,0x24,0x2,0x0]

private func topSize(path num: UInt8) -> UInt8 {
    return num ^ 101
}

/*: "datingVideo" :*/
fileprivate let kStr_titleTableValue:[UInt8] = [0xbe,0xbb,0xae,0xb3,0xb4,0xbd,0x8c,0xb3,0xbe,0xbf,0xb5]

private func viewShareTo(user num: UInt8) -> UInt8 {
    return num ^ 218
}

/*: "uid" :*/
fileprivate let kStr_sharedData:String = "UID"

/*: "mf/premiumStar/list" :*/
fileprivate let kStr_viewSucceedToData:String = "index if datamf/p"
fileprivate let kStr_equalLocationValue:String = "file line falseumStar"
fileprivate let kStr_starText:String = "/listlab false view path"

/*: "mf/business/adBanner" :*/
fileprivate let kStr_giftValue:String = "mf/busself make gift"
fileprivate let kStr_normalContent:String = "/adBanneinfo make color"
fileprivate let kStr_afterText:String = "media"

/*: "position" :*/
fileprivate let kStr_centerData:[UInt8] = [0x9f,0x80,0x9c,0x86,0x9b,0x86,0x80,0x81]

private func createSize(awake num: UInt8) -> UInt8 {
    return num ^ 239
}

/*: "bannerList" :*/
fileprivate let kStr_exceptTimeData:String = "bannerLiscale detail if"
fileprivate let kStr_stageName:[Character] = ["s","t"]

/*: "mf/rank/list" :*/
fileprivate let kStr_imageText:String = "mf/rpush interrupt sub share"
fileprivate let kStr_toName:String = "task"

/*: "name" :*/
fileprivate let kStr_windowTitle:[UInt8] = [0x54,0x47,0x53,0x4b]

fileprivate func dataStorageMedium(bar num: UInt8) -> UInt8 {
    let value = Int(num) - 230
    if value < 0 {
        return UInt8(value + 256)
    } else {
        return UInt8(value)
    }
}

/*: "period" :*/
fileprivate let kStr_worldName:[UInt8] = [0xb0,0xa5,0xb2,0xa9,0xaf,0xa4]

/*: "user/position" :*/
fileprivate let kStr_colorValue:String = "remove network type fee fromuser/"
fileprivate let kStr_modeName:String = "positiosystem"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  ManageressFillRequestManager.swift
//  AbroadTalking
//
//  Created by young on 2022/9/8.
//

//: import UIKit
import UIKit

//: enum SocialTab: Int {
enum UpBinaryCount: Int {
    //: case hot = 1
    case hot = 1 // 活跃
    //: case nearby  = 2
    case nearby = 2 // 附近
    //: case new  = 3
    case new = 3 // 新用户
}

//: class SocialRequestManager {
class ManageressFillRequestManager {
    // 列表分页
    //: var listPage = 0
    var listPage = 0
    // 巨星计划分页
    //: var premiumStarPage = 0
    var premiumStarPage = 0
    // 防止重复请求
    //: var premiumStarIsLoading = false
    var premiumStarIsLoading = false
    // 巨星计划是否有更多数据
    //: var premiumStarCanLoadMore = true
    var premiumStarCanLoadMore = true
    // 最大请求次数
    //: let maxReq = 3
    let maxReq = 3
    // 当前已请求次数
    //: var haveReq = 0
    var haveReq = 0
    /// 请求首页列表数据
    /// - Parameters:
    ///   - tab: 1-活跃 2-附近 3-新人 4-同省 5-同城 6-高级用户
    ///   - page: 分页
    ///   - completion: 回调
    //: func req_socialList(tab: SocialTab, completion: @escaping FinishBlock) {
    func soul(tab: UpBinaryCount, completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel.init()
        let reqModel = SizeRequestModel()
        //: reqModel.requestPath = "mf/business/list"
        reqModel.requestPath = (String(kStr_pathData.suffix(6)) + "iness/" + kStr_streetData.replacingOccurrences(of: "share", with: "l"))
        //: reqModel.requestType = .GET
        reqModel.requestType = .GET

        // 筛选条件
        //: var minAge = 0
        var minAge = 0
        //: var maxAge = 0
        var maxAge = 0
        //: var datingVideo = 0
        var datingVideo = 0
        //: if SEARCH_AGE == "Any".localized {
        if kLet_likeContent == (String(kStr_toValue.prefix(3))).localized {
            //: minAge = 18
            minAge = 18
            //: maxAge = 80
            maxAge = 80
            //: } else if SEARCH_AGE == "58+" {
        } else if kLet_likeContent == "58+" {
            //: minAge = 58
            minAge = 58
            //: maxAge = 80
            maxAge = 80
            //: } else {
        } else {
            //: let arr = SEARCH_AGE.split(separator: "-")
            let arr = kLet_likeContent.split(separator: "-")
            //: if arr.count > 1 {
            if arr.count > 1 {
                //: minAge = Int(arr[0]) ?? 0
                minAge = Int(arr[0]) ?? 0
                //: maxAge = Int(arr[1]) ?? 0
                maxAge = Int(arr[1]) ?? 0
            }
        }
        //: if SEARCH_VIDEOCOVER == "Yes".localized {
        if kLet_displayTitle == (String(kStr_cellName)).localized {
            //: datingVideo = 1
            datingVideo = 1
        }

        //: reqModel.params = ["tab": tab.rawValue,
        reqModel.params = [String(bytes: kStr_tempValue.map{toTable(add: $0)}, encoding: .utf8)!: tab.rawValue,
                           //: "page": listPage,
                           String(bytes: kStr_curLabelValue.reversed(), encoding: .utf8)!: listPage,
                           //: "minAge": minAge,
                           String(bytes: kStr_imageData.map{rowLab(observer: $0)}, encoding: .utf8)!: minAge,
                           //: "maxAge": maxAge,
                           String(bytes: kStr_viewName.map{topSize(path: $0)}, encoding: .utf8)!: maxAge,
                           //: "datingVideo": datingVideo]
                           String(bytes: kStr_titleTableValue.map{viewShareTo(user: $0)}, encoding: .utf8)!: datingVideo]
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        kLet_firstName.afterFailureCompletion(model: reqModel) { succeed, result, errorModel in
            //: guard succeed == true else {
            guard succeed == true else {
                //: completion(succeed, result, errorModel)
                completion(succeed, result, errorModel)
                //: return
                return
            }

            //: var resultArr = result as! [Dictionary<String, Any>]
            var resultArr = result as! [[String: Any]]

            //: if self.listPage == 0 {
            if self.listPage == 0 {
                //: self.section0Data.removeAll()
                self.section0Data.removeAll()
                //: self.section1Data.removeAll()
                self.section1Data.removeAll()
                //: self.bolckRepetData.removeAll()
                self.bolckRepetData.removeAll()
            }

            /// 后台拉黑向上补齐返回数据，客户端拉取下页有重复数据过滤
            //: for uid in self.bolckRepetData {
            for uid in self.bolckRepetData {
                //: for (index, dict) in resultArr.enumerated() {
                for (index, dict) in resultArr.enumerated() {
                    //: let uidstr = dict["uid"] as? Int
                    let uidstr = dict[(kStr_sharedData.lowercased())] as? Int
                    //: if uid == String(uidstr ?? 0) {
                    if uid == String(uidstr ?? 0) {
                        //: resultArr.remove(at: index)
                        resultArr.remove(at: index)
                    }
                }
            }

            //: for dict in resultArr {
            for dict in resultArr {
                //: if let model = SocialUserListModel.deserialize(from: dict as? Dictionary) {
                if let model = NameListModel.deserialize(from: dict as? Dictionary) {
                    //: if self.section0Data.count < 4 {
                    if self.section0Data.count < 4 {
                        //: self.section0Data.append(model)
                        self.section0Data.append(model)
                        //: } else {
                    } else {
                        //: self.section1Data.append(model)
                        self.section1Data.append(model)
                    }
                    //: self.bolckRepetData.insert("\(model.uid)")
                    self.bolckRepetData.insert("\(model.uid)")
                }
            }

            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }

    /// 请求巨星计划列表
    /// - Parameter completion: 回调
    //: func req_premiumStarList(completion: @escaping FinishBlock) {
    func rear(completion: @escaping FinishBlock) {
        //: if premiumStarIsLoading { return }
        if premiumStarIsLoading { return }

        //: premiumStarIsLoading = true
        premiumStarIsLoading = true
        //: let reqModel = TalkingRequestModel.init()
        let reqModel = SizeRequestModel()
        //: reqModel.requestPath = "mf/premiumStar/list"
        reqModel.requestPath = (String(kStr_viewSucceedToData.suffix(4)) + "remi" + String(kStr_equalLocationValue.suffix(6)) + String(kStr_starText.prefix(5)))
        //: reqModel.requestType = .POST
        reqModel.requestType = .POST
        //: reqModel.params = ["page": premiumStarPage]
        reqModel.params = [String(bytes: kStr_curLabelValue.reversed(), encoding: .utf8)!: premiumStarPage]
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        kLet_firstName.afterFailureCompletion(model: reqModel) { succeed, result, errorModel in
            //: self.premiumStarIsLoading = false
            self.premiumStarIsLoading = false
            //: guard succeed == true else {
            guard succeed == true else {
                //: completion(succeed, result, errorModel)
                completion(succeed, result, errorModel)
                //: return
                return
            }

            //: if self.premiumStarPage == 0 {
            if self.premiumStarPage == 0 {
                //: self.premiumStarListData.removeAll()
                self.premiumStarListData.removeAll()
            }

            //: let arr = result as! [Dictionary<String, Any>]
            let arr = result as! [[String: Any]]
            //: for dict in arr {
            for dict in arr {
                //: if let model = PremiumStarListModel.deserialize(from: dict as? Dictionary) {
                if let model = ShadowListModel.deserialize(from: dict as? Dictionary) {
                    //: self.premiumStarListData.append(model)
                    self.premiumStarListData.append(model)
                }
            }

            //: if arr.count < 20 {
            if arr.count < 20 {
                //: self.premiumStarCanLoadMore = false
                self.premiumStarCanLoadMore = false
            }

            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }

    /// 获取广告位banner
    /// - Parameters:
    ///   - position: 广告位标识，1=首页，2=me,3:私聊
    ///   - completion: 回调
    //: func req_adBanner(position: Int, completion: @escaping FinishBlock) {
    func timeCompletion(position: Int, completion: @escaping FinishBlock) {
        //: premiumStarIsLoading = true
        premiumStarIsLoading = true
        //: let reqModel = TalkingRequestModel.init()
        let reqModel = SizeRequestModel()
        //: reqModel.requestPath = "mf/business/adBanner"
        reqModel.requestPath = (String(kStr_giftValue.prefix(6)) + "iness" + String(kStr_normalContent.prefix(8)) + kStr_afterText.replacingOccurrences(of: "media", with: "r"))
        //: reqModel.requestType = .GET
        reqModel.requestType = .GET
        //: reqModel.params = ["position": position]
        reqModel.params = [String(bytes: kStr_centerData.map{createSize(awake: $0)}, encoding: .utf8)!: position]
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        kLet_firstName.afterFailureCompletion(model: reqModel) { succeed, result, errorModel in
            //: guard succeed == true else {
            guard succeed == true else {
                //: completion(succeed, result, errorModel)
                completion(succeed, result, errorModel)
                //: return
                return
            }

            //: guard let result = result as? Dictionary<String, Any> else {
            guard let result = result as? [String: Any] else {
                //: completion(succeed, result, errorModel)
                completion(succeed, result, errorModel)
                //: return
                return
            }

            //: if position == 2 {
            if position == 2 {
                //: completion(succeed, result, errorModel)
                completion(succeed, result, errorModel)
                //: return
                return
            }
            //: let array = JSON(result["bannerList"] ?? []).arrayValue
            let array = JSON(result[(String(kStr_exceptTimeData.prefix(8)) + String(kStr_stageName))] ?? []).arrayValue
            //: for dict in array {
            for dict in array {
                //: if let model = SocialAdBannerModel.deserialize(from: dict.dictionaryObject) {
                if let model = RawDataBannerModel.deserialize(from: dict.dictionaryObject) {
                    //: self.adBannerListData.append(model)
                    self.adBannerListData.append(model)
                }
            }
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }

    // MARK: - 首页榜单

    //: class func getRankListRequest(topName: String?, periodName: String?, completion: @escaping FinishBlock) {
    class func titleColor(topName: String?, periodName: String?, completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel.init()
        let reqModel = SizeRequestModel()
        //: reqModel.requestPath = "mf/rank/list"
        reqModel.requestPath = (String(kStr_imageText.prefix(4)) + "ank/lis" + kStr_toName.replacingOccurrences(of: "task", with: "t"))
        //: reqModel.requestType = .GET
        reqModel.requestType = .GET
        //: reqModel.params = ["name": topName ?? "", "period": periodName ?? ""]
        reqModel.params = [String(bytes: kStr_windowTitle.map{dataStorageMedium(bar: $0)}, encoding: .utf8)!: topName ?? "", String(bytes: kStr_worldName.map{$0^192}, encoding: .utf8)!: periodName ?? ""]
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        kLet_firstName.afterFailureCompletion(model: reqModel) { succeed, result, errorModel in
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }

    // MARK: - 上传定位

    //: class func req_uploadPosition(params: [String: Any], completion: @escaping FinishBlock) {
    class func bePrice(params: [String: Any], completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel.init()
        let reqModel = SizeRequestModel()
        //: reqModel.requestPath = "user/position"
        reqModel.requestPath = (String(kStr_colorValue.suffix(5)) + kStr_modeName.replacingOccurrences(of: "system", with: "n"))
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

    // MARK: - Lazy load

    //: lazy var section0Data: [SocialUserListModel] = {
    lazy var section0Data: [NameListModel] = //: return Array<NameListModel>()
        .init()
    //: }()

    //: lazy var section1Data: [SocialUserListModel] = {
    lazy var section1Data: [NameListModel] = //: return Array<NameListModel>()
        .init()
    //: }()

    //: lazy var bolckRepetData = Set<String>()
    lazy var bolckRepetData = Set<String>()

    //: lazy var premiumStarListData: [PremiumStarListModel] = {
    lazy var premiumStarListData: [ShadowListModel] = //: return Array<ShadowListModel>()
        .init()
    //: }()

    //: lazy var adBannerListData: [SocialAdBannerModel] = {
    lazy var adBannerListData: [RawDataBannerModel] = //: return Array<RawDataBannerModel>()
        .init()
    //: }()
}
