
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let kStr_styleName:[UInt8] = [0x84,0x83,0x84,0x99,0xc5,0x8e,0x82,0x89,0x88,0x9f,0xd7,0xc4,0xcd,0x85,0x8c,0x9e,0xcd,0x83,0x82,0x99,0xcd,0x8f,0x88,0x88,0x83,0xcd,0x84,0x80,0x9d,0x81,0x88,0x80,0x88,0x83,0x99,0x88,0x89]

private func timeData(member num: UInt8) -> UInt8 {
    return num ^ 237
}

/*: "There's no posts yet." :*/
fileprivate let kStr_addName:String = "Therself view equal play var"
fileprivate let kStr_backgroundTitle:String = "long string original self guard pos"
fileprivate let kStr_cellValue:String = "self case label if selft."

/*: "uid" :*/
fileprivate let kStr_equalHiddenName:String = "uiguide"

/*: "page" :*/
fileprivate let kStr_liveSizeValue:String = "pastatus"

/*: "list" :*/
fileprivate let kStr_containerData:[Character] = ["l","i","s","t"]

/*: "nickname" :*/
fileprivate let kStr_equalFatalData:[Character] = ["n","i","c","k","n","a","m","e"]

/*: "age" :*/
fileprivate let kStr_frameTitle:String = "aglabel"

/*: "sex" :*/
fileprivate let kStr_sexAppValue:String = "SEX"

/*: "isTPAuth" :*/
fileprivate let kStr_viewMaxData:String = "isTPAucenter progress for"
fileprivate let kStr_labName:String = "TH"

/*: "headPic" :*/
fileprivate let kStr_valuePathContent:String = "edit modelheadPic"

/*: "pinCount" :*/
fileprivate let kStr_imageValue:String = "pikind"
fileprivate let kStr_tempData:String = "model temp selfCount"

/*: "model" :*/
fileprivate let kStr_toFirstName:String = "userodel"

/*: "Unpin from profile" :*/
fileprivate let kStr_squareName:String = "Unpinframe let equal size view"
fileprivate let kStr_contentValue:String = "add to self fit subm pr"

/*: "Delete Post" :*/
fileprivate let kStr_colorTitle:String = "selection type holder colorDelet"

/*: "Pin to profile" :*/
fileprivate let kStr_sizeText:String = "Pin toreturn model time"
fileprivate let kStr_picData:String = "lpage"

/*: "id" :*/
fileprivate let kStr_managerContent:[Character] = ["i","d"]

/*: "momentId" :*/
fileprivate let kStr_withTitle:String = "mombottom"

/*: "status" :*/
fileprivate let kStr_directionData:String = "stplayertus"

/*: "Your post has been pinned" :*/
fileprivate let kStr_miniValue:[Character] = ["Y","o","u","r"," ","p","o","s","t"," ","h","a","s"," ","b","e","e","n"," ","p","i","n","n"]
fileprivate let kStr_instanceTitle:String = "ED"

/*: "Your post has been Unpinned" :*/
fileprivate let kStr_viewValue:[Character] = ["Y","o","u","r"," ","p","o","s","t"," ","h","a","s"," ","b","e","e","n"," ","U","n","p","i"]
fileprivate let kStr_actionText:[Character] = ["n","n","e","d"]

/*: "BottomReactiveCompatible" :*/
fileprivate let kStr_burnValue:String = "Talkinof as in"
fileprivate let kStr_colorData:[Character] = ["t","I","t","e","m","C","e","l","l"]

/*: "Posts" :*/
fileprivate let kStr_backName:String = "arrow let managerPosts"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  LoadReactiveCompatible.swift
//  AbroadTalking
//
//  Created by Charlotte on 2022/9/22.
//

//: import UIKit
import UIKit

// MARK: - 属性声明 & 生命周期方法

//: class TalkingUserMomentVC: TalkingBaseViewController {
class LoadReactiveCompatible: LayerRecognizerDelegate {
    //: var uid = ""
    var uid = ""
    //: var pageIndex = 0
    var pageIndex = 0
    //: var disposeBag = DisposeBag()
    var disposeBag = DisposeBag()
    //: var dataSourceArr: [TalkingMomentModel] = []
    var dataSourceArr: [ModelTransformable] = []

