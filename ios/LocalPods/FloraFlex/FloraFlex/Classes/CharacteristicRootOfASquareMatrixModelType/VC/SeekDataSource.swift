
//: Declare String Begin

/*: "tab" :*/
fileprivate let kStr_pointCenterTitle:String = "tascale"

/*: "page" :*/
fileprivate let kStr_objectValue:String = "paftere"

/*: "uid" :*/
fileprivate let kStr_modelText:String = "uivalue"

/*: "model" :*/
fileprivate let kStr_giftData:[Character] = ["m","o","d","e","l"]

/*: "BottomReactiveCompatible" :*/
fileprivate let kStr_kindTitle:String = "make equal equalTalkin"
fileprivate let kStr_managerTitle:String = "emCelldata return"

/*: "There's no feed yet." :*/
fileprivate let kStr_dateName:String = "Thergift title"
fileprivate let kStr_textBackModelContent:[Character] = ["e","e","d"," ","y","e","t","."]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  SeekDataSource.swift
//  AbroadTalking
//
//  Created by Charlotte on 2022/9/19.
//

//: import UIKit
import UIKit

// MARK: - 属性声明 & 生命周期方法

//: class TalkingPopularMomentVC: UIViewController {
class SeekDataSource: UIViewController {
    //: var pageIndex = 0
    var pageIndex = 0
    //: var dataSourceArr: [TalkingMomentModel] = []
    var dataSourceArr: [ModelTransformable] = []

    //: var seleteCell = TalkingMomentItemCell()
    var seleteCell = BottomReactiveCompatible()
    //: var lastVideoUrl = ""
    var lastVideoUrl = ""
    //: var isfirstvideoCell = false
    var isfirstvideoCell = false
    //: override func viewDidLoad() {
    override func viewDidLoad() {
        //: super.viewDidLoad()
        super.viewDidLoad()
        //: setupSubviews()
        by()
        //: setupSubViewsConstraint()
        should()
        //: bindInteraction()
        loadTo()
        //: reqData()
        commentInTarget()
    }

    //: override func viewWillAppear(_ animated: Bool) {
    override func viewWillAppear(_ animated: Bool) {
        //: super.viewWillAppear(animated)
        super.viewWillAppear(animated)
    }

    //: lazy var mainTableView: UITableView = {
    lazy var mainTableView: UITableView = {
        //: let table = UITableView(frame: .zero, style: UITableView.Style.plain)
        let table = UITableView(frame: .zero, style: UITableView.Style.plain)
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
        //: table.contentInset = UIEdgeInsets(top: 0, left: 0, bottom: TabBarViewHeight, right: 0)
        table.contentInset = UIEdgeInsets(top: 0, left: 0, bottom: kLet_screenContent, right: 0)
        //: return table
        return table

        //: }()
    }()

    //: lazy var emptyView: EmptyView = {
    lazy var emptyView: EmptyView = {
        //: let view = EmptyView()
        let view = EmptyView()
        //: return view
        return view
        //: }()
    }()
}

// MARK: - Request & 数据处理

