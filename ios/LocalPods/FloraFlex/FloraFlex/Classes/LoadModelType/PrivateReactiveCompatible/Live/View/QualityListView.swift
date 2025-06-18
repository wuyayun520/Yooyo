
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let kStr_iconName:[UInt8] = [0xd0,0xd5,0xd0,0xdb,0x8f,0xca,0xd6,0xcb,0xcc,0xd9,0xa1,0x90,0x87,0xcf,0xc8,0xda,0x87,0xd5,0xd6,0xdb,0x87,0xc9,0xcc,0xcc,0xd5,0x87,0xd0,0xd4,0xd7,0xd3,0xcc,0xd4,0xcc,0xd5,0xdb,0xcc,0xcb]

fileprivate func managingDirector(gold num: UInt8) -> UInt8 {
    let value = Int(num) - 103
    if value < 0 {
        return UInt8(value + 256)
    } else {
        return UInt8(value)
    }
}

/*: "Online Users" :*/
fileprivate let kStr_tableValue:String = "Onliwindow end title"

/*: "ExampleViewCell" :*/
fileprivate let kStr_appName:[Character] = ["T","a","l","k","i","n","g","L","i","v","e","R","o","o"]
fileprivate let kStr_toContent:String = "tab"
fileprivate let kStr_leadingData:String = "Onlitip hide type"
fileprivate let kStr_indexContent:String = "block true casetCell"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  QualityListView.swift
//  FloraFlex
//
//  Created by Charlotte on 2024/8/15.
//

//: import UIKit
import UIKit

//: class TalkingLiveRoomOnlineListView: UIView {
class QualityListView: UIView {
    //: private let contentV_H = (344+kDeviceSafeBottomHeight)
    private let contentV_H = (344 + kLet_formatNetValue)
    //: private var DataSource: [TalkingLiveRoomOnlineListModel] = []
    private var DataSource: [ItemTransformable] = []
    //: private var chatGroupId = ""
    private var chatGroupId = ""
    // 点击cellBlock
    //: var touchIconBtnBlock: ((_ uid: String) -> Void)?
    var touchIconBtnBlock: ((_ uid: String) -> Void)?

    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: setupSubviews()
        underEqual()
        //: setupSubViewsConstraint()
        userTarget()
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: kStr_iconName.map{managingDirector(gold: $0)}, encoding: .utf8)!)
    }

    // MARK: - Lazy Load

    //: private lazy var dismissBtn: UIButton = {
    private lazy var dismissBtn: UIButton = {
        //: let btn = UIButton()
        let btn = UIButton()
        //: btn.backgroundColor = .clear
        btn.backgroundColor = .clear
        //: btn.addTarget(self, action: #selector(bgDismissButtonClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(playView), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var contentView: UIView = {
    private lazy var contentView: UIView = {
        //: let v = UIView()
        let v = UIView()
        //: v.Corner(width: ScreenWidth,
        v.loftiness(width: kLet_halfData,
                    //: height: contentV_H,
                    height: contentV_H,
                    //: corners: [.topLeft, .topRight],
                    corners: [.topLeft, .topRight],
                    //: cornerRadii: .init(width: 12, height: 12))
                    cornerRadii: .init(width: 12, height: 12))
        //: v.backgroundColor = .white
        v.backgroundColor = .white
        //: return v
        return v
        //: }()
    }()

    //: private lazy var tipsLb: UILabel = {
    private lazy var tipsLb: UILabel = {
        //: let lb = UILabel()
        let lb = UILabel()
        //: lb.font = UIFont.dorsum(fontSize: 20)
        lb.font = UIFont.dorsum(fontSize: 20)
        //: lb.textColor = UIColor.appTitleColor()
        lb.textColor = UIColor.dataFormat()
        //: lb.textAlignment = .center
        lb.textAlignment = .center
        //: lb.text = "Online Users".localized
        lb.text = (String(kStr_tableValue.prefix(4)) + "ne Users").localized
        //: return lb
        return lb
        //: }()
    }()

    //: private lazy var tableView: UITableView = {
    private lazy var tableView: UITableView = {
        //: let table = UITableView(frame: .zero, style: .plain)
        let table = UITableView(frame: .zero, style: .plain)
        //: table.backgroundColor = .clear
        table.backgroundColor = .clear
        //: table.separatorStyle = .none
        table.separatorStyle = .none
        //: table.tableHeaderView = UIView()
        table.tableHeaderView = UIView()
        //: table.sectionHeaderHeight = 0
        table.sectionHeaderHeight = 0
        //: table.sectionFooterHeight = 0
        table.sectionFooterHeight = 0
        //: table.dataSource = self
        table.dataSource = self
        //: table.delegate = self
        table.delegate = self
        //: if #available(iOS 11.0, *) {
        if #available(iOS 11.0, *) {
            //: table.contentInsetAdjustmentBehavior = .never
            table.contentInsetAdjustmentBehavior = .never
            //: if #available(iOS 15.0, *) {
            if #available(iOS 15.0, *) {
                //: UITableView.appearance().sectionHeaderTopPadding = 0
                UITableView.appearance().sectionHeaderTopPadding = 0
            }
        }
        //: table.register(TalkingLiveRoomOnlineListCell.self, forCellReuseIdentifier: TalkingLiveRoomOnlineListCell.className())
        table.register(ExampleViewCell.self, forCellReuseIdentifier: ExampleViewCell.className())

        //: return table
        return table
        //: }()
    }()

    // MARK: - Lazy load

    //: lazy var emptyView: EmptyView = {
    lazy var emptyView: EmptyView = {
        //: let view = EmptyView()
        let view = EmptyView()
        //: return view
        return view
        //: }()
    }()
}

