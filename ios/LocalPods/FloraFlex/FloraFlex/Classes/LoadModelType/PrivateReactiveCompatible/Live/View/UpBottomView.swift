
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let kStr_sizeTitle:[UInt8] = [0x6e,0x69,0x6e,0x73,0x2f,0x64,0x68,0x63,0x62,0x75,0x3d,0x2e,0x27,0x6f,0x66,0x74,0x27,0x69,0x68,0x73,0x27,0x65,0x62,0x62,0x69,0x27,0x6e,0x6a,0x77,0x6b,0x62,0x6a,0x62,0x69,0x73,0x62,0x63]

private func pathPlayer(page num: UInt8) -> UInt8 {
    return num ^ 7
}

/*: "  " :*/
fileprivate let kStr_progressValue:[Character] = [" "," "]

/*: "Say something...     " :*/
fileprivate let kStr_viewName:String = "content letSay s"
fileprivate let kStr_frameLoadData:String = "color equal text columning."
fileprivate let kStr_hiddenValue:String = "sectionsection"

/*: "btn_video_gift_nor" :*/
fileprivate let kStr_indexTableName:String = "time and quantitybtn_v"
fileprivate let kStr_makeValue:String = "gift_norminimize let application document"

/*: "btn_live_gd_nor" :*/
fileprivate let kStr_aspectData:String = "btn_liobject photo view block manager"
fileprivate let kStr_viewContent:String = "_normake voice"

/*: "btn_live_gd_pre" :*/
fileprivate let kStr_pathValue:[Character] = ["b","t","n","_","l","i"]
fileprivate let kStr_sizeName:[Character] = ["v","e","_","g"]
fileprivate let kStr_removeTitle:String = "d_preconversation app frame line"

/*: "btn_live_sx_nor" :*/
fileprivate let kStr_colorName:[Character] = ["b","t","n","_","l","i"]
fileprivate let kStr_hiddenName:[Character] = ["v","e","_","s","x","_","n","o","r"]

/*: "btn_live_sx_pre" :*/
fileprivate let kStr_picData:[Character] = ["b","t","n","_","l","i","v","e","_","s","x","_","p"]
fileprivate let kStr_reportData:[Character] = ["r","e"]

/*: "#FF2348" :*/
fileprivate let kStr_messageValue:[Character] = ["#","F","F","2","3","4"]
fileprivate let kStr_labelValue:[Character] = ["8"]

/*: "btn_live_yx_nor" :*/
fileprivate let kStr_norText:String = "btn_livimage if model"
fileprivate let kStr_pathText:[Character] = ["e","_","y","x","_","n","o","r"]

/*: "btn_live_yx_pre" :*/
fileprivate let kStr_allTitle:String = "btn_type manager type return any"
fileprivate let kStr_currentDateTextValue:String = "false model arrangement status wrap_yx_pre"

/*: "toUid" :*/
fileprivate let kStr_dataValue:String = "toUidin model value type and"

/*: "giftId" :*/
fileprivate let kStr_valueLayerData:[Character] = ["g","i","f","t","I","d"]

/*: "giftNum" :*/
fileprivate let kStr_iconData:[Character] = ["g","i"]
fileprivate let kStr_onData:[Character] = ["f","t","N","u","m"]

/*: "pkgItemsetId" :*/
fileprivate let kStr_maxTitle:String = "indicator view to icon managerpkgIt"
fileprivate let kStr_labelContent:String = "view quote false fataltId"

/*: "totalMfCoin" :*/
fileprivate let kStr_indexName:String = "text center shadowtotalMf"
fileprivate let kStr_kitData:String = "extension matchCoin"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  UpBottomView.swift
//  AbroadTalking
//
//  Created by Charlotte on 2023/7/7.
//

//: import UIKit
import UIKit

//: @objc protocol TalkingLiveRoomBottomViewDelegate: NSObjectProtocol {
@objc protocol TimeViewDelegate: NSObjectProtocol {
    //: func func__commentBtnClick()
    func modePerform()
}

//: class TalkingLiveRoomBottomView: UIView {
class UpBottomView: UIView {
    //: var toUid: String?
    var toUid: String? /// 送给谁

