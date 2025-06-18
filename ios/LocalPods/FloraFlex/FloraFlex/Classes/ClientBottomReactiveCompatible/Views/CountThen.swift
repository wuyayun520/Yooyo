
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let kStr_appText:[UInt8] = [0x64,0x65,0x74,0x6e,0x65,0x6d,0x65,0x6c,0x70,0x6d,0x69,0x20,0x6e,0x65,0x65,0x62,0x20,0x74,0x6f,0x6e,0x20,0x73,0x61,0x68,0x20,0x29,0x3a,0x72,0x65,0x64,0x6f,0x63,0x28,0x74,0x69,0x6e,0x69]

/*: "btn_video_minimize" :*/
fileprivate let kStr_roleTitle:String = "for model coverbtn_vi"
fileprivate let kStr_modeValue:String = "mtoim"
fileprivate let kStr_sectionValue:[Character] = ["i","z","e"]

/*: "btn_video_drop_nor" :*/
fileprivate let kStr_centerText:[Character] = ["b","t","n","_","v","i","d","e","o","_","d"]
fileprivate let kStr_equalValue:[Character] = ["r","o","p","_","n","o","r"]

/*: "btn_video_turn_nor" :*/
fileprivate let kStr_cellData:String = "let for returnbtn_"
fileprivate let kStr_labelAttachValue:String = "name"
fileprivate let kStr_modelText:[Character] = ["_","t","u","r","n","_","n","o","r"]

/*: "btn_video_turn_pre" :*/
fileprivate let kStr_iconData:String = "btn_vdata right type collection string"
fileprivate let kStr_cardLabCurrentData:String = "from colorn_pre"

/*: "Switch" :*/
fileprivate let kStr_scriptData:[Character] = ["S","w","i","t","c","h"]

/*: "btn_video_start_nor" :*/
fileprivate let kStr_interactionName:String = "btn_vitrue request then"
fileprivate let kStr_toolData:[Character] = ["d","e","o","_","s","t","a","r","t","_","n","o","r"]

/*: "btn_video_start_pre" :*/
fileprivate let kStr_modelValue:String = "view all in tobtn_vid"
fileprivate let kStr_statusData:[Character] = ["e","o","_","s","t","a","r","t","_","p","r","e"]

/*: "Camera On" :*/
fileprivate let kStr_makeName:[Character] = ["C","a","m","e","r","a"," ","O","n"]

/*: "00:00" :*/
fileprivate let kStr_blockName:String = "appear:appear"

/*: "Camera must be on" :*/
fileprivate let kStr_readTitle:String = "self pairCame"
fileprivate let kStr_theText:String = "temp else fatal selfra mus"

/*: "Camera Off" :*/
fileprivate let kStr_titleData:[Character] = ["C","a","m","e","r","a"," ","O","f"]
fileprivate let kStr_iconSizeElseTitle:String = "image"

/*: "%02i:%02i" :*/
fileprivate let kStr_pathTabValue:String = "self list%02i"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  CountThen.swift
//  AbroadTalking
//
//  Created by Charlotte on 2023/11/6.
//

//: import UIKit
import UIKit

//: class TalkingVideoInitivCallView: UIView {
class CountThen: UIView {
    //: weak var delegate: Talking1v1VideoInteractionViewDelegate?
    weak var delegate: EqualObjectProtocol?
    //: private var chatModel = TalkingVideoChatModel()
    private var chatModel = TitleGiftChatModel() // 引用类型，整个视频通话共用同一个model
    //: var durationTime = 0.0
    var durationTime = 0.0 // 视频时长
    //: private var countTimer: Timer?
    private var countTimer: Timer? // 通话时间定时器

