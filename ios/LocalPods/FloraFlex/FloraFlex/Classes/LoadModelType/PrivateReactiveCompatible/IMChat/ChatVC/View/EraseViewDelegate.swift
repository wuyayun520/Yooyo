
//: Declare String Begin

/*: "Increase：" :*/
fileprivate let kStr_thenEditViewContent:[Character] = ["I","n","c"]
fileprivate let kStr_viewText:String = "text observerease："

/*: "Decrease：" :*/
fileprivate let kStr_toData:String = "intimate returnDecr"

/*: "init(coder:) has not been implemented" :*/
fileprivate let kStr_layerData:[UInt8] = [0x55,0x52,0x55,0x48,0x14,0x5f,0x53,0x58,0x59,0x4e,0x6,0x15,0x1c,0x54,0x5d,0x4f,0x1c,0x52,0x53,0x48,0x1c,0x5e,0x59,0x59,0x52,0x1c,0x55,0x51,0x4c,0x50,0x59,0x51,0x59,0x52,0x48,0x59,0x58]

/*: "bg_talk_closed_tc" :*/
fileprivate let kStr_styleText:String = "from block on countbg_talk_"
fileprivate let kStr_giftValue:[Character] = ["c","l","o","s","e","d","_","t","c"]

/*: "bg_talk_closed_tc_intimate" :*/
fileprivate let kStr_frameValue:String = "equal manager self in bybg_ta"
fileprivate let kStr_equalValueData:String = "server elsesed_tc_"
fileprivate let kStr_arrayTitle:String = "INTIMATE"

/*: "btn_intimate_close" :*/
fileprivate let kStr_shareName:String = "self search interaction databtn_int"
fileprivate let kStr_observerData:String = "imatdata"

/*: "Giving gifts 、making calls and sending paid messages can increase intimacy~" :*/
fileprivate let kStr_centerData:[UInt8] = [0x98,0xb6,0xa9,0xb6,0xb1,0xb8,0xff,0xb8,0xb6,0xb9,0xab,0xac,0xff,0x3c,0x5f,0x5e,0xb2,0xbe,0xb4,0xb6,0xb1,0xb8,0xff,0xbc,0xbe,0xb3,0xb3,0xac,0xff,0xbe,0xb1,0xbb,0xff,0xac,0xba,0xb1,0xbb,0xb6,0xb1,0xb8,0xff,0xaf,0xbe,0xb6,0xbb,0xff,0xb2,0xba,0xac,0xac,0xbe,0xb8,0xba,0xac,0xff,0xbc,0xbe,0xb1,0xff,0xb6,0xb1,0xbc,0xad,0xba,0xbe,0xac,0xba,0xff,0xb6,0xb1,0xab,0xb6,0xb2,0xbe,0xbc,0xa6,0xa1]

private func bottomNotice(shadow num: UInt8) -> UInt8 {
    return num ^ 223
}

/*: "1 coin = 1 intimacy" :*/
fileprivate let kStr_toolName:String = "model let leading video1 coi"
fileprivate let kStr_popValue:[Character] = ["1"," ","i","n","t","i","m","a","c","y"]

/*: "If coins are not consumed within a certain period of time, the intimacy level will be reduced." :*/
fileprivate let kStr_rawValue:[UInt8] = [0x5a,0x75,0x33,0x70,0x7c,0x7a,0x7d,0x60,0x33,0x72,0x61,0x76,0x33,0x7d,0x7c,0x67,0x33,0x70,0x7c,0x7d,0x60,0x66,0x7e,0x76,0x77,0x33,0x64,0x7a,0x67,0x7b,0x7a,0x7d,0x33,0x72,0x33,0x70,0x76,0x61,0x67,0x72,0x7a,0x7d,0x33,0x63,0x76,0x61,0x7a,0x7c,0x77,0x33,0x7c,0x75,0x33,0x67,0x7a,0x7e,0x76,0x3f,0x33,0x67,0x7b,0x76,0x33,0x7a,0x7d,0x67,0x7a,0x7e,0x72,0x70,0x6a,0x33,0x7f,0x76,0x65,0x76,0x7f,0x33,0x64,0x7a,0x7f,0x7f,0x33,0x71,0x76,0x33,0x61,0x76,0x77,0x66,0x70,0x76,0x77,0x3d]

