
//: Declare String Begin

/*: "cellID" :*/
fileprivate let kStr_touchValue:String = "round viewcellID"

/*: "init(coder:) has not been implemented" :*/
fileprivate let kStr_nameValue:[UInt8] = [0x91,0x96,0x91,0x8c,0xd0,0x9b,0x97,0x9c,0x9d,0x8a,0xc2,0xd1,0xd8,0x90,0x99,0x8b,0xd8,0x96,0x97,0x8c,0xd8,0x9a,0x9d,0x9d,0x96,0xd8,0x91,0x95,0x88,0x94,0x9d,0x95,0x9d,0x96,0x8c,0x9d,0x9c]

private func labShare(selected num: UInt8) -> UInt8 {
    return num ^ 248
}

/*: "Video Call" :*/
fileprivate let kStr_data:String = "top micVideo"
fileprivate let kStr_frameValue:[Character] = ["l"]

/*: "Video Call (%@ Points/Min)" :*/
fileprivate let kStr_labText:String = "self self view viewVideo"
fileprivate let kStr_effectModelName:String = "view data model (%@ Po"
fileprivate let kStr_netTitle:[Character] = ["i","n","t","s","/","M","i","n",")"]

/*: "Voice Call" :*/
fileprivate let kStr_modelValue:String = "current block make app selfVoic"

/*: "Voice Call (%@ Points/Min)" :*/
fileprivate let kStr_atName:[Character] = ["V","o","i","c","e"," ","C","a","l","l"]
fileprivate let kStr_touchTitle:[Character] = [" ","(","%","@"," "]
fileprivate let kStr_addTitle:String = "Pointsview height"

/*: "#F8F8F8" :*/
fileprivate let kStr_sceneListContent:String = "#F8F8F8app index top"

/*: "Cancel" :*/
fileprivate let kStr_valueName:String = "my type format true pointCancel"

/*: "#F5F5F5" :*/
fileprivate let kStr_frameWithName:[Character] = ["#","F","5","F","5","F","5"]

