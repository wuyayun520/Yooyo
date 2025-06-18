
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let kStr_backContent:[UInt8] = [0x8d,0x8a,0x8d,0x90,0xcc,0x87,0x8b,0x80,0x81,0x96,0xde,0xcd,0xc4,0x8c,0x85,0x97,0xc4,0x8a,0x8b,0x90,0xc4,0x86,0x81,0x81,0x8a,0xc4,0x8d,0x89,0x94,0x88,0x81,0x89,0x81,0x8a,0x90,0x81,0x80]

private func requestImageSource(with num: UInt8) -> UInt8 {
    return num ^ 228
}

/*: "party_mini_close" :*/
fileprivate let kStr_labText:String = "length model colorparty_"
fileprivate let kStr_modelSumData:String = "mini_and manager return name icon"
fileprivate let kStr_spaceFillText:String = "clscalee"

/*: "party_mini_bg_left" :*/
fileprivate let kStr_sceneData:[UInt8] = [0x74,0x66,0x65,0x6c,0x5f,0x67,0x62,0x5f,0x69,0x6e,0x69,0x6d,0x5f,0x79,0x74,0x72,0x61,0x70]

/*: "party_mini_bg_right" :*/
fileprivate let kStr_addValue:String = "info draw path input selfparty_"
fileprivate let kStr_colorName:String = "cover make height input makebg_right"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  RotundaMiniView.swift
//  FloraFlex
//
//  Created by DouXiu on 2024/9/23.
//

//: import UIKit
import UIKit

//: class TalkingVoiceRoomMiniView: TalkingBaseMiniView {
class RotundaMiniView: BaseReactiveCompatible {
    /// 悬浮窗是否在左侧
    //: private var isLeft = (LanguageManager.shared.direction == .rightToLeft)
    private var isLeft = (DeleteClientThen.shared.direction == .rightToLeft)
    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: setupSubViewsConstraint()
        subSwaddlingClothesFormatDelayVisible()
        //: addTapAndPanGestures()
        outsidePost()
    }

    //: @available(*, unavailable)
    @available(*, unavailable)
    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: kStr_backContent.map{requestImageSource(with: $0)}, encoding: .utf8)!)
    }

    /// 重写父类拖拽响应事件
    //: override func panGestureEvent(sender: UIPanGestureRecognizer) {
    override func eventAfter(sender: UIPanGestureRecognizer) {
        //: super.panGestureEvent(sender: sender)
        super.eventAfter(sender: sender)
        //: bgImgView.isHidden = true
        bgImgView.isHidden = true
        //: closeBtn.isHidden = true
        closeBtn.isHidden = true
        //: guard sender.state == .ended else { return }
        guard sender.state == .ended else { return }
        //: DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 0.3) {
        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 0.3) {
            //: self.isLeft = (self.center.x <= ScreenWidth * 0.5)
            self.isLeft = (self.center.x <= kLet_halfData * 0.5)
            //: self.setupSubViewsConstraint()
            self.subSwaddlingClothesFormatDelayVisible()
        }
    }

    // MARK: - Lazy Load

    //: private lazy var bgImgView: UIImageView = {
    private lazy var bgImgView: UIImageView = {
        //: let img = UIImageView()
        let img = UIImageView()
        //: self.addSubview(img)
        self.addSubview(img)
        //: return img
        return img
        //: }()
    }()

    //: private lazy var icon: UIImageView = {
    private lazy var icon: UIImageView = {
        //: let v = UIImageView()
        let v = UIImageView()
        //: v.contentMode = .scaleAspectFill
        v.contentMode = .scaleAspectFill
        //: v.layer.cornerRadius = 20
        v.layer.cornerRadius = 20
        //: v.layer.masksToBounds = true
        v.layer.masksToBounds = true
        //: v.layer.borderColor = UIColor.white.cgColor
        v.layer.borderColor = UIColor.white.cgColor
        //: v.layer.borderWidth = 1
        v.layer.borderWidth = 1
        //: self.addSubview(v)
        self.addSubview(v)
        //: return v
        return v
        //: }()
    }()

    //: private lazy var closeBtn: UIButton = {
    private lazy var closeBtn: UIButton = {
        //: let btn = UIButton()
        let btn = UIButton()
        //: btn.setImage(UIImage.bundleBy(name: "party_mini_close"), for: .normal)
        btn.setImage(UIImage.bundleBy(name: (String(kStr_labText.suffix(6)) + String(kStr_modelSumData.prefix(5)) + kStr_spaceFillText.replacingOccurrences(of: "scale", with: "os"))), for: .normal)
        //: btn.addTarget(self, action: #selector(closeButtonClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(imageClick), for: .touchUpInside)
        //: self.addSubview(btn)
        self.addSubview(btn)
        //: return btn
        return btn
        //: }()
    }()
}

