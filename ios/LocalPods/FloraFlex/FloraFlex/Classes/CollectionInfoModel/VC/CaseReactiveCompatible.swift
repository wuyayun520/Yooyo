
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let kStr_timeName:[UInt8] = [0x72,0x75,0x72,0x6f,0x33,0x78,0x74,0x7f,0x7e,0x69,0x21,0x32,0x3b,0x73,0x7a,0x68,0x3b,0x75,0x74,0x6f,0x3b,0x79,0x7e,0x7e,0x75,0x3b,0x72,0x76,0x6b,0x77,0x7e,0x76,0x7e,0x75,0x6f,0x7e,0x7f]

private func userVisibleFrom(label num: UInt8) -> UInt8 {
    return num ^ 27
}

/*: "Greeting Message Settings" :*/
fileprivate let kStr_tabData:[Character] = ["G","r","e","e","t","i","n","g"]
fileprivate let kStr_maxData:[Character] = [" ","M","e","s","s","a"]
fileprivate let kStr_cleanText:[Character] = ["g","e"," ","S","e","t","t","i","n","g","s"]

/*: "DigitiserViewCell" :*/
fileprivate let kStr_tagName:String = "Talkinpara size if send"
fileprivate let kStr_viewContent:String = "control video self shareetingS"
fileprivate let kStr_shoveContent:String = "class any app ifCell"

/*: "Voice greeting" :*/
fileprivate let kStr_loadTitle:[Character] = ["V","o","i","c","e"," ","g","r","e","e","t","i","n","g"]

/*: "icon_me_greet_vioce" :*/
fileprivate let kStr_pastName:String = "iframeon"
fileprivate let kStr_modelTitle:String = "session succeedreet_v"
fileprivate let kStr_userValue:[Character] = ["i","o","c","e"]

/*: "Text greeting" :*/
fileprivate let kStr_appearanceName:String = "Text gself self"
fileprivate let kStr_pointText:String = "reetioriginalg"

/*: "icon_me_greet_text" :*/
fileprivate let kStr_intervalData:String = "icon_mtitle by target label index"
fileprivate let kStr_cellData:String = "esharet"

/*: "Photo greeting" :*/
fileprivate let kStr_contentValue:String = "data"
fileprivate let kStr_userTitle:[Character] = ["h","o","t","o"," ","g","r","e","e","t","i","n","g"]

/*: "icon_me_greet_photo" :*/
fileprivate let kStr_pathText:[Character] = ["i","c","o","n","_","m","e","_","g","r","e","e","t","_","p","h","o","t"]
fileprivate let kStr_groupData:String = "add"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  CaseReactiveCompatible.swift
//  AbroadTalking
//
//  Created by Charlotte on 2023/2/9.
//

//: import UIKit
import UIKit

//: class TalkingAutoGreetSettingVC: TalkingBaseViewController {
class CaseReactiveCompatible: LayerRecognizerDelegate {
    //: var settingModel = TalkingSettingModel()
    var settingModel = LoadSettingModel()

