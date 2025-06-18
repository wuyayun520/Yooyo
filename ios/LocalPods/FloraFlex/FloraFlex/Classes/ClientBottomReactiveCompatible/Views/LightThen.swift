
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let kStr_onTitle:[UInt8] = [0x8d,0x8a,0x8d,0x90,0xcc,0x87,0x8b,0x80,0x81,0x96,0xde,0xcd,0xc4,0x8c,0x85,0x97,0xc4,0x8a,0x8b,0x90,0xc4,0x86,0x81,0x81,0x8a,0xc4,0x8d,0x89,0x94,0x88,0x81,0x89,0x81,0x8a,0x90,0x81,0x80]

private func titlePush(enable num: UInt8) -> UInt8 {
    return num ^ 228
}

/*: "iv_Guidance" :*/
fileprivate let kStr_withValue:String = "view status priorityiv_Gui"

/*: "Click to view" :*/
fileprivate let kStr_layerData:[Character] = ["C","l","i","c","k"," ","t"]
fileprivate let kStr_weightEqualValue:[Character] = ["o"," ","v","i","e","w"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  LightThen.swift
//  AbroadTalking
//
//  Created by DouXiu on 2024/5/24.
//

//: import UIKit
import UIKit

//: class TalkingNewGuidancePopUpView: UIView {
class LightThen: UIView {
    //: var popView: TalkingPopView?
    var popView: BackgroundThen?

    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: self.setupSubviews()
        self.limited()
        //: self.setupSubViewsConstraint()
        self.videoValue()
    }

    //: @available(*, unavailable)
    @available(*, unavailable)
    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: kStr_onTitle.map{titlePush(enable: $0)}, encoding: .utf8)!)
    }

    //: private lazy var contentView: UIImageView = {
    private lazy var contentView: UIImageView = {
        //: let iamg = UIImageView()
        let iamg = UIImageView()
        //: iamg.image = UIImage.bundleBy(name: "iv_Guidance")
        iamg.image = UIImage.bundleBy(name: (String(kStr_withValue.suffix(6)) + "dance"))
        //: iamg.isUserInteractionEnabled = true
        iamg.isUserInteractionEnabled = true
        //: return iamg
        return iamg
        //: }()
    }()

    //: private lazy var clickToViewBtn: UIButton = {
    private lazy var clickToViewBtn: UIButton = {
        //: let btn = UIButton(type: .custom)
        let btn = UIButton(type: .custom)
        //: btn.setTitle("Click to view".localized, for: .normal)
        btn.setTitle((String(kStr_layerData) + String(kStr_weightEqualValue)).localized, for: .normal)
        //: btn.titleLabel?.font = UIFont.pingfangFont(type: .Medium, fontSize: 16)
        btn.titleLabel?.font = UIFont.groupSize(type: .Medium, fontSize: 16)
        //: btn.setTitleColor(.white, for: .normal)
        btn.setTitleColor(.white, for: .normal)
        //: btn.setBackgroundImage(UIImage.imageGradientColor(colors: UIColor.appGradientColor(), size: CGSize(width: 203, height: 50)), for: .normal)
        btn.setBackgroundImage(UIImage.upTo(colors: UIColor.thirdColor(), size: CGSize(width: 203, height: 50)), for: .normal)
        //: btn.layer.cornerRadius = 25
        btn.layer.cornerRadius = 25
        //: btn.clipsToBounds = true
        btn.clipsToBounds = true
        //: btn.addTarget(self, action: #selector(clickToViewButtonEvent), for: .touchUpInside)
        btn.addTarget(self, action: #selector(bindEvent), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()
}

//: extension TalkingNewGuidancePopUpView {
extension LightThen {
    //: @objc func clickToViewButtonEvent() {
    @objc func bindEvent() {
        //: self.dismiss()
        self.sprechstimme()
        //: EffectPushManager.share.func__pushToWebVC(webViewType: .TaskCenter)
        EffectPushManager.share.selectUp(webViewType: .TaskCenter)
    }

    //: func show() {
    func pastWith() {
        //: popView = TalkingPopView(frame: UIScreen.main.bounds)
        popView = BackgroundThen(frame: UIScreen.main.bounds)
        //: popView?.initWithView(view: self)
        popView?.toViewText(view: self)
        //: popView?.showInView(view: TableMacroDefine.getWindow())
        popView?.beyondAllAdjust(view: TableMacroDefine.oeilDeBoeufView())
        //: popView?.isRemoveTapGes = true
        popView?.isRemoveTapGes = true
    }

    //: @objc func dismiss() {
    @objc func sprechstimme() {
        //: popView?.dismissView()
        popView?.placePushAside()
        //: popView = nil
        popView = nil
    }

    //: override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
    override func touchesBegan(_ touches: Set<UITouch>, with _: UIEvent?) {
        //: if let touch = touches.first {
        if let touch = touches.first {
            //: let location = touch.location(in: self)
            let location = touch.location(in: self)
            //: if !contentView.frame.contains(location) {
            if !contentView.frame.contains(location) {
                //: dismiss()
                sprechstimme()
            }
        }
    }
}

//: extension TalkingNewGuidancePopUpView {
extension LightThen {
    //: private func setupSubviews() {
    private func limited() {
        //: self.addSubview(contentView)
        self.addSubview(contentView)
        //: contentView.addSubview(clickToViewBtn)
        contentView.addSubview(clickToViewBtn)
    }

    //: private func setupSubViewsConstraint() {
    private func videoValue() {
        //: contentView.snp.makeConstraints { make in
        contentView.snp.makeConstraints { make in
            //: make.center.equalToSuperview()
            make.center.equalToSuperview()
            //: make.size.equalTo(CGSize(width: actualWidth(w: 295), height: actualWidth(w: 325)))
            make.size.equalTo(CGSize(width: originalScene(w: 295), height: originalScene(w: 325)))
        }

        //: clickToViewBtn.snp.makeConstraints { make in
        clickToViewBtn.snp.makeConstraints { make in
            //: make.bottom.equalTo(contentView).offset(-18)
            make.bottom.equalTo(contentView).offset(-18)
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.width.equalTo(203)
            make.width.equalTo(203)
            //: make.height.equalTo(50)
            make.height.equalTo(50)
        }
    }
}
