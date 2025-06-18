
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let kStr_timeTitle:[UInt8] = [0xfe,0x3,0xfe,0x9,0xbd,0xf8,0x4,0xf9,0xfa,0x7,0xcf,0xbe,0xb5,0xfd,0xf6,0x8,0xb5,0x3,0x4,0x9,0xb5,0xf7,0xfa,0xfa,0x3,0xb5,0xfe,0x2,0x5,0x1,0xfa,0x2,0xfa,0x3,0x9,0xfa,0xf9]

fileprivate func labViewCurrent(mode num: UInt8) -> UInt8 {
    let value = Int(num) - 149
    if value < 0 {
        return UInt8(value + 256)
    } else {
        return UInt8(value)
    }
}

/*: "Price Settings" :*/
fileprivate let kStr_toText:[Character] = ["P","r","i","c","e"," ","S","e","t","t","i","n","g","s"]

/*: "5.00" :*/
fileprivate let kStr_videoValueData:String = "5.00"

/*: "30" :*/
fileprivate let kStr_statusViewValue:String = "3element"

/*: "20" :*/
fileprivate let kStr_propertyData:[Character] = ["2","0"]

/*: "Chat price settings" :*/
fileprivate let kStr_statusBackData:[Character] = ["C","h","a","t"," ","p","r","i","c","e"," ","s","e"]
fileprivate let kStr_effectData:[Character] = ["t","t","i","n","g","s"]

/*: "Video call price settings" :*/
fileprivate let kStr_withTitle:String = "model add constraintVideo"
fileprivate let kStr_insideName:String = "rice setmake raw"
fileprivate let kStr_backValue:String = "tshowngs"

/*: "Voice call price settings" :*/
fileprivate let kStr_gestureSectionTitle:String = "Voice app index view let"
fileprivate let kStr_itemContent:String = " pricecolor normal add data return"
fileprivate let kStr_addValue:[Character] = ["s"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  LayerItemViewDelegate.swift
//  AbroadTalking
//
//  Created by Charlotte on 2022/12/15.
//

//: import Then
import Then
//: import UIKit
import UIKit

//: class TalkingFemalePriceSetVC: TalkingBaseViewController {
class LayerItemViewDelegate: LayerRecognizerDelegate {
    // MARK: - 属性声明 & 生命周期方法

    //: lazy var messageArray: [ChatPriceModel] = []
    lazy var messageArray: [ToMeasurable] = []
    //: lazy var videoArray: [ChatPriceModel] = []
    lazy var videoArray: [ToMeasurable] = []
    //: lazy var voiceArray: [ChatPriceModel] = []
    lazy var voiceArray: [ToMeasurable] = []

    //: init() {
    init() {
        //: super.init(nibName: nil, bundle: nil)
        super.init(nibName: nil, bundle: nil)
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: kStr_timeTitle.map{labViewCurrent(mode: $0)}, encoding: .utf8)!)
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

        //: self.hideNavi = false
        self.hideNavi = false
        //: self.title = "Price Settings".localized
        self.title = (String(kStr_toText)).localized

        //: self.setupSubviews()
        self.bar()
        //: self.setupSubViewsConstraint()
        self.digitiser()
        //: self.bindInteraction()
        self.cohereInGiveAndTake()
        //: self.setupData()
        self.dismissOf()
    }

    //: deinit {
    deinit {}

    // MARK: - Lazy load

    //: lazy var mainTableView = UITableView.init(frame: .zero, style: .plain).then {
    lazy var mainTableView = UITableView(frame: .zero, style: .plain).then {
        //: $0.backgroundColor = UIColor.appBgColor()
        $0.backgroundColor = UIColor.bottomValue()
        //: $0.separatorStyle = .none
        $0.separatorStyle = .none
        //: $0.delegate = self
        $0.delegate = self
        //: $0.dataSource = self
        $0.dataSource = self
        //: $0.register(TalkingFemalePriceSetCell.self, forCellReuseIdentifier: TalkingFemalePriceSetCell.className())
        $0.register(SelectedView.self, forCellReuseIdentifier: SelectedView.className())
        //: view.addSubview($0)
        view.addSubview($0)
        //: $0.snp.makeConstraints { make in
        $0.snp.makeConstraints { make in
            //: make.edges.equalTo(self.view)
            make.edges.equalTo(self.view)
        }
    }
}