/*: "icon_lounge" :*/
fileprivate let kStr_voiceName:[Character] = ["i","c","o","n","_","l","o","u","n","g","e"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  FillView.swift
//  AbroadTalking
//
//  Created by Charlotte on 2022/10/8.
//

//: import UIKit
import UIKit

//: typealias MunuBlock = (Int, String?) -> Void
typealias MunuBlock = (Int, String?) -> Void

//: enum MunuPopType {
enum ButtonPopType {
    //: case Unknown
    case Unknown // 未知类型
    //: case Call
    case Call // 音视频通话
}

//: class TalkingMunuPopView: UIView {
class FillView: UIView {
    //: var munuBlock: MunuBlock?
    var munuBlock: MunuBlock?

    //: private var type: MunuPopType = .Unknown
    private var type: ButtonPopType = .Unknown // 当前展示类型

    /// cell内容
    //: var cellTitleList = [Any]()
    var cellTitleList = [Any]()
    /// cell字体颜色
    //: var cellTitleColor = UIColor.appTitleColor()
    var cellTitleColor = UIColor.dataFormat()
    /// cell字体大小
    //: var cellTitleFont = UIFont.pingfangFont(type: .Regular, fontSize: 16)
    var cellTitleFont = UIFont.groupSize(type: .Regular, fontSize: 16)
    /// 是否有"Cancel"菜单
    //: var hasCancel = true
    var hasCancel = true
    /// cancel字体颜色
    //: var cancelColor = UIColor.statusMin()
    var cancelColor = UIColor.statusMin()
    /// cancel字体大小
    //: var cancelTitleFont = UIFont.pingfangFont(type: .Regular, fontSize: 16)
    var cancelTitleFont = UIFont.groupSize(type: .Regular, fontSize: 16)
    /// 标题
    //: var title: String?
    var title: String?
    /// 标题颜色
    //: var titleColor = UIColor.fromBuild()
    var titleColor = UIColor.fromBuild()
    /// 标题字体大小
    //: var titleFont = UIFont.dorsum(fontSize: 16)
    var titleFont = UIFont.dorsum(fontSize: 16)

    //: var tableView = UITableView()
    var tableView = UITableView()
    //: let cellID = "cellID"
    let cellID = (String(kStr_touchValue.suffix(6)))
    //: var tableViewHight: CGFloat {
    var tableViewHight: CGFloat {
        //: return CGFloat(cellTitleList.count) * rowHight  + footerViewHight + headerViewHight
        return CGFloat(cellTitleList.count) * rowHight + footerViewHight + headerViewHight
    }

    //: fileprivate let rowHight: CGFloat = 50
    fileprivate let rowHight: CGFloat = 50
    //: fileprivate var footerViewLineHight: CGFloat = 8
    fileprivate var footerViewLineHight: CGFloat = 8
    //: fileprivate var footerViewHight: CGFloat {
    fileprivate var footerViewHight: CGFloat {
        //: return hasCancel ? (footerViewLineHight+50+kDeviceSafeBottomHeight):kDeviceSafeBottomHeight
        return hasCancel ? (footerViewLineHight + 50 + kLet_formatNetValue) : kLet_formatNetValue
    }

    //: fileprivate var headerViewHight: CGFloat {
    fileprivate var headerViewHight: CGFloat {
        //: return (title != nil) ? 60:0
        return (title != nil) ? 60 : 0
    }

    //: var popView: TalkingPopView?
    var popView: BackgroundThen?

    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: self.backgroundColor = UIColor.clear
        self.backgroundColor = UIColor.clear
        //: self.isUserInteractionEnabled = true
        self.isUserInteractionEnabled = true
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: kStr_nameValue.map{labShare(selected: $0)}, encoding: .utf8)!)
    }

    //: func initwithList(cellTitleList: [String]!) {
    func compartmentList(cellTitleList: [String]!) {
        // 初始化
        //: self.cellTitleList = cellTitleList
        self.cellTitleList = cellTitleList

        // 初始化UI
        //: customUI()
        equalFor()
    }

    /// 根据类型初始化
    ///   - type: 弹窗类型
    ///   - videoPrice: 视频通话价格
    ///   - voicePrice: 语音通话价格
    //: func initWithList(type: MunuPopType, videoPrice: String?, voicePrice: String?) {
    func targetView(type: ButtonPopType, videoPrice: String?, voicePrice: String?) {
        //: self.type = type
        self.type = type
        //: if self.type == .Call {
        if self.type == .Call { // 音视频通话
            //: if LocationThen.share.appStatus == AppSkinStatus.normal.rawValue {
            if LocationThen.share.appStatus == SharedInsetTarget.normal.rawValue {
                //: if LocationThen.share.loginUserMode.sex == Gender.male.rawValue {
                if LocationThen.share.loginUserMode.sex == SucceedComparable.male.rawValue {
                    //: let videoAttrStr = String.setVideoPriceStr(VideoPrice: Int(videoPrice ?? "0") ?? 0)
                    let videoAttrStr = String.telecastingPrice(VideoPrice: Int(videoPrice ?? "0") ?? 0)
                    //: let voiceAttrStr = String.setVoicePriceStr(VoicePrice: Int(voicePrice ?? "0") ?? 0)
                    let voiceAttrStr = String.priceTo(VoicePrice: Int(voicePrice ?? "0") ?? 0)
                    //: self.cellTitleList = [videoAttrStr, voiceAttrStr]
                    self.cellTitleList = [videoAttrStr, voiceAttrStr]
                    //: } else {
                } else {
                    //: let attributes = [.foregroundColor: UIColor.fromBuild(), .font: UIFont.pingfangFont(type: .Regular, fontSize: 14)] as [NSAttributedString.Key: Any]
                    let attributes = [.foregroundColor: UIColor.fromBuild(), .font: UIFont.groupSize(type: .Regular, fontSize: 14)] as [NSAttributedString.Key: Any]
                    //: let VideoCall = "Video Call".localized
                    let VideoCall = (String(kStr_data.suffix(5)) + " Cal" + String(kStr_frameValue)).localized
                    //: let videoStr = "Video Call (%@ Points/Min)".localizedArguments(videoPrice ?? "0")
                    let videoStr = (String(kStr_labText.suffix(5)) + " Call" + String(kStr_effectModelName.suffix(7)) + String(kStr_netTitle)).imageArguments(videoPrice ?? "0")
                    //: let videoAttrStr = NSMutableAttributedString(string: videoStr)
                    let videoAttrStr = NSMutableAttributedString(string: videoStr)
                    //: videoAttrStr.addAttributes(attributes, range: NSRange(location: VideoCall.count, length: videoAttrStr.length-VideoCall.count))
                    videoAttrStr.addAttributes(attributes, range: NSRange(location: VideoCall.count, length: videoAttrStr.length - VideoCall.count))
                    //: let VoiceCall = "Voice Call".localized
                    let VoiceCall = (String(kStr_modelValue.suffix(4)) + "e Call").localized
                    //: let voiceStr = "Voice Call (%@ Points/Min)".localizedArguments(voicePrice ?? "0")
                    let voiceStr = (String(kStr_atName) + String(kStr_touchTitle) + String(kStr_addTitle.prefix(6)) + "/Min)").imageArguments(voicePrice ?? "0")
                    //: let voiceAttrStr = NSMutableAttributedString(string: voiceStr)
                    let voiceAttrStr = NSMutableAttributedString(string: voiceStr)
                    //: voiceAttrStr.addAttributes(attributes, range: NSRange(location: VoiceCall.count, length: voiceAttrStr.length-VoiceCall.count))
                    voiceAttrStr.addAttributes(attributes, range: NSRange(location: VoiceCall.count, length: voiceAttrStr.length - VoiceCall.count))
                    //: self.cellTitleList = [videoAttrStr, voiceAttrStr]
                    self.cellTitleList = [videoAttrStr, voiceAttrStr]
                }

                //: } else {
            } else {
                //: self.cellTitleList = ["Video Call".localized, "Voice Call".localized]
                self.cellTitleList = [(String(kStr_data.suffix(5)) + " Cal" + String(kStr_frameValue)).localized, (String(kStr_modelValue.suffix(4)) + "e Call").localized]
            }
        }

        // 初始化UI
        //: customUI()
        equalFor()
    }

    //: public func customUI () {
    public func equalFor() {
        //: tableView = UITableView(frame: CGRect.init(x: 0, y: ScreenHeight-tableViewHight, width: ScreenWidth, height: tableViewHight), style: .plain)
        tableView = UITableView(frame: CGRect(x: 0, y: kLet_noSeatName - tableViewHight, width: kLet_halfData, height: tableViewHight), style: .plain)
        //: tableView.delegate = self
        tableView.delegate = self
        //: tableView.dataSource = self
        tableView.dataSource = self
        //: tableView.showsVerticalScrollIndicator = false
        tableView.showsVerticalScrollIndicator = false
        //: tableView.showsHorizontalScrollIndicator = false
        tableView.showsHorizontalScrollIndicator = false
        //: tableView.isScrollEnabled = false
        tableView.isScrollEnabled = false
        //: tableView.bounces = false
        tableView.bounces = false
        //: tableView.isPagingEnabled = false
        tableView.isPagingEnabled = false
        //: tableView.separatorStyle = .none
        tableView.separatorStyle = .none
        //: tableView.separatorInset = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0)
        tableView.separatorInset = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0)
        //: tableView.register(TitleCell.self, forCellReuseIdentifier: cellID)
        tableView.register(ColorView.self, forCellReuseIdentifier: cellID)
        //: tableView.register(UITableViewHeaderFooterView.self, forHeaderFooterViewReuseIdentifier: UITableViewHeaderFooterView.className())
        tableView.register(UITableViewHeaderFooterView.self, forHeaderFooterViewReuseIdentifier: UITableViewHeaderFooterView.className())

        //: self.addSubview(tableView)
        self.addSubview(tableView)
        //: tableView.snp.makeConstraints { make in
        tableView.snp.makeConstraints { make in
            //: make.leading.trailing.equalTo(self)
            make.leading.trailing.equalTo(self)
            //: make.height.equalTo(tableViewHight)
            make.height.equalTo(tableViewHight)
            //: make.bottom.equalTo(self.snp.bottom)
            make.bottom.equalTo(self.snp.bottom)
        }

        // 无标题时添加圆角
        //: if title == nil {
        if title == nil {
            //: tableView.Corner(width: ScreenWidth,
            tableView.loftiness(width: kLet_halfData,
                                //: height: tableViewHight,
                                height: tableViewHight,
                                //: corners: [.topLeft, .topRight],
                                corners: [.topLeft, .topRight],
                                //: cornerRadii: .init(width: 15, height: 15))
                                cornerRadii: .init(width: 15, height: 15))
        }

        //: popView = TalkingPopView.init(frame: UIScreen.main.bounds)
        popView = BackgroundThen(frame: UIScreen.main.bounds)
        //: popView?.initWithView(view: self)
        popView?.toViewText(view: self)
        //: popView?.showInView(view: TableMacroDefine.getWindow())
        popView?.beyondAllAdjust(view: TableMacroDefine.oeilDeBoeufView())
    }
}

