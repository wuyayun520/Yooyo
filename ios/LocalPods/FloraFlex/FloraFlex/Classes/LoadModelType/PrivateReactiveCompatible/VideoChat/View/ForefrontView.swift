
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let kStr_toData:[UInt8] = [0x83,0x84,0x83,0x9e,0xc2,0x89,0x85,0x8e,0x8f,0x98,0xd0,0xc3,0xca,0x82,0x8b,0x99,0xca,0x84,0x85,0x9e,0xca,0x88,0x8f,0x8f,0x84,0xca,0x83,0x87,0x9a,0x86,0x8f,0x87,0x8f,0x84,0x9e,0x8f,0x8e]

private func conversationName(current num: UInt8) -> UInt8 {
    return num ^ 234
}

/*: "icon_free_call_bg_coundown" :*/
fileprivate let kStr_sharedValue:[Character] = ["i","c","o","n","_","f","r"]
fileprivate let kStr_managerTitle:[Character] = ["e","e","_","c","a","l","l","_","b","g","_","c","o","u","n","d","o","w","n"]

/*: "icon_free_call_countdown" :*/
fileprivate let kStr_withFormatName:String = "on let headicon_"
fileprivate let kStr_awakeName:String = "fitall"
fileprivate let kStr_originValue:String = "tdowapp"

/*: "Not enough coins" :*/
fileprivate let kStr_infoData:String = "somebody aspect data indicator firstNot e"
fileprivate let kStr_nowConditionValue:[Character] = ["n","o"]
fileprivate let kStr_blackData:[Character] = ["u","g","h"," ","c","o","i","n","s"]

/*: "#8566FF" :*/
fileprivate let kStr_micName:String = "#8566FFstring begin use self"

/*: "Recharge" :*/
fileprivate let kStr_showData:String = "Rechaextension name con"
fileprivate let kStr_insideData:String = "rgplayer"

/*: "%@s Remaining" :*/
fileprivate let kStr_viewRowValue:String = "%@"
fileprivate let kStr_beyondMyData:String = "s Remstring server"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  ForefrontView.swift
//  FloraFlex
//
//  Created by Charlotte on 2024/4/29.
//

//: import UIKit
import UIKit

/// 免费通话剩余20s倒计时页面
//: class TalkingFreeCallRechargeTipsView: UIView {
class ForefrontView: UIView {
    // MARK: - 属性声明

    //: var touchRechargeBtnBlock: (() -> Void)?
    var touchRechargeBtnBlock: (() -> Void)?

    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: setupSubviews()
        finishShow()
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: kStr_toData.map{conversationName(current: $0)}, encoding: .utf8)!)
    }

    //: deinit {
    deinit {}

    //: lazy var contentView: UIView = {
    lazy var contentView: UIView = {
        //: let v = UIView()
        let v = UIView()
        //: v.backgroundColor = .white
        v.backgroundColor = .white
        //: v.layer.masksToBounds = true
        v.layer.masksToBounds = true
        //: v.layer.cornerRadius = 12
        v.layer.cornerRadius = 12
        //: return v
        return v
        //: }()
    }()

    //: lazy var topBgImagV: UIImageView = {
    lazy var topBgImagV: UIImageView = {
        //: let imag = UIImageView()
        let imag = UIImageView()
        //: imag.image = UIImage.bundleBy(name: "icon_free_call_bg_coundown")
        imag.image = UIImage.bundleBy(name: (String(kStr_sharedValue) + String(kStr_managerTitle)))
        //: return imag
        return imag
        //: }()
    }()

    //: lazy var topImagV: UIImageView = {
    lazy var topImagV: UIImageView = {
        //: let imag = UIImageView()
        let imag = UIImageView()
        //: imag.image = UIImage.bundleBy(name: "icon_free_call_countdown")
        imag.image = UIImage.bundleBy(name: (String(kStr_withFormatName.suffix(5)) + "free_" + kStr_awakeName.replacingOccurrences(of: "fit", with: "c") + "_coun" + kStr_originValue.replacingOccurrences(of: "app", with: "n")))
        //: imag.contentMode = .scaleAspectFit
        imag.contentMode = .scaleAspectFit
        //: return imag
        return imag
        //: }()
    }()

    //: lazy var tipsLB: UILabel = {
    lazy var tipsLB: UILabel = {
        //: let lb = UILabel()
        let lb = UILabel()
        //: lb.text = "Not enough coins".localized
        lb.text = (String(kStr_infoData.suffix(5)) + String(kStr_nowConditionValue) + String(kStr_blackData)).localized
        //: lb.textAlignment = .center
        lb.textAlignment = .center
        //: lb.textColor = UIColor.appTitleColor()
        lb.textColor = UIColor.dataFormat()
        //: lb.font = UIFont.dorsum(fontSize: 12)
        lb.font = UIFont.dorsum(fontSize: 12)
        //: return lb
        return lb
        //: }()
    }()

    //: lazy var countLB: UILabel = {
    lazy var countLB: UILabel = {
        //: let lb = UILabel()
        let lb = UILabel()
        //: lb.textAlignment = .center
        lb.textAlignment = .center
        //: lb.textColor = UIColor.init(hex: "#8566FF")
        lb.textColor = UIColor(hex: (String(kStr_micName.prefix(7))))
        //: lb.font = UIFont.messageDown(fontSize: 10)
        lb.font = UIFont.messageDown(fontSize: 10)
        //: return lb
        return lb
        //: }()
    }()

    //: lazy var callBtn: UIButton = {
    lazy var callBtn: UIButton = {
        //: let btn = UIButton.init(type: .custom)
        let btn = UIButton(type: .custom)
        //: btn.layer.cornerRadius = 10
        btn.layer.cornerRadius = 10
        //: btn.clipsToBounds = true
        btn.clipsToBounds = true
        //: btn.setBackgroundImage(UIImage.imageGradientColor(colors: UIColor.appGradientColor(), size: CGSize(width: 72, height: 20)), for: .normal)
        btn.setBackgroundImage(UIImage.upTo(colors: UIColor.thirdColor(), size: CGSize(width: 72, height: 20)), for: .normal)
        //: btn.setTitleColor(.white, for: .normal)
        btn.setTitleColor(.white, for: .normal)
        //: btn.titleLabel?.font = UIFont.dorsum(fontSize: 12)
        btn.titleLabel?.font = UIFont.dorsum(fontSize: 12)
        //: btn.setTitle("Recharge".localized, for: .normal)
        btn.setTitle((String(kStr_showData.prefix(5)) + kStr_insideData.replacingOccurrences(of: "player", with: "e")).localized, for: .normal)
        //: btn.addTarget(self, action: #selector(callBtnClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(referUser), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()
}