// MARK: data

//: extension TalkingFemalePriceSetVC {
extension LayerItemViewDelegate {
    //: private func setupData() {
    private func dismissOf() {
        //: for tempModel in LocationThen.share.appUserConfigMode.chatPriceSettings {
        for tempModel in LocationThen.share.appUserConfigMode.chatPriceSettings {
            //: if tempModel.price == Int(Double(LocationThen.share.loginUserMode.messagePrice ?? "5.00")!) {
            if tempModel.price == Int(Double(LocationThen.share.loginUserMode.messagePrice ?? (kStr_videoValueData.capitalized))!) {
                //: tempModel.isSelected = true
                tempModel.isSelected = true
            }
            //: messageArray.append(tempModel)
            messageArray.append(tempModel)
        }
        //: for tempModel in LocationThen.share.appUserConfigMode.videoPriceSettings {
        for tempModel in LocationThen.share.appUserConfigMode.videoPriceSettings {
            //: if tempModel.price == Int(Double(LocationThen.share.loginUserMode.videoPrice ?? "30")!) {
            if tempModel.price == Int(Double(LocationThen.share.loginUserMode.videoPrice ?? "30")!) {
                //: tempModel.isSelected = true
                tempModel.isSelected = true
            }
            //: videoArray.append(tempModel)
            videoArray.append(tempModel)
        }
        //: for tempModel in LocationThen.share.appUserConfigMode.voicePriceSettings {
        for tempModel in LocationThen.share.appUserConfigMode.voicePriceSettings {
            //: if tempModel.price == Int(Double(LocationThen.share.loginUserMode.voicePrice ?? "20")!) {
            if tempModel.price == Int(Double(LocationThen.share.loginUserMode.voicePrice ?? "20")!) {
                //: tempModel.isSelected = true
                tempModel.isSelected = true
            }
            //: voiceArray.append(tempModel)
            voiceArray.append(tempModel)
        }
        //: self.mainTableView.reloadData()
        self.mainTableView.reloadData()
    }
}

// MARK: - UITableViewDelegate, UITableViewDataSource