// MARK: - Event

//: extension TalkingVoiceRoomMiniView {
extension RotundaMiniView {
    /// 构建视频小窗口
    //: static func buildLiveMiniView() -> TalkingVoiceRoomMiniView {
    static func displayWindowNeed() -> RotundaMiniView {
        //: let view = TalkingVoiceRoomMiniView(frame: .zero)
        let view = RotundaMiniView(frame: .zero)
        //: let position = TalkingSocketManager.shared.partyMiniPosition
        let position = ToSocketManager.shared.partyMiniPosition
        //: let x = (position.x == 0) ? position.x : position.x-view.bounds.size.width
        let x = (position.x == 0) ? position.x : position.x - view.bounds.size.width
        //: var y = position.y
        var y = position.y
        //: y = max(0, y)
        y = max(0, y)
        //: y = min(ScreenHeight-view.bounds.size.height, y)
        y = min(kLet_noSeatName - view.bounds.size.height, y)
        //: view.frame = CGRect(x: x, y: y, width: view.width, height: view.height)
        view.frame = CGRect(x: x, y: y, width: view.width, height: view.height)
        //: TalkingSocketManager.shared.containerView?.addSubview(view)
        ToSocketManager.shared.containerView?.addSubview(view)
        //: return view
        return view
    }

    /// 刷新直播小窗口
    //: func refreshMiniView() {
    func perspective() {
        //: let optionsInfo = [KingfisherOptionsInfoItem.processor(RoundCornerImageProcessor(cornerRadius: 20))]
        let optionsInfo = [KingfisherOptionsInfoItem.processor(RoundCornerImageProcessor(cornerRadius: 20))]
        //: icon.setUrlImage(urlStr: TalkingVoiceRoomManager.shared().partyModel.streamerInfo.headPic, options: optionsInfo)
        icon.failureFinish(urlStr: SubCheckedReactiveCompatible.replyShared().partyModel.streamerInfo.headPic, options: optionsInfo)
    }

    /// 关闭按钮点击事件
    //: @objc private func closeButtonClick() {
    @objc private func imageClick() {
        //: TalkingVoiceRoomManager.shared().voiceRoom_releaseAllResource()
        SubCheckedReactiveCompatible.replyShared().viewBy()
    }
}

// MARK: - Layout

//: extension TalkingVoiceRoomMiniView {
extension RotundaMiniView {
    //: private func setupSubViewsConstraint() {
    private func subSwaddlingClothesFormatDelayVisible() {
        //: bounds = CGRect(x: 0, y: 0, width: 55, height: 70)
        bounds = CGRect(x: 0, y: 0, width: 55, height: 70)

        //: let imageStr = isLeft ? "party_mini_bg_left" : "party_mini_bg_right"
        let imageStr = isLeft ? String(bytes: kStr_sceneData.reversed(), encoding: .utf8)! : (String(kStr_addValue.suffix(6)) + "mini_" + String(kStr_colorName.suffix(8)))
        //: bgImgView.image = UIImage.bundleBy(name: imageStr)
        bgImgView.image = UIImage.bundleBy(name: imageStr)
        //: bgImgView.isHidden = false
        bgImgView.isHidden = false
        //: bgImgView.snp.remakeConstraints { make in
        bgImgView.snp.remakeConstraints { make in
            //: make.edges.equalToSuperview()
            make.edges.equalToSuperview()
        }

        //: icon.snp.remakeConstraints { make in
        icon.snp.remakeConstraints { make in
            //: if isLeft {
            if isLeft {
                //: make.right.equalTo(-3)
                make.right.equalTo(-3)
                //: } else {
            } else {
                //: make.left.equalTo(3)
                make.left.equalTo(3)
            }
            //: make.centerY.equalToSuperview()
            make.centerY.equalToSuperview()
            //: make.width.height.equalTo(40)
            make.width.height.equalTo(40)
        }

        //: closeBtn.isHidden = false
        closeBtn.isHidden = false
        //: closeBtn.snp.remakeConstraints { make in
        closeBtn.snp.remakeConstraints { make in
            //: if isLeft {
            if isLeft {
                //: make.left.equalTo(icon).offset(-3)
                make.left.equalTo(icon).offset(-3)
                //: } else {
            } else {
                //: make.right.equalTo(icon).offset(3)
                make.right.equalTo(icon).offset(3)
            }
            //: make.top.equalTo(icon).offset(-3)
            make.top.equalTo(icon).offset(-3)
            //: make.width.height.equalTo(16)
            make.width.height.equalTo(16)
        }
    }
}