private func ofViewDisplay(leading num: UInt8) -> UInt8 {
    return num ^ 19
}

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  EraseViewDelegate.swift
//  FloraFlex
//
//  Created by Charlotte on 2024/7/26.
//

//: import UIKit
import UIKit

/// 亲密度说明弹窗
//: class TalkingIntimateInstructionsPopUpView: UIView {
class EraseViewDelegate: UIView {
    //: var popView: TalkingPopView?
    var popView: BackgroundThen?
    //: var pushType = ""
    var pushType = ""
    //: var headerData = ["Increase：".localized,"Decrease：".localized]
    var headerData = [(String(kStr_thenEditViewContent) + String(kStr_viewText.suffix(6))).localized, (String(kStr_toData.suffix(4)) + "ease：").localized]

    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: self.setupSubviews()
        self.componentAdd()
        //: self.setupSubViewsConstraint()
        self.toTop()
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: kStr_layerData.map{$0^60}, encoding: .utf8)!)
    }

    //: deinit {
    deinit {
        //: NotificationCenter.default.removeObserver(self)
        NotificationCenter.default.removeObserver(self)
    }

    // MARK: - Lazy

    //: private lazy var contentView: UIImageView = {
    private lazy var contentView: UIImageView = {
        //: let imag = UIImageView.init()
        let imag = UIImageView()
        //: imag.image = UIImage.bundleBy(name: "bg_talk_closed_tc")
        imag.image = UIImage.bundleBy(name: (String(kStr_styleText.suffix(8)) + String(kStr_giftValue)))
        //: imag.contentMode = .scaleAspectFill
        imag.contentMode = .scaleAspectFill
        //: imag.isUserInteractionEnabled = true
        imag.isUserInteractionEnabled = true
        //: return imag
        return imag
        //: }()
    }()

    //: private lazy var topView: UIImageView = {
    private lazy var topView: UIImageView = {
        //: let imag = UIImageView.init()
        let imag = UIImageView()
        //: imag.image = UIImage.bundleBy(name: "bg_talk_closed_tc_intimate")
        imag.image = UIImage.bundleBy(name: (String(kStr_frameValue.suffix(5)) + "lk_clo" + String(kStr_equalValueData.suffix(7)) + kStr_arrayTitle.lowercased()))
        //: imag.contentMode = .scaleAspectFill
        imag.contentMode = .scaleAspectFill
        //: imag.isUserInteractionEnabled = true
        imag.isUserInteractionEnabled = true
        //: return imag
        return imag
        //: }()
    }()

    //: private lazy var msgTableView: UITableView = {
    private lazy var msgTableView: UITableView = {
        //: let table = UITableView(frame: .zero, style: .plain)
        let table = UITableView(frame: .zero, style: .plain)
        //: table.backgroundColor = UIColor.init(red: 242/255.0, green: 110/255.0, blue: 184/255.0, alpha: 0.72)
        table.backgroundColor = UIColor(red: 242 / 255.0, green: 110 / 255.0, blue: 184 / 255.0, alpha: 0.72)
        //: table.separatorStyle = .none
        table.separatorStyle = .none
        //: table.tableHeaderView = UIView()
        table.tableHeaderView = UIView()
        //: table.dataSource = self
        table.dataSource = self
        //: table.delegate = self
        table.delegate = self
        //: table.layer.cornerRadius = 6
        table.layer.cornerRadius = 6
        //: table.register(TalkingIntimateInstructionsPopUpCell.self, forCellReuseIdentifier: TalkingIntimateInstructionsPopUpCell.className())
        table.register(BlockReactiveCompatible.self, forCellReuseIdentifier: BlockReactiveCompatible.className())

        //: return table
        return table
        //: }()
    }()

    //: private lazy var closeBtn: UIButton = {
    private lazy var closeBtn: UIButton = {
        //: let btn = UIButton.init(type: .custom)
        let btn = UIButton(type: .custom)
        //: btn.setImage(UIImage.bundleBy(name: "btn_intimate_close"), for: .normal)
        btn.setImage(UIImage.bundleBy(name: (String(kStr_shareName.suffix(7)) + kStr_observerData.replacingOccurrences(of: "data", with: "e") + "_close")), for: .normal)
        //: btn.addTarget(self, action: #selector(closeBtnClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(impendentInfoMove), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()
}

