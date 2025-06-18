
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let kStr_byValue:[UInt8] = [0xf2,0xf7,0xf2,0xfd,0xb1,0xec,0xf8,0xed,0xee,0xfb,0xc3,0xb2,0xa9,0xf1,0xea,0xfc,0xa9,0xf7,0xf8,0xfd,0xa9,0xeb,0xee,0xee,0xf7,0xa9,0xf2,0xf6,0xf9,0xf5,0xee,0xf6,0xee,0xf7,0xfd,0xee,0xed]

fileprivate func pathBottom(index num: UInt8) -> UInt8 {
    let value = Int(num) - 137
    if value < 0 {
        return UInt8(value + 256)
    } else {
        return UInt8(value)
    }
}

/*: "Photo greeting" :*/
fileprivate let kStr_thirdValue:String = "Photo grself end data"
fileprivate let kStr_equalData:[Character] = ["e","e","t","i","n","g"]

/*: "PointPhotoCell" :*/
fileprivate let kStr_enableFaceName:String = "Talkinnormal count"
fileprivate let kStr_userData:String = "hotoCeview let count"
fileprivate let kStr_colorText:String = "rowrow"

/*: "PhotoDataThen" :*/
fileprivate let kStr_tabValue:[Character] = ["T","a","l","k","i","n","g","G","r","e","e","t","P","h","o","t","o","T"]
fileprivate let kStr_showName:String = "ableCellfor corner"

/*: "icon_me_greetSetPhoto_select_nor" :*/
fileprivate let kStr_globalName:[UInt8] = [0x58,0x52,0x5e,0x5f,0x6e,0x5c,0x54,0x6e,0x56,0x43,0x54,0x54,0x45,0x62,0x54,0x45,0x61,0x59,0x5e,0x45,0x5e,0x6e,0x42,0x54,0x5d,0x54,0x52,0x45,0x6e,0x5f,0x5e,0x43]

private func upPrice(view num: UInt8) -> UInt8 {
    return num ^ 49
}

/*: "icon_me_greetSetPhoto_select_pre" :*/
fileprivate let kStr_fileValue:[UInt8] = [0x37,0x3d,0x31,0x30,0x1,0x33,0x3b,0x1,0x39,0x2c,0x3b,0x3b,0x2a,0xd,0x3b,0x2a,0xe,0x36,0x31,0x2a,0x31,0x1,0x2d,0x3b,0x32,0x3b,0x3d,0x2a,0x1,0x2e,0x2c,0x3b]

private func cellLocation(save num: UInt8) -> UInt8 {
    return num ^ 94
}

/*: "  Burn after reading" :*/
fileprivate let kStr_sendViewData:String = "  Burequal wrap"
fileprivate let kStr_equalDomainContent:String = "custom request true pather rea"

/*: "Finish" :*/
fileprivate let kStr_textContent:[Character] = ["F","i","n","i","s","h"]

/*: "type" :*/
fileprivate let kStr_shData:String = "imagepe"

/*: "isBurn" :*/
fileprivate let kStr_makeTitle:String = "isBurnshow self for float to"

/*: "list" :*/
fileprivate let kStr_selectedData:[Character] = ["l","i","s","t"]

/*: "unlockGift" :*/
fileprivate let kStr_data:[Character] = ["u","n","l","o","c","k","G","i","f","t"]

/*: "giftId" :*/
fileprivate let kStr_loadTextData:String = "giftIfill path"
fileprivate let kStr_actionName:[Character] = ["d"]

/*: "id" :*/
fileprivate let kStr_numberValue:String = "currentd"

/*: "content" :*/
fileprivate let kStr_coverTitle:[Character] = ["c"]
fileprivate let kStr_containerName:[Character] = ["o","n","t","e","n","t"]

/*: "status" :*/
fileprivate let kStr_mainMediaData:[Character] = ["s","t","a","t","u"]
fileprivate let kStr_layerTitle:String = "status"

