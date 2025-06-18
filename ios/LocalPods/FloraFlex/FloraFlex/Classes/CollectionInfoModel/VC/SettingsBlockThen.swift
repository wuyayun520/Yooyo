
//: Declare String Begin

/*: "Beautify Settings" :*/
fileprivate let kStr_prepareContent:String = "Beauticolor var height"
fileprivate let kStr_blockFoundationName:String = "tinprice"
fileprivate let kStr_infoName:String = "label"

/*: "icon_me_videoSet_beauty" :*/
fileprivate let kStr_nowData:[Character] = ["i","c","o","n","_","m","e","_"]
fileprivate let kStr_styleTitle:[Character] = ["v","i","d","e","o","S"]
fileprivate let kStr_loadValue:[Character] = ["e","t","_","b","e","a","u","t","y"]

/*: "Video Settings" :*/
fileprivate let kStr_haveName:String = "position not push index notVide"
fileprivate let kStr_statusName:String = "iborders"

/*: "TalkingSettingReceiveVideoCellId" :*/
fileprivate let kStr_clickTitle:[UInt8] = [0xa1,0xae,0xb9,0xb8,0xb6,0xbb,0xb4,0xa0,0xb2,0xc1,0xc1,0xb6,0xbb,0xb4,0x9f,0xb2,0xb0,0xb2,0xb6,0xc3,0xb2,0xa3,0xb6,0xb1,0xb2,0xbc,0x90,0xb2,0xb9,0xb9,0x96,0xb1]

fileprivate func sexVideo(background num: UInt8) -> UInt8 {
    let value = Int(num) + 179
    if value > 255 {
        return UInt8(value - 256)
    } else {
        return UInt8(value)
    }
}

/*: "Enter " :*/
fileprivate let kStr_homeData:String = "make makeEnter"
fileprivate let kStr_normalValue:[Character] = [" "]

/*: "Settings" :*/
fileprivate let kStr_data:String = "hidden appear table colorSettings"

/*: " and open " :*/
fileprivate let kStr_labelText:String = " and return view true group create"
fileprivate let kStr_seatData:String = "let and showopen "

/*: "Camera" :*/
fileprivate let kStr_valueMethodModelContent:String = "player"
fileprivate let kStr_resultContent:String = "afailurera"

/*: " permission to use this function normally" :*/
fileprivate let kStr_cutViewName:[UInt8] = [0x46,0x16,0x3,0x14,0xb,0xf,0x15,0x15,0xf,0x9,0x8,0x46,0x12,0x9,0x46,0x13,0x15,0x3,0x46,0x12,0xe,0xf,0x15,0x46,0x0,0x13,0x8,0x5,0x12,0xf,0x9,0x8,0x46,0x8,0x9,0x14,0xb,0x7,0xa,0xa,0x1f]

private func groupStyle(name num: UInt8) -> UInt8 {
    return num ^ 102
}

/*: "Cancel" :*/
fileprivate let kStr_userName:String = "Cancelinfo make self self"

/*: "Purple means turn on the call invitation, grey means turn off the call invitation." :*/
fileprivate let kStr_managerViewAppearValue:[UInt8] = [0x2e,0x6e,0x6f,0x69,0x74,0x61,0x74,0x69,0x76,0x6e,0x69,0x20,0x6c,0x6c,0x61,0x63,0x20,0x65,0x68,0x74,0x20,0x66,0x66,0x6f,0x20,0x6e,0x72,0x75,0x74,0x20,0x73,0x6e,0x61,0x65,0x6d,0x20,0x79,0x65,0x72,0x67,0x20,0x2c,0x6e,0x6f,0x69,0x74,0x61,0x74,0x69,0x76,0x6e,0x69,0x20,0x6c,0x6c,0x61,0x63,0x20,0x65,0x68,0x74,0x20,0x6e,0x6f,0x20,0x6e,0x72,0x75,0x74,0x20,0x73,0x6e,0x61,0x65,0x6d,0x20,0x65,0x6c,0x70,0x72,0x75,0x50]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  SettingsBlockThen.swift
//  AbroadTalking
//
//  Created by Charlotte on 2023/10/25.
//

//: import UIKit
import UIKit

//: class TalkingVideoSettingsVC: TalkingBaseViewController {
class SettingsBlockThen: LayerRecognizerDelegate {
    // MARK: - life cycle

    //: private var headerData = [("Beautify Settings", "icon_me_videoSet_beauty"),
    private var headerData = [((String(kStr_prepareContent.prefix(6)) + "fy Set" + kStr_blockFoundationName.replacingOccurrences(of: "price", with: "g") + kStr_infoName.replacingOccurrences(of: "label", with: "s")), (String(kStr_nowData) + String(kStr_styleTitle) + String(kStr_loadValue))),
                              //: ("", ""),
                              ("", ""),
                              //: ("", "")]
                              ("", "")]

