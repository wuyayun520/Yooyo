
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let kStr_layerCoverText:[UInt8] = [0x64,0x65,0x74,0x6e,0x65,0x6d,0x65,0x6c,0x70,0x6d,0x69,0x20,0x6e,0x65,0x65,0x62,0x20,0x74,0x6f,0x6e,0x20,0x73,0x61,0x68,0x20,0x29,0x3a,0x72,0x65,0x64,0x6f,0x63,0x28,0x74,0x69,0x6e,0x69]

/*: "  " :*/
fileprivate let kStr_rowName:String = "mediummedium"

/*: "Say something...     " :*/
fileprivate let kStr_liveText:[Character] = ["S","a","y"," ","s"]
fileprivate let kStr_tableNumberTitle:String = "omeviewi"
fileprivate let kStr_timeData:String = "makemakemakemakemake"

/*: "party_bottom_mic_open" :*/
fileprivate let kStr_colorName:String = "parinput"
fileprivate let kStr_imageData:String = "tom_mview for height"
fileprivate let kStr_labelValue:String = "ic_openself value mode left add"

/*: "party_bottom_mic_close" :*/
fileprivate let kStr_showData:String = "PARTY"
fileprivate let kStr_appearText:String = "view model_bot"
fileprivate let kStr_makeData:[Character] = ["c","l","o","s","e"]

/*: "btn_video_gift_nor" :*/
fileprivate let kStr_equalValue:String = "btn_viextension to model selected"
fileprivate let kStr_firstTitle:[Character] = ["d","e","o"]
fileprivate let kStr_iconName:String = "table let cover make_gift_nor"

/*: "btn_live_sx_nor" :*/
fileprivate let kStr_upTitle:String = "btn_livtask in"
fileprivate let kStr_bottomContent:String = "e_sx_norname info info user"

/*: "btn_live_sx_pre" :*/
fileprivate let kStr_valueData:String = "btn_lprepare image view"
fileprivate let kStr_toContent:String = "user label main and makex_pr"
fileprivate let kStr_viewContent:String = "E"

/*: "#FF2348" :*/
fileprivate let kStr_alongTitle:String = "#FF2348title interaction self"

/*: "Please contact the host to turn on the mic" :*/
fileprivate let kStr_releaseValue:[UInt8] = [0x63,0x69,0x6d,0x20,0x65,0x68,0x74,0x20,0x6e,0x6f,0x20,0x6e,0x72,0x75,0x74,0x20,0x6f,0x74,0x20,0x74,0x73,0x6f,0x68,0x20,0x65,0x68,0x74,0x20,0x74,0x63,0x61,0x74,0x6e,0x6f,0x63,0x20,0x65,0x73,0x61,0x65,0x6c,0x50]

/*: ", :*/
fileprivate let kStr_valueText:[Character] = [","]

/*: "Please select an object" :*/
fileprivate let kStr_fileValue:[Character] = ["P","l","e","a","s","e"," ","s","e","l","e","c","t"," ","a","n"]
fileprivate let kStr_effectManagerValue:String = "false text equal tap cell object"

/*: "toUid" :*/
fileprivate let kStr_tipName:String = "toUidtime component else message object"

/*: "giftId" :*/
fileprivate let kStr_playerLabValue:String = "bottom intimate inputgiftId"

/*: "giftNum" :*/
fileprivate let kStr_resultPiToTitle:[Character] = ["g","i","f","t","N","u","m"]

/*: "roomId" :*/
fileprivate let kStr_appTitle:String = "event"
fileprivate let kStr_modelValue:[Character] = ["o","o","m","I","d"]

/*: "pkgItemsetId" :*/
fileprivate let kStr_atCellData:String = "pkgItrue please game leading"
fileprivate let kStr_userValue:String = "etIdbutton point type current content"