//: extension TalkingFreeCallRechargeTipsView {
extension ForefrontView {
    //: func setTipsMessage(count: Int) {
    func exceptKey(count: Int) {
        //: countLB.text = "%@s Remaining".localizedArguments(count)
        countLB.text = (kStr_viewRowValue.capitalized + String(kStr_beyondMyData.prefix(5)) + "aining").imageArguments(count)
    }

    //: @objc private func callBtnClick() {
    @objc private func referUser() {
        //: EffectPushManager.share.func__pushToHalfWebVC(webViewType: .RechargeHalfPage)
        EffectPushManager.share.markColor(webViewType: .RechargeHalfPage)
        //: touchRechargeBtnBlock?()
        touchRechargeBtnBlock?()
    }
}

//: extension TalkingFreeCallRechargeTipsView {
extension ForefrontView {
    //: private func setupSubviews() {
    private func finishShow() {
        //: addSubview(contentView)
        addSubview(contentView)
        //: contentView.addSubview(topBgImagV)
        contentView.addSubview(topBgImagV)
        //: addSubview(topImagV)
        addSubview(topImagV)
        //: contentView.addSubview(tipsLB)
        contentView.addSubview(tipsLB)
        //: contentView.addSubview(countLB)
        contentView.addSubview(countLB)
        //: contentView.addSubview(callBtn)
        contentView.addSubview(callBtn)

        //: contentView.snp.makeConstraints { make in
        contentView.snp.makeConstraints { make in
            //: make.trailing.equalTo(8)
            make.trailing.equalTo(8)
            //: make.top.equalTo(7)
            make.top.equalTo(7)
            //: make.leading.bottom.equalToSuperview()
            make.leading.bottom.equalToSuperview()
        }
        //: topBgImagV.snp.makeConstraints { make in
        topBgImagV.snp.makeConstraints { make in
            //: make.leading.trailing.top.equalToSuperview()
            make.leading.trailing.top.equalToSuperview()
            //: make.height.equalTo(57)
            make.height.equalTo(57)
        }
        //: topImagV.snp.makeConstraints { make in
        topImagV.snp.makeConstraints { make in
            //: make.leading.equalToSuperview()
            make.leading.equalToSuperview()
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.width.equalTo(37)
            make.width.equalTo(37)
            //: make.height.equalTo(38)
            make.height.equalTo(38)
        }

        //: tipsLB.snp.makeConstraints { make in
        tipsLB.snp.makeConstraints { make in
            //: make.top.equalTo(38)
            make.top.equalTo(38)
            //: make.centerX.equalToSuperview().offset(-2)
            make.centerX.equalToSuperview().offset(-2)
            //: make.height.equalTo(14)
            make.height.equalTo(14)
        }

        //: countLB.snp.makeConstraints { make in
        countLB.snp.makeConstraints { make in
            //: make.top.equalTo(tipsLB.snp.bottom).offset(4)
            make.top.equalTo(tipsLB.snp.bottom).offset(4)
            //: make.centerX.equalToSuperview().offset(-2)
            make.centerX.equalToSuperview().offset(-2)
            //: make.height.equalTo(12)
            make.height.equalTo(12)
        }

        //: callBtn.snp.makeConstraints { make in
        callBtn.snp.makeConstraints { make in
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.top.equalTo(countLB.snp.bottom).offset(8)
            make.top.equalTo(countLB.snp.bottom).offset(8)
            //: make.size.equalTo(CGSize.init(width: 72, height: 20))
            make.size.equalTo(CGSize(width: 72, height: 20))
        }
    }
}
