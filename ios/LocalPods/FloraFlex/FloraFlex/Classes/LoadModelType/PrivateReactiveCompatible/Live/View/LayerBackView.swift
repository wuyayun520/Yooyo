
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let kStr_preserveContent:[UInt8] = [0x6,0x1,0x6,0x1b,0x47,0xc,0x0,0xb,0xa,0x1d,0x55,0x46,0x4f,0x7,0xe,0x1c,0x4f,0x1,0x0,0x1b,0x4f,0xd,0xa,0xa,0x1,0x4f,0x6,0x2,0x1f,0x3,0xa,0x2,0xa,0x1,0x1b,0xa,0xb]

private func userView(text num: UInt8) -> UInt8 {
    return num ^ 111
}

/*: "btn_live_nor" :*/
fileprivate let kStr_errorFrameEffectName:[Character] = ["b","t","n","_","l","i","v","e","_","n","o","r"]

/*: "Live" :*/
fileprivate let kStr_tableData:[Character] = ["L","i","v","e"]

/*: "btn_party_nor" :*/
fileprivate let kStr_targetData:[Character] = ["b","t","n","_","p","a","r","t"]
fileprivate let kStr_kitData:[Character] = ["y","_","n","o","r"]

/*: "Party" :*/
fileprivate let kStr_layerCameraTitle:String = "Partyvoice table info"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  LayerBackView.swift
//  FloraFlex
//
//  Created by DouXiu on 2024/9/20.
//

//: import UIKit
import UIKit