    //: init(uid: String) {
    init(uid: String) {
        //: super.init(nibName: nil, bundle: nil)
        super.init(nibName: nil, bundle: nil)
        //: self.uid = uid
        self.uid = uid
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: kStr_styleName.map{timeData(member: $0)}, encoding: .utf8)!)
    }

    //: override func viewDidLoad() {
    override func viewDidLoad() {
        //: super.viewDidLoad()
        super.viewDidLoad()
        //: setupSubviews()
        inventoryItem()
        //: setupSubViewsConstraint()
        of()
        //: bindInteraction()
        equalBagTotaleraction()
        //: reqData()
        targetData()
    }

    //: deinit {
    deinit {
        //: NotificationCenter.default.removeObserver(self)
        NotificationCenter.default.removeObserver(self)
    }

    //: lazy var mainTableView: UITableView = {
    lazy var mainTableView: UITableView = {
        //: let table = UITableView(frame: CGRect(x: 0, y: 0, width: ScreenWidth, height: ScreenHeight), style: UITableView.Style.plain)
        let table = UITableView(frame: CGRect(x: 0, y: 0, width: kLet_halfData, height: kLet_noSeatName), style: UITableView.Style.plain)
        //: table.backgroundColor = UIColor.clear
        table.backgroundColor = UIColor.clear
        //: if #available(iOS 11.0, *) {
        if #available(iOS 11.0, *) {
            //: table.contentInsetAdjustmentBehavior = .never
            table.contentInsetAdjustmentBehavior = .never
            //: } else {
        } else {
            //: self.automaticallyAdjustsScrollViewInsets = false
            self.automaticallyAdjustsScrollViewInsets = false
        }
        //: table.showsVerticalScrollIndicator = true
        table.showsVerticalScrollIndicator = true
        //: table.estimatedRowHeight = 0
        table.estimatedRowHeight = 0
        //: table.estimatedSectionFooterHeight = 0
        table.estimatedSectionFooterHeight = 0
        //: table.estimatedSectionHeaderHeight = 0
        table.estimatedSectionHeaderHeight = 0
        //: table.separatorStyle = .none
        table.separatorStyle = .none
        //: table.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        table.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        //: return table
        return table
        //: }()
    }()

    //: lazy var emptyView: EmptyView = {
    lazy var emptyView: EmptyView = {
        //: var style = EmptyStyle()
        var style = FromEmptyStyle()
        //: style.TipsTitle = "There's no posts yet."
        style.TipsTitle = (String(kStr_addName.prefix(4)) + "e\'s no" + String(kStr_backgroundTitle.suffix(4)) + "ts ye" + String(kStr_cellValue.suffix(2)))
        //: let view = EmptyView.init(frame: self.view.frame, style: style)
        let view = EmptyView(frame: self.view.frame, style: style)
        //: return view
        return view
        //: }()
    }()
}

// MARK: - Request & 数据处理

