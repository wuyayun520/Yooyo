
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let kStr_centerValue:[UInt8] = [0x63,0x68,0x63,0x6e,0x22,0x5d,0x69,0x5e,0x5f,0x6c,0x34,0x23,0x1a,0x62,0x5b,0x6d,0x1a,0x68,0x69,0x6e,0x1a,0x5c,0x5f,0x5f,0x68,0x1a,0x63,0x67,0x6a,0x66,0x5f,0x67,0x5f,0x68,0x6e,0x5f,0x5e]

fileprivate func rawPlayer(sub num: UInt8) -> UInt8 {
    let value = Int(num) + 6
    if value > 255 {
        return UInt8(value - 256)
    } else {
        return UInt8(value)
    }
}

/*: "Text greeting" :*/
fileprivate let kStr_layerValue:String = "Text gstring string"

/*: "Add" :*/
fileprivate let kStr_formatEndTitle:String = "Addmake share m guard"

/*: "type" :*/
fileprivate let kStr_playerMakeData:String = "tmodelpe"

/*: "addStatus" :*/
fileprivate let kStr_themeAddValue:String = "manager self return make agreeaddStatus"

/*: "list" :*/
fileprivate let kStr_trackValue:[Character] = ["l","i","s","t"]

/*: "Are you sure to delete this message？" :*/
fileprivate let kStr_equalData:[UInt8] = [0x1d,0x2e,0x39,0x7c,0x25,0x33,0x29,0x7c,0x2f,0x29,0x2e,0x39,0x7c,0x28,0x33,0x7c,0x38,0x39,0x30,0x39,0x28,0x39,0x7c,0x28,0x34,0x35,0x2f,0x7c,0x31,0x39,0x2f,0x2f,0x3d,0x3b,0x39,0xb3,0xe0,0xc3]

private func modeWant(group num: UInt8) -> UInt8 {
    return num ^ 92
}

/*: "Cancel" :*/
fileprivate let kStr_lineRequestPathTitle:[Character] = ["C","a","n","c","e","l"]

/*: "Delete" :*/
fileprivate let kStr_mainContent:[Character] = ["D"]
fileprivate let kStr_errorData:String = "ELETE"

/*: "id" :*/
fileprivate let kStr_stopValue:[Character] = ["i","d"]

/*: "The upper limit has been reached" :*/
fileprivate let kStr_finishValue:[UInt8] = [0x84,0xb8,0xb5,0xf0,0xa5,0xa0,0xa0,0xb5,0xa2,0xf0,0xbc,0xb9,0xbd,0xb9,0xa4,0xf0,0xb8,0xb1,0xa3,0xf0,0xb2,0xb5,0xb5,0xbe,0xf0,0xa2,0xb5,0xb1,0xb3,0xb8,0xb5,0xb4]

/*: "text" :*/
fileprivate let kStr_addValue:String = "temanager"

/*: "Successfully added, please wait for approval" :*/
fileprivate let kStr_fillData:[UInt8] = [0xf5,0x17,0x5,0x5,0x7,0x15,0x15,0x8,0x17,0xe,0xe,0x1b,0xc2,0x3,0x6,0x6,0x7,0x6,0xce,0xc2,0x12,0xe,0x7,0x3,0x15,0x7,0xc2,0x19,0x3,0xb,0x16,0xc2,0x8,0x11,0x14,0xc2,0x3,0x12,0x12,0x14,0x11,0x18,0x3,0xe]

fileprivate func infoDirection(to num: UInt8) -> UInt8 {
    let value = Int(num) - 162
    if value < 0 {
        return UInt8(value + 256)
    } else {
        return UInt8(value)
    }
}

/*: "Any-Hex/Java" :*/
fileprivate let kStr_contentData:String = "Any-Hex/lab let"
fileprivate let kStr_viewDataValue:[Character] = ["J","a","v","a"]