//: extension TalkingFemalePriceSetVC: UITableViewDelegate, UITableViewDataSource {
extension LayerItemViewDelegate: UITableViewDelegate, UITableViewDataSource {
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
        //: return 127
        return 127
    }

    //: func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
    func tableView(_: UITableView, heightForHeaderInSection _: Int) -> CGFloat {
        //: return 45
        return 45
    }

    //: func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //: let cell = tableView.dequeueReusableCell(withIdentifier: TalkingFemalePriceSetCell.className(), for: indexPath) as! TalkingFemalePriceSetCell
        let cell = tableView.dequeueReusableCell(withIdentifier: SelectedView.className(), for: indexPath) as! SelectedView
        //: var price = 0
        var price = 0
        //: var level = 0
        var level = 0
        //: switch indexPath.section {
        switch indexPath.section {
        //: case 0:
        case 0:
            //: for model in messageArray {
            for model in messageArray {
                //: if model.isSelected {
                if model.isSelected {
                    //: price = model.price
                    price = model.price
                    //: level = model.levelLimit
                    level = model.levelLimit
                }
            }
        //: break
        //: case 1:
        case 1:
            //: for model in videoArray {
            for model in videoArray {
                //: if model.isSelected {
                if model.isSelected {
                    //: price = model.price
                    price = model.price
                    //: level = model.levelLimit
                    level = model.levelLimit
                }
            }
        //: break
        //: case 2:
        case 2:
            //: for model in voiceArray {
            for model in voiceArray {
                //: if model.isSelected {
                if model.isSelected {
                    //: price = model.price
                    price = model.price
                    //: level = model.levelLimit
                    level = model.levelLimit
                }
            }
        //: break
        //: default:
        default:
            //: break
            break
        }
        //: cell.setCellData(index: indexPath.section, price: price, leve: level)
        cell.remainDownSub(index: indexPath.section, price: price, leve: level)
        //: return cell
        return cell
    }

    //: func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
    func tableView(_: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        //: let headerView = UIView.init(frame: CGRect(x: 0.0, y: 0.0, width: ScreenWidth, height: 45))
        let headerView = UIView(frame: CGRect(x: 0.0, y: 0.0, width: kLet_halfData, height: 45))
        //: headerView.backgroundColor = UIColor.appBgColor()
        headerView.backgroundColor = UIColor.bottomValue()

        //: let titleLab = UILabel.init(frame: CGRect(x: 15, y: 16, width: ScreenWidth-30, height: 20))
        let titleLab = UILabel(frame: CGRect(x: 15, y: 16, width: kLet_halfData - 30, height: 20))
        //: switch section {
        switch section {
        //: case 0:
        case 0:
            //: titleLab.text = "Chat price settings".localized
            titleLab.text = (String(kStr_statusBackData) + String(kStr_effectData)).localized
        //: break
        //: case 1:
        case 1:
            //: titleLab.text = "Video call price settings".localized
            titleLab.text = (String(kStr_withTitle.suffix(5)) + " call p" + String(kStr_insideName.prefix(8)) + kStr_backValue.replacingOccurrences(of: "show", with: "i")).localized
        //: break
        //: case 2:
        case 2:
            //: titleLab.text = "Voice call price settings".localized
            titleLab.text = (String(kStr_gestureSectionTitle.prefix(6)) + "call" + String(kStr_itemContent.prefix(6)) + " setting" + String(kStr_addValue)).localized
        //: break
        //: default:
        default:
            //: break
            break
        }

        //: titleLab.textColor = .statusMin()
        titleLab.textColor = .statusMin()
        //: titleLab.font = .pingfangFont(type: .Regular, fontSize: 16)
        titleLab.font = .groupSize(type: .Regular, fontSize: 16)
        //: headerView.addSubview(titleLab)
        headerView.addSubview(titleLab)
        //: return headerView
        return headerView
    }

    //: func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    func tableView(_: UITableView, didSelectRowAt indexPath: IndexPath) {
        //: let vc = TalkingFemaleChatSetView.init(frame: self.view.frame)
        let vc = UmbraReactiveCompatible(frame: self.view.frame)
        //: switch indexPath.section {
        switch indexPath.section {
        //: case 0:
        case 0:
            //: vc.dataArray = messageArray
            vc.dataArray = messageArray
        //: break
        //: case 1:
        case 1:
            //: vc.dataArray = videoArray
            vc.dataArray = videoArray
        //: break
        //: case 2:
        case 2:
            //: vc.dataArray = voiceArray
            vc.dataArray = voiceArray
        //: break
        //: default:
        default:
            //: break
            break
        }
        //: vc.showType = indexPath.section
        vc.showType = indexPath.section
        //: vc.showView()
        vc.weltanschauung()
        //: vc.seletePriceBlock = {[weak self] (seletemodel) in
        vc.seletePriceBlock = { [weak self] _ in
            //: guard let self = self else {return}
            guard let self = self else { return }
            //: self.mainTableView.reloadData()
            self.mainTableView.reloadData()
        }
    }
}

// MARK: - Request & 数据处理

//: extension TalkingFemalePriceSetVC {
extension LayerItemViewDelegate {}

// MARK: - Public Event

//: extension TalkingFemalePriceSetVC {
extension LayerItemViewDelegate {}

// MARK: - Privete Event

//: extension TalkingFemalePriceSetVC {
extension LayerItemViewDelegate {}

// MARK: - Delegate

//: extension TalkingFemalePriceSetVC {
extension LayerItemViewDelegate {}

// MARK: - Layout

//: extension TalkingFemalePriceSetVC{
extension LayerItemViewDelegate {
    // 添加视图
    //: private func setupSubviews() {
    private func bar() {
        //: self.mainTableView.reloadData()
        self.mainTableView.reloadData()
    }

    // 添加约束
    //: private func setupSubViewsConstraint() {
    private func digitiser() {}

    // 添加事件
    //: private func bindInteraction() {
    private func cohereInGiveAndTake() {}
}