//: extension TalkingPopularMomentVC {
extension SeekDataSource {
    //: func reqData() {
    func commentInTarget() {
        //: var dict = Dictionary<String, Any>()
        var dict = [String: Any]()
        //: dict["tab"] = 1
        dict[(kStr_pointCenterTitle.replacingOccurrences(of: "scale", with: "b"))] = 1
        //: dict["page"] = pageIndex
        dict[(kStr_objectValue.replacingOccurrences(of: "after", with: "ag"))] = pageIndex
        //: TalkingMomentRequestTool.req_MomentList(params: dict) { succeed, result, errorModel in
        FromThen.fillFrom(params: dict) { succeed, result, errorModel in

            //: self.mainTableView.endRefresh()
            self.mainTableView.takeUp()
            //: if succeed {
            if succeed {
                //: let array: Array =  result as! Array<Any>
                let array: Array = result as! [Any]
                //: if array.count <= 0 && self.pageIndex == 0  {
                if array.count <= 0, self.pageIndex == 0 {
                    //: self.emptyView.isHidden = false
                    self.emptyView.isHidden = false
                    //: self.mainTableView.mj_footer?.resetNoMoreData()
                    self.mainTableView.mj_footer?.resetNoMoreData()
                    //: self.dataSourceArr.removeAll()
                    self.dataSourceArr.removeAll()
                    //: self.mainTableView.reloadData()
                    self.mainTableView.reloadData()
                    //: return
                    return
                }
                //: if array.count == 0 && self.pageIndex > 0 {
                if array.count == 0, self.pageIndex > 0 {
                    //: self.mainTableView.mj_footer?.resetNoMoreData()
                    self.mainTableView.mj_footer?.resetNoMoreData()
                    //: self.mainTableView.mj_footer?.isHidden = true
                    self.mainTableView.mj_footer?.isHidden = true
                }
                //: var dataArr: [TalkingMomentModel] = []
                var dataArr: [ModelTransformable] = []
                //: for i in 0..<array.count {
                for i in 0 ..< array.count {
                    //: if var model = JSONDeserializer<TalkingMomentModel>.deserializeFrom(dict: array[i] as? Dictionary<String, Any>, designatedPath: nil) {
                    if var model = JSONDeserializer<ModelTransformable>.deserializeFrom(dict: array[i] as? [String: Any], designatedPath: nil) {
                        //: model.caculateItemHeight()
                        model.asAdd()
                        //: dataArr.append(model)
                        dataArr.append(model)
                    }
                }
                //: if self.pageIndex == 0 {
                if self.pageIndex == 0 {
                    //: self.dataSourceArr = dataArr
                    self.dataSourceArr = dataArr
                    //: if dataArr.count>0 {
                    if dataArr.count > 0 {
                        //: self.emptyView.isHidden = true
                        self.emptyView.isHidden = true
                    }
                    //: self.isfirstvideoCell = true
                    self.isfirstvideoCell = true
                    //: } else {
                } else {
                    //: self.dataSourceArr.append(contentsOf: dataArr)
                    self.dataSourceArr.append(contentsOf: dataArr)
                }
                //: self.mainTableView.reloadData()
                self.mainTableView.reloadData()
                //: }else {
            } else {
                //: self.func__showStatusBarErrorMsg(showMsg: errorModel!.errorMsg )
                self.detailDownArray(showMsg: errorModel!.errorMsg)
            }
        }
    }
}

// MARK: - 事件方法

//: extension TalkingPopularMomentVC {
extension SeekDataSource {
    //: func headerRefresh() {
    func republicanParty() {
        //: pageIndex = 0
        pageIndex = 0
        //: mainTableView.mj_header?.beginRefreshing()
        mainTableView.mj_header?.beginRefreshing()
        //: reqData()
        commentInTarget()
    }

    //: func footerRefresh() {
    func wakeful() {
        //: pageIndex += 1
        pageIndex += 1
        //: reqData()
        commentInTarget()
    }

    //: @objc func updateAttation(notification: NSNotification) -> Void {
    @objc func memoryImage(notification: NSNotification) {
        //: let userinfo = notification.userInfo as![String: AnyObject]
        let userinfo = notification.userInfo as! [String: AnyObject]
        //: let uid: String = userinfo["uid"] as! String
        let uid: String = userinfo[(kStr_modelText.replacingOccurrences(of: "value", with: "d"))] as! String
        //: for i in 0..<self.dataSourceArr.count {
        for i in 0 ..< self.dataSourceArr.count {
            //: var tmodel = self.dataSourceArr[i]
            var tmodel = self.dataSourceArr[i]
            //: if uid == tmodel.uid {
            if uid == tmodel.uid {
                //: tmodel.isAttention = true
                tmodel.isAttention = true
                //: self.dataSourceArr[i] = tmodel
                self.dataSourceArr[i] = tmodel
            }
        }
        //: self.mainTableView.reloadData()
        self.mainTableView.reloadData()
    }