/*: "photo" :*/
fileprivate let kStr_plusPathData:String = "phviewo"

/*: "Delete Successfully" :*/
fileprivate let kStr_centerValue:String = "the instance hidden true trueDele"
fileprivate let kStr_imageValue:String = "cceequalequal"
fileprivate let kStr_createValue:String = "fueventy"

/*: "unlockGiftId" :*/
fileprivate let kStr_exampleName:String = "unltok"
fileprivate let kStr_dismissName:String = "data"

/*: "Upload a beautiful photo of the greeting" :*/
fileprivate let kStr_labelData:[UInt8] = [0x7d,0x58,0x44,0x47,0x49,0x4c,0x8,0x49,0x8,0x4a,0x4d,0x49,0x5d,0x5c,0x41,0x4e,0x5d,0x44,0x8,0x58,0x40,0x47,0x5c,0x47,0x8,0x47,0x4e,0x8,0x5c,0x40,0x4d,0x8,0x4f,0x5a,0x4d,0x4d,0x5c,0x41,0x46,0x4f]

private func buttonTitleAttention(app num: UInt8) -> UInt8 {
    return num ^ 40
}

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  TitleMiniDataSource.swift
//  AbroadTalking
//
//  Created by Charlotte on 2023/10/27.
//

//: import UIKit
import UIKit

//: class TalkingGreetPhotoVC: TalkingBaseViewController {
class TitleMiniDataSource: LayerRecognizerDelegate {
    //: var PhotoArray: [TalkingUserInfoGalleryModel] = []
    var PhotoArray: [CountModelType] = []
    //: var giftDic = Dictionary<String, Any>()
    var giftDic = [String: Any]()
    //: var seleteGiftId = ""  /// 选中的礼物ID
    var seleteGiftId = "" /// 选中的礼物ID
    //: var isBurn = 0
    var isBurn = 0 // 是否阅后即焚：1=是，0=否