//: extension TalkingUserMomentVC {
extension LoadReactiveCompatible {
    //: func reqData() {
    func targetData() {
        //: var dict = Dictionary<String, Any>()
        var dict = [String: Any]()
        //: dict["uid"] = uid
        dict[(kStr_equalHiddenName.replacingOccurrences(of: "guide", with: "d"))] = uid
        //: dict["page"] = pageIndex
        dict[(kStr_liveSizeValue.replacingOccurrences(of: "status", with: "ge"))] = pageIndex
        //: TalkingMomentRequestTool.req_UserMomentList(params: dict) { succeed, result, errorModel in
        FromThen.makeTo(params: dict) { succeed, result, errorModel in

            //: self.mainTableView.endRefresh()
            self.mainTableView.takeUp()
            //: if succeed {
            if succeed {
                //: guard let dict = result as? Dictionary<String, Any> else {
                guard let dict = result as? [String: Any] else {
                    //: if self.pageIndex > 0 {
                    if self.pageIndex > 0 {
                        //: self.mainTableView.mj_footer?.endRefreshingWithNoMoreData()
                        self.mainTableView.mj_footer?.endRefreshingWithNoMoreData()
                    }
                    //: return
                    return
                }

                //: guard let array = dict["list"] as? Array<Any> else {
                guard let array = dict[(String(kStr_containerData))] as? [Any] else {
                    //: self.mainTableView.mj_footer?.endRefreshingWithNoMoreData()
                    self.mainTableView.mj_footer?.endRefreshingWithNoMoreData()
                    //: return
                    return
                }
                //: var dataArr: [TalkingMomentModel] = []
                var dataArr: [ModelTransformable] = []
                //: for i in 0..<array.count {
                for i in 0 ..< array.count {
                    //: if var model = JSONDeserializer<TalkingMomentModel>.deserializeFrom(dict: array[i] as? Dictionary<String, Any>, designatedPath: nil) {
                    if var model = JSONDeserializer<ModelTransformable>.deserializeFrom(dict: array[i] as? [String: Any], designatedPath: nil) {
                        //: model.nickname = dict["nickname"] as? String
                        model.nickname = dict[(String(kStr_equalFatalData))] as? String
                        //: model.age = dict["age"] as? Int
                        model.age = dict[(kStr_frameTitle.replacingOccurrences(of: "label", with: "e"))] as? Int
                        //: model.sex = dict["sex"] as? String
                        model.sex = dict[(kStr_sexAppValue.lowercased())] as? String
                        //: model.uid = dict["uid"] as? String
                        model.uid = dict[(kStr_equalHiddenName.replacingOccurrences(of: "guide", with: "d"))] as? String
                        //: model.isTPAuth = dict["isTPAuth"] as? Bool ?? false
                        model.isTPAuth = dict[(String(kStr_viewMaxData.prefix(6)) + kStr_labName.lowercased())] as? Bool ?? false
                        //: model.headPic = dict["headPic"] as? String
                        model.headPic = dict[(String(kStr_valuePathContent.suffix(7)))] as? String
                        //: model.pinCount = dict["pinCount"] as! Int
                        model.pinCount = dict[(kStr_imageValue.replacingOccurrences(of: "kind", with: "n") + String(kStr_tempData.suffix(5)))] as! Int
                        //: model.caculateItemHeight()
                        model.asAdd()
                        //: if model.uid == LocationThen.share.loginUserMode.userID {
                        if model.uid == LocationThen.share.loginUserMode.userID {
                            //: model.isUserDetail = true
                            model.isUserDetail = true
                        }
                        //: dataArr.append(model)
                        dataArr.append(model)
                    }
                }

                //: if dataArr.count < 20 {
                if dataArr.count < 20 { // 不足一页，隐藏更多
                    //: self.mainTableView.mj_footer?.endRefreshingWithNoMoreData()
                    self.mainTableView.mj_footer?.endRefreshingWithNoMoreData()
                }

                //: if self.pageIndex == 0 {
                if self.pageIndex == 0 {
                    //: self.dataSourceArr = dataArr
                    self.dataSourceArr = dataArr
                    //: if dataArr.count>0 {
                    if dataArr.count > 0 {
                        //: self.emptyView.removeFromSuperview()
                        self.emptyView.removeFromSuperview()
                    }
                    //: } else {
                } else {
                    //: self.dataSourceArr.append(contentsOf: dataArr)
                    self.dataSourceArr.append(contentsOf: dataArr)
                }

                //: self.mainTableView.reloadData()
                self.mainTableView.reloadData()
                //: } else {
            } else {
                //: self.func__showStatusBarErrorMsg(showMsg: errorModel!.errorMsg )
                self.detailDownArray(showMsg: errorModel!.errorMsg)
            }
        }
    }
}

// MARK: - 事件方法

//: extension TalkingUserMomentVC {
extension LoadReactiveCompatible {
    //: func headerRefresh() {
    func premium() {
        //: pageIndex = 0
        pageIndex = 0
        //: mainTableView.mj_header?.beginRefreshing()
        mainTableView.mj_header?.beginRefreshing()
        //: reqData()
        targetData()
    }

    //: func footerRefresh() {
    func refreshAcross() {
        //: pageIndex += 1
        pageIndex += 1
        //: reqData()
        targetData()
    }

