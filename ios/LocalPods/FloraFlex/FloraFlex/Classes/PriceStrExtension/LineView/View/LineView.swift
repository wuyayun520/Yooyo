
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let kStr_toName:[UInt8] = [0x88,0x8f,0x88,0x95,0xc9,0x82,0x8e,0x85,0x84,0x93,0xdb,0xc8,0xc1,0x89,0x80,0x92,0xc1,0x8f,0x8e,0x95,0xc1,0x83,0x84,0x84,0x8f,0xc1,0x88,0x8c,0x91,0x8d,0x84,0x8c,0x84,0x8f,0x95,0x84,0x85]

private func addInfo(collection num: UInt8) -> UInt8 {
    return num ^ 225
}

/*: "icon_cover_toast" :*/
fileprivate let kStr_filterValue:[Character] = ["i","c","o","n","_","c","o","v","e","r","_","t"]
fileprivate let kStr_sincePathName:String = "omanagerst"

/*: "Free video time is over, you can continue to call her if you are interested" :*/
fileprivate let kStr_thatName:[UInt8] = [0xab,0x9f,0x88,0x88,0xcd,0x9b,0x84,0x89,0x88,0x82,0xcd,0x99,0x84,0x80,0x88,0xcd,0x84,0x9e,0xcd,0x82,0x9b,0x88,0x9f,0xc1,0xcd,0x94,0x82,0x98,0xcd,0x8e,0x8c,0x83,0xcd,0x8e,0x82,0x83,0x99,0x84,0x83,0x98,0x88,0xcd,0x99,0x82,0xcd,0x8e,0x8c,0x81,0x81,0xcd,0x85,0x88,0x9f,0xcd,0x84,0x8b,0xcd,0x94,0x82,0x98,0xcd,0x8c,0x9f,0x88,0xcd,0x84,0x83,0x99,0x88,0x9f,0x88,0x9e,0x99,0x88,0x89]

private func colorList(result num: UInt8) -> UInt8 {
    return num ^ 237
}

/*: "#34C759" :*/
fileprivate let kStr_modelTitle:String = "name var list item#34C75"
fileprivate let kStr_playerContent:String = "9"

/*: "icon_match_stopcall_pop" :*/
fileprivate let kStr_revolutionName:[Character] = ["i","c","o","n","_","m","a","t","c","h","_","s","t","o","p","c","a","l","l","_","p","o"]
fileprivate let kStr_titleData:[Character] = ["p"]

/*: "icon_lounge_big" :*/
fileprivate let kStr_colorData:String = "to elseicon_lou"
fileprivate let kStr_cancelText:String = "nge_bigmake progress user number"

/*: "#AB57F6" :*/
fileprivate let kStr_giftLayerText:String = "#AB57Fcell calendar self"
fileprivate let kStr_textArrayContent:String = "6"

/*: "#FC57B7" :*/
fileprivate let kStr_noteName:[Character] = ["#","F","C","5","7","B","7"]

/*: "#FE9074" :*/
fileprivate let kStr_cellData:String = "#Fname of"
fileprivate let kStr_indexName:[Character] = ["E","9","0","7","4"]

/*: "Maybe next time" :*/
fileprivate let kStr_failureLikeRequestText:[Character] = ["M","a","y","b","e"," ","n","e","x","t"," ","t","i"]
fileprivate let kStr_viewValue:String = "mtotal"

/*: "type" :*/
fileprivate let kStr_addValue:[UInt8] = [0x27,0x2a,0x23,0x36]

private func fromTop(background num: UInt8) -> UInt8 {
    return num ^ 83
}

/*: "toUid" :*/
fileprivate let kStr_oldName:String = "bar agency var statustoUid"

/*: "uid" :*/
fileprivate let kStr_name:[UInt8] = [0x84,0x98,0x95]

private func timePath(background num: UInt8) -> UInt8 {
    return num ^ 241
}