    //: init() {
    init() {
        //: super.init(nibName: nil, bundle: nil)
        super.init(nibName: nil, bundle: nil)
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: kStr_byValue.map{pathBottom(index: $0)}, encoding: .utf8)!)
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
        //: self.title = "Photo greeting".localized
        self.title = (String(kStr_thirdValue.prefix(8)) + String(kStr_equalData)).localized
        //: self.view.backgroundColor = UIColor.appBgColor()
        self.view.backgroundColor = UIColor.bottomValue()
        //: setupSubviews()
        clickAfter()
        //: setupSubViewsConstraint()
        changeAppConstraint()
        //: bindInteraction()
        contactCounteraction()
    }

    //: deinit {
    deinit {}

    // MARK: - Lazy load

    //: lazy var MainTable: UITableView = {
    lazy var MainTable: UITableView = {
        //: let table = UITableView(frame: CGRect(x: 0, y: 0, width: ScreenWidth, height: ScreenHeight), style: UITableView.Style.plain)
        let table = UITableView(frame: CGRect(x: 0, y: 0, width: kLet_halfData, height: kLet_noSeatName), style: UITableView.Style.plain)
        //: table.backgroundColor = UIColor.clear
        table.backgroundColor = UIColor.clear
        //: table.register(TalkingEditPhotoCell.self, forCellReuseIdentifier: "TalkingEditPhotoCell")
        table.register(PointPhotoCell.self, forCellReuseIdentifier: (String(kStr_enableFaceName.prefix(6)) + "gEditP" + String(kStr_userData.prefix(6)) + kStr_colorText.replacingOccurrences(of: "row", with: "l")))
        //: table.register(TalkingGreetPhotoTableCell.self, forCellReuseIdentifier: "TalkingGreetPhotoTableCell")
        table.register(PhotoDataThen.self, forCellReuseIdentifier: (String(kStr_tabValue) + String(kStr_showName.prefix(8))))
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

    //: lazy var seleteBtn: UIButton = {
    lazy var seleteBtn: UIButton = {
        //: let btn = UIButton.init()
        let btn = UIButton()
        //: btn.setImage(UIImage.bundleBy(name: "icon_me_greetSetPhoto_select_nor"), for: .normal)
        btn.setImage(UIImage.bundleBy(name: String(bytes: kStr_globalName.map{upPrice(view: $0)}, encoding: .utf8)!), for: .normal)
        //: btn.setImage(UIImage.bundleBy(name: "icon_me_greetSetPhoto_select_pre"), for: .selected)
        btn.setImage(UIImage.bundleBy(name: String(bytes: kStr_fileValue.map{cellLocation(save: $0)}, encoding: .utf8)!), for: .selected)
        //: btn.setTitle("  Burn after reading".localized, for: .normal)
        btn.setTitle((String(kStr_sendViewData.prefix(5)) + "n aft" + String(kStr_equalDomainContent.suffix(6)) + "ding").localized, for: .normal)
        //: btn.setTitleColor(UIColor.appTitleColor(), for: .normal)
        btn.setTitleColor(UIColor.dataFormat(), for: .normal)
        //: btn.titleLabel?.font = UIFont.pingfangFont(type: .Medium, fontSize: 16)
        btn.titleLabel?.font = UIFont.groupSize(type: .Medium, fontSize: 16)
        //: btn.addTarget(self, action: #selector(seleteBtnClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(selete), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()

    //: lazy var finishBtn: UIButton = {
    lazy var finishBtn: UIButton = {
        //: let btn = UIButton.init()
        let btn = UIButton()
        //: btn.setTitle("Finish".localized, for: .normal)
        btn.setTitle((String(kStr_textContent)).localized, for: .normal)
        //: btn.setTitleColor(.white, for: .normal)
        btn.setTitleColor(.white, for: .normal)
        //: btn.titleLabel?.font = UIFont.pingfangFont(type: .Medium, fontSize: 17)
        btn.titleLabel?.font = UIFont.groupSize(type: .Medium, fontSize: 17)
        //: btn.setBackgroundImage(UIImage.imageGradientColor(colors: UIColor.appGradientColor(), size: CGSize(width: ScreenWidth-60, height: 50)), for: .normal)
        btn.setBackgroundImage(UIImage.upTo(colors: UIColor.thirdColor(), size: CGSize(width: kLet_halfData - 60, height: 50)), for: .normal)
        //: btn.layer.cornerRadius = 25
        btn.layer.cornerRadius = 25
        //: btn.clipsToBounds = true
        btn.clipsToBounds = true
        //: btn.isEnabled = false
        btn.isEnabled = false
        //: btn.addTarget(self, action: #selector(finishBtnClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(playClick), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()
}

// MARK: - Request & 数据处理

//: extension TalkingGreetPhotoVC {
extension TitleMiniDataSource {
    //: func getPhotoList(isFreshAll: Bool) {
    func fresh(isFreshAll: Bool) {
        //: var dict = Dictionary<String, Any>()
        var dict = [String: Any]()
        //: dict["type"] = 4
        dict[(kStr_shData.replacingOccurrences(of: "image", with: "ty"))] = 4
        //: ProgressHUD.show()
        TintProgressHUD.weight()
        //: TalkingMeRequestTool.req_GetGreetList(params: dict) {[weak self] succeed, result, errorModel in
        LoadEqualRequestTool.recoverFromCompletion(params: dict) { [weak self] succeed, result, _ in
            //: ProgressHUD.dismiss()
            TintProgressHUD.inkingPadDismiss()
            //: guard let self = self else {return}
            guard let self = self else { return }
            //: if succeed {
            if succeed {
                //: guard let dict = result as? Dictionary<String, Any> else {
                guard let dict = result as? [String: Any] else {
                    //: return
                    return
                }
                //: self.PhotoArray.removeAll()
                self.PhotoArray.removeAll()
                //: self.isBurn = dict["isBurn"] as? Int ?? 0
                self.isBurn = dict[(String(kStr_makeTitle.prefix(6)))] as? Int ?? 0
                //: self.seleteBtn.isSelected = self.isBurn > 0
                self.seleteBtn.isSelected = self.isBurn > 0
                //: let array: Array =  dict["list"] as? Array<Any> ?? Array.init()
                let array: Array = dict[(String(kStr_selectedData))] as? [Any] ?? Array()
                //: self.giftDic = dict["unlockGift"] as? [String: Any] ?? Dictionary.init()
                //: if let giftId = self.giftDic["giftId"] {
//                if let giftId = self.giftDic[(String(kStr_loadTextData.prefix(5)) + String(kStr_actionName))] {
//                    //: self.seleteGiftId = giftId as? String ?? ""
//                    self.seleteGiftId = giftId as? String ?? ""
//                    self.giftDic = dict[(String(kStr_data))] as? [String: Any] ?? Dictionary()
//                }
                let tempGiftDic = dict[(String(kStr_data))] as? [String: Any] ?? Dictionary()
                if self.seleteGiftId.isEmpty {
                    self.seleteGiftId = tempGiftDic["giftId"] as? String ?? ""
                    self.giftDic = tempGiftDic
                }

                //: for i in 0..<array.count {
                for i in 0 ..< array.count {
                    //: let dic  = array[i] as? Dictionary<String, Any>
                    let dic = array[i] as? [String: Any]
                    //: var model = TalkingUserInfoGalleryModel.init()
                    var model = CountModelType()
                    //: model.uid = dic?["id"] as? String ?? ""
                    model.uid = dic?["id"] as? String ?? ""
                    //: model.url = dic?["content"] as? String ?? ""
                    model.url = dic?[(String(kStr_coverTitle) + String(kStr_containerName))] as? String ?? ""
                    //: model.status = dic?["status"] as? Int ?? 0
                    model.status = dic?[(String(kStr_mainMediaData) + kStr_layerTitle.replacingOccurrences(of: "status", with: "s"))] as? Int ?? 0
                    //: model.isLocal = false
                    model.isLocal = false
                    //: self.PhotoArray.append(model)
                    self.PhotoArray.append(model)
                }
                //: if isFreshAll {
                if isFreshAll {
                    //: self.MainTable.reloadData()
                    self.MainTable.reloadData()
                    //: }else {
                } else {
                    /// 防止刷新全部，把修改的礼物信息还原
                    //: self.MainTable.reloadSection(0, with: .none)
                    self.MainTable.reloadSection(0, with: .none)
                }
                //: self.examinefinishBtnStatus()
                self.layer()
            }
        }
    }
}

// MARK: - Event

//: extension TalkingGreetPhotoVC {
extension TitleMiniDataSource {
    //: @objc func finishBtnClick() {
    @objc func playClick() {
        //: self.saveInfo()
        self.salvage()
    }

    //: @objc func seleteBtnClick() {
    @objc func selete() {
        //: seleteBtn.isSelected = !seleteBtn.isSelected
        seleteBtn.isSelected = !seleteBtn.isSelected
        //: examinefinishBtnStatus()
        layer()
    }

    //: func examinefinishBtnStatus() {
    func layer() {
        //: if  self.PhotoArray.count > 0 && seleteGiftId.count > 0 {
        if self.PhotoArray.count > 0, seleteGiftId.count > 0 {
            //: self.finishBtn.isEnabled = true
            self.finishBtn.isEnabled = true
            //: }else {
        } else {
            //: self.finishBtn.isEnabled = false
            self.finishBtn.isEnabled = false
        }
    }
}

// MARK: - SeekReactiveCompatible

//: extension TalkingGreetPhotoVC: EditPhotoDelegate {
extension TitleMiniDataSource: SeekReactiveCompatible {
    /// 添加本地图片
    //: func addPhoto(_ icon: [UIImage]) {
    func send(_ icon: [UIImage]) {
        //: uploadPhoto(icon)
        startIcon(icon)
    }

    /// 删除本地相册选择的图片
    //: func deletePhoto(_ icon: UIImage) {
    func dayOfRemembrance(_: UIImage) {}

    /// 删除后台相册的图片
    //: func deletePhotoWithUid(_ iconUid: String) {
    func postName(_ iconUid: String) {
        //: var seleteIndex = -1
        var seleteIndex = -1
        //: for i in 0..<PhotoArray.count {
        for i in 0 ..< PhotoArray.count {
            //: if iconUid == PhotoArray[i].uid {
            if iconUid == PhotoArray[i].uid {
                //: seleteIndex =  i
                seleteIndex = i
            }
        }
        //: if seleteIndex>=0 && seleteIndex<PhotoArray.count {
        if seleteIndex >= 0 && seleteIndex < PhotoArray.count {
            //: deletePhoto(index: seleteIndex)
            indexYearPhoto(index: seleteIndex)
        }
    }

    /// 上传相册
    //: func uploadPhoto(_ icon: [UIImage]) {
    func startIcon(_ icon: [UIImage]) {
        //: ProgressHUD.show()
        TintProgressHUD.weight()
        //: DispatchQueue.global().async {
        DispatchQueue.global().async {
            //: let sema = DispatchSemaphore(value: 0)
            let sema = DispatchSemaphore(value: 0)

            //: for i in 0..<icon.count {
            for i in 0 ..< icon.count {
                //: let resultData: NSData = icon[i].compressedImageData()! as NSData
                let resultData: NSData = icon[i].goaBean()! as NSData
                //: var dict = Dictionary<String, Any>()
                var dict = [String: Any]()
                //: dict["type"] = 4
                dict[(kStr_shData.replacingOccurrences(of: "image", with: "ty"))] = 4
                //: dict["photo"] = resultData
                dict[(kStr_plusPathData.replacingOccurrences(of: "view", with: "ot"))] = resultData

                //: TalkingMeRequestTool.req_UploadGreetAdd(params: dict) { succeed, result, errorModel in
                LoadEqualRequestTool.tinkle(params: dict) { succeed, _, _ in

                    //: sema.signal()
                    sema.signal()
                    //: if succeed {
                    if succeed {
                        //: }else {
                    } else {
                        //: ProgressHUD.dismiss()
                        TintProgressHUD.inkingPadDismiss()
                    }
                }
                //: sema.wait()
                sema.wait()
            }
            //: DispatchQueue.main.asyncAfter(deadline: .now()+1.0) {
            DispatchQueue.main.asyncAfter(deadline: .now() + 1.0) {
                //: self.getPhotoList(isFreshAll: false)
                self.fresh(isFreshAll: false)
                //: self.examinefinishBtnStatus()
                self.layer()
            }
        }
    }

    /// 删除相册
    //: func deletePhoto(index: Int) {
    func indexYearPhoto(index: Int) {
        //: let model: TalkingUserInfoGalleryModel = self.PhotoArray[index]
        let model: CountModelType = self.PhotoArray[index]
        //: var dict = Dictionary<String, Any>()
        var dict = [String: Any]()
        //: dict["id"] = model.uid
        dict["id"] = model.uid
        //: ProgressHUD.show()
        TintProgressHUD.weight()
        //: TalkingMeRequestTool.req_DeleteAudio(params: dict) { succeed, result, errorModel in
        LoadEqualRequestTool.productCompletion(params: dict) { succeed, _, _ in
            //: ProgressHUD.dismiss()
            TintProgressHUD.inkingPadDismiss()
            //: if succeed {
            if succeed {
                //: self.PhotoArray.remove(at: index)
                self.PhotoArray.remove(at: index)
                //: self.func__showStatusBarSuccessMsg(showMsg: "Delete Successfully".localized)
                self.property(showMsg: (String(kStr_centerValue.suffix(4)) + "te Su" + kStr_imageValue.replacingOccurrences(of: "equal", with: "s") + kStr_createValue.replacingOccurrences(of: "event", with: "ll")).localized)
                //: self.examinefinishBtnStatus()
                self.layer()
            }
            //: self.MainTable.reloadSection(0, with: .none)
            self.MainTable.reloadSection(0, with: .none)
        }
    }

    /// 修改信息
    //: func saveInfo() {
    func salvage() {
        //: var dict = Dictionary<String, Any>()
        var dict = [String: Any]()
        //: dict["unlockGiftId"] = seleteGiftId
        dict[(kStr_exampleName.replacingOccurrences(of: "to", with: "oc") + "GiftI" + kStr_dismissName.replacingOccurrences(of: "data", with: "d"))] = seleteGiftId
        //: dict["isBurn"] = seleteBtn.isSelected ? 1:0
        dict[(String(kStr_makeTitle.prefix(6)))] = seleteBtn.isSelected ? 1 : 0
        //: TalkingMeRequestTool.req_UploadGreetExtraSetting(params: dict) { succeed, result, errorModel in
        LoadEqualRequestTool.cellQuantityCompletion(params: dict) { succeed, _, _ in
            //: ProgressHUD.dismiss()
            TintProgressHUD.inkingPadDismiss()
            //: if succeed {
            if succeed {
                //: self.navigationController?.popViewController(animated: true)
                self.navigationController?.popViewController(animated: true)
            }
        }
    }
}

// MARK: - UITableViewDelegate, UITableViewDataSource

//: extension TalkingGreetPhotoVC: UITableViewDelegate, UITableViewDataSource {
extension TitleMiniDataSource: UITableViewDelegate, UITableViewDataSource {
    //: func numberOfSections(in tableView: UITableView) -> Int {
    func numberOfSections(in _: UITableView) -> Int {
        //: return 2
        return 2
    }

    //: func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    func tableView(_: UITableView, numberOfRowsInSection _: Int) -> Int {
        //: return 1
        return 1
    }

    //: func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
    func tableView(_: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        //: if indexPath.section == 0 {
        if indexPath.section == 0 {
            //: let sizewh = Int((ScreenWidth-30-12*2-9*2)/3)
            let sizewh = Int((kLet_halfData - 30 - 12 * 2 - 9 * 2) / 3)
            //: let Y = 46+sizewh*3+18
            let Y = 46 + sizewh * 3 + 18
            //: let cellheiht = Y+12
            let cellheiht = Y + 12
            //: return CGFloat(cellheiht)
            return CGFloat(cellheiht)
            //: }else {
        } else {
            //: return 140
            return 140
        }
    }

    //: func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
    func tableView(_: UITableView, heightForHeaderInSection _: Int) -> CGFloat {
        //: return 15
        return 15
    }

    //: func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //: if indexPath.section == 0 {
        if indexPath.section == 0 {
            //: let identifier = "TalkingEditPhotoCell"
            let identifier = (String(kStr_enableFaceName.prefix(6)) + "gEditP" + String(kStr_userData.prefix(6)) + kStr_colorText.replacingOccurrences(of: "row", with: "l"))
            //: var cell = tableView.dequeueReusableCell(withIdentifier: identifier) as? TalkingEditPhotoCell
            var cell = tableView.dequeueReusableCell(withIdentifier: identifier) as? PointPhotoCell
            //: if cell == nil {
            if cell == nil {
                //: cell = TalkingEditPhotoCell(style: .default, reuseIdentifier: identifier)
                cell = PointPhotoCell(style: .default, reuseIdentifier: identifier)
            }
            //: cell?.setTips(str: "Upload a beautiful photo of the greeting".localized)
            cell?.preface(str: String(bytes: kStr_labelData.map{buttonTitleAttention(app: $0)}, encoding: .utf8)!.localized)
            //: cell?.backBottomOffer = 0
            cell?.backBottomOffer = 0
            //: if PhotoArray.count>0 {
            if PhotoArray.count > 0 {
                //: cell?.setPhoto(selete: PhotoArray)
                cell?.remind(selete: PhotoArray)
                //: }else {
            } else {
                //: cell?.resetPhoto()
                cell?.app()
            }
            //: cell?.delegate = self
            cell?.delegate = self
            //: return cell!
            return cell!
            //: }else {
        } else {
            //: let identifier = "TalkingGreetPhotoTableCell"
            let identifier = (String(kStr_tabValue) + String(kStr_showName.prefix(8)))
            //: var cell = tableView.dequeueReusableCell(withIdentifier: identifier) as? TalkingGreetPhotoTableCell
            var cell = tableView.dequeueReusableCell(withIdentifier: identifier) as? PhotoDataThen
            //: if cell == nil {
            if cell == nil {
                //: cell = TalkingGreetPhotoTableCell(style: .default, reuseIdentifier: identifier)
                cell = PhotoDataThen(style: .default, reuseIdentifier: identifier)
            }
            //: if self.giftDic.keys.isEmpty == false {
            if self.giftDic.keys.isEmpty == false {
                //: cell?.setGiftMsgLab(dic: self.giftDic)
                cell?.putIn(dic: self.giftDic)
            }
            //: cell?.seleteGiftBlock = { [weak self] giftId in
            cell?.seleteGiftBlock = { [weak self] giftId in
                //: guard let self = self else {
                guard let self = self else {
                    //: return
                    return
                }
                //: self.seleteGiftId = giftId
                self.seleteGiftId = giftId
                //: self.examinefinishBtnStatus()
                self.layer()
            }
            //: return cell!
            return cell!
        }
    }

    //: func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
    func tableView(_: UITableView, viewForHeaderInSection _: Int) -> UIView? {
        //: return UIView.init()
        return UIView()
    }

    //: func tableView(_ tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
    func tableView(_: UITableView, heightForFooterInSection _: Int) -> CGFloat {
        //: return 0.01
        return 0.01
    }
}

