
//: Declare String Begin

/*: "Online List" :*/
fileprivate let kStr_bottomName:String = "type if status user galleryOnli"
fileprivate let kStr_timeData:String = "eventst"

/*: "Select @ Numbers" :*/
fileprivate let kStr_normalTitleData:[Character] = ["S","e","l","e","c","t"," ","@"," ","N","u","m","b","e"]
fileprivate let kStr_appNameData:[Character] = ["r","s"]

/*: "AddThen" :*/
fileprivate let kStr_playEqualTitle:String = "Talkisuper style"
fileprivate let kStr_removeTitle:String = "let report component videoRoomOn"
fileprivate let kStr_colorText:String = "case name to status viewistCe"
fileprivate let kStr_cellTimeLetValue:String = "name"

/*: "Nobody can @" :*/
fileprivate let kStr_viewText:String = "add raw varNobo"
fileprivate let kStr_objectName:String = " @"

/*: "roomId" :*/
fileprivate let kStr_toData:String = "roomIdview var item"

/*: "type" :*/
fileprivate let kStr_messageData:[Character] = ["t","y","p","e"]

/*: "page" :*/
fileprivate let kStr_untilName:String = "papice"

/*: "uid" :*/
fileprivate let kStr_rawTitle:[UInt8] = [0x3a,0x26,0x2b]

private func whiteImage(beat num: UInt8) -> UInt8 {
    return num ^ 79
}

/*: "name" :*/
fileprivate let kStr_dateData:[UInt8] = [0xf5,0xfa,0xf6,0xfe]

private func chipStack(attribute num: UInt8) -> UInt8 {
    return num ^ 155
}

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  EqualListController.swift
//  AbroadTalking
//
//  Created by young on 2023/4/6.
//

//: import UIKit
import UIKit

//: enum TitleType: String {
enum PathScalarLiteral: String {
    //: case normal
    case normal // 在线列表
    //: case callNumber
    case callNumber // 群聊@
}

//: typealias OnlineSelectedBlock = (_ dict: [String: Any]) -> Void
typealias OnlineSelectedBlock = (_ dict: [String: Any]) -> Void

//: class TalkingChatRoomOnlineListController: TalkingBaseViewController {
class EqualListController: LayerRecognizerDelegate {
    //: var roomID = ""
    var roomID = ""
    //: var titleType: TitleType = .normal
    var titleType: PathScalarLiteral = .normal
    //: var selectedBlock: OnlineSelectedBlock?
    var selectedBlock: OnlineSelectedBlock?
    //: fileprivate var dataArray = NSMutableArray.init()
    fileprivate var dataArray = NSMutableArray()
    //: private var pageIndex = 0
    private var pageIndex = 0

    //: override func viewDidLoad() {
    override func viewDidLoad() {
        //: super.viewDidLoad()
        super.viewDidLoad()
        //: setupSubviews()
        setupContentSubviews()
        //: setupSubViewsConstraint()
        effectImage()
        //: self.mainTableView.mj_header?.beginRefreshing()
        self.mainTableView.mj_header?.beginRefreshing()

        //: switch titleType {
        switch titleType {
        //: case .normal: self.title = "Online List".localized
        case .normal: self.title = (String(kStr_bottomName.suffix(4)) + "ne L" + kStr_timeData.replacingOccurrences(of: "event", with: "i")).localized
        //: case .callNumber: self.title = "Select @ Numbers".localized
        case .callNumber: self.title = (String(kStr_normalTitleData) + String(kStr_appNameData)).localized
        }
    }

    // MARK: - Lazy Load