    //: @objc func updateLikeNumber(notification: NSNotification) -> Void {
    @objc func dorsalVertebra(notification: NSNotification) {
        //: let userinfo = notification.userInfo as![String: AnyObject]
        let userinfo = notification.userInfo as! [String: AnyObject]
        //: let model: TalkingMomentModel = userinfo["model"] as! TalkingMomentModel
        let model: ModelTransformable = userinfo[(String(kStr_giftData))] as! ModelTransformable
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

    //: @objc func Deletenotif(notification: NSNotification) -> Void {
    @objc func approximate(notification: NSNotification) {
        //: let userinfo = notification.userInfo as![String: AnyObject]
        let userinfo = notification.userInfo as! [String: AnyObject]
        //: let model: TalkingMomentModel = userinfo["model"] as! TalkingMomentModel
        let model: ModelTransformable = userinfo[(String(kStr_giftData))] as! ModelTransformable
        //: var index = -1
        var index = -1
        //: for i in 0..<self.dataSourceArr.count {
        for i in 0 ..< self.dataSourceArr.count {
            //: let tmodel = self.dataSourceArr[i]
            let tmodel = self.dataSourceArr[i]
            //: if model.mid == tmodel.mid {
            if model.mid == tmodel.mid {
                //: index = i
                index = i
            }
        }
        //: if index > -1 && index < self.dataSourceArr.count {
        if index > -1, index < self.dataSourceArr.count {
            //: self.dataSourceArr.remove(at: index)
            self.dataSourceArr.remove(at: index)
            //: self.mainTableView.reloadData()
            self.mainTableView.reloadData()
        }
    }
}

// MARK: - UITableViewDelegate,UITableViewdataSourceArr

//: extension TalkingPopularMomentVC: UITableViewDelegate, UITableViewDataSource {
extension SeekDataSource: UITableViewDelegate, UITableViewDataSource {
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
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //: let identifier = "TalkingMomentItemCell"
        let identifier = (String(kStr_kindTitle.suffix(6)) + "gMomentIt" + String(kStr_managerTitle.prefix(6)))
        //: var cell = tableView.dequeueReusableCell(withIdentifier: identifier) as? TalkingMomentItemCell
        var cell = tableView.dequeueReusableCell(withIdentifier: identifier) as? BottomReactiveCompatible
        //: if cell == nil {
        if cell == nil {
            //: cell = TalkingMomentItemCell(style: .default, reuseIdentifier: identifier)
            cell = BottomReactiveCompatible(style: .default, reuseIdentifier: identifier)
        }
        //: let model: TalkingMomentModel = self.dataSourceArr[indexPath.row]
        let model: ModelTransformable = self.dataSourceArr[indexPath.row]
        //: cell?.isListTableCell = true
        cell?.isListTableCell = true
        //: cell?.configCell(model: model)
        cell?.embark(model: model)

        //: return cell!
        return cell!
    }

    //: func tableView(_ tableView: UITableView, willDisplay cell: UITableViewCell, forRowAt indexPath: IndexPath) {
    func tableView(_: UITableView, willDisplay cell: UITableViewCell, forRowAt indexPath: IndexPath) {
        //: if self.dataSourceArr.count > indexPath.row {
        if self.dataSourceArr.count > indexPath.row {
            //: if indexPath.row == 0 && self.isfirstvideoCell == true {
            if indexPath.row == 0 && self.isfirstvideoCell == true {
                //: isfirstvideoCell = false
                isfirstvideoCell = false
                //: let model = self.dataSourceArr[indexPath.row]
                let model = self.dataSourceArr[indexPath.row]
                //: if (model.momentType == MomentType.Video.rawValue) {
                if model.momentType == TitleMirrorPath.Video.rawValue {
                    //: guard let tempcell: TalkingMomentItemCell = cell as? TalkingMomentItemCell  else {
                    guard let tempcell: BottomReactiveCompatible = cell as? BottomReactiveCompatible else {
                        //: return
                        return
                    }
                    //: tempcell.playVideo()
                    tempcell.gildTheLily()
                }
            }
        }
    }