// MARK: - Layout

//: extension TalkingGreetPhotoVC {
extension TitleMiniDataSource {
    /// 添加视图
    //: private func setupSubviews() {
    private func clickAfter() {
        //: self.view.addSubview(MainTable)
        self.view.addSubview(MainTable)
        //: self.view.addSubview(seleteBtn)
        self.view.addSubview(seleteBtn)
        //: self.view.addSubview(finishBtn)
        self.view.addSubview(finishBtn)
    }

    /// 添加约束
    //: private func setupSubViewsConstraint() {
    private func changeAppConstraint() {
        //: finishBtn.snp.makeConstraints { make in
        finishBtn.snp.makeConstraints { make in
            //: make.bottom.equalToSuperview().offset(-35)
            make.bottom.equalToSuperview().offset(-35)
            //: make.leading.equalTo(30)
            make.leading.equalTo(30)
            //: make.trailing.equalTo(-30)
            make.trailing.equalTo(-30)
            //: make.height.equalTo(50)
            make.height.equalTo(50)
        }
        //: MainTable.snp.makeConstraints { make in
        MainTable.snp.makeConstraints { make in
            //: make.edges.equalTo(self.view)
            make.edges.equalTo(self.view)
            //: make.bottom.equalTo(finishBtn.snp.top).offset(-68)
            make.bottom.equalTo(finishBtn.snp.top).offset(-68)
        }
        //: seleteBtn.snp.makeConstraints { make in
        seleteBtn.snp.makeConstraints { make in
            //: make.bottom.equalTo(MainTable.snp.bottom).offset(21)
            make.bottom.equalTo(MainTable.snp.bottom).offset(21)
            //: make.leading.equalTo(18)
            make.leading.equalTo(18)
        }
    }

    /// 事件绑定
    //: private func bindInteraction() {
    private func contactCounteraction() {
        //: getPhotoList(isFreshAll: true)
        fresh(isFreshAll: true)
    }
}
