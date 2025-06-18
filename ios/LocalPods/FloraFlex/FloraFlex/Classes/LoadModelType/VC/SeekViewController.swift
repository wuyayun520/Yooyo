
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let kStr_commandData:[UInt8] = [0xe2,0xe5,0xe2,0xff,0xa3,0xe8,0xe4,0xef,0xee,0xf9,0xb1,0xa2,0xab,0xe3,0xea,0xf8,0xab,0xe5,0xe4,0xff,0xab,0xe9,0xee,0xee,0xe5,0xab,0xe2,0xe6,0xfb,0xe7,0xee,0xe6,0xee,0xe5,0xff,0xee,0xef]

private func dataKit(top num: UInt8) -> UInt8 {
    return num ^ 139
}

/*: "icon_photo_giftbg" :*/
fileprivate let kStr_positionValue:String = "return if makeicon_"
fileprivate let kStr_defineLabValue:String = "giconftbg"

/*: "Send" :*/
fileprivate let kStr_padNameData:[Character] = ["S","e","n","d"]

/*: "nav_back_black_nor" :*/
fileprivate let kStr_pathValue:String = "key return to insidenav_b"
fileprivate let kStr_coverEmptyViewData:String = "instance like for downk_nor"

/*: "toUid" :*/
fileprivate let kStr_topText:[Character] = ["t","o","U","i","d"]

/*: "giftId" :*/
fileprivate let kStr_leadingAspectValue:[Character] = ["g","i","f","t","I","d"]

/*: "giftNum" :*/
fileprivate let kStr_contentPriceTipData:String = "giftNuup message view file"
fileprivate let kStr_postText:String = "equal"

/*: "unlockMsgId" :*/
fileprivate let kStr_imageButtonData:String = "unlolab"
fileprivate let kStr_sexName:String = "female head viewMsgId"

/*: "Need a %@ (%@ Gold coins) to unlock" :*/
fileprivate let kStr_actionName:[UInt8] = [0x3a,0x11,0x11,0x10,0x54,0x15,0x54,0x51,0x34,0x54,0x5c,0x51,0x34,0x54,0x33,0x1b,0x18,0x10,0x54,0x17,0x1b,0x1d,0x1a,0x7,0x5d,0x54,0x0,0x1b,0x54,0x1,0x1a,0x18,0x1b,0x17,0x1f]

private func legacyReload(make num: UInt8) -> UInt8 {
    return num ^ 116
}

/*: "icon_photo_lock" :*/
fileprivate let kStr_editColorValue:String = "icowill"
fileprivate let kStr_dataName:[Character] = ["_","l","o","c","k"]

/*: "Click on the screen to view 15s" :*/
fileprivate let kStr_fromValue:[UInt8] = [0xf,0x38,0x35,0x2f,0x37,0xec,0x3b,0x3a,0xec,0x40,0x34,0x31,0xec,0x3f,0x2f,0x3e,0x31,0x31,0x3a,0xec,0x40,0x3b,0xec,0x42,0x35,0x31,0x43,0xec,0xfd,0x1,0x3f]

fileprivate func auditoryImage(view num: UInt8) -> UInt8 {
    let value = Int(num) + 52
    if value > 255 {
        return UInt8(value - 256)
    } else {
        return UInt8(value)
    }
}

/*: "icon_photo_burn" :*/
fileprivate let kStr_homeData:String = "distance bottom name dropicon_"
fileprivate let kStr_mutualLabelName:[Character] = ["r","n"]

