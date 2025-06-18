
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let kStr_targetName:[UInt8] = [0xaa,0xad,0xaa,0xb7,0xeb,0xa0,0xac,0xa7,0xa6,0xb1,0xf9,0xea,0xe3,0xab,0xa2,0xb0,0xe3,0xad,0xac,0xb7,0xe3,0xa1,0xa6,0xa6,0xad,0xe3,0xaa,0xae,0xb3,0xaf,0xa6,0xae,0xa6,0xad,0xb7,0xa6,0xa7]

private func bounceTableTo(intimate num: UInt8) -> UInt8 {
    return num ^ 195
}

/*: "#45003A" :*/
fileprivate let kStr_transformImageName:String = "#"
fileprivate let kStr_videoValue:[Character] = ["4","5","0","0","3","A"]

/*: "#2D0059" :*/
fileprivate let kStr_managerData:String = "#"
fileprivate let kStr_pathData:[Character] = ["2","D","0","0","5","9"]

/*: "party_close_btn" :*/
fileprivate let kStr_colorData:String = "pacenter"
fileprivate let kStr_infoContent:String = "let make show expressione_btn"

/*: "btn_party_minimal_nor" :*/
fileprivate let kStr_lengthContent:[Character] = ["b","t","n","_","p"]
fileprivate let kStr_headPlayerNameValue:[Character] = ["a","r","t","y","_","m","i","n","i","m","a","l","_","n","o","r"]

/*: "Minimal" :*/
fileprivate let kStr_contentCountName:[Character] = ["M","i","n","i","m","a","l"]

/*: "btn_party_quit_nor" :*/
fileprivate let kStr_centerTitle:String = "button self active ifbtn_part"
fileprivate let kStr_toTitle:String = "y_quitbutton type title"

/*: "Quit" :*/
fileprivate let kStr_noData:String = "to ifQuit"

/*: "btn_party_close_nor" :*/
fileprivate let kStr_backgroundValue:[Character] = ["b","t","n","_","p","a","r","t"]
fileprivate let kStr_minRandomErrorTitle:[Character] = ["y","_","c","l","o","s","e","_","n","o","r"]

/*: "Close" :*/
fileprivate let kStr_emptyKeyTitle:[Character] = ["C","l","o","s","e"]

/*: "Do you want to close the room? After closing the room, all users will be removed from the room." :*/
fileprivate let kStr_logText:[UInt8] = [0x1b,0x30,0x7f,0x26,0x30,0x2a,0x7f,0x28,0x3e,0x31,0x2b,0x7f,0x2b,0x30,0x7f,0x3c,0x33,0x30,0x2c,0x3a,0x7f,0x2b,0x37,0x3a,0x7f,0x2d,0x30,0x30,0x32,0x60,0x7f,0x1e,0x39,0x2b,0x3a,0x2d,0x7f,0x3c,0x33,0x30,0x2c,0x36,0x31,0x38,0x7f,0x2b,0x37,0x3a,0x7f,0x2d,0x30,0x30,0x32,0x73,0x7f,0x3e,0x33,0x33,0x7f,0x2a,0x2c,0x3a,0x2d,0x2c,0x7f,0x28,0x36,0x33,0x33,0x7f,0x3d,0x3a,0x7f,0x2d,0x3a,0x32,0x30,0x29,0x3a,0x3b,0x7f,0x39,0x2d,0x30,0x32,0x7f,0x2b,0x37,0x3a,0x7f,0x2d,0x30,0x30,0x32,0x71]

private func targetExitEqual(now num: UInt8) -> UInt8 {
    return num ^ 95
}

/*: "Cancel" :*/
fileprivate let kStr_centerModelMakeText:String = "Cancellet self user do in"