/*: "DoThen" :*/
fileprivate let kStr_statusTargetValue:[Character] = ["T","a","l","k","i","n","g","G"]
fileprivate let kStr_labelValue:String = "reetTself array equal"
fileprivate let kStr_resultValue:[Character] = ["e","x","t","C","e","l","l"]

/*: "#FF506D" :*/
fileprivate let kStr_takeData:String = "fill"
fileprivate let kStr_noFitText:[Character] = ["F","F","5","0","6","D"]

/*: "btn_message_delete_nor" :*/
fileprivate let kStr_nameValue:[Character] = ["b","t","n","_","m","e","s","s","a","g","e","_","d","e","l","e","t","e","_","n"]
fileprivate let kStr_labData:String = "oequal"

/*: "Click the button below to add\ncontent" :*/
fileprivate let kStr_videoValue:[UInt8] = [0x74,0x6e,0x65,0x74,0x6e,0x6f,0x63,0xa,0x64,0x64,0x61,0x20,0x6f,0x74,0x20,0x77,0x6f,0x6c,0x65,0x62,0x20,0x6e,0x6f,0x74,0x74,0x75,0x62,0x20,0x65,0x68,0x74,0x20,0x6b,0x63,0x69,0x6c,0x43]

/*: "When adding multiple text message, the syst em will send them by turns;slide to the message to delete" :*/
fileprivate let kStr_afterValue:[UInt8] = [0xb2,0xc3,0xc0,0xc9,0x7b,0xbc,0xbf,0xbf,0xc4,0xc9,0xc2,0x7b,0xc8,0xd0,0xc7,0xcf,0xc4,0xcb,0xc7,0xc0,0x7b,0xcf,0xc0,0xd3,0xcf,0x7b,0xc8,0xc0,0xce,0xce,0xbc,0xc2,0xc0,0x87,0x7b,0xcf,0xc3,0xc0,0x7b,0xce,0xd4,0xce,0xcf,0x7b,0xc0,0xc8,0x7b,0xd2,0xc4,0xc7,0xc7,0x7b,0xce,0xc0,0xc9,0xbf,0x7b,0xcf,0xc3,0xc0,0xc8,0x7b,0xbd,0xd4,0x7b,0xcf,0xd0,0xcd,0xc9,0xce,0x96,0xce,0xc7,0xc4,0xbf,0xc0,0x7b,0xcf,0xca,0x7b,0xcf,0xc3,0xc0,0x7b,0xc8,0xc0,0xce,0xce,0xbc,0xc2,0xc0,0x7b,0xcf,0xca,0x7b,0xbf,0xc0,0xc7,0xc0,0xcf,0xc0]

fileprivate func colorAgendaTo(view num: UInt8) -> UInt8 {
    let value = Int(num) - 91
    if value < 0 {
        return UInt8(value + 256)
    } else {
        return UInt8(value)
    }
}

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  ToViewController.swift
//  AbroadTalking
//
//  Created by Charlotte on 2023/2/15.
//

//: import UIKit
import UIKit

//: class TalkingGreetTextVC: TalkingBaseViewController {
class ToViewController: LayerRecognizerDelegate {
    //: var addStatus = -1
    var addStatus = -1
    //: var recordView: TalkingGreetEditTextView?
    var recordView: EditNameView?