    //: init() {
    init() {
        //: super.init(nibName: nil, bundle: nil)
        super.init(nibName: nil, bundle: nil)
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: kStr_timeName.map{userVisibleFrom(label: $0)}, encoding: .utf8)!)
    }

    //: override func viewWillAppear(_ animated: Bool) {
    override func viewWillAppear(_ animated: Bool) {
        //: super.viewWillAppear(animated)
        super.viewWillAppear(animated)
        //: getSettingData()
        back()
    }

    //: override func viewDidAppear(_ animated: Bool) {
    override func viewDidAppear(_ animated: Bool) {
        //: super.viewDidAppear(animated)
        super.viewDidAppear(animated)
    }

    //: override func viewDidLoad() {
    override func viewDidLoad() {
        //: super.viewDidLoad()
        super.viewDidLoad()
        //: self.title = "Greeting Message Settings".localized
        self.title = (String(kStr_tabData) + String(kStr_maxData) + String(kStr_cleanText)).localized
        //: self.view.backgroundColor = UIColor.appBgColor()
        self.view.backgroundColor = UIColor.bottomValue()
        //: setupSubviews()
        subviews()
        //: setupSubViewsConstraint()
        substituteCenterConstraint()
    }

    //: deinit {
    deinit {}

    // MARK: - Lazy load

    //: lazy var MainTable: UITableView = {
    lazy var MainTable: UITableView = {
        //: let table = UITableView(frame: CGRect(x: 0, y: 0, width: ScreenWidth, height: ScreenHeight-TabBarViewHeight), style: UITableView.Style.plain)
        let table = UITableView(frame: CGRect(x: 0, y: 0, width: kLet_halfData, height: kLet_noSeatName - kLet_screenContent), style: UITableView.Style.plain)
        //: table.backgroundColor = UIColor.clear
        table.backgroundColor = UIColor.clear
        //: table.register(TalkingGreetingSetTableCell.self, forCellReuseIdentifier: "TalkingGreetingSetTableCell")
        table.register(DigitiserViewCell.self, forCellReuseIdentifier: (String(kStr_tagName.prefix(6)) + "gGre" + String(kStr_viewContent.suffix(6)) + "etTable" + String(kStr_shoveContent.suffix(4))))
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

// MARK: - Request & 数据处理

//: extension TalkingAutoGreetSettingVC {
extension CaseReactiveCompatible {
    //: func getSettingData() {
    func back() {
        //: let dict = Dictionary<String, Any>()
        let dict = [String: Any]()
        //: TalkingMeRequestTool.req_GetGreetSetting(params: dict) { succeed, result, errorModel in
        LoadEqualRequestTool.isReplyCompletion(params: dict) { succeed, result, _ in
            //: if succeed {
            if succeed {
                //: self.settingModel = JSONDeserializer<TalkingSettingModel>.deserializeFrom(dict: result as? Dictionary<String, Any>, designatedPath: nil)!
                self.settingModel = JSONDeserializer<LoadSettingModel>.deserializeFrom(dict: result as? [String: Any], designatedPath: nil)!
                //: self.MainTable.reloadData()
                self.MainTable.reloadData()
            }
        }
    }
}

// MARK: - UITableViewDelegate, UITableViewDataSource

//: extension TalkingAutoGreetSettingVC: UITableViewDelegate, UITableViewDataSource {
extension CaseReactiveCompatible: UITableViewDelegate, UITableViewDataSource {
    //: func numberOfSections(in tableView: UITableView) -> Int {
    func numberOfSections(in _: UITableView) -> Int {
        //: return 3
        return 3
    }

    //: func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    func tableView(_: UITableView, numberOfRowsInSection _: Int) -> Int {
        //: return 1
        return 1
    }

    //: func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
    func tableView(_: UITableView, heightForRowAt _: IndexPath) -> CGFloat {
        //: return actualHeight(h: 50)
        return mediaBlock(h: 50)
    }

    //: func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
    func tableView(_: UITableView, heightForHeaderInSection _: Int) -> CGFloat {
        //: return 15
        return 15
    }

    //: func tableView(_ tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
    func tableView(_: UITableView, heightForFooterInSection _: Int) -> CGFloat {
        //: return 0.1
        return 0.1
    }

    //: func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //: let identifier = "TalkingGreetingSetTableCell"
        let identifier = (String(kStr_tagName.prefix(6)) + "gGre" + String(kStr_viewContent.suffix(6)) + "etTable" + String(kStr_shoveContent.suffix(4)))
        //: let cell: TalkingGreetingSetTableCell = tableView.dequeueReusableCell(withIdentifier: identifier, for: indexPath) as! TalkingGreetingSetTableCell
        let cell: DigitiserViewCell = tableView.dequeueReusableCell(withIdentifier: identifier, for: indexPath) as! DigitiserViewCell

        //: if indexPath.section == 0 {
        if indexPath.section == 0 {
            //: cell.setCellMessage(titile: "Voice greeting".localized, iconStr: "icon_me_greet_vioce", isShowDet: self.settingModel.audioIsSet != 0)
            cell.adjacent(titile: (String(kStr_loadTitle)).localized, iconStr: (kStr_pastName.replacingOccurrences(of: "frame", with: "c") + "_me_g" + String(kStr_modelTitle.suffix(6)) + String(kStr_userValue)), isShowDet: self.settingModel.audioIsSet != 0)

            //: } else if indexPath.section == 1 {
        } else if indexPath.section == 1 {
            //: cell.setCellMessage(titile: "Text greeting".localized, iconStr: "icon_me_greet_text", isShowDet: self.settingModel.textIsSet != 0)
            cell.adjacent(titile: (String(kStr_appearanceName.prefix(6)) + kStr_pointText.replacingOccurrences(of: "original", with: "n")).localized, iconStr: (String(kStr_intervalData.prefix(6)) + "e_greet_t" + kStr_cellData.replacingOccurrences(of: "share", with: "x")), isShowDet: self.settingModel.textIsSet != 0)
            //: } else if indexPath.section == 2 {
        } else if indexPath.section == 2 {
            //: cell.setCellMessage(titile: "Photo greeting".localized, iconStr: "icon_me_greet_photo", isShowDet: self.settingModel.intimatePhotoIsSet != 0)
            cell.adjacent(titile: (kStr_contentValue.replacingOccurrences(of: "data", with: "P") + String(kStr_userTitle)).localized, iconStr: (String(kStr_pathText) + kStr_groupData.replacingOccurrences(of: "add", with: "o")), isShowDet: self.settingModel.intimatePhotoIsSet != 0)
        }
        //: return cell
        return cell
    }

    //: func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    func tableView(_: UITableView, didSelectRowAt indexPath: IndexPath) {
        //: if indexPath.section == 0 {
        if indexPath.section == 0 {
            //: let vc = TalkingGreetAudioVC.init()
            let vc = MiniToolDelegate()
            //: self.navigationController?.pushViewController(vc, animated: true)
            self.navigationController?.pushViewController(vc, animated: true)
            //: } else if indexPath.section == 1 {
        } else if indexPath.section == 1 {
            //: let vc = TalkingGreetTextVC.init()
            let vc = ToViewController()
            //: self.navigationController?.pushViewController(vc, animated: true)
            self.navigationController?.pushViewController(vc, animated: true)
            //: } else if indexPath.section == 2 {
        } else if indexPath.section == 2 {
            //: let vc = TalkingGreetPhotoVC.init()
            let vc = TitleMiniDataSource()
            //: self.navigationController?.pushViewController(vc, animated: true)
            self.navigationController?.pushViewController(vc, animated: true)
        }
    }

    //: func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
    func tableView(_: UITableView, viewForHeaderInSection _: Int) -> UIView? {
        //: let view = UIView.init(frame: CGRect(x: 0, y: 0, width: ScreenWidth, height: 15))
        let view = UIView(frame: CGRect(x: 0, y: 0, width: kLet_halfData, height: 15))
        //: view.backgroundColor = UIColor.clear
        view.backgroundColor = UIColor.clear
        //: return view
        return view
    }

    //: func tableView(_ tableView: UITableView, viewForFooterInSection section: Int) -> UIView? {
    func tableView(_: UITableView, viewForFooterInSection _: Int) -> UIView? {
        //: return UIView.init()
        return UIView()
    }
}

// MARK: - Layout

//: extension TalkingAutoGreetSettingVC {
extension CaseReactiveCompatible {
    //: private func setupSubviews() {
    private func subviews() {
        //: self.view.addSubview(MainTable)
        self.view.addSubview(MainTable)
    }

    //: private func setupSubViewsConstraint() {
    private func substituteCenterConstraint() {
        //: MainTable.snp.makeConstraints { make in
        MainTable.snp.makeConstraints { make in
            //: make.edges.equalTo(self.view)
            make.edges.equalTo(self.view)
        }
        //: MainTable.contentInset = UIEdgeInsets(top: 0, left: 0, bottom: 36, right: 0)
        MainTable.contentInset = UIEdgeInsets(top: 0, left: 0, bottom: 36, right: 0)
    }
}