//: extension TalkingMunuPopView: UITableViewDelegate, UITableViewDataSource {
extension FillView: UITableViewDelegate, UITableViewDataSource {
    //: func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    func tableView(_: UITableView, numberOfRowsInSection _: Int) -> Int {
        //: return cellTitleList.count
        return cellTitleList.count
    }

    //: func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //: var cell = tableView.dequeueReusableCell(withIdentifier: cellID) as? TitleCell
        var cell = tableView.dequeueReusableCell(withIdentifier: cellID) as? ColorView
        //: if cell == nil {
        if cell == nil {
            //: cell = TitleCell(style: .default, reuseIdentifier: cellID)
            cell = ColorView(style: .default, reuseIdentifier: cellID)
        }

        //: if LocationThen.share.loginUserMode.sex == Gender.male.rawValue,
        if LocationThen.share.loginUserMode.sex == SucceedComparable.male.rawValue,
           //: LocationThen.share.loginUserMode.loungePlus == true,
           LocationThen.share.loginUserMode.loungePlus == true,
           //: type == .Call {
           type == .Call
        {
            //: cell!.vipIcon.isHidden = false
            cell!.vipIcon.isHidden = false
            //: } else {
        } else {
            //: cell!.vipIcon.isHidden = true
            cell!.vipIcon.isHidden = true
        }

        //: cell!.titleLab.textColor = cellTitleColor
        cell!.titleLab.textColor = cellTitleColor
        //: cell!.titleLab.font = cellTitleFont
        cell!.titleLab.font = cellTitleFont
        //: if self.type == .Call && LocationThen.share.appStatus == AppSkinStatus.normal.rawValue {
        if self.type == .Call && LocationThen.share.appStatus == SharedInsetTarget.normal.rawValue {
            //: cell!.titleLab.attributedText = cellTitleList[indexPath.row] as? NSMutableAttributedString
            cell!.titleLab.attributedText = cellTitleList[indexPath.row] as? NSMutableAttributedString
            //: } else {
        } else {
            //: cell!.titleLab.text = cellTitleList[indexPath.row] as? String
            cell!.titleLab.text = cellTitleList[indexPath.row] as? String
        }
        // 没有“Cancel”菜单最后一行时，隐藏横线
        //: if hasCancel == false, indexPath.row == (cellTitleList.count-1) {
        if hasCancel == false, indexPath.row == (cellTitleList.count - 1) {
            //: cell!.lineLab.isHidden = true
            cell!.lineLab.isHidden = true
        }

        //: return cell!
        return cell!
    }

    //: func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
    func tableView(_: UITableView, heightForRowAt _: IndexPath) -> CGFloat {
        //: return CGFloat(rowHight)
        return CGFloat(rowHight)
    }

    //: func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        //: tableView.deselectRow(at: indexPath, animated: true)
        tableView.deselectRow(at: indexPath, animated: true)

        //: guard let block = munuBlock else { return }
        guard let block = munuBlock else { return }
        //: block(indexPath.row, cellTitleList[indexPath.row] as? String)
        block(indexPath.row, cellTitleList[indexPath.row] as? String)
        //: popView?.dismissView()
        popView?.placePushAside()
        //: popView = nil
        popView = nil
    }

    //: func tableView(_ tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
    func tableView(_: UITableView, heightForFooterInSection _: Int) -> CGFloat {
        //: return footerViewHight
        return footerViewHight
    }

    //: func tableView(_ tableView: UITableView, viewForFooterInSection section: Int) -> UIView? {
    func tableView(_: UITableView, viewForFooterInSection _: Int) -> UIView? {
        //: guard hasCancel == true else { return UIView() }
        guard hasCancel == true else { return UIView() }
        //: let footerView = UIView(frame: CGRect(x: 0, y: 0, width: ScreenWidth, height: footerViewHight))
        let footerView = UIView(frame: CGRect(x: 0, y: 0, width: kLet_halfData, height: footerViewHight))
        //: let lineView = UIView(frame: CGRect(x: 0, y: 0, width: ScreenWidth, height: footerViewLineHight))
        let lineView = UIView(frame: CGRect(x: 0, y: 0, width: kLet_halfData, height: footerViewLineHight))
        //: lineView.backgroundColor = UIColor(hex: "#F8F8F8")
        lineView.backgroundColor = UIColor(hex: (String(kStr_sceneListContent.prefix(7))))
        //: footerView.addSubview(lineView)
        footerView.addSubview(lineView)

        //: let btn = UIButton(type: .custom)
        let btn = UIButton(type: .custom)
        //: btn.frame = CGRect(x: 0, y: footerViewLineHight, width: ScreenWidth, height: 50)
        btn.frame = CGRect(x: 0, y: footerViewLineHight, width: kLet_halfData, height: 50)
        //: footerView.addSubview(btn)
        footerView.addSubview(btn)
        //: btn.setTitle("Cancel".localized, for: .normal)
        btn.setTitle((String(kStr_valueName.suffix(6))).localized, for: .normal)
        //: btn.titleLabel?.font = cancelTitleFont
        btn.titleLabel?.font = cancelTitleFont
        //: btn.setTitleColor(cancelColor, for: .normal)
        btn.setTitleColor(cancelColor, for: .normal)
        //: btn.addTarget(self, action: #selector(cancelBtnDidClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(tagClick), for: .touchUpInside)
        //: return footerView
        return footerView
    }

    //: func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
    func tableView(_: UITableView, heightForHeaderInSection _: Int) -> CGFloat {
        //: return headerViewHight
        return headerViewHight
    }

    //: func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
    func tableView(_: UITableView, viewForHeaderInSection _: Int) -> UIView? {
        //: guard title != nil else { return UIView() }
        guard title != nil else { return UIView() }
        //: let headerView = UIView(frame: CGRect(x: 0, y: 0, width: ScreenWidth, height: headerViewHight))
        let headerView = UIView(frame: CGRect(x: 0, y: 0, width: kLet_halfData, height: headerViewHight))

        //: let titleLab = UILabel(frame: CGRect(x: 15, y: 0, width: ScreenWidth-30, height: headerViewHight))
        let titleLab = UILabel(frame: CGRect(x: 15, y: 0, width: kLet_halfData - 30, height: headerViewHight))
        //: titleLab.font = titleFont
        titleLab.font = titleFont
        //: titleLab.textColor = titleColor
        titleLab.textColor = titleColor
        //: titleLab.numberOfLines = 0
        titleLab.numberOfLines = 0
        //: titleLab.textAlignment = .center
        titleLab.textAlignment = .center
        //: titleLab.text = title
        titleLab.text = title
        //: headerView.addSubview(titleLab)
        headerView.addSubview(titleLab)

        //: let lineView = UIView(frame: CGRect(x: 0, y: headerViewHight-1, width: ScreenWidth, height: 1))
        let lineView = UIView(frame: CGRect(x: 0, y: headerViewHight - 1, width: kLet_halfData, height: 1))
        //: lineView.backgroundColor = UIColor.init(hex: "#F5F5F5")
        lineView.backgroundColor = UIColor(hex: (String(kStr_frameWithName)))
        //: headerView.addSubview(lineView)
        headerView.addSubview(lineView)

        //: return headerView
        return headerView
    }

    //: @objc func cancelBtnDidClick() {
    @objc func tagClick() {
        //: popView?.dismissView()
        popView?.placePushAside()
        //: popView = nil
        popView = nil
    }
}