    //: override func viewDidLoad() {
    override func viewDidLoad() {
        //: super.viewDidLoad()
        super.viewDidLoad()
        //: self.view.backgroundColor = UIColor.appBgColor()
        self.view.backgroundColor = UIColor.bottomValue()
        //: self.title = "Video Settings".localized
        self.title = (String(kStr_haveName.suffix(4)) + "o Sett" + kStr_statusName.replacingOccurrences(of: "border", with: "ng")).localized
        //: self.setupSubviews()
        self.dataConverter()
        //: self.setupSubViewsConstraint()
        self.server()
    }

    // MARK: - Lazy load

    //: lazy var MainTable: UITableView = {
    lazy var MainTable: UITableView = {
        //: let table = UITableView(frame: .zero, style: .grouped)
        let table = UITableView(frame: .zero, style: .grouped)
        //: table.backgroundColor = UIColor.appBgColor()
        table.backgroundColor = UIColor.bottomValue()
        //: table.register(TalkingSettingReceiveVideoCell.self, forCellReuseIdentifier: "TalkingSettingReceiveVideoCellId")
        table.register(FillVideoCell.self, forCellReuseIdentifier: String(bytes: kStr_clickTitle.map{sexVideo(background: $0)}, encoding: .utf8)!)
        //: table.separatorStyle = .none
        table.separatorStyle = .none
        //: table.dataSource = self
        table.dataSource = self
        //: table.delegate = self
        table.delegate = self
        //: return table
        return table
        //: }()
    }()
}

// MARK: - private methods

//: extension TalkingVideoSettingsVC {
extension SettingsBlockThen {
    //: func judgeCameraAuthorization() {
    func row() {
        //: TalkingPermissionTool.func__openCaptureDeviceServiceWithBlock(false) { (isOpen: Bool) in
        PerspectiveThen.leadershipMore(false) { (isOpen: Bool) in
            //: if isOpen {
            if isOpen {
                //: guard TalkingSocketManager.shared.isTalking == false else {
                guard ToSocketManager.shared.isTalking == false else {
                    //: self.func__showStatusBarErrorMsg(showMsg: kMessage_videoTalking_limit)
                    self.detailDownArray(showMsg: kLet_tableEndValue)
                    //: return
                    return
                }
                //: let vc = TalkingMyBeautyVC()
                let vc = QualityBeautyVc()
                //: self.navigationController?.pushViewController(vc, animated: true)
                self.navigationController?.pushViewController(vc, animated: true)
                //: } else {
            } else {
                ClickReactiveCompatible.follow(title: nil, message: "Enter \"Settings\" and open \"Camera\" permission to use this function normally".localized, leftBtnTitle: "Cancel".localized, rightBtnTitle: "Settings".localized) {
                    //: TalkingAlertShow.hideAlert()
                    ClickReactiveCompatible.closeHideRelease()
                    //: } rightBlock: {
                } rightBlock: {
                    //: TalkingAlertShow.hideAlert()
                    ClickReactiveCompatible.closeHideRelease()
                    //: let url = URL(string: UIApplication.openSettingsURLString)
                    let url = URL(string: UIApplication.openSettingsURLString)
                    //: if  UIApplication.shared.canOpenURL(url!) {
                    if UIApplication.shared.canOpenURL(url!) {
                        //: UIApplication.shared.open(url!, options: [:], completionHandler: {(success) in})
                        UIApplication.shared.open(url!, options: [:], completionHandler: { _ in })
                    }
                }
            }
        }
    }
}

// MARK: - UITableViewDelegate, UITableViewDataSource

//: extension TalkingVideoSettingsVC: UITableViewDelegate, UITableViewDataSource {
extension SettingsBlockThen: UITableViewDelegate, UITableViewDataSource {
    //: func numberOfSections(in tableView: UITableView) -> Int {
    func numberOfSections(in _: UITableView) -> Int {
        //: return headerData.count
        return headerData.count
    }