/*: "OK" :*/
fileprivate let kStr_fromAppearData:[Character] = ["O","K"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  LayerView.swift
//  FloraFlex
//
//  Created by DouXiu on 2024/9/23.
//

//: import UIKit
import UIKit

//: class TalkingVoiceRoomCloseView: UIView {
class LayerView: UIView {
    /// 是否是主播
    //: private let isAnchor = (String(TalkingVoiceRoomManager.shared().partyModel.streamerInfo.uid) == LocationThen.share.loginUid)
    private let isAnchor = (String(SubCheckedReactiveCompatible.replyShared().partyModel.streamerInfo.uid) == LocationThen.share.loginUid)

    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: setupSubviews()
        single()
        //: setupSubViewsConstraint()
        touchWith()
        //: addNotifications()
        videoList()
    }

    //: deinit {
    deinit {
        //: NotificationCenter.default.removeObserver(self)
        NotificationCenter.default.removeObserver(self)
    }

    //: @available(*, unavailable)
    @available(*, unavailable)
    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: kStr_targetName.map{bounceTableTo(intimate: $0)}, encoding: .utf8)!)
    }

    // MARK: - Lazy Load

    //: private lazy var gradientLayer: CAGradientLayer = {
    private lazy var gradientLayer: CAGradientLayer = {
        //: let layer = CAGradientLayer()
        let layer = CAGradientLayer()
        //: layer.frame = CGRect(x: 0, y: 0, width: ScreenWidth, height: ScreenHeight)
        layer.frame = CGRect(x: 0, y: 0, width: kLet_halfData, height: kLet_noSeatName)
        //: layer.startPoint = CGPoint(x: 0.5, y: 0)
        layer.startPoint = CGPoint(x: 0.5, y: 0)
        //: layer.endPoint = CGPoint(x: 0.5, y: 1)
        layer.endPoint = CGPoint(x: 0.5, y: 1)
        //: layer.colors = [
        layer.colors = [
            //: UIColor(hex: "#45003A")!.withAlphaComponent(0.9).cgColor,
            UIColor(hex: (kStr_transformImageName.capitalized + String(kStr_videoValue)))!.withAlphaComponent(0.9).cgColor,
            //: UIColor(hex: "#2D0059")!.withAlphaComponent(0.9).cgColor
            UIColor(hex: (kStr_managerData.capitalized + String(kStr_pathData)))!.withAlphaComponent(0.9).cgColor,
        ]
        //: layer.locations = [0, 1]
        layer.locations = [0, 1]
        //: return layer
        return layer
        //: }()
    }()

    //: private lazy var rightBtn: UIButton = {
    private lazy var rightBtn: UIButton = {
        //: let btn = UIButton()
        let btn = UIButton()
        //: btn.setImage(UIImage.bundleBy(name: "party_close_btn"), for: .normal)
        btn.setImage(UIImage.bundleBy(name: (kStr_colorData.replacingOccurrences(of: "center", with: "rt") + "y_clos" + String(kStr_infoContent.suffix(5)))), for: .normal)
        //: btn.addTarget(self, action: #selector(dismiss), for: .touchUpInside)
        btn.addTarget(self, action: #selector(postDown), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var miniBtn: UIButton = {
    private lazy var miniBtn: UIButton = {
        //: let btn = UIButton()
        let btn = UIButton()
        //: btn.setImage(UIImage.bundleBy(name: "btn_party_minimal_nor"), for: .normal)
        btn.setImage(UIImage.bundleBy(name: (String(kStr_lengthContent) + String(kStr_headPlayerNameValue))), for: .normal)
        //: btn.addTarget(self, action: #selector(miniButtonClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(stickIn), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var miniLab: UILabel = {
    private lazy var miniLab: UILabel = {
        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.textColor = .white
        lab.textColor = .white
        //: lab.font = UIFont.dorsum(fontSize: 17)
        lab.font = UIFont.dorsum(fontSize: 17)
        //: lab.text = "Minimal".localized
        lab.text = (String(kStr_contentCountName)).localized
        //: return lab
        return lab
        //: }()
    }()

    //: private lazy var quitBtn: UIButton = {
    private lazy var quitBtn: UIButton = {
        //: let btn = UIButton()
        let btn = UIButton()
        //: btn.setImage(UIImage.bundleBy(name: "btn_party_quit_nor"), for: .normal)
        btn.setImage(UIImage.bundleBy(name: (String(kStr_centerTitle.suffix(8)) + String(kStr_toTitle.prefix(6)) + "_nor")), for: .normal)
        //: btn.addTarget(self, action: #selector(quitButtonClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(itemClick), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var quitLab: UILabel = {
    private lazy var quitLab: UILabel = {
        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.textColor = .white
        lab.textColor = .white
        //: lab.font = UIFont.dorsum(fontSize: 17)
        lab.font = UIFont.dorsum(fontSize: 17)
        //: lab.text = "Quit".localized
        lab.text = (String(kStr_noData.suffix(4))).localized
        //: return lab
        return lab
        //: }()
    }()

    //: private lazy var closeBtn: UIButton = {
    private lazy var closeBtn: UIButton = {
        //: let btn = UIButton()
        let btn = UIButton()
        //: btn.setImage(UIImage.bundleBy(name: "btn_party_close_nor"), for: .normal)
        btn.setImage(UIImage.bundleBy(name: (String(kStr_backgroundValue) + String(kStr_minRandomErrorTitle))), for: .normal)
        //: btn.addTarget(self, action: #selector(closeButtonClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(colorFile), for: .touchUpInside)
        //: btn.isHidden = !self.isAnchor
        btn.isHidden = !self.isAnchor
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var closeLab: UILabel = {
    private lazy var closeLab: UILabel = {
        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.textColor = .white
        lab.textColor = .white
        //: lab.font = UIFont.dorsum(fontSize: 17)
        lab.font = UIFont.dorsum(fontSize: 17)
        //: lab.text = "Close".localized
        lab.text = (String(kStr_emptyKeyTitle)).localized
        //: lab.isHidden = !self.isAnchor
        lab.isHidden = !self.isAnchor
        //: return lab
        return lab
        //: }()
    }()
}

// MARK: - Event

//: extension TalkingVoiceRoomCloseView {
extension LayerView {
    /// 展示视图
    //: func show() {
    func pointOfReference() {
        //: guard self.superview == nil else { return }
        guard self.superview == nil else { return }
        //: TableMacroDefine.getWindow().addSubview(self)
        TableMacroDefine.oeilDeBoeufView().addSubview(self)
    }

    /// 移除视图
    //: @objc func dismiss() {
    @objc func postDown() {
        //: guard self.superview != nil else { return }
        guard self.superview != nil else { return }
        //: self.removeFromSuperview()
        self.removeFromSuperview()
    }

    /// 最小化窗口点击事件
    //: @objc private func miniButtonClick() {
    @objc private func stickIn() {
        //: self.dismiss()
        self.postDown()
        //: TalkingVoiceRoomManager.shared().voiceRoom_mini()
        SubCheckedReactiveCompatible.replyShared().capabilityName()
    }

    /// 退出语聊房按钮点击事件
    //: @objc private func quitButtonClick() {
    @objc private func itemClick() {
        //: self.dismiss()
        self.postDown()
        //: TalkingVoiceRoomManager.shared().voiceRoom_releaseAllResource()
        SubCheckedReactiveCompatible.replyShared().viewBy()
    }

    /// 关闭语聊房按钮点击事件
    //: @objc private func closeButtonClick() {
    @objc private func colorFile() {
        //: let config = ShowAlertConfig()
        let config = StreetwiseAlertConfig()
        //: config.alignment = .center
        config.alignment = .center
        //: TalkingAlertShow.customAlert(message: "Do you want to close the room? After closing the room, all users will be removed from the room.".localized, leftBtnTitle: "Cancel".localized, rightBtnTitle: "OK".localized, leftBlock: {}, rightBlock: {
        ClickReactiveCompatible.anyAppearConfig(message: String(bytes: kStr_logText.map{targetExitEqual(now: $0)}, encoding: .utf8)!.localized, leftBtnTitle: (String(kStr_centerModelMakeText.prefix(6))).localized, rightBtnTitle: "OK".localized, leftBlock: {}, rightBlock: {
            //: TalkingVoiceRoomManager.shared().voiceRoom_releaseAllResource()
            SubCheckedReactiveCompatible.replyShared().viewBy()
            //: TalkingVoiceRoomReqTool.req_voiceRoomClose(roomId: TalkingVoiceRoomManager.shared().partyModel.roomId)
            SharedReqTool.completion(roomId: SubCheckedReactiveCompatible.replyShared().partyModel.roomId)
            //: self.dismiss()
            self.postDown()

            //: }, config: config)
        }, config: config)
    }
}

// MARK: - Layout

//: extension TalkingVoiceRoomCloseView {
extension LayerView {
    /// 添加视图
    //: private func setupSubviews() {
    private func single() {
        //: self.layer.addSublayer(self.gradientLayer)
        self.layer.addSublayer(self.gradientLayer)
        //: self.addSubview(self.rightBtn)
        self.addSubview(self.rightBtn)
        //: self.addSubview(self.quitBtn)
        self.addSubview(self.quitBtn)
        //: self.addSubview(self.quitLab)
        self.addSubview(self.quitLab)
        //: self.addSubview(self.miniBtn)
        self.addSubview(self.miniBtn)
        //: self.addSubview(self.miniLab)
        self.addSubview(self.miniLab)
        //: self.addSubview(self.closeBtn)
        self.addSubview(self.closeBtn)
        //: self.addSubview(self.closeLab)
        self.addSubview(self.closeLab)
    }

    /// 添加约束
    //: private func setupSubViewsConstraint() {
    private func touchWith() {
        //: self.frame = CGRect(x: 0, y: 0, width: ScreenWidth, height: ScreenHeight)
        self.frame = CGRect(x: 0, y: 0, width: kLet_halfData, height: kLet_noSeatName)

        //: self.rightBtn.snp.makeConstraints { make in
        self.rightBtn.snp.makeConstraints { make in
            //: make.top.equalTo(StatusBarHeight + actualWidth(w: 4))
            make.top.equalTo(kLet_postPartyValue + originalScene(w: 4))
            //: make.trailing.equalTo(-10)
            make.trailing.equalTo(-10)
            //: make.width.height.equalTo(actualWidth(w: 32))
            make.width.height.equalTo(originalScene(w: 32))
        }

        //: self.quitBtn.snp.makeConstraints { make in
        self.quitBtn.snp.makeConstraints { make in
            //: if self.isAnchor {
            if self.isAnchor {
                //: make.centerY.equalToSuperview()
                make.centerY.equalToSuperview()
                //: } else {
            } else {
                //: make.top.equalTo((ScreenHeight + actualWidth(w: 116)) / 2)
                make.top.equalTo((kLet_noSeatName + originalScene(w: 116)) / 2)
            }
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.width.height.equalTo(actualWidth(w: 75))
            make.width.height.equalTo(originalScene(w: 75))
        }
        //: self.quitLab.snp.makeConstraints { make in
        self.quitLab.snp.makeConstraints { make in
            //: make.top.equalTo(self.quitBtn.snp.bottom).offset(actualWidth(w: 12))
            make.top.equalTo(self.quitBtn.snp.bottom).offset(originalScene(w: 12))
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
        }

        //: self.miniBtn.snp.makeConstraints { make in
        self.miniBtn.snp.makeConstraints { make in
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.width.height.equalTo(self.quitBtn)
            make.width.height.equalTo(self.quitBtn)
            //: make.bottom.equalTo(self.quitBtn.snp.top).offset(-actualWidth(w: 116))
            make.bottom.equalTo(self.quitBtn.snp.top).offset(-originalScene(w: 116))
        }
        //: self.miniLab.snp.makeConstraints { make in
        self.miniLab.snp.makeConstraints { make in
            //: make.top.equalTo(self.miniBtn.snp.bottom).offset(actualWidth(w: 12))
            make.top.equalTo(self.miniBtn.snp.bottom).offset(originalScene(w: 12))
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
        }

        //: self.closeBtn.snp.makeConstraints { make in
        self.closeBtn.snp.makeConstraints { make in
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.width.height.equalTo(self.quitBtn)
            make.width.height.equalTo(self.quitBtn)
            //: make.top.equalTo(self.quitBtn.snp.bottom).offset(actualWidth(w: 116))
            make.top.equalTo(self.quitBtn.snp.bottom).offset(originalScene(w: 116))
        }
        //: self.closeLab.snp.makeConstraints { make in
        self.closeLab.snp.makeConstraints { make in
            //: make.top.equalTo(self.closeBtn.snp.bottom).offset(actualWidth(w: 12))
            make.top.equalTo(self.closeBtn.snp.bottom).offset(originalScene(w: 12))
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
        }
    }

    /// 添加通知
    //: private func addNotifications() {
    private func videoList() {
        // 语聊房状态变更
        //: NotificationCenter.default.addObserver(self,
        NotificationCenter.default.addObserver(self,
                                               //: selector: #selector(dismiss),
                                               selector: #selector(postDown),
                                               //: name: PARTY_STATUS_CHANGE_NOTIFICATION,
                                               name: kLet_screenTitle,
                                               //: object: nil)
                                               object: nil)
    }
}