    //: lazy var mainTableView: UITableView = {
    lazy var mainTableView: UITableView = {
        //: let table = UITableView(frame: .zero, style: UITableView.Style.plain)
        let table = UITableView(frame: .zero, style: UITableView.Style.plain)
        //: if #available(iOS 11.0, *) {
        if #available(iOS 11.0, *) {
            //: table.contentInsetAdjustmentBehavior = .never
            table.contentInsetAdjustmentBehavior = .never
            //: table.delegate = self
            table.delegate = self
            //: table.dataSource = self
            table.dataSource = self
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
        //: table.backgroundColor = .clear
        table.backgroundColor = .clear
        //: table.separatorStyle = .none
        table.separatorStyle = .none
        //: table.addFooterRefresh { [weak self] in
        table.reloadName { [weak self] in
            //: guard let self = self else { return }
            guard let self = self else { return }
            //: self.footerRefresh()
            self.ordinationReload()
        }
        //: table.addHeaderRefresh { [weak self] in
        table.subReload { [weak self] in
            //: guard let self = self else { return }
            guard let self = self else { return }
            //: self.headerRefresh()
            self.chart()
        }
        //: table.register(TalkingChatRoomOnlineListCell.self, forCellReuseIdentifier: "TalkingChatRoomOnlineListCell")
        table.register(AddThen.self, forCellReuseIdentifier: (String(kStr_playEqualTitle.prefix(5)) + "ngChat" + String(kStr_removeTitle.suffix(6)) + "lineL" + String(kStr_colorText.suffix(5)) + kStr_cellTimeLetValue.replacingOccurrences(of: "name", with: "ll")))

        //: return table
        return table
        //: }()
    }()

    //: private lazy var emptyView: EmptyView = {
    private lazy var emptyView: EmptyView = {
        //: var style = EmptyStyle()
        var style = FromEmptyStyle()
        //: style.TipsTitle = "Nobody can @"
        style.TipsTitle = (String(kStr_viewText.suffix(4)) + "dy can" + kStr_objectName.capitalized)
        //: let emptyView = EmptyView.init(frame: self.view.frame, style: style)
        let emptyView = EmptyView(frame: self.view.frame, style: style)
        //: emptyView.isHidden = true
        emptyView.isHidden = true
        //: return emptyView
        return emptyView
        //: }()
    }()
}

// MARK: - Load Data

//: extension TalkingChatRoomOnlineListController {
extension EqualListController {
    //: func headerRefresh() {
    func chart() {
        //: pageIndex = 0
        pageIndex = 0
        //: mainTableView.mj_header?.beginRefreshing()
        mainTableView.mj_header?.beginRefreshing()
        //: reqData()
        beyondColor()
    }

    //: private func footerRefresh() {
    private func ordinationReload() {
        //: pageIndex += 1
        pageIndex += 1
        //: reqData()
        beyondColor()
    }

    //: func reqData() {
    func beyondColor() {
        //: var dict = Dictionary<String, Any>()
        var dict = [String: Any]()
        //: dict["roomId"] = roomID
        dict[(String(kStr_toData.prefix(6)))] = roomID
        //: if titleType == .normal {
        if titleType == .normal {
            //: dict["type"] = "1"
            dict[(String(kStr_messageData))] = "1"
            //: } else {
        } else {
            //: dict["type"] = "2"
            dict[(String(kStr_messageData))] = "2"
        }
        //: dict["page"] = String(pageIndex)
        dict[(kStr_untilName.replacingOccurrences(of: "pic", with: "g"))] = String(pageIndex)

        //: TalkingChatGiftManager.share.getChatRoomMemberSData(params: dict, completion: { array in
        BlockThen.share.companyTitle(params: dict, completion: { array in
            //: self.mainTableView.endRefresh()
            self.mainTableView.takeUp()
            //: guard let arr = array else {
            guard let arr = array else {
                //: self.mainTableView.mj_footer?.endRefreshingWithNoMoreData()
                self.mainTableView.mj_footer?.endRefreshingWithNoMoreData()
                //: return
                return
            }

            //: if self.pageIndex == 0 {
            if self.pageIndex == 0 {
                //: self.dataArray.removeAllObjects()
                self.dataArray.removeAllObjects()
            }

            //: if arr.count<=0 {
            if arr.count <= 0 {
                //: self.mainTableView.mj_footer?.endRefreshingWithNoMoreData()
                self.mainTableView.mj_footer?.endRefreshingWithNoMoreData()
                //: self.mainTableView.mj_footer?.isHidden = true
                self.mainTableView.mj_footer?.isHidden = true
                //: } else {
            } else {
                //: self.dataArray.addObjects(from: arr)
                self.dataArray.addObjects(from: arr)
            }

            //: self.mainTableView.reloadData()
            self.mainTableView.reloadData()

            // @列表缺省
            //: if self.titleType == .callNumber && self.dataArray.count == 0 {
            if self.titleType == .callNumber, self.dataArray.count == 0 {
                //: self.emptyView.isHidden = false
                self.emptyView.isHidden = false
                //: } else {
            } else {
                //: self.emptyView.isHidden = true
                self.emptyView.isHidden = true
            }
            //: })
        })
    }
}