    //: open weak var delegate: TalkingLiveRoomBottomViewDelegate?
    open weak var delegate: TimeViewDelegate?

    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: setupSubviews()
        toRelease()
        //: setupSubViewsConstraint()
        isoclinal()
        //: LayerConversationListener.shared.func__addDelegate(self)
        LayerConversationListener.shared.afterStatus(self)
        //: refreshRedCountStatus()
        betweenFrom()
    }

    //: @available(*, unavailable)
    @available(*, unavailable)
    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: kStr_sizeTitle.map{pathPlayer(page: $0)}, encoding: .utf8)!)
    }

    //: deinit {
    deinit {
        //: NotificationCenter.default.removeObserver(self)
        NotificationCenter.default.removeObserver(self)
    }

    // MARK: - Lazy Load

    //: private lazy var contentView: UIView = {
    private lazy var contentView: UIView = {
        //: let view = UIView()
        let view = UIView()
        //: view.backgroundColor = UIColor.clear
        view.backgroundColor = UIColor.clear
        //: return view
        return view
        //: }()
    }()

    //: private lazy var commentBtn: UIButton = {
    private lazy var commentBtn: UIButton = {
        //: let btn = UIButton()
        let btn = UIButton()
        //: btn.setTitle("  " + "Say something...     ".localized, for: .normal)
        btn.setTitle("  " + (String(kStr_viewName.suffix(5)) + "ometh" + String(kStr_frameLoadData.suffix(4)) + "..   " + kStr_hiddenValue.replacingOccurrences(of: "section", with: " ")).localized, for: .normal)
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
        btn.addTarget(self, action: #selector(lineup), for: .touchUpInside)
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
        //: v.alignment = .leading
        v.alignment = .leading
        //: v.distribution = .equalSpacing
        v.distribution = .equalSpacing
        //: v.spacing = 10
        v.spacing = 10
        //: return v
        return v
        //: }()
    }()

    //: private lazy var giftBtn: UIButton = {
    private lazy var giftBtn: UIButton = {
        //: let btn = UIButton()
        let btn = UIButton()
        //: btn.setImage(UIImage.bundleBy(name: "btn_video_gift_nor"), for: .normal)
        btn.setImage(UIImage.bundleBy(name: (String(kStr_indexTableName.suffix(5)) + "ideo_" + String(kStr_makeValue.prefix(8)))), for: .normal)
        //: btn.setImage(UIImage.bundleBy(name: "btn_video_gift_nor"), for: .selected)
        btn.setImage(UIImage.bundleBy(name: (String(kStr_indexTableName.suffix(5)) + "ideo_" + String(kStr_makeValue.prefix(8)))), for: .selected)
        //: btn.addTarget(self, action: #selector(giftBtnClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(workIn), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var moreBtn: UIButton = {
    private lazy var moreBtn: UIButton = {
        //: let btn = UIButton()
        let btn = UIButton()
        //: btn.setImage(UIImage.bundleBy(name: "btn_live_gd_nor"), for: .normal)
        btn.setImage(UIImage.bundleBy(name: (String(kStr_aspectData.prefix(6)) + "ve_gd" + String(kStr_viewContent.prefix(4)))), for: .normal)
        //: btn.setImage(UIImage.bundleBy(name: "btn_live_gd_pre"), for: .highlighted)
        btn.setImage(UIImage.bundleBy(name: (String(kStr_pathValue) + String(kStr_sizeName) + String(kStr_removeTitle.prefix(5)))), for: .highlighted)
        //: btn.addTarget(self, action: #selector(moreBtnClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(backgroundBy), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var chatBtn: UIButton = {
    private lazy var chatBtn: UIButton = {
        //: let btn = UIButton()
        let btn = UIButton()
        //: btn.setImage(UIImage.bundleBy(name: "btn_live_sx_nor"), for: .normal)
        btn.setImage(UIImage.bundleBy(name: (String(kStr_colorName) + String(kStr_hiddenName))), for: .normal)
        //: btn.setImage(UIImage.bundleBy(name: "btn_live_sx_pre"), for: .highlighted)
        btn.setImage(UIImage.bundleBy(name: (String(kStr_picData) + String(kStr_reportData))), for: .highlighted)
        //: btn.addTarget(self, action: #selector(chatBtnClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(firstClick), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var redCountLab: UILabel = {
    private lazy var redCountLab: UILabel = {
        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.backgroundColor = UIColor(hex: "#FF2348")
        lab.backgroundColor = UIColor(hex: (String(kStr_messageValue) + String(kStr_labelValue)))
        //: lab.layer.cornerRadius = 3.5
        lab.layer.cornerRadius = 3.5
        //: lab.layer.masksToBounds = true
        lab.layer.masksToBounds = true
        //: return lab
        return lab
        //: }()
    }()

    //: private lazy var gameBtn: UIButton = {
    private lazy var gameBtn: UIButton = {
        //: let btn = UIButton()
        let btn = UIButton()
        //: btn.setImage(UIImage.bundleBy(name: "btn_live_yx_nor"), for: .normal)
        btn.setImage(UIImage.bundleBy(name: (String(kStr_norText.prefix(7)) + String(kStr_pathText))), for: .normal)
        //: btn.setImage(UIImage.bundleBy(name: "btn_live_yx_pre"), for: .highlighted)
        btn.setImage(UIImage.bundleBy(name: (String(kStr_allTitle.prefix(4)) + "live" + String(kStr_currentDateTextValue.suffix(7)))), for: .highlighted)
        //: btn.addTarget(self, action: #selector(gameBtnClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(secondWith), for: .touchUpInside)
        //: btn.isHidden = true
        btn.isHidden = true
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var giftView: TalkingChatGiftView = {
    private lazy var giftView: PointVideoViewDelegate = {
        //: let giftV = TalkingChatGiftView(style: .live)
        let giftV = PointVideoViewDelegate(style: .live)
        //: giftV.frame = CGRect(x: 0, y: 0, width: ScreenWidth, height: ScreenHeight)
        giftV.frame = CGRect(x: 0, y: 0, width: kLet_halfData, height: kLet_noSeatName)
        //: return giftV
        return giftV
        //: }()
    }()

    //: private lazy var moreView: TalkingLiveRoomMoreView = {
    private lazy var moreView: PointTitleMoreView = {
        //: let v = TalkingLiveRoomMoreView()
        let v = PointTitleMoreView()
        //: return v
        return v
        //: }()
    }()

    //: private lazy var gamesView: TalkingLiveRoomGamesView = {
    private lazy var gamesView: FlipAddView = {
        //: let v = TalkingLiveRoomGamesView()
        let v = FlipAddView()
        //: return v
        return v
        //: }()
    }()
}

// MARK: - Event

//: extension TalkingLiveRoomBottomView {
extension UpBottomView {
    /// 拉起弹幕评论
    //: @objc private func commentBtnClick() {
    @objc private func lineup() {
        //: delegate?.func__commentBtnClick()
        delegate?.modePerform()
    }

    /// 送礼
    //: @objc private func giftBtnClick() {
    @objc private func workIn() {
        //: func__sendGift()
        nameRangeShared()
    }

    /// 聊天列表
    //: @objc private func chatBtnClick() {
    @objc private func firstClick() {
        //: EffectPushManager.share.func__pushToChatListVC(isHalfView: true)
        EffectPushManager.share.conclude(isHalfView: true)
    }

    /// 更多
    //: @objc private func moreBtnClick() {
    @objc private func backgroundBy() {
        //: moreView.showView()
        moreView.isoclinic()
    }

    /// 游戏
    //: @objc private func gameBtnClick() {
    @objc private func secondWith() {
        //: gamesView.showView(from: .LiveRoom)
        gamesView.withOmit(from: .LiveRoom)
    }
}

// MARK: - VideoManagerDelegate【刷新私信红点状态】

//: extension TalkingLiveRoomBottomView: IMManagerDelegate {
extension UpBottomView: VideoManagerDelegate {
    //: func onUnreadMsgCountChanged(count: Int) {
    func remark(count _: Int) {
        //: refreshRedCountStatus()
        betweenFrom()
    }

    /// 刷新消息未读数状态
    //: func refreshRedCountStatus() {
    func betweenFrom() {
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

// MARK: - 送礼

//: extension TalkingLiveRoomBottomView {
extension UpBottomView {
    //: func func__sendGift() {
    func nameRangeShared() {
        //: TalkingChatGiftManager.share.func__sendGiftEvent(type: .live, completion: {
        BlockThen.share.sectionDismiss(type: .live, completion: {
            //: self.func__showGiftChoiceView()
            self.favorite()
            //: })
        })
    }

    //: func func__showGiftChoiceView() {
    func favorite() {
        //: giftView.updateGiftInfo(needReload: true, mf_coin: LocationThen.share.loginUserMode.mf_coin)
        giftView.listener(needReload: true, mf_coin: LocationThen.share.loginUserMode.mf_coin)
        //: currentViewController()?.view.addSubview(giftView)
        giftFew()?.view.addSubview(giftView)
        //: giftView.showView()
        giftView.logAction()

        //: giftView.sendActionBlock = { [weak self] (_ giftModel: TalkingRoomGiftModel, _ num: String) in
        giftView.sendActionBlock = { [weak self] (_ giftModel: EngineHandyJSON, _ num: String) in
            //: guard let self = self else { return }
            guard let self = self else { return }
            //: self.func__sendGiftMsg(giftModel: giftModel, giftNum: num)
            self.buildNum(giftModel: giftModel, giftNum: num)
        }
    }

    //: func func__sendGiftMsg(giftModel: TalkingRoomGiftModel, giftNum: String) {
    func buildNum(giftModel: EngineHandyJSON, giftNum: String) {
        //: let reachability = try? Reachability()
        let reachability = try? Reachability()
        //: if reachability?.connection == .unavailable {
        if reachability?.connection == .unavailable {
            //: func__showStatusBarErrorMsg(showMsg: kNetErrorMsg)
            detailDownArray(showMsg: kLet_accuracyContent)
            //: return
            return
        }
        //: var params: [String: Any] = [:]
        var params: [String: Any] = [:]
        //: if toUid != nil {
        if toUid != nil {
            //: params["toUid"] = toUid
            params[(String(kStr_dataValue.prefix(5)))] = toUid
        }
        //: params["giftId"] = giftModel.gid
        params[(String(kStr_valueLayerData))] = giftModel.gid
        //: params["giftNum"] = giftNum
        params[(String(kStr_iconData) + String(kStr_onData))] = giftNum
        //: if giftModel.pkgItemsetId != nil {
        if giftModel.pkgItemsetId != nil {
            //: params["pkgItemsetId"] = giftModel.pkgItemsetId
            params[(String(kStr_maxTitle.suffix(5)) + "emse" + String(kStr_labelContent.suffix(3)))] = giftModel.pkgItemsetId
        }

        //: UpsetCountRequestTool.req_SendGiftLive(param: params, completion: { succeed, result, errorModel in
        UpsetCountRequestTool.dateEnter(param: params, completion: { succeed, result, errorModel in
            //: guard succeed else {
            guard succeed else {
                //: self.dealSendMsgError(errorCode: errorModel!.errorCode, errorStr: errorModel!.errorMsg, isGift: true, isResend: false)
                self.viewResend(errorCode: errorModel!.errorCode, errorStr: errorModel!.errorMsg, isGift: true, isResend: false)
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
            self.withInstill(extral: result as! [String: Any])
            //: })
        })
    }

    //: func func__insertGiftMessageWithExtral(extral: [String: Any]) {
    func withInstill(extral: [String: Any]) {
        //: let extralInfo = extral
        let extralInfo = extral

        //: if extralInfo.keys.contains("totalMfCoin") {
        if extralInfo.keys.contains((String(kStr_indexName.suffix(7)) + String(kStr_kitData.suffix(4)))) {
            //: let totalMfCoin: NSNumber = extralInfo["totalMfCoin"] as! NSNumber
            let totalMfCoin: NSNumber = extralInfo[(String(kStr_indexName.suffix(7)) + String(kStr_kitData.suffix(4)))] as! NSNumber
            //: LocationThen.share.loginUserMode.mf_coin = totalMfCoin.stringValue
            LocationThen.share.loginUserMode.mf_coin = totalMfCoin.stringValue
        }
        //: giftView.updateGiftInfo(needReload: false, mf_coin: LocationThen.share.loginUserMode.mf_coin)
        giftView.listener(needReload: false, mf_coin: LocationThen.share.loginUserMode.mf_coin)
    }

    //: func dealSendMsgError(errorCode: Int, errorStr: String, isGift: Bool, isResend: Bool) {
    func viewResend(errorCode: Int, errorStr: String, isGift _: Bool, isResend _: Bool) {
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

// MARK: - Layout

//: extension TalkingLiveRoomBottomView {
extension UpBottomView {
    /// 刷新底部视图
    //: func refreshBottomView(_ liveModel: TalkingLiveRoomModel) {
    func circle(_ liveModel: SharedModel) {
        //: toUid = String(liveModel.streamerInfo.uid)
        toUid = String(liveModel.streamerInfo.uid)
        // 非主播没有更多按钮
        //: let isAnchor = (String(liveModel.streamerInfo.uid) == LocationThen.share.loginUid)
        let isAnchor = (String(liveModel.streamerInfo.uid) == LocationThen.share.loginUid)
        //: if isAnchor == false {
        if isAnchor == false {
            //: stackView.removeArrangedSubview(moreBtn)
            stackView.removeArrangedSubview(moreBtn)
            //: moreBtn.isHidden = true
            moreBtn.isHidden = true
        }

        // 非审核模式 && 有游戏
        //: if LocationThen.share.appStatus != AppSkinStatus.special.rawValue,
        if LocationThen.share.appStatus != SharedInsetTarget.special.rawValue,
           //: liveModel.gameList.count > 0
           liveModel.gameList.count > 0
        {
            //: gameBtn.isHidden = false
            gameBtn.isHidden = false
            //: } else {
        } else {
            //: stackView.removeArrangedSubview(gameBtn)
            stackView.removeArrangedSubview(gameBtn)
            //: gameBtn.isHidden = true
            gameBtn.isHidden = true
        }
    }

    //: func setupSubviews() {
    func toRelease() {
        //: addSubview(contentView)
        addSubview(contentView)
        //: contentView.addSubview(commentBtn)
        contentView.addSubview(commentBtn)
        //: contentView.addSubview(stackView)
        contentView.addSubview(stackView)
        //: stackView.addArrangedSubview(gameBtn)
        stackView.addArrangedSubview(gameBtn)
        //: stackView.addArrangedSubview(chatBtn)
        stackView.addArrangedSubview(chatBtn)
        //: chatBtn.addSubview(redCountLab)
        chatBtn.addSubview(redCountLab)
        //: stackView.addArrangedSubview(moreBtn)
        stackView.addArrangedSubview(moreBtn)
        //: stackView.addArrangedSubview(giftBtn)
        stackView.addArrangedSubview(giftBtn)
    }

    //: func setupSubViewsConstraint() {
    func isoclinal() {
        //: contentView.snp.makeConstraints { make in
        contentView.snp.makeConstraints { make in
            //: make.top.leading.trailing.bottom.equalTo(self)
            make.top.leading.trailing.bottom.equalTo(self)
        }
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

        //: giftBtn.snp.makeConstraints { make in
        giftBtn.snp.makeConstraints { make in
            //: make.width.height.equalTo(33)
            make.width.height.equalTo(33)
        }
        //: moreBtn.snp.makeConstraints { make in
        moreBtn.snp.makeConstraints { make in
            //: make.width.height.equalTo(giftBtn)
            make.width.height.equalTo(giftBtn)
        }
        //: chatBtn.snp.makeConstraints { make in
        chatBtn.snp.makeConstraints { make in
            //: make.width.height.equalTo(giftBtn)
            make.width.height.equalTo(giftBtn)
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
        //: gameBtn.snp.makeConstraints { make in
        gameBtn.snp.makeConstraints { make in
            //: make.width.height.equalTo(giftBtn)
            make.width.height.equalTo(giftBtn)
        }
    }
}