    //: init(frame: CGRect, chatModel: TalkingVideoChatModel?) {
    init(frame: CGRect, chatModel: TitleGiftChatModel?) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: setupSubviews()
        resource()
        //: setupSubViewsConstraint()
        endSub()
        //: if chatModel != nil {
        if chatModel != nil {
            //: self.chatModel = chatModel!
            self.chatModel = chatModel!
        }
        //: showViewsViaStage()
        afterOf()
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: kStr_appText.reversed(), encoding: .utf8)!)
    }

    //: deinit {
    deinit {
        //: destroryTimer()
        tableTimer()
        //: invalidateIdleTimer()
        withTap()
        //: NotificationCenter.default.removeObserver(self)
        NotificationCenter.default.removeObserver(self)
    }

    // MARK: - Lazy Load

    // 点击展示/隐藏交互按钮
    //: private lazy var touchHidenBtn: UIButton = {
    private lazy var touchHidenBtn: UIButton = {
        //: let btn = UIButton()
        let btn = UIButton()
        //: btn.addTarget(self, action: #selector(changeInteractionShowState), for: .touchUpInside)
        btn.addTarget(self, action: #selector(judgeState), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()

    // 最小化按钮
    //: private lazy var minimizeBtn: UIButton = {
    private lazy var minimizeBtn: UIButton = {
        //: let btn = UIButton()
        let btn = UIButton()
        //: btn.setImage(UIImage.bundleBy(name: "btn_video_minimize"), for: .normal)
        btn.setImage(UIImage.bundleBy(name: (String(kStr_roleTitle.suffix(6)) + "deo_" + kStr_modeValue.replacingOccurrences(of: "to", with: "in") + String(kStr_sectionValue))), for: .normal)
        //: btn.addTarget(self, action: #selector(minimizeButtonClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(alongSub), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()

    // 挂断/取消 按钮
    //: private lazy var hangupBtn: UIButton = {
    private lazy var hangupBtn: UIButton = {
        //: let btn = UIButton()
        let btn = UIButton()
        //: btn.setImage(UIImage.bundleBy(name: "btn_video_drop_nor"), for: .normal)
        btn.setImage(UIImage.bundleBy(name: (String(kStr_centerText) + String(kStr_equalValue))), for: .normal)
        //: btn.addTarget(self, action: #selector(hangupButtonClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(unseeable), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()

    // 旋转摄像头按钮
    //: private lazy var rotateCameraBtn: UIButton = {
    private lazy var rotateCameraBtn: UIButton = {
        //: let btn = UIButton()
        let btn = UIButton()
        //: btn.setImage(UIImage.bundleBy(name: "btn_video_turn_nor"), for: .normal)
        btn.setImage(UIImage.bundleBy(name: (String(kStr_cellData.suffix(4)) + "vide" + kStr_labelAttachValue.replacingOccurrences(of: "name", with: "o") + String(kStr_modelText))), for: .normal)
        //: btn.setImage(UIImage.bundleBy(name: "btn_video_turn_pre"), for: .selected)
        btn.setImage(UIImage.bundleBy(name: (String(kStr_iconData.prefix(5)) + "ideo_tur" + String(kStr_cardLabCurrentData.suffix(5)))), for: .selected)
        //: btn.addTarget(self, action: #selector(rotateCameraButtonClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(towardEqual), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var rotateCameraDesLab: UILabel = {
    private lazy var rotateCameraDesLab: UILabel = {
        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.textColor = .white
        lab.textColor = .white
        //: lab.font = UIFont.messageDown(fontSize: 15)
        lab.font = UIFont.messageDown(fontSize: 15)
        //: lab.textAlignment = .center
        lab.textAlignment = .center
        //: lab.text = "Switch".localized
        lab.text = (String(kStr_scriptData)).localized
        //: return lab
        return lab
        //: }()
    }()

    // 开启/关闭摄像头按钮
    //: private lazy var openCameraBtn: UIButton = {
    private lazy var openCameraBtn: UIButton = {
        //: let btn = UIButton()
        let btn = UIButton()
        //: btn.setImage(UIImage.bundleBy(name: "btn_video_start_nor"), for: .normal)
        btn.setImage(UIImage.bundleBy(name: (String(kStr_interactionName.prefix(6)) + String(kStr_toolData))), for: .normal)
        //: btn.setImage(UIImage.bundleBy(name: "btn_video_start_pre"), for: .selected)
        btn.setImage(UIImage.bundleBy(name: (String(kStr_modelValue.suffix(7)) + String(kStr_statusData))), for: .selected)
        //: btn.addTarget(self, action: #selector(openCameraButtonClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(deleteClick), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var openCameraDesLab: UILabel = {
    private lazy var openCameraDesLab: UILabel = {
        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.textColor = .white
        lab.textColor = .white
        //: lab.font = UIFont.messageDown(fontSize: 15)
        lab.font = UIFont.messageDown(fontSize: 15)
        //: lab.textAlignment = .center
        lab.textAlignment = .center
        //: lab.text = "Camera On".localized
        lab.text = (String(kStr_makeName)).localized
        //: return lab
        return lab
        //: }()
    }()

    //: private lazy var timeLab: UILabel = {
    private lazy var timeLab: UILabel = {
        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.textColor = .white
        lab.textColor = .white
        //: lab.font = UIFont.dorsum(fontSize: 18)
        lab.font = UIFont.dorsum(fontSize: 18)
        //: lab.textAlignment = .center
        lab.textAlignment = .center
        //: return lab
        return lab
        //: }()
    }()
}

// MARK: - Event

//: extension TalkingVideoInitivCallView {
extension CountThen {
    /// 展示视图状态
    //: private func showViewsViaStage() {
    private func afterOf() {
        //: minimizeBtn.isHidden = false
        minimizeBtn.isHidden = false
        //: hangupBtn.isHidden = false
        hangupBtn.isHidden = false
        //: rotateCameraBtn.isHidden = false
        rotateCameraBtn.isHidden = false
        //: rotateCameraDesLab.isHidden = false
        rotateCameraDesLab.isHidden = false
        //: openCameraBtn.isHidden = false
        openCameraBtn.isHidden = false
        //: openCameraDesLab.isHidden = false
        openCameraDesLab.isHidden = false
        //: touchHidenBtn.isEnabled = true
        touchHidenBtn.isEnabled = true
        //: timeLab.isHidden = false
        timeLab.isHidden = false
        //: self.timeLab.text = "00:00"
        self.timeLab.text = (kStr_blockName.replacingOccurrences(of: "appear", with: "00"))
        //: startTalkCount()
        sumUpFile()
        //: touchHiddenTimer()
        whiteQuantityeraction()
        //: updateLayout()
        magnitudeLayout()
    }

    /// 最小化按钮事件
    //: @objc private func minimizeButtonClick() {
    @objc private func alongSub() {
        //: self.delegate?.interactionView_shouldDisplayMiniWindow()
        self.delegate?.atWindow()
    }

    /// 添加视频通话画面窗口
    /// - Parameter view: 视频画面窗口
    //: func addWindowView(view: UIView) {
    func statuteText(view: UIView) {
        //: self.addSubview(view)
        self.addSubview(view)
    }

    /// 挂断按钮事件
    //: @objc private func hangupButtonClick() {
    @objc private func unseeable() {
        //: uploadRecord.uploadRecordEvent(eventID: clickVideoCancelButton)
        kLet_dismissValue.digitizerInsideStatus(eventID: kLet_userTitle)
        //: closeViewClick()
        viewTagName()
    }

    //: func closeViewClick() {
    func viewTagName() {
        //: self.destroryTimer()
        self.tableTimer()
        //: self.delegate?.interactionView_shouldEndCall()
        self.delegate?.addBy()
    }

    /// 接听按钮事件
    //: @objc private func acceptButtonClick() {
    @objc private func modelBy() {
        //: self.delegate?.interactionView_shouldAcceptCall()
        self.delegate?.totalerchangeTo()
    }

    /// 关闭摄像头接听视频通话事件
    //: @objc private func acceptTurnOffCameraButtonClick() {
    @objc private func moveShow() {
        //: acceptButtonClick()
        modelBy()
        //: self.openCameraBtn.isSelected = false
        self.openCameraBtn.isSelected = false
        //: openCameraButtonClick()
        deleteClick()
    }

    /// 打开摄像头接听视频通话事件
    //: @objc private func acceptOpenCameraButtonClick() {
    @objc private func provision() {
        //: acceptButtonClick()
        modelBy()
        //: self.openCameraBtn.isSelected = true
        self.openCameraBtn.isSelected = true
        //: openCameraButtonClick()
        deleteClick()
    }

    /// 旋转摄像头事件
    //: @objc private func rotateCameraButtonClick() {
    @objc private func towardEqual() {
        //: if SenseTime_Use == false, self.openCameraBtn.isSelected == true {
        if kLet_intervalName == false, self.openCameraBtn.isSelected == true { // 腾讯美颜 && 摄像头关闭时
            //: self.func__showStatusBarErrorMsg(showMsg: "Camera must be on".localized)
            self.detailDownArray(showMsg: (String(kStr_readTitle.suffix(4)) + String(kStr_theText.suffix(6)) + "t be on").localized)
            //: return
            return
        }
        //: self.rotateCameraBtn.isSelected = !self.rotateCameraBtn.isSelected
        self.rotateCameraBtn.isSelected = !self.rotateCameraBtn.isSelected
        //: self.delegate?.interactionView_shouldChangeCamera(isFront: !self.rotateCameraBtn.isSelected)
        self.delegate?.valuePush(isFront: !self.rotateCameraBtn.isSelected)
    }

    /// 是否禁用摄像头事件
    //: @objc private func openCameraButtonClick() {
    @objc private func deleteClick() {
        //: self.openCameraBtn.isSelected = !self.openCameraBtn.isSelected
        self.openCameraBtn.isSelected = !self.openCameraBtn.isSelected
        //: self.openCameraDesLab.text = self.openCameraBtn.isSelected ? "Camera Off".localized:"Camera On".localized
        self.openCameraDesLab.text = self.openCameraBtn.isSelected ? (String(kStr_titleData) + kStr_iconSizeElseTitle.replacingOccurrences(of: "image", with: "f")).localized : (String(kStr_makeName)).localized
        //: self.delegate?.interactionView_shouldForbiddenCamera(forbidden: self.openCameraBtn.isSelected)
        self.delegate?.contactTimePicture(forbidden: self.openCameraBtn.isSelected)
    }

    /// 点击展示/隐藏通话中的按钮
    //: @objc private func changeInteractionShowState() {
    @objc private func judgeState() {
        //: let isHidden = !rotateCameraBtn.isHidden
        let isHidden = !rotateCameraBtn.isHidden
        //: minimizeBtn.isHidden = isHidden
        minimizeBtn.isHidden = isHidden
        //: rotateCameraBtn.isHidden = isHidden
        rotateCameraBtn.isHidden = isHidden
        //: rotateCameraDesLab.isHidden = isHidden
        rotateCameraDesLab.isHidden = isHidden
        //: openCameraBtn.isHidden = isHidden
        openCameraBtn.isHidden = isHidden
        //: openCameraDesLab.isHidden = isHidden
        openCameraDesLab.isHidden = isHidden

        //: hangupBtn.isHidden = isHidden
        hangupBtn.isHidden = isHidden
        //: timeLab.isHidden = isHidden
        timeLab.isHidden = isHidden

        //: if isHidden {
        if isHidden {
            //: invalidateIdleTimer()
            withTap()
            //: } else {
        } else {
            //: touchHiddenTimer()
            whiteQuantityeraction()
        }
    }

    //: private func destroryTimer() {
    private func tableTimer() {
        //: if countTimer != nil {
        if countTimer != nil {
            //: countTimer?.invalidate()
            countTimer?.invalidate()
            //: countTimer = nil
            countTimer = nil
        }
    }
}

// MARK: - 通话计时器

//: extension TalkingVideoInitivCallView {
extension CountThen {
    /// 开始通话计时
    //: private func startTalkCount() {
    private func sumUpFile() {
        //: guard self.countTimer == nil else { return }
        guard self.countTimer == nil else { return }

        //: self.countTimer = Timer.scheduledTimer(withTimeInterval: 1, block: {[weak self] timer in
        self.countTimer = Timer.scheduledTimer(withTimeInterval: 1, block: { [weak self] _ in
            //: guard let self = self else { return }
            guard let self = self else { return }
            //: if self.durationTime <= 0 {
            if self.durationTime <= 0 {
                //: self.closeViewClick()
                self.viewTagName()
            }
            //: self.changeTalkTime()
            self.dissertate()
            //: }, repeats: true)
        }, repeats: true)
    }

    // 展示通话时间
    //: private func changeTalkTime() {
    private func dissertate() {
        //: let duration = self.durationTime
        let duration = self.durationTime
        //: let min = floor(duration / 60)
        let min = floor(duration / 60)
        //: let sec = floor(duration.truncatingRemainder(dividingBy: 60))
        let sec = floor(duration.truncatingRemainder(dividingBy: 60))
        //: timeLab.text = String(format: "%02i:%02i", Int(min), Int(sec))
        timeLab.text = String(format: "%02i:%02i", Int(min), Int(sec))
        //: self.durationTime -= 1
        self.durationTime -= 1
    }
}

// MARK: - 【通话中】触屏隐藏交互按钮逻辑

//: extension TalkingVideoInitivCallView {
extension CountThen {
    /// 触摸隐藏开启延时
    //: private func touchHiddenTimer() {
    private func whiteQuantityeraction() {
        //: invalidateIdleTimer()
        withTap()
        //: self.perform(#selector(hideInteractionView), afterDelay: 10)
        self.perform(#selector(componentPart), afterDelay: 10)
    }

    /// 销毁延迟
    //: private func invalidateIdleTimer() {
    private func withTap() {
        //: NSObject.cancelPreviousPerformRequests(withTarget: self, selector: #selector(hideInteractionView), object: nil)
        NSObject.cancelPreviousPerformRequests(withTarget: self, selector: #selector(componentPart), object: nil)
    }

    /// 延时到时隐藏视图
    //: @objc private func hideInteractionView() {
    @objc private func componentPart() {
        //: DispatchQueue.main.async {
        DispatchQueue.main.async {
            //: self.changeInteractionShowState()
            self.judgeState()
        }
    }
}

// MARK: - Layout

//: extension TalkingVideoInitivCallView {
extension CountThen {
    /// 添加视图
    //: private func setupSubviews() {
    private func resource() {
        //: self.addSubview(touchHidenBtn)
        self.addSubview(touchHidenBtn)
        //: self.addSubview(minimizeBtn)
        self.addSubview(minimizeBtn)
        //: self.addSubview(hangupBtn)
        self.addSubview(hangupBtn)
        //: self.addSubview(rotateCameraBtn)
        self.addSubview(rotateCameraBtn)
        //: self.addSubview(rotateCameraDesLab)
        self.addSubview(rotateCameraDesLab)
        //: self.addSubview(openCameraBtn)
        self.addSubview(openCameraBtn)
        //: self.addSubview(openCameraDesLab)
        self.addSubview(openCameraDesLab)
        //: self.addSubview(timeLab)
        self.addSubview(timeLab)
    }

    /// 添加约束
    //: private func setupSubViewsConstraint() {
    private func endSub() {
        //: touchHidenBtn.snp.makeConstraints { make in
        touchHidenBtn.snp.makeConstraints { make in
            //: make.edges.equalToSuperview()
            make.edges.equalToSuperview()
        }

        //: minimizeBtn.snp.makeConstraints { make in
        minimizeBtn.snp.makeConstraints { make in
            //: make.top.equalTo(StatusBarHeight+10)
            make.top.equalTo(kLet_postPartyValue + 10)
            //: make.leading.equalTo(10)
            make.leading.equalTo(10)
            //: make.width.height.equalTo(actualWidth(w: 42))
            make.width.height.equalTo(originalScene(w: 42))
        }
        //: hangupBtn.snp.makeConstraints { make in
        hangupBtn.snp.makeConstraints { make in
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.bottom.equalTo(-kDeviceSafeBottomHeight-53)
            make.bottom.equalTo(-kLet_formatNetValue - 53)
            //: make.size.equalTo(CGSize(width: actualWidth(w: 70), height: actualWidth(w: 70)))
            make.size.equalTo(CGSize(width: originalScene(w: 70), height: originalScene(w: 70)))
        }
        //: rotateCameraBtn.snp.makeConstraints { make in
        rotateCameraBtn.snp.makeConstraints { make in
            //: make.leading.equalTo(74)
            make.leading.equalTo(74)
            //: make.bottom.equalTo(hangupBtn.snp.top).offset(-73)
            make.bottom.equalTo(hangupBtn.snp.top).offset(-73)
            //: make.size.equalTo(CGSize(width: actualWidth(w: 58), height: actualWidth(w: 58)))
            make.size.equalTo(CGSize(width: originalScene(w: 58), height: originalScene(w: 58)))
        }
        //: rotateCameraDesLab.snp.makeConstraints { make in
        rotateCameraDesLab.snp.makeConstraints { make in
            //: make.centerX.equalTo(rotateCameraBtn)
            make.centerX.equalTo(rotateCameraBtn)
            //: make.top.equalTo(rotateCameraBtn.snp.bottom).offset(8)
            make.top.equalTo(rotateCameraBtn.snp.bottom).offset(8)
        }
        //: openCameraBtn.snp.makeConstraints { make in
        openCameraBtn.snp.makeConstraints { make in
            //: make.trailing.equalTo(-74)
            make.trailing.equalTo(-74)
            //: make.bottom.size.equalTo(rotateCameraBtn)
            make.bottom.size.equalTo(rotateCameraBtn)
        }
        //: openCameraDesLab.snp.makeConstraints { make in
        openCameraDesLab.snp.makeConstraints { make in
            //: make.centerX.equalTo(openCameraBtn)
            make.centerX.equalTo(openCameraBtn)
            //: make.top.equalTo(rotateCameraDesLab)
            make.top.equalTo(rotateCameraDesLab)
        }

        //: timeLab.snp.makeConstraints { make in
        timeLab.snp.makeConstraints { make in
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.top.equalTo(StatusBarHeight+20)
            make.top.equalTo(kLet_postPartyValue + 20)
        }
    }

    /// 更新约束
    //: private func updateLayout() {
    private func magnitudeLayout() {
        //: rotateCameraBtn.snp.updateConstraints { make in
        rotateCameraBtn.snp.updateConstraints { make in
            //: make.leading.equalTo(74)
            make.leading.equalTo(74)
        }
        //: openCameraBtn.snp.updateConstraints { make in
        openCameraBtn.snp.updateConstraints { make in
            //: make.trailing.equalTo(-74)
            make.trailing.equalTo(-74)
        }
        //: hangupBtn.snp.remakeConstraints { make in
        hangupBtn.snp.remakeConstraints { make in
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.bottom.equalTo(-kDeviceSafeBottomHeight-53)
            make.bottom.equalTo(-kLet_formatNetValue - 53)
            //: make.size.equalTo(CGSize(width: actualWidth(w: 70), height: actualWidth(w: 70)))
            make.size.equalTo(CGSize(width: originalScene(w: 70), height: originalScene(w: 70)))
        }
    }
}