//: class TitleCell: UITableViewCell {
class ColorView: UITableViewCell {
    //: override func awakeFromNib() {
    override func awakeFromNib() {
        //: super.awakeFromNib()
        super.awakeFromNib()
    }

    //: override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        //: super.init(style: style, reuseIdentifier: reuseIdentifier)
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        //: contentView.addSubview(stackView)
        contentView.addSubview(stackView)
        //: stackView.snp.makeConstraints { make in
        stackView.snp.makeConstraints { make in
            //: make.center.height.equalToSuperview()
            make.center.height.equalToSuperview()
            //: make.trailing.lessThanOrEqualToSuperview()
            make.trailing.lessThanOrEqualToSuperview()
        }

        //: stackView.addArrangedSubview(vipIcon)
        stackView.addArrangedSubview(vipIcon)
        //: vipIcon.snp.makeConstraints { make in
        vipIcon.snp.makeConstraints { make in
            //: make.width.height.equalTo(actualWidth(w: 20))
            make.width.height.equalTo(originalScene(w: 20))
        }
        //: stackView.addArrangedSubview(titleLab)
        stackView.addArrangedSubview(titleLab)
        //: titleLab.snp.makeConstraints { make in
        titleLab.snp.makeConstraints { make in
            //: make.height.equalToSuperview()
            make.height.equalToSuperview()
        }