/*: "fromFreeCall" :*/
fileprivate let kStr_floorData:[Character] = ["f","r","o","m","F","r","e","e","C","a","l"]
fileprivate let kStr_gestureSelectedData:[Character] = ["l"]

/*: "cmd" :*/
fileprivate let kStr_thanName:[UInt8] = [0x64,0x6d,0x63]

/*: "requestCall" :*/
fileprivate let kStr_makeData:[Character] = ["r","e"]
fileprivate let kStr_viewText:[Character] = ["q","u","e","s","t","C","a","l","l"]

/*: "data" :*/
fileprivate let kStr_scaleActionTitle:[UInt8] = [0x61,0x74,0x61,0x64]

/*: "originalFee" :*/
fileprivate let kStr_managerBackText:[Character] = ["o","r","i","g","i"]
fileprivate let kStr_timeName:String = "nalFeeto in main make table"

/*: "VIPFee" :*/
fileprivate let kStr_kitValue:[Character] = ["V","I","P","F","e","e"]

/*: "freeCallTimes" :*/
fileprivate let kStr_logTitle:[Character] = ["f","r","e","e","C","a","l","l","T"]
fileprivate let kStr_removePointData:String = "imeshow"

/*: "onRequestCall" :*/
fileprivate let kStr_taskData:String = "to view model foronReq"
fileprivate let kStr_appTitle:String = "toolst"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  LineView.swift
//  AbroadTalking
//
//  Created by Charlotte on 2023/6/15.
//

//: import UIKit
import UIKit