// MARK: - Event

//: extension TalkingIntimateInstructionsPopUpView {
extension EraseViewDelegate {
    //: @objc private func closeBtnClick() {
    @objc private func impendentInfoMove() {
        //: dismiss()
        anyColor()
    }

    //: func show() {
    func dataGift() {
        //: popView = TalkingPopView.init(frame: UIScreen.main.bounds)
        popView = BackgroundThen(frame: UIScreen.main.bounds)
        //: popView?.initWithView(view: self)
        popView?.toViewText(view: self)
        //: popView?.showInView(view: TableMacroDefine.getWindow())
        popView?.beyondAllAdjust(view: TableMacroDefine.oeilDeBoeufView())
    }

    //: @objc func dismiss() {
    @objc func anyColor() {
        //: popView?.dismissView()
        popView?.placePushAside()
        //: popView = nil
        popView = nil
    }
}

// MARK: - UITableViewDelegate, UITableViewDataSource

//: extension TalkingIntimateInstructionsPopUpView: UITableViewDelegate, UITableViewDataSource {
extension EraseViewDelegate: UITableViewDelegate, UITableViewDataSource {
    //: func numberOfSections(in tableView: UITableView) -> Int {
    func numberOfSections(in _: UITableView) -> Int {
        //: return 2
        return 2
    }

    //: func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    func tableView(_: UITableView, numberOfRowsInSection section: Int) -> Int {
        //: if section == 0 {
        if section == 0 {
            //: return 2
            return 2
            //: }else {
        } else {
            //: return 1
            return 1
        }
    }

    //: func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //: let cell = tableView.dequeueReusableCell(withIdentifier: TalkingIntimateInstructionsPopUpCell.className(), for: indexPath) as! TalkingIntimateInstructionsPopUpCell
        let cell = tableView.dequeueReusableCell(withIdentifier: BlockReactiveCompatible.className(), for: indexPath) as! BlockReactiveCompatible
        //: if indexPath.section == 0 {
        if indexPath.section == 0 {
            //: if indexPath.row == 0 {
            if indexPath.row == 0 {
                //: cell.setCellData(msg: "Giving gifts 、making calls and sending paid messages can increase intimacy~".localized)
                cell.child(msg: String(bytes: kStr_centerData.map{bottomNotice(shadow: $0)}, encoding: .utf8)!.localized)
                //: } else {
            } else {
                //: cell.setCellData(msg: "1 coin = 1 intimacy".localized)
                cell.child(msg: (String(kStr_toolName.suffix(5)) + "n = " + String(kStr_popValue)).localized)
            }
            //: } else {
        } else {
            //: cell.setCellData(msg: "If coins are not consumed within a certain period of time, the intimacy level will be reduced.".localized)
            cell.child(msg: String(bytes: kStr_rawValue.map{ofViewDisplay(leading: $0)}, encoding: .utf8)!.localized)
        }
        //: return cell
        return cell
    }

    //: func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
    func tableView(_: UITableView, heightForRowAt _: IndexPath) -> CGFloat {
        //: return UITableView.automaticDimension
        return UITableView.automaticDimension
    }

    //: func tableView(_ tableView: UITableView, estimatedHeightForRowAt indexPath: IndexPath) -> CGFloat {
    func tableView(_: UITableView, estimatedHeightForRowAt _: IndexPath) -> CGFloat {
        //: return 80
        return 80
    }

    //: func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    func tableView(_: UITableView, didSelectRowAt _: IndexPath) {}

    //: func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
    func tableView(_: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        //: if section == 0 {
        if section == 0 {
            //: return 32
            return 32
            //: }else {
        } else {
            //: return 36
            return 36
        }
    }

    //: func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
    func tableView(_: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        //: let view = UIView.init(frame: CGRect.init(x: 0, y: 0, width: ScreenWidth, height: 32))
        let view = UIView(frame: CGRect(x: 0, y: 0, width: kLet_halfData, height: 32))
        //: view.backgroundColor = .clear
        view.backgroundColor = .clear
        //: let titleLab = UILabel()
        let titleLab = UILabel()
        //: titleLab.font = UIFont.dorsum(fontSize: 16)
        titleLab.font = UIFont.dorsum(fontSize: 16)
        //: titleLab.textColor = .white
        titleLab.textColor = .white
        //: titleLab.backgroundColor = .clear
        titleLab.backgroundColor = .clear
        //: titleLab.text = headerData[section]
        titleLab.text = headerData[section]
        //: view.addSubview(titleLab)
        view.addSubview(titleLab)
        //: titleLab.snp.makeConstraints { make in
        titleLab.snp.makeConstraints { make in
            //: make.trailing.equalTo(0)
            make.trailing.equalTo(0)
            //: make.leading.equalTo(13)
            make.leading.equalTo(13)
            //: make.bottom.equalTo(0)
            make.bottom.equalTo(0)
            //: if section == 0 {
            if section == 0 {
                //: make.top.equalTo(0)
                make.top.equalTo(0)
                //: }else {
            } else {
                //: make.top.equalTo(4)
                make.top.equalTo(4)
            }
        }

        //: return view
        return view
    }
}