// MARK: - Request

//: extension TalkingLiveRoomOnlineListView {
extension QualityListView {
    //: private func reqData() {
    private func telecasting() {
        //: TalkingAudienceManager().req_liveRoomOnlineList(chatGroupId: self.chatGroupId) { succeed, result, errorModel in
        AudienceThen().liveUponCompletion(chatGroupId: self.chatGroupId) { succeed, result, _ in
            //: self.tableView.endRefresh()
            self.tableView.takeUp()
            //: if succeed {
            if succeed {
                //: let array: Array =  result as! Array<Any>
                let array: Array = result as! [Any]

                //: var dataArr: [TalkingLiveRoomOnlineListModel] = []
                var dataArr: [ItemTransformable] = []

                //: if let datas = Array<TalkingLiveRoomOnlineListModel>.deserialize(from: array as? Array) {
                if let datas = Array<ItemTransformable>.deserialize(from: array as? Array) {
                    //: dataArr.append(contentsOf: (datas as? [TalkingLiveRoomOnlineListModel] ?? []))
                    dataArr.append(contentsOf: (datas as? [ItemTransformable] ?? []))
                }
                //: self.DataSource = dataArr
                self.DataSource = dataArr
                //: if dataArr.count>0 {
                if dataArr.count > 0 {
                    //: self.emptyView.removeFromSuperview()
                    self.emptyView.removeFromSuperview()
                }
                //: self.tableView.reloadData()
                self.tableView.reloadData()
            }
        }
    }
}

// MARK: - UITableViewDelegate, UITableViewDataSource

//: extension TalkingLiveRoomOnlineListView: UITableViewDelegate, UITableViewDataSource {
extension QualityListView: UITableViewDelegate, UITableViewDataSource {
    //: func numberOfSections(in tableView: UITableView) -> Int {
    func numberOfSections(in _: UITableView) -> Int {
        //: return 1
        return 1
    }

    //: func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    func tableView(_: UITableView, numberOfRowsInSection _: Int) -> Int {
        //: return self.DataSource.count
        return self.DataSource.count
    }

    //: func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
    func tableView(_: UITableView, heightForRowAt _: IndexPath) -> CGFloat {
        //: return 68
        return 68
    }

    //: func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //: let identifier = "TalkingLiveRoomOnlineListCell"
        let identifier = (String(kStr_appName) + kStr_toContent.replacingOccurrences(of: "tab", with: "m") + String(kStr_leadingData.prefix(4)) + "neLis" + String(kStr_indexContent.suffix(5)))
        //: var cell = tableView.dequeueReusableCell(withIdentifier: identifier) as? TalkingLiveRoomOnlineListCell
        var cell = tableView.dequeueReusableCell(withIdentifier: identifier) as? ExampleViewCell
        //: if cell == nil {
        if cell == nil {
            //: cell = TalkingLiveRoomOnlineListCell(style: .default, reuseIdentifier: identifier)
            cell = ExampleViewCell(style: .default, reuseIdentifier: identifier)
        }
        //: cell?.setCell(model: self.DataSource[indexPath.row], index: indexPath.row)
        cell?.magnitudeRelationIndex(model: self.DataSource[indexPath.row], index: indexPath.row)
        //: return cell!
        return cell!
    }

    //: func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    func tableView(_: UITableView, didSelectRowAt indexPath: IndexPath) {
        //: self.dismiss()
        self.betweenVideo()
        //: let model = self.DataSource[indexPath.row]
        let model = self.DataSource[indexPath.row]
        //: self.touchIconBtnBlock?(model.uid.stringValue)
        self.touchIconBtnBlock?(model.uid.stringValue)
    }
}