//: class TalkingTabLiveView: UIView {
class LayerBackView: UIView {
    //: private var popView: TalkingPopView?
    private var popView: BackgroundThen?

    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: setupSubviews()
        bySubviews()
        //: setupSubViewsConstraint()
        anTing()
    }

    //: @available(*, unavailable)
    @available(*, unavailable)
    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: kStr_preserveContent.map{userView(text: $0)}, encoding: .utf8)!)
    }

    // MARK: - Lazy Load

    //: private lazy var backView: UIView = {
    private lazy var backView: UIView = {
        //: let view = UIView()
        let view = UIView()
        //: view.layer.cornerRadius = 24
        view.layer.cornerRadius = 24
        //: view.layer.masksToBounds = true
        view.layer.masksToBounds = true
        //: view.backgroundColor = .white
        view.backgroundColor = .white
        //: return view
        return view
        //: }()
    }()

    //: private lazy var liveBtn: UIButton = {
    private lazy var liveBtn: UIButton = {
        //: let btn = UIButton()
        let btn = UIButton()
        //: btn.setImage(UIImage.bundleBy(name: "btn_live_nor"), for: .normal)
        btn.setImage(UIImage.bundleBy(name: (String(kStr_errorFrameEffectName))), for: .normal)
        //: btn.addTarget(self, action: #selector(liveButtonAction), for: .touchUpInside)
        btn.addTarget(self, action: #selector(nest), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var liveLab: UILabel = {
    private lazy var liveLab: UILabel = {
        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.textColor = UIColor.appTitleColor()
        lab.textColor = UIColor.dataFormat()
        //: lab.font = UIFont.dorsum(fontSize: 17)
        lab.font = UIFont.dorsum(fontSize: 17)
        //: lab.textAlignment = .center
        lab.textAlignment = .center
        //: lab.text = "Live".localized
        lab.text = (String(kStr_tableData)).localized
        //: return lab
        return lab
        //: }()
    }()

    //: private lazy var partyBtn: UIButton = {
    private lazy var partyBtn: UIButton = {
        //: let btn = UIButton()
        let btn = UIButton()
        //: btn.setImage(UIImage.bundleBy(name: "btn_party_nor"), for: .normal)
        btn.setImage(UIImage.bundleBy(name: (String(kStr_targetData) + String(kStr_kitData))), for: .normal)
        //: btn.addTarget(self, action: #selector(partyButtonAction), for: .touchUpInside)
        btn.addTarget(self, action: #selector(everyShow), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var partyLab: UILabel = {
    private lazy var partyLab: UILabel = {
        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.textColor = UIColor.appTitleColor()
        lab.textColor = UIColor.dataFormat()
        //: lab.font = UIFont.dorsum(fontSize: 17)
        lab.font = UIFont.dorsum(fontSize: 17)
        //: lab.textAlignment = .center
        lab.textAlignment = .center
        //: lab.text = "Party".localized
        lab.text = (String(kStr_layerCameraTitle.prefix(5))).localized
        //: return lab
        return lab
        //: }()
    }()
}

// MARK: - Event

//: extension TalkingTabLiveView {
extension LayerBackView {
    /// 展示视图
    //: func show() {
    func muff() {
        //: frame = CGRect(x: 0, y: 0, width: ScreenWidth, height: ScreenHeight)
        frame = CGRect(x: 0, y: 0, width: kLet_halfData, height: kLet_noSeatName)
        //: popView = TalkingPopView(frame: UIScreen.main.bounds)
        popView = BackgroundThen(frame: UIScreen.main.bounds)
        //: popView?.initWithView(view: self)
        popView?.toViewText(view: self)
        //: popView?.showInView(view: TableMacroDefine.getWindow())
        popView?.beyondAllAdjust(view: TableMacroDefine.oeilDeBoeufView())
    }

    /// 隐藏视图
    //: func dismiss() {
    func viewEnable() {
        //: popView?.dismissView()
        popView?.placePushAside()
        //: popView = nil
        popView = nil
    }

    /// 直播按钮事件
    //: @objc private func liveButtonAction() {
    @objc private func nest() {
        //: dismiss()
        viewEnable()
        //: NotificationCenter.default.post(name: LIVE_NEED_OPEN_NOTIFICATION, object: nil)
        NotificationCenter.default.post(name: kLet_meTitle, object: nil)
    }

    /// 语聊房按钮事件
    //: @objc private func partyButtonAction() {
    @objc private func everyShow() {
        //: dismiss()
        viewEnable()
        //: EffectPushManager.share.func_pushToVoiceRoomVC()
        EffectPushManager.share.formerId()
    }
}

// MARK: - Layout

//: extension TalkingTabLiveView {
extension LayerBackView {
    /// 添加视图
    //: private func setupSubviews() {
    private func bySubviews() {
        //: addSubview(backView)
        addSubview(backView)
        //: backView.addSubview(liveBtn)
        backView.addSubview(liveBtn)
        //: backView.addSubview(liveLab)
        backView.addSubview(liveLab)
        //: backView.addSubview(partyBtn)
        backView.addSubview(partyBtn)
        //: backView.addSubview(partyLab)
        backView.addSubview(partyLab)
    }

    /// 添加约束
    //: private func setupSubViewsConstraint() {
    private func anTing() {
        //: backView.snp.makeConstraints { make in
        backView.snp.makeConstraints { make in
            //: make.leading.trailing.bottom.equalToSuperview()
            make.leading.trailing.bottom.equalToSuperview()
            //: make.height.equalTo(163 + kDeviceSafeBottomHeight)
            make.height.equalTo(163 + kLet_formatNetValue)
        }

        //: liveBtn.snp.makeConstraints { make in
        liveBtn.snp.makeConstraints { make in
            //: make.top.equalTo(actualWidth(w: 32))
            make.top.equalTo(originalScene(w: 32))
            //: make.leading.equalTo(actualWidth(w: 63))
            make.leading.equalTo(originalScene(w: 63))
            //: make.width.height.equalTo(actualWidth(w: 75))
            make.width.height.equalTo(originalScene(w: 75))
        }
        //: liveLab.snp.makeConstraints { make in
        liveLab.snp.makeConstraints { make in
            //: make.top.equalTo(liveBtn.snp.bottom).offset(actualWidth(w: 12))
            make.top.equalTo(liveBtn.snp.bottom).offset(originalScene(w: 12))
            //: make.centerX.equalTo(liveBtn)
            make.centerX.equalTo(liveBtn)
            //: make.width.equalTo(ScreenWidth/2)
            make.width.equalTo(kLet_halfData / 2)
        }

        //: partyBtn.snp.makeConstraints { make in
        partyBtn.snp.makeConstraints { make in
            //: make.top.width.height.equalTo(liveBtn)
            make.top.width.height.equalTo(liveBtn)
            //: make.trailing.equalTo(-actualWidth(w: 63))
            make.trailing.equalTo(-originalScene(w: 63))
        }
        //: partyLab.snp.makeConstraints { make in
        partyLab.snp.makeConstraints { make in
            //: make.top.equalTo(partyBtn.snp.bottom).offset(actualWidth(w: 12))
            make.top.equalTo(partyBtn.snp.bottom).offset(originalScene(w: 12))
            //: make.centerX.equalTo(partyBtn)
            make.centerX.equalTo(partyBtn)
            //: make.width.equalTo(ScreenWidth/2)
            make.width.equalTo(kLet_halfData / 2)
        }
    }
}