// MARK: - Layout

//: extension TalkingIntimateInstructionsPopUpView {
extension EraseViewDelegate {
    // 添加视图
    //: private func setupSubviews() {
    private func componentAdd() {
        //: self.addSubview(contentView)
        self.addSubview(contentView)
        //: self.addSubview(topView)
        self.addSubview(topView)
        //: self.addSubview(closeBtn)
        self.addSubview(closeBtn)
        //: contentView.addSubview(msgTableView)
        contentView.addSubview(msgTableView)
    }

    // 添加约束
    //: private func setupSubViewsConstraint() {
    private func toTop() {
        //: contentView.snp.makeConstraints { make in
        contentView.snp.makeConstraints { make in
            //: make.center.equalToSuperview()
            make.center.equalToSuperview()
            //: make.size.equalTo(CGSize.init(width: 301, height: 291))
            make.size.equalTo(CGSize(width: 301, height: 291))
        }

        //: msgTableView.snp.makeConstraints { make in
        msgTableView.snp.makeConstraints { make in
            //: make.top.equalTo(40)
            make.top.equalTo(40)
            //: make.leading.equalTo(10)
            make.leading.equalTo(10)
            //: make.bottom.equalTo(-20)
            make.bottom.equalTo(-20)
            //: make.trailing.equalTo(-10)
            make.trailing.equalTo(-10)
        }

        //: topView.snp.makeConstraints { make in
        topView.snp.makeConstraints { make in
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.top.equalTo(contentView.snp.top).offset(-30)
            make.top.equalTo(contentView.snp.top).offset(-30)
            //: make.size.equalTo(CGSize.init(width: 107, height: 31))
            make.size.equalTo(CGSize(width: 107, height: 31))
        }

        //: closeBtn.snp.makeConstraints { make in
        closeBtn.snp.makeConstraints { make in
            //: make.top.equalTo(contentView.snp.bottom).offset(30)
            make.top.equalTo(contentView.snp.bottom).offset(30)
            //: make.size.equalTo(30)
            make.size.equalTo(30)
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
        }
    }
}