        //: contentView.addSubview(lineLab)
        contentView.addSubview(lineLab)
        //: lineLab.snp.makeConstraints { make in
        lineLab.snp.makeConstraints { make in
            //: make.height.equalTo(1)
            make.height.equalTo(1)
            //: make.leading.trailing.bottom.equalToSuperview()
            make.leading.trailing.bottom.equalToSuperview()
        }
    }

    //: required init?(coder aDecoder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: kStr_nameValue.map{labShare(selected: $0)}, encoding: .utf8)!)
    }

    //: private lazy var stackView: UIStackView = {
    private lazy var stackView: UIStackView = {
        //: let v = UIStackView()
        let v = UIStackView()
        //: v.axis = .horizontal
        v.axis = .horizontal
        //: v.alignment = .center
        v.alignment = .center
        //: v.spacing = 6
        v.spacing = 6
        //: v.isUserInteractionEnabled = false
        v.isUserInteractionEnabled = false
        //: return v
        return v
        //: }()
    }()

    //: lazy var vipIcon: UIImageView = {
    lazy var vipIcon: UIImageView = {
        //: let img = UIImageView()
        let img = UIImageView()
        //: img.image = UIImage.bundleBy(name: "icon_lounge")
        img.image = UIImage.bundleBy(name: (String(kStr_voiceName)))
        //: img.isHidden = true
        img.isHidden = true
        //: return img
        return img
        //: }()
    }()

    //: lazy var titleLab: UILabel = {
    lazy var titleLab: UILabel = {
        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.textAlignment = .center
        lab.textAlignment = .center
        //: return lab
        return lab
        //: }()
    }()

    //: lazy var lineLab: UILabel = {
    lazy var lineLab: UILabel = {
        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.backgroundColor = UIColor(hex: "#F5F5F5")
        lab.backgroundColor = UIColor(hex: (String(kStr_frameWithName)))
        //: return lab
        return lab
        //: }()
    }()
}