    //: init() {
    init() {
        //: super.init(nibName: nil, bundle: nil)
        super.init(nibName: nil, bundle: nil)
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: kStr_centerValue.map{rawPlayer(sub: $0)}, encoding: .utf8)!)
    }

    //: override func viewWillAppear(_ animated: Bool) {
    override func viewWillAppear(_ animated: Bool) {
        //: super.viewWillAppear(animated)
        super.viewWillAppear(animated)
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
        //: self.title = "Text greeting".localized
        self.title = (String(kStr_layerValue.prefix(6)) + "reeting").localized
        //: self.view.backgroundColor = UIColor.appBgColor()
        self.view.backgroundColor = UIColor.bottomValue()
        //: designView()
        designRemote()
        //: getAudioListData()
        rubric()
    }

    //: deinit {
    deinit {}

    // MARK: - Lazy load

    //: private lazy var dataSourceArr: [TalkingGreetModel] = {
    private lazy var dataSourceArr: [LayerMeasurable] = {
        //: var array = [TalkingGreetModel]()
        var array = [LayerMeasurable]()
        //: return array
        return array
        //: }()
    }()

    //: lazy var MainTable: UITableView = {
    lazy var MainTable: UITableView = {
        //: let table = UITableView(frame: CGRect(x: 0, y: 0, width: ScreenWidth, height: ScreenHeight-88), style: UITableView.Style.plain)
        let table = UITableView(frame: CGRect(x: 0, y: 0, width: kLet_halfData, height: kLet_noSeatName - 88), style: UITableView.Style.plain)
        //: table.backgroundColor = UIColor.clear
        table.backgroundColor = UIColor.clear
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

    //: lazy var addButton: UIButton = {
    lazy var addButton: UIButton = {
        //: let btn = UIButton.init()
        let btn = UIButton()
        //: btn.setTitle("Add".localized, for: .normal)
        btn.setTitle((String(kStr_formatEndTitle.prefix(3))).localized, for: .normal)
        //: btn.setTitleColor(.white, for: .normal)
        btn.setTitleColor(.white, for: .normal)
        //: btn.titleLabel?.font = UIFont.pingfangFont(type: .Medium, fontSize: 18)
        btn.titleLabel?.font = UIFont.groupSize(type: .Medium, fontSize: 18)
        //: btn.setBackgroundImage(UIImage.imageGradientColor(colors: UIColor.appGradientColor(), size: CGSize(width: 267, height: 50)), for: .normal)
        btn.setBackgroundImage(UIImage.upTo(colors: UIColor.thirdColor(), size: CGSize(width: 267, height: 50)), for: .normal)
        //: btn.layer.cornerRadius = 25
        btn.layer.cornerRadius = 25
        //: btn.clipsToBounds = true
        btn.clipsToBounds = true
        //: btn.addTarget(self, action: #selector(addButtonClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(block), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()
}

// MARK: - Request & 数据处理

//: extension TalkingGreetTextVC {
extension ToViewController {
    //: func getAudioListData() {
    func rubric() {
        //: var dict = Dictionary<String, Any>()
        var dict = [String: Any]()
        //: dict["type"] = 2
        dict[(kStr_playerMakeData.replacingOccurrences(of: "model", with: "y"))] = 2
        //: ProgressHUD.show()
        TintProgressHUD.weight()
        //: TalkingMeRequestTool.req_GetGreetList(params: dict) {[weak self] succeed, result, errorModel in
        LoadEqualRequestTool.recoverFromCompletion(params: dict) { [weak self] succeed, result, _ in
            //: ProgressHUD.dismiss()
            TintProgressHUD.inkingPadDismiss()
            //: guard let self = self else {return}
            guard let self = self else { return }
            //: if (self.MainTable.backgroundView == nil) {
            if self.MainTable.backgroundView == nil {
                //: self.setupEmptyDataView()
                self.enableView()
            }
            //: if succeed {
            if succeed {
                //: guard let dict = result as? Dictionary<String, Any> else {
                guard let dict = result as? [String: Any] else {
                    //: return
                    return
                }
                //: self.addStatus = dict["addStatus"] as! Int
                self.addStatus = dict[(String(kStr_themeAddValue.suffix(9)))] as! Int
                //: let array: Array =  dict["list"] as! Array<Any>
                let array: Array = dict[(String(kStr_trackValue))] as! [Any]
                //: var dataArr: [TalkingGreetModel] = []
                var dataArr: [LayerMeasurable] = []
                //: for i in 0..<array.count {
                for i in 0 ..< array.count {
                    //: if let model = JSONDeserializer<TalkingGreetModel>.deserializeFrom(dict: array[i] as? Dictionary<String, Any>, designatedPath: nil) {
                    if let model = JSONDeserializer<LayerMeasurable>.deserializeFrom(dict: array[i] as? [String: Any], designatedPath: nil) {
                        //: dataArr.append(model)
                        dataArr.append(model)
                    }
                }
                //: self.dataSourceArr = dataArr
                self.dataSourceArr = dataArr
                //: self.MainTable.reloadData()
                self.MainTable.reloadData()
            }
        }
    }

    //: func shoWdeleteAlert(index: Int) {
    func push(index: Int) {
        //: let config = ShowAlertConfig()
        let config = StreetwiseAlertConfig()
        //: config.textFont = UIFont.pingfangFont(type: .Medium, fontSize: 18)
        config.textFont = UIFont.groupSize(type: .Medium, fontSize: 18)
        //: config.textlineBreakMode = .byCharWrapping
        config.textlineBreakMode = .byCharWrapping

        //: TalkingAlertShow.customAlert(message: "Are you sure to delete this message？".localized, leftBtnTitle: "Cancel".localized, rightBtnTitle: "Delete".localized, leftBlock: {
        ClickReactiveCompatible.anyAppearConfig(message: String(bytes: kStr_equalData.map{modeWant(group: $0)}, encoding: .utf8)!.localized, leftBtnTitle: (String(kStr_lineRequestPathTitle)).localized, rightBtnTitle: (String(kStr_mainContent) + kStr_errorData.lowercased()).localized, leftBlock: {
            //: TalkingAlertShow.hideAlert()
            ClickReactiveCompatible.closeHideRelease()
            //: }, rightBlock: { [weak self] in
        }, rightBlock: { [weak self] in

            //: guard let self = self else {return}
            guard let self = self else { return }
            //: TalkingAlertShow.hideAlert()
            ClickReactiveCompatible.closeHideRelease()
            //: let model: TalkingGreetModel = self.dataSourceArr[index]
            let model: LayerMeasurable = self.dataSourceArr[index]
            //: var dict = Dictionary<String, Any>()
            var dict = [String: Any]()
            //: dict["id"] = model.greetId
            dict["id"] = model.greetId
            //: ProgressHUD.show()
            TintProgressHUD.weight()
            //: TalkingMeRequestTool.req_DeleteAudio(params: dict) { succeed, result, errorModel in
            LoadEqualRequestTool.productCompletion(params: dict) { succeed, _, _ in
                //: ProgressHUD.dismiss()
                TintProgressHUD.inkingPadDismiss()
                //: guard succeed == true else {
                guard succeed == true else {
                    //: return
                    return
                }
                //: self.getAudioListData()
                self.rubric()
            }
            //: }, config: config)
        }, config: config)
    }
}

// MARK: - Event

//: extension TalkingGreetTextVC {
extension ToViewController {
    //: @objc func addButtonClick() {
    @objc func block() {
        //: if (self.addStatus == 4) {
        if self.addStatus == 4 {
            //: self.func__showStatusBarErrorMsg(showMsg: "The upper limit has been reached".localized)
            self.detailDownArray(showMsg: String(bytes: kStr_finishValue.map{$0^208}, encoding: .utf8)!.localized)
            //: return
            return
        }
        //: self.recordView = TalkingGreetEditTextView.init(frame: self.view.frame)
        self.recordView = EditNameView(frame: self.view.frame)
        //: self.recordView?.show()
        self.recordView?.fromBy()
        //: self.recordView?.textUpload = {[weak self] str in
        self.recordView?.textUpload = { [weak self] str in
            //: guard let self = self else { return }
            guard let self = self else { return }
            //: let tempStr = self.unicodeString(str)
            let tempStr = self.angstromTo(str)
            //: var dict = Dictionary<String, Any>()
            var dict = [String: Any]()
            //: dict["type"] = 2
            dict[(kStr_playerMakeData.replacingOccurrences(of: "model", with: "y"))] = 2
            //: dict["text"] = tempStr
            dict[(kStr_addValue.replacingOccurrences(of: "manager", with: "xt"))] = tempStr
            //: ProgressHUD.show()
            TintProgressHUD.weight()
            //: TalkingMeRequestTool.req_UploadGreetAdd(params: dict) { succeed, result, errorModel in
            LoadEqualRequestTool.tinkle(params: dict) { succeed, _, _ in
                //: ProgressHUD.dismiss()
                TintProgressHUD.inkingPadDismiss()
                //: guard succeed == true else {
                guard succeed == true else {
                    //: return
                    return
                }
                //: self.func__showStatusBarSuccessMsg(showMsg: "Successfully added, please wait for approval".localized)
                self.property(showMsg: String(bytes: kStr_fillData.map{infoDirection(to: $0)}, encoding: .utf8)!.localized)
                //: self.getAudioListData()
                self.rubric()
                //: self.recordView?.dismiss()
                self.recordView?.voxBind()
            }
        }
    }

    //: func unicodeString(_ str: String) -> String {
    func angstromTo(_ str: String) -> String {
        //: let mutableStr = NSMutableString(string: str) as CFMutableString
        let mutableStr = NSMutableString(string: str) as CFMutableString
        //: CFStringTransform(mutableStr, nil, "Any-Hex/Java" as CFString, true)
        CFStringTransform(mutableStr, nil, (String(kStr_contentData.prefix(8)) + String(kStr_viewDataValue)) as CFString, true)
        //: return mutableStr as String
        return mutableStr as String
    }
}

// MARK: - UITableViewDelegate, UITableViewDataSource

//: extension TalkingGreetTextVC: UITableViewDelegate, UITableViewDataSource {
extension ToViewController: UITableViewDelegate, UITableViewDataSource {
    //: func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    func tableView(_: UITableView, numberOfRowsInSection _: Int) -> Int {
        //: return 1
        return 1
    }

    //: func numberOfSections(in tableView: UITableView) -> Int {
    func numberOfSections(in _: UITableView) -> Int {
        //: MainTable.backgroundView?.isHidden = dataSourceArr.count > 0
        MainTable.backgroundView?.isHidden = dataSourceArr.count > 0
        //: MainTable.bounces = dataSourceArr.count > 0
        MainTable.bounces = dataSourceArr.count > 0
        //: return dataSourceArr.count
        return dataSourceArr.count
    }

    //: func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
    func tableView(_: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        //: let model = self.dataSourceArr[indexPath.section]
        let model = self.dataSourceArr[indexPath.section]
        //: var height: CGFloat = 18+22
        var height: CGFloat = 18 + 22
        //: let rect = model.content.boundingRect(with: CGSize(width: ScreenWidth-60, height: 0), options: [NSStringDrawingOptions.usesLineFragmentOrigin, NSStringDrawingOptions.usesFontLeading, NSStringDrawingOptions.usesDeviceMetrics], attributes: [NSAttributedString.Key.font: UIFont.pingfangFont(type: .Medium, fontSize: 16)], context: nil)
        let rect = model.content.boundingRect(with: CGSize(width: kLet_halfData - 60, height: 0), options: [NSStringDrawingOptions.usesLineFragmentOrigin, NSStringDrawingOptions.usesFontLeading, NSStringDrawingOptions.usesDeviceMetrics], attributes: [NSAttributedString.Key.font: UIFont.groupSize(type: .Medium, fontSize: 16)], context: nil)
        //: height += rect.height
        height += rect.height
        //: if model.status == 0 {
        if model.status == 0 {
            //: height += 16+12
            height += 16 + 12
        }
        //: return height
        return height
    }

    //: func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //: let identifier = "TalkingGreetTextCell"
        let identifier = (String(kStr_statusTargetValue) + String(kStr_labelValue.prefix(5)) + String(kStr_resultValue))
        //: let cell: TalkingGreetTextCell = tableView.dequeueReusableCell(withIdentifier: identifier, for: indexPath) as! TalkingGreetTextCell
        let cell: DoThen = tableView.dequeueReusableCell(withIdentifier: identifier, for: indexPath) as! DoThen

        //: cell.setGreetTextCell(model: self.dataSourceArr[indexPath.section], row: indexPath.section, isLast: indexPath.section == self.dataSourceArr.count-1)
        cell.installment(model: self.dataSourceArr[indexPath.section], row: indexPath.section, isLast: indexPath.section == self.dataSourceArr.count - 1)
        //: return cell
        return cell
    }

    // ios11以前
    //: func tableView(_ tableView: UITableView, editActionsForRowAt indexPath: IndexPath) -> [UITableViewRowAction]? {
    func tableView(_: UITableView, editActionsForRowAt indexPath: IndexPath) -> [UITableViewRowAction]? {
        //: let deleteBtn = UITableViewRowAction(style: .normal, title: "Delete".localized) { action, indexP in
        let deleteBtn = UITableViewRowAction(style: .normal, title: (String(kStr_mainContent) + kStr_errorData.lowercased()).localized) { _, _ in

            //: self.shoWdeleteAlert(index: indexPath.section)
            self.push(index: indexPath.section)
        }
        //: deleteBtn.backgroundColor = UIColor(hex: "#FF506D")
        deleteBtn.backgroundColor = UIColor(hex: (kStr_takeData.replacingOccurrences(of: "fill", with: "#") + String(kStr_noFitText)))

        //: return [deleteBtn]
        return [deleteBtn]
    }

    //: @available(iOS 11.0, *)
    @available(iOS 11.0, *)
    //: func tableView(_ tableView: UITableView, trailingSwipeActionsConfigurationForRowAt indexPath: IndexPath) -> UISwipeActionsConfiguration? {
    func tableView(_: UITableView, trailingSwipeActionsConfigurationForRowAt indexPath: IndexPath) -> UISwipeActionsConfiguration? {
        //: let deleteBtn = UIContextualAction(style: .normal, title: nil) { action, view, completionHandler in
        let deleteBtn = UIContextualAction(style: .normal, title: nil) { _, _, completionHandler in

            //: self.shoWdeleteAlert(index: indexPath.section)
            self.push(index: indexPath.section)
            //: completionHandler(false)
            completionHandler(false)
        }

        //: if let deleteBtnTrashcan =  UIImage.bundleBy(name: "btn_message_delete_nor").cgImage {
        if let deleteBtnTrashcan = UIImage.bundleBy(name: (String(kStr_nameValue) + kStr_labData.replacingOccurrences(of: "equal", with: "r"))).cgImage {
            //: deleteBtn.image = ImageWithoutRender(cgImage: deleteBtnTrashcan, scale: UIScreen.main.nativeScale, orientation: .up)
            deleteBtn.image = SharedWithoutThen(cgImage: deleteBtnTrashcan, scale: UIScreen.main.nativeScale, orientation: .up)
        }
        //: deleteBtn.backgroundColor = .white
        deleteBtn.backgroundColor = .white
        //: let actions = [deleteBtn]
        let actions = [deleteBtn]
        //: let config = UISwipeActionsConfiguration(actions: actions)
        let config = UISwipeActionsConfiguration(actions: actions)
        //: config.performsFirstActionWithFullSwipe = false
        config.performsFirstActionWithFullSwipe = false
        //: return config
        return config
    }

    //: func tableView(_ tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
    func tableView(_: UITableView, heightForFooterInSection _: Int) -> CGFloat {
        //: return 0.01
        return 0.01
    }
}