//: class TalkingFreeStopCallPopUpView: UIView {
class LineView: UIView {
    //: var popView: TalkingPopView?
    var popView: BackgroundThen?
    //: var data = [String: Any]()
    var data = [String: Any]()

    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: setupSubviews()
        fallStatus()
        //: setupSubViewsConstraint()
        promptCopy()
    }

    //: @available(*, unavailable)
    @available(*, unavailable)
    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: kStr_toName.map{addInfo(collection: $0)}, encoding: .utf8)!)
    }

    //: deinit {
    deinit {
        //: TalkingSocketManager.shared.errorDelegate = nil
        ToSocketManager.shared.errorDelegate = nil
    }

    // 懒加载初始化

    //: lazy var contentView: UIView = {
    lazy var contentView: UIView = {
        //: let view = UIView()
        let view = UIView()
        //: view.backgroundColor = UIColor.white
        view.backgroundColor = UIColor.white
        //: view.layer.cornerRadius = 16
        view.layer.cornerRadius = 16
        //: return view
        return view
        //: }()
    }()

    //: lazy var topIcon: UIImageView = {
    lazy var topIcon: UIImageView = {
        //: let iamg = UIImageView()
        let iamg = UIImageView()
        //: iamg.image = UIImage.bundleBy(name: "icon_cover_toast")
        iamg.image = UIImage.bundleBy(name: (String(kStr_filterValue) + kStr_sincePathName.replacingOccurrences(of: "manager", with: "a")))
        //: iamg.contentMode = .scaleAspectFill
        iamg.contentMode = .scaleAspectFill
        //: return iamg
        return iamg
        //: }()
    }()

    //: lazy var inputTView: UITextView = {
    lazy var inputTView: UITextView = {
        //: let textView = UITextView()
        let textView = UITextView()
        //: textView.font = UIFont.pingfangFont(type: .Regular, fontSize: 16)
        textView.font = UIFont.groupSize(type: .Regular, fontSize: 16)
        //: textView.textColor = UIColor.appTitleColor()
        textView.textColor = UIColor.dataFormat()
        //: textView.textContainer.maximumNumberOfLines = 0
        textView.textContainer.maximumNumberOfLines = 0
        //: textView.textAlignment = .center
        textView.textAlignment = .center
        //: textView.backgroundColor = .clear
        textView.backgroundColor = .clear
        //: textView.isEditable = false
        textView.isEditable = false
        //: textView.text = "Free video time is over, you can continue to call her if you are interested".localized
        textView.text = String(bytes: kStr_thatName.map{colorList(result: $0)}, encoding: .utf8)!.localized
        //: return textView
        return textView
        //: }()
    }()

    // 原价按钮
    //: private lazy var originalFeeBtn: TalkingButton = {
    private lazy var originalFeeBtn: OverdoTalkingButton = {
        //: let btn = TalkingButton()
        let btn = OverdoTalkingButton()
        //: btn.setBackgroundColor(color: UIColor(hex: "#34C759")!, forState: .normal)
        btn.colorEffectLoad(color: UIColor(hex: (String(kStr_modelTitle.suffix(6)) + kStr_playerContent.capitalized))!, forState: .normal)
        //: btn.setImage(UIImage.bundleBy(name: "icon_match_stopcall_pop"), for: .normal)
        btn.setImage(UIImage.bundleBy(name: (String(kStr_revolutionName) + String(kStr_titleData))), for: .normal)
        //: btn.titleLabel?.font = UIFont.pingfangFont(type: .Regular, fontSize: 18)
        btn.titleLabel?.font = UIFont.groupSize(type: .Regular, fontSize: 18)
        //: btn.setTitleColor(.white, for: .normal)
        btn.setTitleColor(.white, for: .normal)
        //: btn.spaceBetweenTitleAndImage = 6
        btn.spaceBetweenTitleAndImage = 6
        //: btn.layer.cornerRadius = 27
        btn.layer.cornerRadius = 27
        //: btn.clipsToBounds = true
        btn.clipsToBounds = true
        //: btn.addTarget(self, action: #selector(originalFeeButtonClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(pastDown), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()

    // VIP价格
    //: private lazy var vipFeeBtn: TalkingButton = {
    private lazy var vipFeeBtn: OverdoTalkingButton = {
        //: let btn = TalkingButton()
        let btn = OverdoTalkingButton()
        //: btn.setImage(UIImage.bundleBy(name: "icon_lounge_big"), for: .normal)
        btn.setImage(UIImage.bundleBy(name: (String(kStr_colorData.suffix(8)) + String(kStr_cancelText.prefix(7)))), for: .normal)
        //: btn.imageView?.contentMode = .scaleAspectFill
        btn.imageView?.contentMode = .scaleAspectFill
        //: btn.verticalAlignImageAndTitleWith(interval: 5, imageSize: CGSize(width: 28, height: 28), topOffset: 13)
        btn.valid(interval: 5, imageSize: CGSize(width: 28, height: 28), topOffset: 13)
        //: btn.titleLabel?.font = UIFont.pingfangFont(type: .Medium, fontSize: 18)
        btn.titleLabel?.font = UIFont.groupSize(type: .Medium, fontSize: 18)
        //: btn.setTitleColor(.white, for: .normal)
        btn.setTitleColor(.white, for: .normal)
        //: btn.spaceBetweenTitleAndImage = 6
        btn.spaceBetweenTitleAndImage = 6
        //: let colors = [UIColor(hex: "#AB57F6")!.cgColor, UIColor(hex: "#FC57B7")!.cgColor, UIColor(hex: "#FE9074")!.cgColor]
        let colors = [UIColor(hex: (String(kStr_giftLayerText.prefix(6)) + kStr_textArrayContent.capitalized))!.cgColor, UIColor(hex: (String(kStr_noteName)))!.cgColor, UIColor(hex: (String(kStr_cellData.prefix(2)) + String(kStr_indexName)))!.cgColor]
        //: btn.setBackgroundImage(UIImage.imageGradientColor(colors: colors, size: CGSize(width: actualWidth(w: 257), height: actualWidth(w: 54))), for: .normal)
        btn.setBackgroundImage(UIImage.upTo(colors: colors, size: CGSize(width: originalScene(w: 257), height: originalScene(w: 54))), for: .normal)
        //: btn.layer.cornerRadius = 27
        btn.layer.cornerRadius = 27
        //: btn.clipsToBounds = true
        btn.clipsToBounds = true
        //: btn.addTarget(self, action: #selector(maleVipPriceButtonClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(errorWith), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var closeBtn: UIButton = {
    private lazy var closeBtn: UIButton = {
        //: let btn = UIButton(type: .custom)
        let btn = UIButton(type: .custom)
        //: let attributes = [.foregroundColor: UIColor.statusMin(), .font: UIFont.pingfangFont(type: .Regular, fontSize: 13), .underlineStyle: 1] as [NSAttributedString.Key: Any]
        let attributes = [.foregroundColor: UIColor.statusMin(), .font: UIFont.groupSize(type: .Regular, fontSize: 13), .underlineStyle: 1] as [NSAttributedString.Key: Any]
        //: let attributeString = NSAttributedString(string: "Maybe next time".localized, attributes: attributes)
        let attributeString = NSAttributedString(string: (String(kStr_failureLikeRequestText) + kStr_viewValue.replacingOccurrences(of: "total", with: "e")).localized, attributes: attributes)
        //: btn.setAttributedTitle(attributeString, for: .normal)
        btn.setAttributedTitle(attributeString, for: .normal)
        //: btn.addTarget(self, action: #selector(closeBtnClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(subClick), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()
}

// MARK: - Event

//: extension TalkingFreeStopCallPopUpView {
extension LineView {
    /// 原价按钮拨打事件
    //: @objc func originalFeeButtonClick() {
    @objc func pastDown() {
        //: let type = self.data["type"] as? Int ?? -1
        let type = self.data[String(bytes: kStr_addValue.map{fromTop(background: $0)}, encoding: .utf8)!] as? Int ?? -1
        //: let toUid = self.data["toUid"] as? String ?? ""
        let toUid = self.data[(String(kStr_oldName.suffix(5)))] as? String ?? ""

        //: var data: [String: Any] = ["type": type,
        var data: [String: Any] = [String(bytes: kStr_addValue.map{fromTop(background: $0)}, encoding: .utf8)!: type,
                                   //: "uid": toUid]
                                   String(bytes: kStr_name.map{timePath(background: $0)}, encoding: .utf8)!: toUid]
        //: if LocationThen.share.loginUserMode.freeCallTimes > 0, LocationThen.share.loginUserMode.sex == Gender.male.rawValue {
        if LocationThen.share.loginUserMode.freeCallTimes > 0, LocationThen.share.loginUserMode.sex == SucceedComparable.male.rawValue {
            //: data.updateValue(1, forKey: "fromFreeCall")
            data.updateValue(1, forKey: (String(kStr_floorData) + String(kStr_gestureSelectedData)))
            //: TalkingSocketManager.shared.isFreeCall = true
            ToSocketManager.shared.isFreeCall = true
        }
        //: let info: [String: Any] = ["cmd": "requestCall", "data": data]
        let info: [String: Any] = [String(bytes: kStr_thanName.reversed(), encoding: .utf8)!: (String(kStr_makeData) + String(kStr_viewText)), String(bytes: kStr_scaleActionTitle.reversed(), encoding: .utf8)!: data]
        //: TalkingSocketManager.shared.sendMessage(info: info)
        ToSocketManager.shared.lessNutsAndBolts(info: info)
        //: TalkingSocketManager.shared.errorDelegate = self
        ToSocketManager.shared.errorDelegate = self
        //: dismiss()
        upDownDismiss()
    }

    /// 关闭按钮点击事件
    //: @objc func closeBtnClick() {
    @objc func subClick() {
        //: dismiss()
        upDownDismiss()
    }

    /// 展示
    //: func show() {
    func outsideMatch() {
        //: popView = TalkingPopView(frame: UIScreen.main.bounds)
        popView = BackgroundThen(frame: UIScreen.main.bounds)
        //: frame = CGRect(x: 0, y: 0, width: ScreenWidth, height: ScreenHeight)
        frame = CGRect(x: 0, y: 0, width: kLet_halfData, height: kLet_noSeatName)
        //: popView?.initWithView(view: self)
        popView?.toViewText(view: self)
        //: popView?.showInView(view: TableMacroDefine.getWindow())
        popView?.beyondAllAdjust(view: TableMacroDefine.oeilDeBoeufView())
        //: popView?.isRemoveTapGes = true
        popView?.isRemoveTapGes = true
    }

    //: @objc func dismiss() {
    @objc func upDownDismiss() {
        //: popView?.dismissView()
        popView?.placePushAside()
        //: popView = nil
        popView = nil
    }

    /// 更新数据
    //: func setShowData(data: [String: Any]) {
    func touch(data: [String: Any]) {
        //: self.data = data
        self.data = data
        //: let originalFee = data["originalFee"] as? Int ?? 0
        let originalFee = data[(String(kStr_managerBackText) + String(kStr_timeName.prefix(6)))] as? Int ?? 0
        //: let vipFee = data["VIPFee"] as? Int ?? 0
        let vipFee = data[(String(kStr_kitValue))] as? Int ?? 0
        //: let freeCallTimes = data["freeCallTimes"] as? Int
        let freeCallTimes = data[(String(kStr_logTitle) + kStr_removePointData.replacingOccurrences(of: "show", with: "s"))] as? Int
        //: LocationThen.share.loginUserMode.freeCallTimes = freeCallTimes ?? 0
        LocationThen.share.loginUserMode.freeCallTimes = freeCallTimes ?? 0
        //: originalFeeBtn.setTitle(String.setFreeStopPriceStr(originalFee: originalFee), for: .normal)
        originalFeeBtn.setTitle(String.dataFinish(originalFee: originalFee), for: .normal)
        //: vipFeeBtn.setTitle(String.setFreeStopPriceStr(originalFee: originalFee, vipFee: vipFee), for: .normal)
        vipFeeBtn.setTitle(String.dataFinish(originalFee: originalFee, vipFee: vipFee), for: .normal)
        //: updateSubViewsConstraint()
        appBy()
    }

    /// 男性侧vip价格按钮点击事件
    //: @objc private func maleVipPriceButtonClick() {
    @objc private func errorWith() {
        //: guard LocationThen.share.loginUserMode.loungePlus else {
        guard LocationThen.share.loginUserMode.loungePlus else {
            // 非会员 && 默认模式
            //: if LocationThen.share.appStatus == AppSkinStatus.normal.rawValue {
            if LocationThen.share.appStatus == SharedInsetTarget.normal.rawValue {
                //: EffectPushManager.share.func__pushToSubscribeAlert()
                EffectPushManager.share.toShould()
            }
            //: dismiss()
            upDownDismiss()
            //: return
            return
        }

        //: originalFeeButtonClick()
        pastDown()
    }
}

// MARK: - CanErrorDelegate

//: extension TalkingFreeStopCallPopUpView: TalkingSocketManagerErrorDelegate {
extension LineView: CanErrorDelegate {
    //: func socket_didRecieveError(errorNo: Int, cmd: String, msg: String, data: [String: Any]) {
    func recieve(errorNo: Int, cmd: String, msg: String, data _: [String: Any]) {
        //: if cmd == "onRequestCall" {
        if cmd == (String(kStr_taskData.suffix(5)) + kStr_appTitle.replacingOccurrences(of: "tool", with: "ue") + "Call") {
            //: func__showStatusBarErrorMsg(showMsg: msg)
            detailDownArray(showMsg: msg)
            //: if errorNo == VideoChatErrorCode.MoneyLack.rawValue {
            if errorNo == CollectionNameConvertible.MoneyLack.rawValue {
                //: guard LocationThen.share.appStatus == AppSkinStatus.normal.rawValue else { return }
                guard LocationThen.share.appStatus == SharedInsetTarget.normal.rawValue else { return }
                //: EffectPushManager.share.func__jumpToWebRecharge(clickEvent: clickFreepopupButton, sufficient: false)
                EffectPushManager.share.physicsLab(clickEvent: kLet_giftData, sufficient: false)
            }
        }
    }
}

// MARK: - Layout

//: extension TalkingFreeStopCallPopUpView {
extension LineView {
    /// 更新约束
    //: private func updateSubViewsConstraint() {
    private func appBy() {
        //: if LocationThen.share.loginUserMode.loungePlus {
        if LocationThen.share.loginUserMode.loungePlus {
            //: originalFeeBtn.isHidden = true
            originalFeeBtn.isHidden = true
            //: contentView.snp.updateConstraints { make in
            contentView.snp.updateConstraints { make in
                //: make.height.equalTo(actualWidth(w: 255))
                make.height.equalTo(originalScene(w: 255))
            }
        }
    }

    /// 添加视图
    //: private func setupSubviews() {
    private func fallStatus() {
        //: addSubview(contentView)
        addSubview(contentView)
        //: contentView.addSubview(topIcon)
        contentView.addSubview(topIcon)
        //: contentView.addSubview(closeBtn)
        contentView.addSubview(closeBtn)
        //: contentView.addSubview(inputTView)
        contentView.addSubview(inputTView)
        //: contentView.addSubview(originalFeeBtn)
        contentView.addSubview(originalFeeBtn)
        //: contentView.addSubview(vipFeeBtn)
        contentView.addSubview(vipFeeBtn)
    }

    /// 添加约束
    //: private func setupSubViewsConstraint() {
    private func promptCopy() {
        //: contentView.snp.makeConstraints { make in
        contentView.snp.makeConstraints { make in
            //: make.center.equalToSuperview()
            make.center.equalToSuperview()
            //: make.width.equalTo(actualWidth(w: 297))
            make.width.equalTo(originalScene(w: 297))
            //: make.height.equalTo(actualWidth(w: 329))
            make.height.equalTo(originalScene(w: 329))
        }

        //: topIcon.snp.makeConstraints { make in
        topIcon.snp.makeConstraints { make in
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.top.equalTo(actualWidth(w: -43))
            make.top.equalTo(originalScene(w: -43))
            //: make.width.height.equalTo(actualWidth(w: 101))
            make.width.height.equalTo(originalScene(w: 101))
        }

        //: inputTView.snp.makeConstraints { make in
        inputTView.snp.makeConstraints { make in
            //: make.top.equalTo(topIcon.snp.bottom)
            make.top.equalTo(topIcon.snp.bottom)
            //: make.leading.equalTo(20)
            make.leading.equalTo(20)
            //: make.trailing.equalTo(-20)
            make.trailing.equalTo(-20)
            //: make.height.equalTo(actualWidth(w: 103))
            make.height.equalTo(originalScene(w: 103))
        }

        //: closeBtn.snp.makeConstraints { make in
        closeBtn.snp.makeConstraints { make in
            //: make.bottom.equalTo(actualWidth(w: -20))
            make.bottom.equalTo(originalScene(w: -20))
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.height.equalTo(14)
            make.height.equalTo(14)
        }

        //: vipFeeBtn.snp.makeConstraints { make in
        vipFeeBtn.snp.makeConstraints { make in
            //: make.bottom.equalTo(closeBtn.snp.top).offset(actualWidth(w: -15))
            make.bottom.equalTo(closeBtn.snp.top).offset(originalScene(w: -15))
            //: make.width.equalTo(actualWidth(w: 257))
            make.width.equalTo(originalScene(w: 257))
            //: make.height.equalTo(actualWidth(w: 54))
            make.height.equalTo(originalScene(w: 54))
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
        }

        //: originalFeeBtn.snp.makeConstraints { make in
        originalFeeBtn.snp.makeConstraints { make in
            //: make.centerX.width.height.equalTo(vipFeeBtn)
            make.centerX.width.height.equalTo(vipFeeBtn)
            //: make.bottom.equalTo(vipFeeBtn.snp.top).offset(actualWidth(w: -20))
            make.bottom.equalTo(vipFeeBtn.snp.top).offset(originalScene(w: -20))
        }
    }
}