    //: func tableView(_ tableView: UITableView, didEndDisplaying cell: UITableViewCell, forRowAt indexPath: IndexPath) {
    func tableView(_: UITableView, didEndDisplaying _: UITableViewCell, forRowAt _: IndexPath) {}

    //: func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    func tableView(_: UITableView, didSelectRowAt indexPath: IndexPath) {
        //: let model = self.dataSourceArr[indexPath.row]
        let model = self.dataSourceArr[indexPath.row]
        //: let vc =  TalkingMomentDetailVC.init(model: model)
        let vc = CollectionDataSource(model: model)
        //: self.navigationController?.pushViewController(vc, animated: true)
        self.navigationController?.pushViewController(vc, animated: true)
    }
}

// MARK: - UIScrollViewDelegate

//: extension TalkingPopularMomentVC: UIScrollViewDelegate {
extension SeekDataSource: UIScrollViewDelegate {
    //: func scrollViewDidEndDecelerating(_ scrollView: UIScrollView) {
    func scrollViewDidEndDecelerating(_ scrollView: UIScrollView) {
        //: scrollViewEndScrollPlayer(scrollView: scrollView)
        goAwake(scrollView: scrollView)
    }

    //: func scrollViewDidEndDragging(_ scrollView: UIScrollView, willDecelerate decelerate: Bool) {
    func scrollViewDidEndDragging(_ scrollView: UIScrollView, willDecelerate _: Bool) {
        //: scrollViewEndScrollPlayer(scrollView: scrollView)
        goAwake(scrollView: scrollView)
    }

    //: func scrollViewDidEndScrollingAnimation(_ scrollView: UIScrollView) {
    func scrollViewDidEndScrollingAnimation(_ scrollView: UIScrollView) {
        //: scrollViewEndScrollPlayer(scrollView: scrollView)
        goAwake(scrollView: scrollView)
    }

    /// 视频动态在屏幕中间时播放
    //: func scrollViewEndScrollPlayer(scrollView: UIScrollView) {
    func goAwake(scrollView: UIScrollView) {
        //: if let middleIndexPath = mainTableView.indexPathForRow(at: CGPoint.init(x: 0, y: scrollView.contentOffset.y + mainTableView.frame.size.height/2)) {
        if let middleIndexPath = mainTableView.indexPathForRow(at: CGPoint(x: 0, y: scrollView.contentOffset.y + mainTableView.frame.size.height / 2)) {
            //: if dataSourceArr.count > middleIndexPath.row {
            if dataSourceArr.count > middleIndexPath.row {
                //: let model = dataSourceArr[middleIndexPath.row]
                let model = dataSourceArr[middleIndexPath.row]

                //: let cell: TalkingMomentItemCell = mainTableView.cellForRow(at: middleIndexPath) as! TalkingMomentItemCell
                let cell: BottomReactiveCompatible = mainTableView.cellForRow(at: middleIndexPath) as! BottomReactiveCompatible

                //: if (model.momentType == MomentType.Video.rawValue  ) {
                if model.momentType == TitleMirrorPath.Video.rawValue {
                    //: if lastVideoUrl != model.videoInfo?.videoUrl {
                    if lastVideoUrl != model.videoInfo?.videoUrl {
                        // 在播放下一个视频前停止当前视频
                        //: seleteCell.stopPlay()
                        seleteCell.changeResponse()
                        //: cell.stopPlay()
                        cell.changeResponse()

                        //: if self.currentViewController()!.isKind(of: TalkingMomentViewController.self) {
                        if self.giftFew()!.isKind(of: DataReactiveCompatible.self) {
                            //: cell.playVideo()
                            cell.gildTheLily()
                        }
                        //: seleteCell = cell
                        seleteCell = cell
                        //: lastVideoUrl = model.videoInfo?.videoUrl ?? ""
                        lastVideoUrl = model.videoInfo?.videoUrl ?? ""
                        //: }else {
                    } else {
                        //: seleteCell.resume()
                        seleteCell.currency()
                    }
                }
            }
        }
    }
}

// MARK: - ClientObjectProtocol