// MARK: - Layout

//: extension TalkingGreetTextVC {
extension ToViewController {
    //: private func setupEmptyDataView() {
    private func enableView() {
        //: var style = EmptyStyle()
        var style = FromEmptyStyle()
        //: style.TipsTitle = "Click the button below to add\ncontent".localized
        style.TipsTitle = String(bytes: kStr_videoValue.reversed(), encoding: .utf8)!.localized
        //: emptyView = EmptyView.init(frame: self.view.frame, style: style)
        emptyView = EmptyView(frame: self.view.frame, style: style)
        //: emptyView.isHidden = true
        emptyView.isHidden = true
        //: emptyView.isScrollEnabled = false
        emptyView.isScrollEnabled = false
        //: emptyView.backgroundColor = .appBgColor()
        emptyView.backgroundColor = .bottomValue()
        //: MainTable.backgroundView = emptyView
        MainTable.backgroundView = emptyView

        //: emptyView.emptyBlock = { [weak self] in
        emptyView.emptyBlock = { [weak self] in
            //: guard let self = self else { return }
            guard let self = self else { return }
            //: self.MainTable.mj_header?.beginRefreshing()
            self.MainTable.mj_header?.beginRefreshing()
        }
    }

    //: private func designView() {
    private func designRemote() {
        //: self.view.addSubview(addButton)
        self.view.addSubview(addButton)
        //: addButton.snp.makeConstraints { make in
        addButton.snp.makeConstraints { make in
            //: make.bottom.equalToSuperview().offset(-34)
            make.bottom.equalToSuperview().offset(-34)
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.size.equalTo(CGSize(width: 267, height: 50))
            make.size.equalTo(CGSize(width: 267, height: 50))
        }

        //: self.view.addSubview(MainTable)
        self.view.addSubview(MainTable)
        //: MainTable.register(TalkingGreetTextCell.self, forCellReuseIdentifier: "TalkingGreetTextCell")
        MainTable.register(DoThen.self, forCellReuseIdentifier: (String(kStr_statusTargetValue) + String(kStr_labelValue.prefix(5)) + String(kStr_resultValue)))
        //: MainTable.separatorStyle = .none
        MainTable.separatorStyle = .none
        //: MainTable.dataSource = self
        MainTable.dataSource = self
        //: MainTable.delegate = self
        MainTable.delegate = self
        //: MainTable.snp.makeConstraints { make in
        MainTable.snp.makeConstraints { make in
            //: make.edges.equalTo(self.view)
            make.edges.equalTo(self.view)
            //: make.bottom.equalTo(addButton.snp.top).offset(-16)
            make.bottom.equalTo(addButton.snp.top).offset(-16)
        }
        //: MainTable.tableFooterView = UIView.init()
        MainTable.tableFooterView = UIView()

        //: let headerView = UIView.init(frame: CGRect.init(x: 0, y: 0, width: ScreenWidth, height: 100))
        let headerView = UIView(frame: CGRect(x: 0, y: 0, width: kLet_halfData, height: 100))
        //: let label = UILabel.init()
        let label = UILabel()
        //: label.textColor = UIColor.statusMin()
        label.textColor = UIColor.statusMin()
        //: label.font = UIFont.messageDown(fontSize: 15)
        label.font = UIFont.messageDown(fontSize: 15)
        //: label.numberOfLines = 0
        label.numberOfLines = 0
        //: let string = "When adding multiple text message, the syst em will send them by turns;slide to the message to delete".localized
        let string = String(bytes: kStr_afterValue.map{colorAgendaTo(view: $0)}, encoding: .utf8)!.localized
        //: let attri = NSMutableAttributedString.init(string: string)
        let attri = NSMutableAttributedString(string: string)
        //: let style = NSMutableParagraphStyle.init()
        let style = NSMutableParagraphStyle()
        //: style.lineSpacing = 2
        style.lineSpacing = 2
        //: attri.yy_paragraphStyle = style
        attri.yy_paragraphStyle = style
        //: label.attributedText = attri
        label.attributedText = attri
        //: headerView.addSubview(label)
        headerView.addSubview(label)
        //: label.snp.makeConstraints { make in
        label.snp.makeConstraints { make in
            //: make.leading.equalTo(30)
            make.leading.equalTo(30)
            //: make.trailing.equalTo(-30)
            make.trailing.equalTo(-30)
            //: make.bottom.equalTo(-16)
            make.bottom.equalTo(-16)
            //: make.top.equalTo(12)
            make.top.equalTo(12)
        }
        //: MainTable.tableHeaderView = headerView
        MainTable.tableHeaderView = headerView
    }
}