    //: func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    func tableView(_: UITableView, numberOfRowsInSection section: Int) -> Int {
        //: if section == 0 {
        if section == 0 {
            //: return 0
            return 0
            //: } else if section == 1 {
        } else if section == 1 {
            //: return 2
            return 2
            //: } else if section == 2 {
        } else if section == 2 {
            //: return 1
            return 1
        }
        //: return 0
        return 0
    }

    //: func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
    func tableView(_: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        //: if indexPath.section == 1 || indexPath.section == 2 {
        if indexPath.section == 1 || indexPath.section == 2 {
            //: return 65
            return 65
        }
        //: return 0
        return 0
    }

    //: func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
    func tableView(_: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        //: if (section == 0 && SenseTime_Use) {
        if section == 0 && kLet_intervalName {
            //: return 75
            return 75
        }
        //: return 0.01
        return 0.01
    }

    //: func tableView(_ tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
    func tableView(_: UITableView, heightForFooterInSection section: Int) -> CGFloat {
        //: if section == 1 {
        if section == 1 {
            //: return actualWidth(w: 50.0)
            return originalScene(w: 50.0)
        }
        //: return 0.01
        return 0.01
    }

    //: func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //: if indexPath.section == 1 || indexPath.section == 2 {
        if indexPath.section == 1 || indexPath.section == 2 {
            //: let cell: TalkingSettingReceiveVideoCell = tableView.dequeueReusableCell(withIdentifier: "TalkingSettingReceiveVideoCellId", for: indexPath) as! TalkingSettingReceiveVideoCell
            let cell: FillVideoCell = tableView.dequeueReusableCell(withIdentifier: String(bytes: kStr_clickTitle.map{sexVideo(background: $0)}, encoding: .utf8)!, for: indexPath) as! FillVideoCell
            //: if indexPath.section == 1 {
            if indexPath.section == 1 {
                //: if indexPath.row == 0 {
                if indexPath.row == 0 {
                    //: cell.refreshCell(type: .video)
                    cell.vanguard(type: .video)
                    //: } else if indexPath.row == 1 {
                } else if indexPath.row == 1 {
                    //: cell.refreshCell(type: .voice)
                    cell.vanguard(type: .voice)
                }
                //: } else if indexPath.section == 2 {
            } else if indexPath.section == 2 {
                //: cell.refreshCell(type: .randomVideo)
                cell.vanguard(type: .randomVideo)
            }
            //: return cell
            return cell
        }

        //: return UITableViewCell()
        return UITableViewCell()
    }

    //: func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
    func tableView(_: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        //: guard (section == 0 && SenseTime_Use) else { return nil }
        guard section == 0 && kLet_intervalName else { return nil }
        //: let headeView: TalkingVideoSettingHeaderCell = TalkingVideoSettingHeaderCell.init(style: .default, reuseIdentifier: nil)
        let headeView = ShareCanReactiveCompatible(style: .default, reuseIdentifier: nil)
        //: let data = self.headerData[section]
        let data = self.headerData[section]
        //: headeView.setViewData(title: data.0, icon: data.1)
        headeView.wood(title: data.0, icon: data.1)
        //: if section == 0 {
        if section == 0 {
            //: headeView.setTips(isHidden: true)
            headeView.toPingHidden(isHidden: true)
        }
        //: headeView.touchBlock = { [weak self] in
        headeView.touchBlock = { [weak self] in
            //: guard let self = self else { return }
            guard let self = self else { return }
            //: if section == 0 && SenseTime_Use {
            if section == 0 && kLet_intervalName {
                //: self.judgeCameraAuthorization()
                self.row()
            }
        }
        //: return headeView
        return headeView
    }

    //: func tableView(_ tableView: UITableView, viewForFooterInSection section: Int) -> UIView? {
    func tableView(_: UITableView, viewForFooterInSection section: Int) -> UIView? {
        //: guard section == 1 else { return UIView() }
        guard section == 1 else { return UIView() }
        //: let view = UIView(frame: CGRect(x: 0, y: 0, width: ScreenWidth, height: actualWidth(w: 50.0)))
        let view = UIView(frame: CGRect(x: 0, y: 0, width: kLet_halfData, height: originalScene(w: 50.0)))
        //: view.backgroundColor = UIColor.appBgColor()
        view.backgroundColor = UIColor.bottomValue()
        //: let title = UILabel()
        let title = UILabel()
        //: title.backgroundColor = UIColor.clear
        title.backgroundColor = UIColor.clear
        //: title.font = UIFont.messageDown(fontSize: 14)
        title.font = UIFont.messageDown(fontSize: 14)
        //: title.textColor = UIColor.statusMin()
        title.textColor = UIColor.statusMin()
        //: title.text = "Purple means turn on the call invitation, grey means turn off the call invitation.".localized
        title.text = String(bytes: kStr_managerViewAppearValue.reversed(), encoding: .utf8)!.localized
        //: title.numberOfLines = 0
        title.numberOfLines = 0
        //: title.textAlignment = .center
        title.textAlignment = .center
        //: view.addSubview(title)
        view.addSubview(title)
        //: title.snp.makeConstraints { make in
        title.snp.makeConstraints { make in
            //: make.leading.equalTo(15)
            make.leading.equalTo(15)
            //: make.trailing.equalTo(-15)
            make.trailing.equalTo(-15)
            //: make.center.equalToSuperview()
            make.center.equalToSuperview()
        }
        //: return view
        return view
    }
}

// MARK: - Layout

//: extension TalkingVideoSettingsVC {
extension SettingsBlockThen {
    /// 添加视图
    //: private func setupSubviews() {
    private func dataConverter() {
        //: self.view.addSubview(MainTable)
        self.view.addSubview(MainTable)
    }

    /// 添加约束
    //: private func setupSubViewsConstraint() {
    private func server() {
        //: MainTable.snp.makeConstraints { make in
        MainTable.snp.makeConstraints { make in
            //: make.edges.equalToSuperview()
            make.edges.equalToSuperview()
        }
    }
}