/*: "Already burned" :*/
fileprivate let kStr_managerContent:String = "Alreaplace sight view"
fileprivate let kStr_interactionValue:[Character] = ["d","y"," ","b","u","r","n","e","d"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  SeekViewController.swift
//  AbroadTalking
//
//  Created by young on 2023/1/4.
//

//: import UIKit
import UIKit

//: typealias IntimatePhotoBlock = (_ model: AddModel) -> Void
typealias IntimatePhotoBlock = (_ model: AddModel) -> Void

//: class TalkingIntimatePhotoPreviewVC: TalkingBaseViewController {
class SeekViewController: LayerRecognizerDelegate {
    //: var statusBlock: IntimatePhotoBlock?
    var statusBlock: IntimatePhotoBlock? // 同步状态block
    //: var sendGiftResultBlock: FinishBlock?
    var sendGiftResultBlock: FinishBlock? // 送礼结果block
    //: private var imageTotalData = LayerCellData(direction: .MsgDirectionOutgoing)
    private var imageTotalData = LayerCellData(direction: .MsgDirectionOutgoing) // 图片消息数据
    //: private var photoModel = AddModel()
    private var photoModel = AddModel() // 当前私密照片模型
    //: private var targetId = ""                                       // 私密照片发送方ID
    private var targetId = "" // 私密照片发送方ID
    //: private var countdownTimer: Timer?
    private var countdownTimer: Timer? // 倒计时
    //: private var isMySelf = false
    private var isMySelf = false // 是否本人

    /// 初始化
    /// - Parameters:
    ///   - imageCellData: 图片模型
    ///   - toUid: 对方Id
    //: init(imageCellData: LayerCellData, toUid: String) {
    init(imageCellData: LayerCellData, toUid: String) {
        //: super.init(nibName: nil, bundle: nil)
        super.init(nibName: nil, bundle: nil)
        //: imageTotalData = imageCellData
        imageTotalData = imageCellData
        //: photoModel = imageTotalData.msgModel.msgInfo.intimatePhoto
        photoModel = imageTotalData.msgModel.msgInfo.intimatePhoto // 引用类型，修改该数据，imageCellData会同步修改
        //: targetId = toUid
        targetId = toUid
        //: isMySelf = (imageTotalData.msgModel.user.uid == Int(LocationThen.share.loginUserMode.userID))
        isMySelf = (imageTotalData.msgModel.user.uid == Int(LocationThen.share.loginUserMode.userID))
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: kStr_commandData.map{dataKit(top: $0)}, encoding: .utf8)!)
    }

    //: override func viewDidDisappear(_ animated: Bool) {
    override func viewDidDisappear(_ animated: Bool) {
        //: super.viewDidDisappear(animated)
        super.viewDidDisappear(animated)
        //: popGesture(isOpen: true)
        unAgencyOn(isOpen: true)
    }

    //: override func viewDidAppear(_ animated: Bool) {
    override func viewDidAppear(_ animated: Bool) {
        //: super.viewDidAppear(animated)
        super.viewDidAppear(animated)
        //: popGesture(isOpen: false)
        unAgencyOn(isOpen: false)
    }

    //: override func viewDidLoad() {
    override func viewDidLoad() {
        //: super.viewDidLoad()
        super.viewDidLoad()
        //: self.hideNavi = true
        self.hideNavi = true

        //: setupSubviews()
        setupViewSubviews()
        //: setupSubViewsConstraint()
        blockColor()
        //: refreshUI()
        announcement()
    }

    //: override func loadView() {
    override func loadView() {
        //: if #available(iOS 13.2, *) {
        if #available(iOS 13.2, *) {
            //: if LocationThen.share.appConfigMode.disableShootScreen {
            if LocationThen.share.appConfigMode.disableShootScreen {
                //: super.loadView()
                super.loadView()
                //: } else {
            } else {
                //: let bgView = MAScreenShieldView(frame: CGRect(x: 0, y: 0, width: ScreenWidth, height: ScreenHeight-StatusBarNavigationBarHeight))
                let bgView = UpBackgroundThen(frame: CGRect(x: 0, y: 0, width: kLet_halfData, height: kLet_noSeatName - kLet_netName))
                //: self.view = bgView
                self.view = bgView
            }
            //: } else {
        } else {
            //: super.loadView()
            super.loadView()
        }
    }

    //: deinit {
    deinit {
        //: destroyTimer()
        tearDown()
    }

    // MARK: - Lazy Load

    //: private lazy var imageView: UIImageView = {
    private lazy var imageView: UIImageView = {
        //: let img = UIImageView()
        let img = UIImageView()
        //: img.backgroundColor = .black
        img.backgroundColor = .black
        //: img.contentMode = .scaleAspectFit
        img.contentMode = .scaleAspectFit
        //: img.layer.masksToBounds = true
        img.layer.masksToBounds = true
        //: return img
        return img
        //: }()
    }()

    //: private lazy var maskView: UIView = {
    private lazy var maskView: UIView = {
        //: let v = UIView()
        let v = UIView()
        //: v.backgroundColor = UIColor.init(white: 0, alpha: 0.5)
        v.backgroundColor = UIColor(white: 0, alpha: 0.5)
        //: return v
        return v
        //: }()
    }()

    //: private lazy var giftBgView: UIImageView = {
    private lazy var giftBgView: UIImageView = {
        //: let img = UIImageView()
        let img = UIImageView()
        //: img.image = UIImage.bundleBy(name: "icon_photo_giftbg")
        img.image = UIImage.bundleBy(name: (String(kStr_positionValue.suffix(5)) + "photo_" + kStr_defineLabValue.replacingOccurrences(of: "icon", with: "i")))
        //: return img
        return img
        //: }()
    }()

    //: private lazy var giftIcon: UIImageView = {
    private lazy var giftIcon: UIImageView = {
        //: let img = UIImageView()
        let img = UIImageView()
        //: img.setUrlImage(urlStr: photoModel.giftIcon)
        img.timeFinish(urlStr: photoModel.giftIcon)
        //: return img
        return img
        //: }()
    }()

    //: private lazy var desLab: UILabel = {
    private lazy var desLab: UILabel = {
        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.textColor = .white
        lab.textColor = .white
        //: lab.font = UIFont.dorsum(fontSize: 19)
        lab.font = UIFont.dorsum(fontSize: 19)
        //: lab.textAlignment = .center
        lab.textAlignment = .center
        //: lab.numberOfLines = 0
        lab.numberOfLines = 0
        //: return lab
        return lab
        //: }()
    }()

    //: private lazy var giftSendBtn: UIButton = {
    private lazy var giftSendBtn: UIButton = {
        //: let btn = UIButton()
        let btn = UIButton()
        //: btn.setTitle("Send".localized, for: .normal)
        btn.setTitle((String(kStr_padNameData)).localized, for: .normal)
        //: btn.setTitleColor(.white, for: .normal)
        btn.setTitleColor(.white, for: .normal)
        //: btn.titleLabel?.font = UIFont.pingfangFont(type: .Medium, fontSize: 19)
        btn.titleLabel?.font = UIFont.groupSize(type: .Medium, fontSize: 19)
        //: btn.setBackgroundImage(UIImage.imageGradientColor(colors: UIColor.appGradientColor(), size: CGSize(width: 220, height: 44)), for: .normal)
        btn.setBackgroundImage(UIImage.upTo(colors: UIColor.thirdColor(), size: CGSize(width: 220, height: 44)), for: .normal)
        //: btn.layer.cornerRadius = 22
        btn.layer.cornerRadius = 22
        //: btn.layer.masksToBounds = true
        btn.layer.masksToBounds = true
        //: btn.addTarget(self, action: #selector(giftSendButtonClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(doClick), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var intimateStatusImgV: UIImageView = {
    private lazy var intimateStatusImgV: UIImageView = {
        //: let img = UIImageView()
        let img = UIImageView()
        //: img.alpha = 0.9
        img.alpha = 0.9
        //: return img
        return img
        //: }()
    }()

    //: private lazy var progressView: CircleCountdownView = {
    private lazy var progressView: UnderbellyThen = {
        //: let frame = CGRect(x: ScreenWidth-42-15, y: StatusBarHeight+10, width: 42, height: 42)
        let frame = CGRect(x: kLet_halfData - 42 - 15, y: kLet_postPartyValue + 10, width: 42, height: 42)
        //: let v = CircleCountdownView(frame: frame)
        let v = UnderbellyThen(frame: frame)
        //: self.view.addSubview(v)
        self.view.addSubview(v)
        //: return v
        return v
        //: }()
    }()

    //: lazy var backBtn: UIButton = {
    lazy var backBtn: UIButton = {
        //: let btn = UIButton(type: .custom)
        let btn = UIButton(type: .custom)
        //: let img = UIImage.bundleBy(name: "nav_back_black_nor").withRenderingMode(.alwaysTemplate)
        let img = UIImage.bundleBy(name: (String(kStr_pathValue.suffix(5)) + "ack_blac" + String(kStr_coverEmptyViewData.suffix(5)))).withRenderingMode(.alwaysTemplate)
        //: btn.setImage(img, for: .normal)
        btn.setImage(img, for: .normal)
        //: btn.tintColor = .white
        btn.tintColor = .white
        //: btn.addTarget(self, action: #selector(backButtonClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(modeBack), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()
}

// MARK: - Load Data

//: extension TalkingIntimatePhotoPreviewVC {
extension SeekViewController {
    /// 调用送礼接口
    /// - Parameters:
    ///   - giftId: 礼物Id
    ///   - giftNum: 礼物数量
    //: func req_sendGiftMsg(giftId: String, giftNum: String) {
    func noneHiddenNum(giftId: String, giftNum: String) {
        //: let reachability = try? Reachability()
        let reachability = try? Reachability()
        //: if reachability?.connection == .unavailable {
        if reachability?.connection == .unavailable {
            //: func__showStatusBarErrorMsg(showMsg: kNetErrorMsg)
            detailDownArray(showMsg: kLet_accuracyContent)
            //: return
            return
        }
        //: var params: Dictionary<String, Any> = [:]
        var params: [String: Any] = [:]
        //: params["toUid"] = self.targetId
        params[(String(kStr_topText))] = self.targetId
        //: params["giftId"] = giftId
        params[(String(kStr_leadingAspectValue))] = giftId
        //: params["giftNum"] = giftNum
        params[(String(kStr_contentPriceTipData.prefix(6)) + kStr_postText.replacingOccurrences(of: "equal", with: "m"))] = giftNum
        //: params["unlockMsgId"] = self.imageTotalData.msgModel.msgInfo.msgId
        params[(kStr_imageButtonData.replacingOccurrences(of: "lab", with: "ck") + String(kStr_sexName.suffix(5)))] = self.imageTotalData.msgModel.msgInfo.msgId

        // 送礼接口
        //: UpsetCountRequestTool.req_SendGiftPrivete(param: params, completion: { succeed, result, errorModel in
        UpsetCountRequestTool.imageWithBuild(param: params, completion: { succeed, result, errorModel in
            //: if succeed {
            if succeed { // 送礼成功，更改私密照片状态为已解锁
                //: self.photoModel.lockStatus = 0
                self.photoModel.lockStatus = 0
                //: if self.statusBlock != nil {
                if self.statusBlock != nil {
                    //: self.statusBlock!(self.photoModel)
                    self.statusBlock!(self.photoModel)
                }

                // 刷新UI
                //: self.refreshUI()
                self.announcement()
            }

            // 同步状态到私聊页面
            //: if self.sendGiftResultBlock != nil {
            if self.sendGiftResultBlock != nil {
                //: self.sendGiftResultBlock!(succeed, result, errorModel)
                self.sendGiftResultBlock!(succeed, result, errorModel)
            }
            //: })
        })
    }
}

// MARK: - Event

//: extension TalkingIntimatePhotoPreviewVC {
extension SeekViewController {
    /// 返回按钮事件
    //: @objc private func backButtonClick() {
    @objc private func modeBack() {
        //: self.navigationController?.popViewController(animated: true)
        self.navigationController?.popViewController(animated: true)
    }

    /// 发送礼物解锁图片
    //: @objc private func giftSendButtonClick() {
    @objc private func doClick() {
        //: req_sendGiftMsg(giftId: photoModel.giftId, giftNum: "1")
        noneHiddenNum(giftId: photoModel.giftId, giftNum: "1")
    }

    /// 阅后即焚15s倒计时开始
    //: @objc private func burnPhotoTapGesture() {
    @objc private func still() {
        //: guard LocationThen.share.networkStatus != .Unavailable else {
        guard LocationThen.share.networkStatus != .Unavailable else {
            //: func__showStatusBarErrorMsg(showMsg: kNetErrorMsg)
            detailDownArray(showMsg: kLet_accuracyContent)
            //: return
            return
        }
        //: guard photoModel.burnStatus == 0 else { return }
        guard photoModel.burnStatus == 0 else { return }

        // 更新视图状态
        //: self.maskView.isHidden = true
        self.maskView.isHidden = true
        //: self.intimateStatusImgV.isHidden = true
        self.intimateStatusImgV.isHidden = true
        //: self.desLab.isHidden = true
        self.desLab.isHidden = true

        // 原图展示私密照片
        //: ProgressHUD.show(superView: self.view)
        TintProgressHUD.fit(superView: self.view)
        //: self.loadIntimatePhoto(urlStr: photoModel.originUrl, isMosaic: false) {[weak self] isSucceed in
        self.characteristicRootOfASquareMatrix(urlStr: photoModel.originUrl, isMosaic: false) { [weak self] isSucceed in
            //: ProgressHUD.dismiss()
            TintProgressHUD.inkingPadDismiss()
            //: guard isSucceed else { return }
            guard isSucceed else { return }
            //: guard let self = self else { return }
            guard let self = self else { return }

            // 更改私密照片状态为已销毁
            //: self.photoModel.burnStatus = 1
            self.photoModel.burnStatus = 1
            //: if self.statusBlock != nil {
            if self.statusBlock != nil {
                //: self.statusBlock!(self.photoModel)
                self.statusBlock!(self.photoModel)
            }

            // 展示倒计时
            //: self.progressView.isHidden = false
            self.progressView.isHidden = false
            //: self.destroyTimer()
            self.tearDown()
            //: var time = 150
            var time = 150
            //: self.countdownTimer = Timer.scheduledTimer(withTimeInterval: 0.1, block: { [weak self] timer in
            self.countdownTimer = Timer.scheduledTimer(withTimeInterval: 0.1, block: { [weak self] _ in
                //: guard let self = self else { return }
                guard let self = self else { return }
                //: guard time > 0 else {
                guard time > 0 else { // 结束倒计时，刷新视图
                    //: self.destroyTimer()
                    self.tearDown()
                    //: self.refreshUI()
                    self.announcement()
                    //: return
                    return
                }
                //: self.progressView.updateProgress(totalTime: 150, currTime: time)
                self.progressView.miniTime(totalTime: 150, currTime: time)
                //: time -= 1
                time -= 1
                //: }, repeats: true)
            }, repeats: true)
            //: self.countdownTimer?.fire()
            self.countdownTimer?.fire()
            //: RunLoop.current.add(self.countdownTimer!, forMode: .common)
            RunLoop.current.add(self.countdownTimer!, forMode: .common)
        }
    }

    /// 销毁倒计时
    //: func destroyTimer() {
    func tearDown() {
        //: if countdownTimer != nil {
        if countdownTimer != nil {
            //: countdownTimer?.invalidate()
            countdownTimer?.invalidate()
            //: countdownTimer = nil
            countdownTimer = nil
        }
    }
}

// MARK: - Layout

//: extension TalkingIntimatePhotoPreviewVC {
extension SeekViewController {
    /// 添加视图
    //: private func setupSubviews() {
    private func setupViewSubviews() {
        //: self.view.addSubview(imageView)
        self.view.addSubview(imageView)
        //: self.view.addSubview(maskView)
        self.view.addSubview(maskView)
        //: self.view.addSubview(desLab)
        self.view.addSubview(desLab)
        //: self.view.addSubview(giftBgView)
        self.view.addSubview(giftBgView)
        //: giftBgView.addSubview(giftIcon)
        giftBgView.addSubview(giftIcon)
        //: self.view.addSubview(giftSendBtn)
        self.view.addSubview(giftSendBtn)
        //: self.view.addSubview(intimateStatusImgV)
        self.view.addSubview(intimateStatusImgV)
        //: self.view.addSubview(backBtn)
        self.view.addSubview(backBtn)
    }

    /// 添加约束
    //: private func setupSubViewsConstraint() {
    private func blockColor() {
        //: imageView.snp.makeConstraints { make in
        imageView.snp.makeConstraints { make in
            //: make.edges.equalToSuperview()
            make.edges.equalToSuperview()
        }
        //: maskView.snp.makeConstraints { make in
        maskView.snp.makeConstraints { make in
            //: make.edges.equalToSuperview()
            make.edges.equalToSuperview()
        }
        //: desLab.snp.makeConstraints { make in
        desLab.snp.makeConstraints { make in
            //: make.leading.equalTo(40)
            make.leading.equalTo(40)
            //: make.trailing.equalTo(-40)
            make.trailing.equalTo(-40)
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.centerY.equalToSuperview().offset(StatusBarNavigationBarHeight/2)
            make.centerY.equalToSuperview().offset(kLet_netName / 2)
        }

        //: giftBgView.snp.makeConstraints { make in
        giftBgView.snp.makeConstraints { make in
            //: make.leading.equalTo(actualWidth(w: 120))
            make.leading.equalTo(originalScene(w: 120))
            //: make.size.equalTo(CGSize(width: 182, height: 176))
            make.size.equalTo(CGSize(width: 182, height: 176))
            //: make.bottom.equalTo(desLab.snp.top).offset(20)
            make.bottom.equalTo(desLab.snp.top).offset(20)
        }
        //: giftIcon.snp.makeConstraints { make in
        giftIcon.snp.makeConstraints { make in
            //: make.leading.equalToSuperview().offset(35)
            make.leading.equalToSuperview().offset(35)
            //: make.top.equalToSuperview().offset(28)
            make.top.equalToSuperview().offset(28)
            //: make.size.equalTo(CGSize(width: 80, height: 80))
            make.size.equalTo(CGSize(width: 80, height: 80))
        }
        //: giftSendBtn.snp.makeConstraints { make in
        giftSendBtn.snp.makeConstraints { make in
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.size.equalTo(CGSize(width: 220, height: 44))
            make.size.equalTo(CGSize(width: 220, height: 44))
            //: make.bottom.equalToSuperview().offset(-(kDeviceSafeBottomHeight + 10))
            make.bottom.equalToSuperview().offset(-(kLet_formatNetValue + 10))
        }

        //: intimateStatusImgV.snp.makeConstraints { make in
        intimateStatusImgV.snp.makeConstraints { make in
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.bottom.equalTo(desLab.snp.top).offset(-20)
            make.bottom.equalTo(desLab.snp.top).offset(-20)
        }

        //: backBtn.snp.makeConstraints { make in
        backBtn.snp.makeConstraints { make in
            //: make.leading.equalTo(0)
            make.leading.equalTo(0)
            //: make.width.equalTo(40)
            make.width.equalTo(40)
            //: make.height.equalTo(NavigationBarHeight)
            make.height.equalTo(kLet_senseFormatValue)
            //: make.top.equalTo(StatusBarHeight)
            make.top.equalTo(kLet_postPartyValue)
        }

        //: progressView.snp.remakeConstraints { make in
        progressView.snp.remakeConstraints { make in
            //: make.leading.equalTo(ScreenWidth-42-15)
            make.leading.equalTo(kLet_halfData - 42 - 15)
            //: make.top.equalTo(StatusBarHeight+10)
            make.top.equalTo(kLet_postPartyValue + 10)
            //: make.width.height.equalTo(42)
            make.width.height.equalTo(42)
        }
    }

    /// 刷新UI
    //: private func refreshUI() {
    private func announcement() {
        //: self.maskView.isHidden = true
        self.maskView.isHidden = true
        //: self.desLab.isHidden = true
        self.desLab.isHidden = true
        //: self.giftBgView.isHidden = true
        self.giftBgView.isHidden = true
        //: self.giftSendBtn.isHidden = true
        self.giftSendBtn.isHidden = true
        //: self.intimateStatusImgV.isHidden = true
        self.intimateStatusImgV.isHidden = true
        //: self.progressView.isHidden = true
        self.progressView.isHidden = true

        //: var imgUrlStr = photoModel.originUrl
        var imgUrlStr = photoModel.originUrl // 默认原图
        //: var imgIsMosaic = true
        var imgIsMosaic = true // 是否需要马赛克

        //: if (photoModel.lockStatus == 1) {
        if photoModel.lockStatus == 1 { // 锁定状态，需要送礼解锁
            //: self.maskView.isHidden = false
            self.maskView.isHidden = false
            //: self.desLab.text = "Need a %@ (%@ Gold coins) to unlock".localizedArguments(photoModel.giftName, photoModel.giftPrice)
            self.desLab.text = String(bytes: kStr_actionName.map{legacyReload(make: $0)}, encoding: .utf8)!.imageArguments(photoModel.giftName, photoModel.giftPrice)
            //: self.desLab.isHidden = false
            self.desLab.isHidden = false
            //: self.giftBgView.isHidden = false
            self.giftBgView.isHidden = false
            //: if isMySelf == false {
            if isMySelf == false { // 不是本人
                //: self.giftSendBtn.isHidden = false
                self.giftSendBtn.isHidden = false
            }

            //: imgUrlStr = photoModel.previewUrl
            imgUrlStr = photoModel.previewUrl // 没送礼只能查看预览图

            //: } else if (photoModel.burnStatus == 0 || photoModel.burnStatus == 1) {
        } else if photoModel.burnStatus == 0 || photoModel.burnStatus == 1 { // 设置了阅后即焚，但还未销毁 || 已销毁
            //: self.maskView.isHidden = false
            self.maskView.isHidden = false
            //: self.intimateStatusImgV.isHidden = false
            self.intimateStatusImgV.isHidden = false
            //: self.desLab.isHidden = false
            self.desLab.isHidden = false

            //: if photoModel.burnStatus == 0 {
            if photoModel.burnStatus == 0 { // 未销毁
                //: self.intimateStatusImgV.image = UIImage.bundleBy(name: "icon_photo_lock")
                self.intimateStatusImgV.image = UIImage.bundleBy(name: (kStr_editColorValue.replacingOccurrences(of: "will", with: "n") + "_photo" + String(kStr_dataName)))
                //: self.desLab.text = "Click on the screen to view 15s".localized
                self.desLab.text = String(bytes: kStr_fromValue.map{auditoryImage(view: $0)}, encoding: .utf8)!.localized
                // 添加手势
                //: let tap = UITapGestureRecognizer(target: self, action: #selector(burnPhotoTapGesture))
                let tap = UITapGestureRecognizer(target: self, action: #selector(still))
                //: self.maskView.addGestureRecognizer(tap)
                self.maskView.addGestureRecognizer(tap)

                //: } else {
            } else {
                //: self.intimateStatusImgV.image = UIImage.bundleBy(name: "icon_photo_burn")
                self.intimateStatusImgV.image = UIImage.bundleBy(name: (String(kStr_homeData.suffix(5)) + "photo_bu" + String(kStr_mutualLabelName)))
                //: self.desLab.text = "Already burned".localized
                self.desLab.text = (String(kStr_managerContent.prefix(5)) + String(kStr_interactionValue)).localized
            }

            //: } else {
        } else {
            //: imgIsMosaic = false
            imgIsMosaic = false
        }

        // 加载私密照片
        //: self.loadIntimatePhoto(urlStr: imgUrlStr, isMosaic: imgIsMosaic)
        self.characteristicRootOfASquareMatrix(urlStr: imgUrlStr, isMosaic: imgIsMosaic)
    }

    /// 加载私密照片是否需要马赛克
    /// - Parameters:
    ///   - urlStr: 图片地址
    ///   - isMosaic: 是否需要马赛克
    ///   - completionHandler: 回调
    //: private func loadIntimatePhoto(urlStr: String, isMosaic: Bool, completionHandler: ((_ isSucceed: Bool) -> Void)? = nil) {
    private func characteristicRootOfASquareMatrix(urlStr: String, isMosaic: Bool, completionHandler: ((_ isSucceed: Bool) -> Void)? = nil) {
        //: guard isMySelf == false else {
        guard isMySelf == false else { // 本人发的图片，展示本地缓存资源
            //: var filePath = NSSearchPathForDirectoriesInDomains(.cachesDirectory, .userDomainMask, true).first!
            var filePath = NSSearchPathForDirectoriesInDomains(.cachesDirectory, .userDomainMask, true).first!
            //: filePath = (filePath as NSString).appendingPathComponent(imageFileName)
            filePath = (filePath as NSString).appendingPathComponent(kLet_deviceLikeSucceedData)
            //: filePath = (filePath as NSString).appendingPathComponent((imageTotalData.imageUrl! as NSString).lastPathComponent)
            filePath = (filePath as NSString).appendingPathComponent((imageTotalData.imageUrl! as NSString).lastPathComponent)
            //: let isExists = FileManager.default.fileExists(atPath: filePath)
            let isExists = FileManager.default.fileExists(atPath: filePath)
            //: guard isExists else {
            guard isExists else {
                //: if completionHandler != nil { completionHandler!(false) }
                if completionHandler != nil { completionHandler!(false) }
                //: return
                return
            }
            //: let data = NSData.init(contentsOfFile: filePath)
            let data = NSData(contentsOfFile: filePath)
            //: guard data != nil else {
            guard data != nil else {
                //: if completionHandler != nil { completionHandler!(false) }
                if completionHandler != nil { completionHandler!(false) }
                //: return
                return
            }

            //: let image = UIImage(data: data! as Data)
            let image = UIImage(data: data! as Data)
            //: if isMosaic {
            if isMosaic {
                //: self.imageView.image = UIImage.primaryLevel(image, withFile: 90)
                self.imageView.image = UIImage.primaryLevel(image, withFile: 90)
                //: } else {
            } else {
                //: self.imageView.image = image
                self.imageView.image = image
            }

            //: if completionHandler != nil { completionHandler!(true) }
            if completionHandler != nil { completionHandler!(true) }

            //: return
            return
        }

        // 对方发的图片，需要网络加载
        //: imageView.setCookieToUrlImage(urlStr: urlStr) {[weak self] image in
        imageView.playingCard(urlStr: urlStr) { [weak self] image in
            //: guard let self = self else { return }
            guard let self = self else { return }
            //: if image != nil && isMosaic {
            if image != nil, isMosaic {
                //: self.imageView.image = UIImage.primaryLevel(image, withFile: 90)
                self.imageView.image = UIImage.primaryLevel(image, withFile: 90)
            }
            //: if completionHandler != nil { completionHandler!((image != nil)) }
            if completionHandler != nil { completionHandler!(image != nil) }
        }
    }
}