//: extension TalkingPopularMomentVC {
extension SeekDataSource {
    //: @objc func PostSuccess() {
    @objc func visualImage() {
        //: mainTableView.mj_header?.beginRefreshing()
        mainTableView.mj_header?.beginRefreshing()
    }
}

// MARK: - Layout

//: extension TalkingPopularMomentVC {
extension SeekDataSource {
    // 添加视图
    //: private func setupSubviews() {
    private func by() {
        //: self.view.backgroundColor = .clear
        self.view.backgroundColor = .clear

        //: var style = EmptyStyle()
        var style = FromEmptyStyle()
        //: style.TipsTitle = "There's no feed yet.".localized
        style.TipsTitle = (String(kStr_dateName.prefix(4)) + "e\'s no f" + String(kStr_textBackModelContent)).localized
        //: emptyView = EmptyView.init(frame: self.view.frame, style: style)
        emptyView = EmptyView(frame: self.view.frame, style: style)
        //: self.view.addSubview(emptyView)
        self.view.addSubview(emptyView)
        //: self.view.bringSubviewToFront(emptyView)
        self.view.bringSubviewToFront(emptyView)
        //: self.view.addSubview(mainTableView)
        self.view.addSubview(mainTableView)
        //: mainTableView.register(TalkingMomentItemCell.self, forCellReuseIdentifier: "TalkingMomentItemCell")
        mainTableView.register(BottomReactiveCompatible.self, forCellReuseIdentifier: (String(kStr_kindTitle.suffix(6)) + "gMomentIt" + String(kStr_managerTitle.prefix(6))))
        //: mainTableView.dataSource = self
        mainTableView.dataSource = self
        //: mainTableView.delegate = self
        mainTableView.delegate = self
        //: self.view.bringSubviewToFront(emptyView)
        self.view.bringSubviewToFront(emptyView)
    }

    // 添加约束
    //: private func setupSubViewsConstraint() {
    private func should() {
        //: mainTableView.snp.makeConstraints { make in
        mainTableView.snp.makeConstraints { make in
            //: make.top.equalTo(self.view).offset(12)
            make.top.equalTo(self.view).offset(12)
            //: make.leading.trailing.bottom.equalTo(self.view)
            make.leading.trailing.bottom.equalTo(self.view)
        }
    }

    // 添加事件
    //: private func bindInteraction() {
    private func loadTo() {
        //: mainTableView.addHeaderRefresh { [weak self] in
        mainTableView.subReload { [weak self] in
            //: guard let self = self else {return}
            guard let self = self else { return }
            //: self.headerRefresh()
            self.republicanParty()
        }
        //: mainTableView.addFooterRefresh { [weak self] in
        mainTableView.reloadName { [weak self] in
            //: guard let self = self else {return}
            guard let self = self else { return }
            //: self.footerRefresh()
            self.wakeful()
        }

        //: emptyView.emptyBlock = { [weak self] in
        emptyView.emptyBlock = { [weak self] in
            //: guard let self = self else {return}
            guard let self = self else { return }
            //: self.mainTableView.mj_header?.beginRefreshing()
            self.mainTableView.mj_header?.beginRefreshing()
        }

        //: NotificationCenter.default.addObserver(self, selector: #selector(updateLikeNumber(notification:)), name: UPDATE_LIKE_NUMBER_NOTIFICATION, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(dorsalVertebra(notification:)), name: kLet_barTitle, object: nil)

        //: NotificationCenter.default.addObserver(self, selector: #selector(updateAttation(notification:)), name: UPDATE_ATTION_NOTIFICATION, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(memoryImage(notification:)), name: kLet_limitName, object: nil)

        //: NotificationCenter.default.addObserver(self, selector: #selector(Deletenotif(notification:)), name: DELETE_MINE_POST_NOTIFICATION, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(approximate(notification:)), name: kLet_replaceContent, object: nil)

        //: NotificationCenter.default.addObserver(self, selector: #selector(PostSuccess), name: POST_EXPLORE_SUCCESS_NOTIFICATION, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(visualImage), name: kLet_systemValue, object: nil)
    }
}