    //: @objc func updateLikeNumber(notification: NSNotification) -> Void {
    @objc func fillUpNotification(notification: NSNotification) {
        //: let userinfo = notification.userInfo as![String: AnyObject]
        let userinfo = notification.userInfo as! [String: AnyObject]
        //: var model: TalkingMomentModel = userinfo["model"] as! TalkingMomentModel
        var model: ModelTransformable = userinfo[(kStr_toFirstName.replacingOccurrences(of: "user", with: "m"))] as! ModelTransformable
        //: if model.uid == LocationThen.share.loginUserMode.userID {
        if model.uid == LocationThen.share.loginUserMode.userID {
            //: model.isUserDetail = true
            model.isUserDetail = true
        }
        //: for i in 0..<self.dataSourceArr.count {
        for i in 0 ..< self.dataSourceArr.count {
            //: let tmodel = self.dataSourceArr[i]
            let tmodel = self.dataSourceArr[i]
            //: if model.mid == tmodel.mid {
            if model.mid == tmodel.mid {
                //: self.dataSourceArr[i] = model
                self.dataSourceArr[i] = model
                //: self.mainTableView.reloadRows(at: [IndexPath.init(row: i, section: 0)], with: .none)
                self.mainTableView.reloadRows(at: [IndexPath(row: i, section: 0)], with: .none)
                //: return
                return
            }
        }
    }

    //: func deleteCell(model: TalkingMomentModel, index: Int) {
    func replacement(model: ModelTransformable, index: Int) {
        //: let vc = TalkingMunuPopView.init(frame: self.view.frame)
        let vc = FillView(frame: self.view.frame)

        //: if model.pinCount<3 {
        if model.pinCount < 3 {
            //: if model.pinStatus {
            if model.pinStatus {
                //: vc.initwithList(cellTitleList: ["Unpin from profile".localized, "Delete Post".localized])
                vc.compartmentList(cellTitleList: [(String(kStr_squareName.prefix(5)) + " fro" + String(kStr_contentValue.suffix(4)) + "ofile").localized, (String(kStr_colorTitle.suffix(5)) + "e Post").localized])
                //: } else {
            } else {
                //: vc.initwithList(cellTitleList: ["Pin to profile".localized, "Delete Post".localized])
                vc.compartmentList(cellTitleList: [(String(kStr_sizeText.prefix(6)) + " profi" + kStr_picData.replacingOccurrences(of: "page", with: "e")).localized, (String(kStr_colorTitle.suffix(5)) + "e Post").localized])
            }
            //: } else {
        } else {
            //: if model.pinStatus {
            if model.pinStatus {
                //: vc.initwithList(cellTitleList: ["Unpin from profile".localized, "Delete Post".localized])
                vc.compartmentList(cellTitleList: [(String(kStr_squareName.prefix(5)) + " fro" + String(kStr_contentValue.suffix(4)) + "ofile").localized, (String(kStr_colorTitle.suffix(5)) + "e Post").localized])
                //: } else {
            } else {
                //: vc.initwithList(cellTitleList: ["Delete Post".localized])
                vc.compartmentList(cellTitleList: [(String(kStr_colorTitle.suffix(5)) + "e Post").localized])
            }
        }

        //: vc.munuBlock = { [weak self] index, str in
        vc.munuBlock = { [weak self] index, str in
            //: guard let self = self else {return}
            guard let self = self else { return }

            //: if str == "Unpin from profile".localized {
            if str == (String(kStr_squareName.prefix(5)) + " fro" + String(kStr_contentValue.suffix(4)) + "ofile").localized {
                //: self.topMoment(isTop: 0, model: model)
                self.moment(isTop: 0, model: model)
                //: } else if str == "Pin to profile".localized {
            } else if str == (String(kStr_sizeText.prefix(6)) + " profi" + kStr_picData.replacingOccurrences(of: "page", with: "e")).localized {
                //: self.topMoment(isTop: 1, model: model)
                self.moment(isTop: 1, model: model)
                //: } else if str == "Delete Post".localized {
            } else if str == (String(kStr_colorTitle.suffix(5)) + "e Post").localized {
                //: ProgressHUD.show()
                TintProgressHUD.weight()
                //: var dict = Dictionary<String, Any>()
                var dict = [String: Any]()
                //: dict["id"] = model.mid
                dict["id"] = model.mid
                //: TalkingMomentRequestTool.req_DeleteMoment(params: dict) { succeed, result, errorModel in
                FromThen.viewSize(params: dict) { succeed, _, errorModel in
                    //: ProgressHUD.dismiss()
                    TintProgressHUD.inkingPadDismiss()
                    //: if succeed {
                    if succeed {
                        //: if index<self.dataSourceArr.count {
                        if index < self.dataSourceArr.count {
                            //: self.disposeBag = DisposeBag()
                            self.disposeBag = DisposeBag()
                            //: self.mainTableView.mj_header?.beginRefreshing()
                            self.mainTableView.mj_header?.beginRefreshing()
                            //: } else if self.dataSourceArr.count == 1 {
                        } else if self.dataSourceArr.count == 1 {
                            //: self.dataSourceArr.removeAll()
                            self.dataSourceArr.removeAll()
                            //: self.disposeBag = DisposeBag()
                            self.disposeBag = DisposeBag()
                            //: self.view.addSubview(self.emptyView)
                            self.view.addSubview(self.emptyView)
                        }
                        //: } else {
                    } else {
                        //: self.func__showStatusBarErrorMsg(showMsg: errorModel!.errorMsg)
                        self.detailDownArray(showMsg: errorModel!.errorMsg)
                    }
                }
            }
        }
    }