/*: "totalMfCoin" :*/
fileprivate let kStr_messageData:[Character] = ["t","o","t","a","l"]
fileprivate let kStr_labelCountName:String = "if full center menu fileMfCoin"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  ManagerObjectProtocol.swift
//  FloraFlex
//
//  Created by DouXiu on 2024/9/25.
//

//: import UIKit
import UIKit

//: @objc protocol TalkingVoiceRoomBottomViewDelegate: NSObjectProtocol {
@objc protocol ToObjectProtocol: NSObjectProtocol {
    /// 发布弹幕按钮点击事件
    //: func bottom_commentBtnClick()
    func progressShow()
}

//: class TalkingVoiceRoomBottomView: UIView {
class ManagerObjectProtocol: UIView {
    //: open weak var delegate: TalkingVoiceRoomBottomViewDelegate?
    open weak var delegate: ToObjectProtocol?
    //: private let disposeBag = DisposeBag()
    private let disposeBag = DisposeBag()

    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: setupSubviews()
        upVoice()
        //: setupSubViewsConstraint()
        pathShared()
        //: LayerConversationListener.shared.func__addDelegate(self)
        LayerConversationListener.shared.afterStatus(self)
        //: refreshRedCountStatus()
        cloutImage()
    }

    //: @available(*, unavailable)
    @available(*, unavailable)
    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: kStr_layerCoverText.reversed(), encoding: .utf8)!)
    }

    // MARK: - Lazy Load

    //: private lazy var commentBtn: UIButton = {
    private lazy var commentBtn: UIButton = {
        //: let btn = UIButton()
        let btn = UIButton()
        //: btn.setTitle("  " + "Say something...     ".localized, for: .normal)
        btn.setTitle("  " + (String(kStr_liveText) + kStr_tableNumberTitle.replacingOccurrences(of: "view", with: "th") + "ng..." + kStr_timeData.replacingOccurrences(of: "make", with: " ")).localized, for: .normal)
        //: btn.setTitleColor(UIColor(red: 255/255.0, green: 255/255.0, blue: 255/255.0, alpha: 0.8), for: .normal)
        btn.setTitleColor(UIColor(red: 255 / 255.0, green: 255 / 255.0, blue: 255 / 255.0, alpha: 0.8), for: .normal)
        //: btn.titleLabel?.font = UIFont.pingfangFont(type: .Regular, fontSize: 14)
        btn.titleLabel?.font = UIFont.groupSize(type: .Regular, fontSize: 14)
        //: btn.setBackgroundColor(color: UIColor(red: 0/255.0, green: 0/255.0, blue: 0/255.0, alpha: 0.25), forState: .normal)
        btn.colorEffectLoad(color: UIColor(red: 0 / 255.0, green: 0 / 255.0, blue: 0 / 255.0, alpha: 0.25), forState: .normal)
        //: btn.layer.cornerRadius = 17
        btn.layer.cornerRadius = 17
        //: if LanguageManager.shared.direction == .rightToLeft {
        if DeleteClientThen.shared.direction == .rightToLeft {
            //: btn.contentHorizontalAlignment = .right
            btn.contentHorizontalAlignment = .right
            //: } else {
        } else {
            //: btn.contentHorizontalAlignment = .left
            btn.contentHorizontalAlignment = .left
        }
        //: btn.clipsToBounds = true
        btn.clipsToBounds = true
        //: btn.addTarget(self, action: #selector(commentBtnClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(imageGiftClick), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var stackView: UIStackView = {
    private lazy var stackView: UIStackView = {
        //: let v = UIStackView()
        let v = UIStackView()
        //: v.axis = .horizontal
        v.axis = .horizontal
        //: v.alignment = .trailing
        v.alignment = .trailing
        //: v.distribution = .equalSpacing
        v.distribution = .equalSpacing
        //: v.spacing = 10
        v.spacing = 10
        //: return v
        return v
        //: }()
    }()

    //: private lazy var micBtn: UIButton = {
    private lazy var micBtn: UIButton = {
        //: let btn = UIButton()
        let btn = UIButton()
        //: btn.setImage(UIImage.bundleBy(name: "party_bottom_mic_open"), for: .normal)
        btn.setImage(UIImage.bundleBy(name: (kStr_colorName.replacingOccurrences(of: "input", with: "t") + "y_bot" + String(kStr_imageData.prefix(5)) + String(kStr_labelValue.prefix(7)))), for: .normal)
        //: btn.setImage(UIImage.bundleBy(name: "party_bottom_mic_close"), for: .selected)
        btn.setImage(UIImage.bundleBy(name: (kStr_showData.lowercased() + String(kStr_appearText.suffix(4)) + "tom_mic_" + String(kStr_makeData))), for: .selected)
        //: btn.addTarget(self, action: #selector(micBtnClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(scaleOfMeasurement), for: .touchUpInside)
        //: btn.isHidden = true
        btn.isHidden = true
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var giftBtn: UIButton = {
    private lazy var giftBtn: UIButton = {
        //: let btn = UIButton()
        let btn = UIButton()
        //: btn.setImage(UIImage.bundleBy(name: "btn_video_gift_nor"), for: .normal)
        btn.setImage(UIImage.bundleBy(name: (String(kStr_equalValue.prefix(6)) + String(kStr_firstTitle) + String(kStr_iconName.suffix(9)))), for: .normal)
        //: btn.setImage(UIImage.bundleBy(name: "btn_video_gift_nor"), for: .selected)
        btn.setImage(UIImage.bundleBy(name: (String(kStr_equalValue.prefix(6)) + String(kStr_firstTitle) + String(kStr_iconName.suffix(9)))), for: .selected)
        //: btn.addTarget(self, action: #selector(giftBtnClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(projectClick), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var chatBtn: UIButton = {
    private lazy var chatBtn: UIButton = {
        //: let btn = UIButton()
        let btn = UIButton()
        //: btn.setImage(UIImage.bundleBy(name: "btn_live_sx_nor"), for: .normal)
        btn.setImage(UIImage.bundleBy(name: (String(kStr_upTitle.prefix(7)) + String(kStr_bottomContent.prefix(8)))), for: .normal)
        //: btn.setImage(UIImage.bundleBy(name: "btn_live_sx_pre"), for: .highlighted)
        btn.setImage(UIImage.bundleBy(name: (String(kStr_valueData.prefix(5)) + "ive_s" + String(kStr_toContent.suffix(4)) + kStr_viewContent.lowercased())), for: .highlighted)
        //: btn.addTarget(self, action: #selector(chatBtnClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(ageAdd), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var redCountLab: UILabel = {
    private lazy var redCountLab: UILabel = {
        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.backgroundColor = UIColor(hex: "#FF2348")
        lab.backgroundColor = UIColor(hex: (String(kStr_alongTitle.prefix(7))))
        //: lab.layer.cornerRadius = 3.5
        lab.layer.cornerRadius = 3.5
        //: lab.layer.masksToBounds = true
        lab.layer.masksToBounds = true
        //: return lab
        return lab
        //: }()
    }()

    //: private lazy var giftView: TalkingChatGiftView = {
    private lazy var giftView: PointVideoViewDelegate = {
        //: let giftV = TalkingChatGiftView(style: .party)
        let giftV = PointVideoViewDelegate(style: .party)
        //: giftV.frame = CGRect(x: 0, y: 0, width: ScreenWidth, height: ScreenHeight)
        giftV.frame = CGRect(x: 0, y: 0, width: kLet_halfData, height: kLet_noSeatName)
        //: return giftV
        return giftV
        //: }()
    }()
}

// MARK: - Event

//: extension TalkingVoiceRoomBottomView {
extension ManagerObjectProtocol {
    /// 刷新底部视图麦克风状态
    //: func refreshBottomMicStatus() {
    func bilgeStatus() {
        //: guard let itemModel = TalkingVoiceRoomManager.shared().getMikePosition(key: TalkingVoiceRoomManager.shared().partyModel.position) else {
        guard let itemModel = SubCheckedReactiveCompatible.replyShared().imageGet(key: SubCheckedReactiveCompatible.replyShared().partyModel.position) else {
            //: micBtn.isHidden = true
            micBtn.isHidden = true
            //: return
            return
        }
        //: micBtn.isHidden = false
        micBtn.isHidden = false
        //: micBtn.isSelected = (itemModel.mikeStatus != 2)
        micBtn.isSelected = (itemModel.mikeStatus != 2)
    }

    /// 刷新礼物面板上麦头像
    //: func refreshGiftIcon() {
    func playerIcon() {
        //: giftView.partyIconView.refreshIconView()
        giftView.partyIconView.dateUp()
    }

    /// 拉起弹幕评论按钮点击事件
    //: @objc private func commentBtnClick() {
    @objc private func imageGiftClick() {
        //: delegate?.bottom_commentBtnClick()
        delegate?.progressShow()
    }

    /// 麦克风按钮点击事件
    //: @objc private func micBtnClick() {
    @objc private func scaleOfMeasurement() {
        // 切换麦克风状态
        //: guard let itemModel = TalkingVoiceRoomManager.shared().getMikePosition(key: TalkingVoiceRoomManager.shared().partyModel.position) else {
        guard let itemModel = SubCheckedReactiveCompatible.replyShared().imageGet(key: SubCheckedReactiveCompatible.replyShared().partyModel.position) else {
            //: return
            return
        }
        //: switch itemModel.mikeStatus {
        switch itemModel.mikeStatus {
        //: case 0:
        case 0: // 闭麦
            //: TalkingVoiceRoomManager.shared().voiceRoom_reqChangeMike(type: 4, position: TalkingVoiceRoomManager.shared().partyModel.position)
            SubCheckedReactiveCompatible.replyShared().analyze(type: 4, position: SubCheckedReactiveCompatible.replyShared().partyModel.position)

        //: case 1:
        case 1: // 房主闭麦
            //: func__showStatusBarErrorMsg(showMsg: "Please contact the host to turn on the mic".localized)
            detailDownArray(showMsg: String(bytes: kStr_releaseValue.reversed(), encoding: .utf8)!.localized)

        //: case 2:
        case 2: // 开麦
            //: TalkingVoiceRoomManager.shared().voiceRoom_reqChangeMike(type: 5, position: TalkingVoiceRoomManager.shared().partyModel.position)
            SubCheckedReactiveCompatible.replyShared().analyze(type: 5, position: SubCheckedReactiveCompatible.replyShared().partyModel.position)

        //: default:
        default:
            //: break
            break
        }
    }

    /// 聊天列表按钮点击事件
    //: @objc private func chatBtnClick() {
    @objc private func ageAdd() {
        //: EffectPushManager.share.func__pushToChatListVC(isHalfView: true)
        EffectPushManager.share.conclude(isHalfView: true)
    }

    /// 送礼按钮点击事件
    //: @objc private func giftBtnClick() {
    @objc private func projectClick() {
        //: func__sendGift()
        appUid()
    }
}

// MARK: - 送礼

//: extension TalkingVoiceRoomBottomView {
extension ManagerObjectProtocol {
    /// 展示礼物面板
    //: func func__sendGift(selectedUid: String? = nil) {
    func appUid(selectedUid: String? = nil) {
        //: TalkingChatGiftManager.share.func__sendGiftEvent(type: .party, completion: {
        BlockThen.share.sectionDismiss(type: .party, completion: {
            //: self.func__showGiftChoiceView(selectedUid: selectedUid)
            self.viewLab(selectedUid: selectedUid)
            //: })
        })
    }

    //: func func__showGiftChoiceView(selectedUid: String? = nil) {
    func viewLab(selectedUid: String? = nil) {
        //: giftView.updateGiftInfo(needReload: true, mf_coin: LocationThen.share.loginUserMode.mf_coin)
        giftView.listener(needReload: true, mf_coin: LocationThen.share.loginUserMode.mf_coin)
        //: currentViewController()?.view.addSubview(giftView)
        giftFew()?.view.addSubview(giftView)
        //: if selectedUid != nil {
        if selectedUid != nil { // 选中单个用户
            //: giftView.partyIconView.refreshAllIcon(allSelected: false, selectedUid: selectedUid)
            giftView.partyIconView.tillRow(allSelected: false, selectedUid: selectedUid)
            //: } else {
        } else { // 全部选中
            //: giftView.partyIconView.refreshAllIcon(allSelected: true)
            giftView.partyIconView.tillRow(allSelected: true)
        }
        //: giftView.showView()
        giftView.logAction()
        //: giftView.sendActionBlock = { [weak self] (_ giftModel: TalkingRoomGiftModel, _ num: String) in
        giftView.sendActionBlock = { [weak self] (_ giftModel: EngineHandyJSON, _ num: String) in
            //: guard let self = self else { return }
            guard let self = self else { return }
            //: self.func__sendGiftMsg(giftModel: giftModel, giftNum: num)
            self.targetEnable(giftModel: giftModel, giftNum: num)
        }
    }

    /// 送礼
    //: func func__sendGiftMsg(giftModel: TalkingRoomGiftModel, giftNum: String) {
    func targetEnable(giftModel: EngineHandyJSON, giftNum: String) {
        //: let reachability = try? Reachability()
        let reachability = try? Reachability()
        //: if reachability?.connection == .unavailable {
        if reachability?.connection == .unavailable {
            //: func__showStatusBarErrorMsg(showMsg: kNetErrorMsg)
            detailDownArray(showMsg: kLet_accuracyContent)
            //: return
            return
        }

        // 拼接需要送礼的Uid
        //: var toUid = ""
        var toUid = ""
        //: TalkingVoiceRoomManager.shared().getAllMikePositions().forEach { _, model in
        SubCheckedReactiveCompatible.replyShared().magnitudePositions().forEach { _, model in
            //: if model.uid > 0, String(model.uid) != LocationThen.share.loginUid, model.needGift == true {
            if model.uid > 0, String(model.uid) != LocationThen.share.loginUid, model.needGift == true {
                //: if toUid.count > 0 {
                if toUid.count > 0 {
                    //: toUid.append(",\(model.uid)")
                    toUid.append(",\(model.uid)")
                    //: } else {
                } else {
                    //: toUid.append("\(model.uid)")
                    toUid.append("\(model.uid)")
                }
            }
        }
        //: guard toUid.count > 0 else {
        guard toUid.count > 0 else {
            //: func__showStatusBarErrorMsg(showMsg: "Please select an object".localized)
            detailDownArray(showMsg: (String(kStr_fileValue) + String(kStr_effectManagerValue.suffix(7))).localized)
            //: return
            return
        }

        //: var params: [String: Any] = [:]
        var params: [String: Any] = [:]
        //: params["toUid"] = toUid
        params[(String(kStr_tipName.prefix(5)))] = toUid
        //: params["giftId"] = giftModel.gid
        params[(String(kStr_playerLabValue.suffix(6)))] = giftModel.gid
        //: params["giftNum"] = giftNum
        params[(String(kStr_resultPiToTitle))] = giftNum
        //: params["roomId"] = TalkingVoiceRoomManager.shared().partyModel.roomId
        params[(kStr_appTitle.replacingOccurrences(of: "event", with: "r") + String(kStr_modelValue))] = SubCheckedReactiveCompatible.replyShared().partyModel.roomId
        //: if giftModel.pkgItemsetId != nil {
        if giftModel.pkgItemsetId != nil {
            //: params["pkgItemsetId"] = giftModel.pkgItemsetId
            params[(String(kStr_atCellData.prefix(4)) + "tems" + String(kStr_userValue.prefix(4)))] = giftModel.pkgItemsetId
        }

        //: UpsetCountRequestTool.req_sendPartyGift(param: params, completion: { succeed, result, errorModel in
        UpsetCountRequestTool.projectCompletion(param: params, completion: { succeed, result, errorModel in
            //: guard succeed else {
            guard succeed else {
                //: self.dealSendMsgError(errorCode: errorModel!.errorCode, errorStr: errorModel!.errorMsg, isGift: true, isResend: false)
                self.withAction(errorCode: errorModel!.errorCode, errorStr: errorModel!.errorMsg, isGift: true, isResend: false)
                //: return
                return
            }
            // 更新本地礼物背包
            //: if giftModel.pkgItemsetId != nil {
            if giftModel.pkgItemsetId != nil {
                //: self.giftView.bags_removeGiftPackage(pkgItemsetId: giftModel.pkgItemsetId!, num: Int(giftNum) ?? 0)
                self.giftView.chronicle(pkgItemsetId: giftModel.pkgItemsetId!, num: Int(giftNum) ?? 0)
            }
            //: self.func__insertGiftMessageWithExtral(extral: result as! [String: Any])
            self.playerTimeView(extral: result as! [String: Any])
            //: })
        })
    }

    //: func func__insertGiftMessageWithExtral(extral: [String: Any]) {
    func playerTimeView(extral: [String: Any]) {
        //: let extralInfo = extral
        let extralInfo = extral
        //: if extralInfo.keys.contains("totalMfCoin") {
        if extralInfo.keys.contains((String(kStr_messageData) + String(kStr_labelCountName.suffix(6)))) {
            //: let totalMfCoin: NSNumber = extralInfo["totalMfCoin"] as! NSNumber
            let totalMfCoin: NSNumber = extralInfo[(String(kStr_messageData) + String(kStr_labelCountName.suffix(6)))] as! NSNumber
            //: LocationThen.share.loginUserMode.mf_coin = totalMfCoin.stringValue
            LocationThen.share.loginUserMode.mf_coin = totalMfCoin.stringValue
        }
        //: giftView.updateGiftInfo(needReload: false, mf_coin: LocationThen.share.loginUserMode.mf_coin)
        giftView.listener(needReload: false, mf_coin: LocationThen.share.loginUserMode.mf_coin)
    }

    //: func dealSendMsgError(errorCode: Int, errorStr: String, isGift: Bool, isResend: Bool) {
    func withAction(errorCode: Int, errorStr: String, isGift _: Bool, isResend _: Bool) {
        //: if errorCode == 50203 {
        if errorCode == 50203 {
            //: guard LocationThen.share.loginUserMode.status != 1 else {
            guard LocationThen.share.loginUserMode.status != 1 else {
                //: if !errorStr.isEmptyString {
                if !errorStr.isEmptyString {
                    //: func__showStatusBarErrorMsg(showMsg: errorStr)
                    detailDownArray(showMsg: errorStr)
                }
                //: return
                return
            }
            //: EffectPushManager.share.func__jumpToWebRecharge(clickEvent: clickSendingiftsButton, sufficient: false)
            EffectPushManager.share.physicsLab(clickEvent: kLet_clickValue, sufficient: false)
            //: giftView.dismissView()
            giftView.pushClear()

            //: } else if errorCode == 10888 {
        } else if errorCode == 10888 {
            //: let view = TalkingLiveVipSubscribePopView(frame: CGRect(x: 0, y: 0, width: ScreenWidth, height: ScreenHeight))
            let view = ItemView(frame: CGRect(x: 0, y: 0, width: kLet_halfData, height: kLet_noSeatName))
            //: view.show()
            view.momentWithoutPhone()

            //: } else {
        } else {
            //: if !errorStr.isEmptyString {
            if !errorStr.isEmptyString {
                //: func__showStatusBarErrorMsg(showMsg: errorStr)
                detailDownArray(showMsg: errorStr)
            }
        }
    }
}

// MARK: - VideoManagerDelegate【刷新私信红点状态】

//: extension TalkingVoiceRoomBottomView: IMManagerDelegate {
extension ManagerObjectProtocol: VideoManagerDelegate {
    //: func onUnreadMsgCountChanged(count: Int) {
    func remark(count _: Int) {
        //: refreshRedCountStatus()
        cloutImage()
    }

    /// 刷新消息未读数状态
    //: func refreshRedCountStatus() {
    func cloutImage() {
        //: var msgCount = 0
        var msgCount = 0
        //: let convLists = [LayerConversationListener.shared.topConvList, LayerConversationListener.shared.norConvList]
        let convLists = [LayerConversationListener.shared.topConvList, LayerConversationListener.shared.norConvList]
        //: for list in convLists {
        for list in convLists {
            //: if let model = list.first(where: { $0.chatType == .private && $0.unreadCount > 0 }) {
            if let model = list.first(where: { $0.chatType == .private && $0.unreadCount > 0 }) {
                //: msgCount += Int(model.unreadCount)
                msgCount += Int(model.unreadCount)
                //: break
                break // 找到第一个未读消息后退出，不需要全部计算，只要有未读数就展示红点
            }
        }
        //: redCountLab.isHidden = (msgCount == 0)
        redCountLab.isHidden = (msgCount == 0)
    }
}

// MARK: - Layout

//: extension TalkingVoiceRoomBottomView {
extension ManagerObjectProtocol {
    /// 添加视图
    //: private func setupSubviews() {
    private func upVoice() {
        //: addSubview(commentBtn)
        addSubview(commentBtn)
        //: addSubview(stackView)
        addSubview(stackView)
        //: stackView.addArrangedSubview(micBtn)
        stackView.addArrangedSubview(micBtn)
        //: stackView.addArrangedSubview(chatBtn)
        stackView.addArrangedSubview(chatBtn)
        //: chatBtn.addSubview(redCountLab)
        chatBtn.addSubview(redCountLab)
        //: stackView.addArrangedSubview(giftBtn)
        stackView.addArrangedSubview(giftBtn)
    }

    /// 更新布局
    //: private func setupSubViewsConstraint() {
    private func pathShared() {
        //: commentBtn.snp.makeConstraints { make in
        commentBtn.snp.makeConstraints { make in
            //: make.centerY.equalToSuperview()
            make.centerY.equalToSuperview()
            //: make.leading.equalTo(10)
            make.leading.equalTo(10)
            //: make.height.equalTo(actualWidth(w: 33))
            make.height.equalTo(originalScene(w: 33))
            //: make.width.equalTo(actualWidth(w: 157))
            make.width.equalTo(originalScene(w: 157))
        }

        //: stackView.snp.makeConstraints { make in
        stackView.snp.makeConstraints { make in
            //: make.centerY.equalToSuperview()
            make.centerY.equalToSuperview()
            //: make.trailing.equalTo(-10)
            make.trailing.equalTo(-10)
        }
        //: micBtn.snp.makeConstraints { make in
        micBtn.snp.makeConstraints { make in
            //: make.width.height.equalTo(33)
            make.width.height.equalTo(33)
        }
        //: giftBtn.snp.makeConstraints { make in
        giftBtn.snp.makeConstraints { make in
            //: make.width.height.equalTo(micBtn)
            make.width.height.equalTo(micBtn)
        }
        //: chatBtn.snp.makeConstraints { make in
        chatBtn.snp.makeConstraints { make in
            //: make.width.height.equalTo(micBtn)
            make.width.height.equalTo(micBtn)
        }

        //: redCountLab.snp.makeConstraints { make in
        redCountLab.snp.makeConstraints { make in
            //: make.top.equalTo(7)
            make.top.equalTo(7)
            //: make.trailing.equalTo(-5)
            make.trailing.equalTo(-5)
            //: make.width.height.equalTo(7)
            make.width.height.equalTo(7)
        }
    }
}