// MARK: - UITableViewDelegate, UITableViewDataSource

//: extension TalkingChatRoomOnlineListController: UITableViewDelegate, UITableViewDataSource {
extension EqualListController: UITableViewDelegate, UITableViewDataSource {
    //: public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    public func tableView(_: UITableView, numberOfRowsInSection _: Int) -> Int {
        //: return dataArray.count
        return dataArray.count
    }

    //: public func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
    public func tableView(_: UITableView, heightForRowAt _: IndexPath) -> CGFloat {
        //: return 76
        return 76
    }

    //: public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //: let cell = tableView.dequeueReusableCell(withIdentifier: "TalkingChatRoomOnlineListCell", for: indexPath) as! TalkingChatRoomOnlineListCell
        let cell = tableView.dequeueReusableCell(withIdentifier: (String(kStr_playEqualTitle.prefix(5)) + "ngChat" + String(kStr_removeTitle.suffix(6)) + "lineL" + String(kStr_colorText.suffix(5)) + kStr_cellTimeLetValue.replacingOccurrences(of: "name", with: "ll")), for: indexPath) as! AddThen
        //: var cellModel = TalkingChatRoomMemberModel()
        var cellModel = BottomMemberModel()
        //: cellModel = dataArray[indexPath.row] as! TalkingChatRoomMemberModel
        cellModel = dataArray[indexPath.row] as! BottomMemberModel
        //: cell.setOnlineListCell(model: cellModel, type: self.titleType)
        cell.compartmentError(model: cellModel, type: self.titleType)
        //: return cell
        return cell
    }

    //: public func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    public func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        //: tableView.deselectRow(at: indexPath, animated: true)
        tableView.deselectRow(at: indexPath, animated: true)
        //: let cellModel = dataArray[indexPath.row] as! TalkingChatRoomMemberModel
        let cellModel = dataArray[indexPath.row] as! BottomMemberModel
        //: switch self.titleType {
        switch self.titleType {
        //: case .normal:
        case .normal:
            //: EffectPushManager.share.func__pushToUserDetailVC(uid: cellModel.uid)
            EffectPushManager.share.userAdd(uid: cellModel.uid)

        //: case .callNumber:
        case .callNumber:
            //: guard let block = selectedBlock else { return }
            guard let block = selectedBlock else { return }
            //: let dict = ["uid": cellModel.uid, "name": cellModel.nickname]
            let dict = [String(bytes: kStr_rawTitle.map{whiteImage(beat: $0)}, encoding: .utf8)!: cellModel.uid, String(bytes: kStr_dateData.map{chipStack(attribute: $0)}, encoding: .utf8)!: cellModel.nickname]
            //: block(dict)
            block(dict)
        }
    }
}

// MARK: - Layout

//: extension TalkingChatRoomOnlineListController {
extension EqualListController {
    // 添加视图
    //: private func setupSubviews() {
    private func setupContentSubviews() {
        //: self.view.addSubview(self.mainTableView)
        self.view.addSubview(self.mainTableView)
        //: self.view.addSubview(emptyView)
        self.view.addSubview(emptyView)
        //: emptyView.emptyBlock = { [weak self] in
        emptyView.emptyBlock = { [weak self] in
            //: guard let self = self else { return }
            guard let self = self else { return }
            //: self.mainTableView.mj_header?.beginRefreshing()
            self.mainTableView.mj_header?.beginRefreshing()
        }
    }

    //: private func setupSubViewsConstraint() {
    private func effectImage() {
        //: mainTableView.snp.makeConstraints { make in
        mainTableView.snp.makeConstraints { make in
            //: make.edges.equalTo(self.view)
            make.edges.equalTo(self.view)
        }
    }
}