    //: func topMoment(isTop: Int, model: TalkingMomentModel) {
    func moment(isTop: Int, model: ModelTransformable) {
        //: ProgressHUD.show()
        TintProgressHUD.weight()
        //: var dict = Dictionary<String, Any>()
        var dict = [String: Any]()
        //: dict["momentId"] = model.mid
        dict[(kStr_withTitle.replacingOccurrences(of: "bottom", with: "e") + "ntId")] = model.mid
        //: dict["status"] = isTop
        dict[(kStr_directionData.replacingOccurrences(of: "player", with: "a"))] = isTop
        //: TalkingMomentRequestTool.req_TopMoment(params: dict) { succeed, result, errorModel in
        FromThen.more(params: dict) { succeed, _, errorModel in
            //: ProgressHUD.dismiss()
            TintProgressHUD.inkingPadDismiss()
            //: if succeed {
            if succeed {
                //: let str = isTop==1 ? "Your post has been pinned".localized : "Your post has been Unpinned".localized
                let str = isTop == 1 ? (String(kStr_miniValue) + kStr_instanceTitle.lowercased()).localized : (String(kStr_viewValue) + String(kStr_actionText)).localized
                //: self.func__showStatusBarSuccessMsg(showMsg: str)
                self.property(showMsg: str)
                //: self.disposeBag = DisposeBag()
                self.disposeBag = DisposeBag()
                //: self.mainTableView.mj_header?.beginRefreshing()
                self.mainTableView.mj_header?.beginRefreshing()
                //: } else {
            } else {
                //: self.func__showStatusBarErrorMsg(showMsg: errorModel!.errorMsg)
                self.detailDownArray(showMsg: errorModel!.errorMsg)
            }
        }
    }
}

// MARK: - UITableViewDelegate,UITableViewdataSourceArr

//: extension TalkingUserMomentVC: UITableViewDelegate, UITableViewDataSource {
extension LoadReactiveCompatible: UITableViewDelegate, UITableViewDataSource {
    //: func numberOfSections(in tableView: UITableView) -> Int {
    func numberOfSections(in _: UITableView) -> Int {
        //: return 1
        return 1
    }

    //: func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    func tableView(_: UITableView, numberOfRowsInSection _: Int) -> Int {
        //: return self.dataSourceArr.count
        return self.dataSourceArr.count
    }

    //: func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
    func tableView(_: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        //: let model = self.dataSourceArr[indexPath.row]
        let model = self.dataSourceArr[indexPath.row]
        //: return model.itemHeight ?? 56
        return model.itemHeight ?? 56
    }

    //: func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    func tableView(_: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //: let identifier = "TalkingMomentItemCell"
        let identifier = (String(kStr_burnValue.prefix(6)) + "gMomen" + String(kStr_colorData))
        //: var cell = TalkingMomentItemCell(style: .default, reuseIdentifier: identifier, isMyHost: true)
        var cell = BottomReactiveCompatible(style: .default, reuseIdentifier: identifier, isMyHost: true)
        //: let model: TalkingMomentModel = self.dataSourceArr[indexPath.row]
        let model: ModelTransformable = self.dataSourceArr[indexPath.row]
        //: cell.configCell(model: model)
        cell.embark(model: model)
        //: cell.userInfoView.deleteBtn.rx.tap.subscribe(onNext: { [weak self] in
        cell.userInfoView.deleteBtn.rx.tap.subscribe(onNext: { [weak self] in
            //: guard let self = self else {return}
            guard let self = self else { return }
            //: self.deleteCell(model: model, index: indexPath.row)
            self.replacement(model: model, index: indexPath.row)
            //: }).disposed(by: cell.cellDisposeBag )
        }).disposed(by: cell.cellDisposeBag)
        //: return cell
        return cell
    }

    //: func tableView(_ tableView: UITableView, willDisplay cell: UITableViewCell, forRowAt indexPath: IndexPath) {
    func tableView(_: UITableView, willDisplay _: UITableViewCell, forRowAt _: IndexPath) {}

    //: func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    func tableView(_: UITableView, didSelectRowAt indexPath: IndexPath) {
        //: let model = self.dataSourceArr[indexPath.row]
        let model = self.dataSourceArr[indexPath.row]
        //: let vc =  TalkingMomentDetailVC.init(model: model)
        let vc = CollectionDataSource(model: model)
        //: vc.delegete = { [weak self] in
        vc.delegete = { [weak self] in
            //: guard let self = self else {return}
            guard let self = self else { return }
            //: if indexPath.row<self.dataSourceArr.count {
            if indexPath.row < self.dataSourceArr.count {
                //: self.dataSourceArr.remove(at: indexPath.row)
                self.dataSourceArr.remove(at: indexPath.row)
                //: self.mainTableView.reloadData()
                self.mainTableView.reloadData()
                //: self.disposeBag = DisposeBag()
                self.disposeBag = DisposeBag()
            }
        }
        //: self.navigationController?.pushViewController(vc, animated: true)
        self.navigationController?.pushViewController(vc, animated: true)
    }
}