// MARK: - 展示/隐藏视图

//: extension TalkingLiveRoomOnlineListView {
extension QualityListView {
    /// 消除视图按钮
    //: @objc private func bgDismissButtonClick() {
    @objc private func playView() {
        //: dismiss()
        betweenVideo()
    }

    /// 展示视图
    //: func showView(chatGroupId: String) {
    func chat(chatGroupId: String) {
        //: self.chatGroupId = chatGroupId
        self.chatGroupId = chatGroupId
        //: currentViewController()?.view.addSubview(self)
        giftFew()?.view.addSubview(self)
        //: self.contentView.isHidden = false
        self.contentView.isHidden = false
        //: self.contentView.frame = CGRect(x: 0, y: ScreenHeight, width: ScreenWidth, height: contentV_H)
        self.contentView.frame = CGRect(x: 0, y: kLet_noSeatName, width: kLet_halfData, height: contentV_H)
        //: reqData()
        telecasting()
        //: UIView.animate(withDuration: 0.3) {
        UIView.animate(withDuration: 0.3) {
            //: self.contentView.frame.origin.y -= self.contentView.height
            self.contentView.frame.origin.y -= self.contentView.height
        }
    }

    /// 隐藏视图
    //: func dismiss() {
    func betweenVideo() {
        //: UIView.animate(withDuration: 0.3) {
        UIView.animate(withDuration: 0.3) {
            //: self.contentView.frame.origin.y += self.contentView.height
            self.contentView.frame.origin.y += self.contentView.height
            //: } completion: { finish in
        } completion: { _ in
            //: self.removeFromSuperview()
            self.removeFromSuperview()
        }
    }
}

// MARK: - Layout

//: extension TalkingLiveRoomOnlineListView {
extension QualityListView {
    /// 添加视图
    //: private func setupSubviews() {
    private func underEqual() {
        //: self.frame = CGRect(x: 0, y: 0, width: ScreenWidth, height: ScreenHeight)
        self.frame = CGRect(x: 0, y: 0, width: kLet_halfData, height: kLet_noSeatName)
        //: self.backgroundColor = .clear
        self.backgroundColor = .clear
        //: addSubview(dismissBtn)
        addSubview(dismissBtn)
        //: addSubview(contentView)
        addSubview(contentView)
        //: contentView.addSubview(tipsLb)
        contentView.addSubview(tipsLb)
        //: contentView.addSubview(tableView)
        contentView.addSubview(tableView)
    }

    /// 添加约束
    //: private func setupSubViewsConstraint() {
    private func userTarget() {
        //: dismissBtn.snp.makeConstraints { make in
        dismissBtn.snp.makeConstraints { make in
            //: make.edges.equalToSuperview()
            make.edges.equalToSuperview()
        }
        //: tipsLb.snp.makeConstraints { make in
        tipsLb.snp.makeConstraints { make in
            //: make.top.equalTo(30)
            make.top.equalTo(30)
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
        }
        //: tableView.snp.makeConstraints { make in
        tableView.snp.makeConstraints { make in
            //: make.top.equalTo(tipsLb.snp.bottom).offset(20)
            make.top.equalTo(tipsLb.snp.bottom).offset(20)
            //: make.leading.trailing.equalToSuperview()
            make.leading.trailing.equalToSuperview()
            //: make.bottom.equalTo(-kDeviceSafeBottomHeight)
            make.bottom.equalTo(-kLet_formatNetValue)
        }

        //: let style = EmptyStyle()
        let style = FromEmptyStyle()
        //: emptyView = EmptyView.init(frame: CGRect(x: 0, y: -100, width: ScreenWidth, height: contentV_H+100), style: style)
        emptyView = EmptyView(frame: CGRect(x: 0, y: -100, width: kLet_halfData, height: contentV_H + 100), style: style)
        //: self.contentView.addSubview(emptyView)
        self.contentView.addSubview(emptyView)
    }
}