// MARK: - Layout

//: extension TalkingUserMomentVC {
extension LoadReactiveCompatible {
    // 添加视图
    //: private func setupSubviews() {
    private func inventoryItem() {
        //: self.view.backgroundColor = UIColor.appBgColor()
        self.view.backgroundColor = UIColor.bottomValue()
        //: self.title = "Posts".localized
        self.title = (String(kStr_backName.suffix(5))).localized
        //: self.view.addSubview(emptyView)
        self.view.addSubview(emptyView)

        //: self.view.addSubview(mainTableView)
        self.view.addSubview(mainTableView)
        //: mainTableView.register(TalkingMomentItemCell.self, forCellReuseIdentifier: "TalkingMomentItemCell")
        mainTableView.register(BottomReactiveCompatible.self, forCellReuseIdentifier: (String(kStr_burnValue.prefix(6)) + "gMomen" + String(kStr_colorData)))
        //: mainTableView.dataSource = self
        mainTableView.dataSource = self
        //: mainTableView.delegate = self
        mainTableView.delegate = self
        //: self.view.bringSubviewToFront(emptyView)
        self.view.bringSubviewToFront(emptyView)
    }

    // 添加约束
    //: private func setupSubViewsConstraint() {
    private func of() {
        //: mainTableView.snp.makeConstraints { make in
        mainTableView.snp.makeConstraints { make in
            //: make.top.equalTo(self.view).offset(12)
            make.top.equalTo(self.view).offset(12)
            //: make.bottom.equalTo(self.view.snp.bottom).offset(-12)
            make.bottom.equalTo(self.view.snp.bottom).offset(-12)
            //: make.leading.trailing.equalTo(self.view)
            make.leading.trailing.equalTo(self.view)
        }
    }

    // 添加事件
    //: private func bindInteraction() {
    private func equalBagTotaleraction() {
        //: mainTableView.addHeaderRefresh { [weak self] in
        mainTableView.subReload { [weak self] in
            //: guard let self = self else {return}
            guard let self = self else { return }
            //: self.headerRefresh()
            self.premium()
        }
        //: mainTableView.addFooterRefresh { [weak self] in
        mainTableView.reloadName { [weak self] in
            //: guard let self = self else {return}
            guard let self = self else { return }
            //: self.footerRefresh()
            self.refreshAcross()
        }

        //: emptyView.emptyBlock = { [weak self] in
        emptyView.emptyBlock = { [weak self] in
            //: guard let self = self else { return }
            guard let self = self else { return }
            //: self.mainTableView.mj_header?.beginRefreshing()
            self.mainTableView.mj_header?.beginRefreshing()
        }
        //: NotificationCenter.default.addObserver(self, selector: #selector(updateLikeNumber(notification:)), name: UPDATE_LIKE_NUMBER_NOTIFICATION, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(fillUpNotification(notification:)), name: kLet_barTitle, object: nil)
    }
}
