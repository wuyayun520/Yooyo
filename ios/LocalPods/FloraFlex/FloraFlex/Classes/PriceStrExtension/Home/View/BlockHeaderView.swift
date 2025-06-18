
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let kStr_effectValue:[UInt8] = [0x8d,0x8a,0x8d,0x90,0xcc,0x87,0x8b,0x80,0x81,0x96,0xde,0xcd,0xc4,0x8c,0x85,0x97,0xc4,0x8a,0x8b,0x90,0xc4,0x86,0x81,0x81,0x8a,0xc4,0x8d,0x89,0x94,0x88,0x81,0x89,0x81,0x8a,0x90,0x81,0x80]

/*: "pic" :*/
fileprivate let kStr_nameModelValue:[Character] = ["p","i","c"]

/*: "url" :*/
fileprivate let kStr_networkMakeData:[Character] = ["u","r","l"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  BlockHeaderView.swift
//  FloraFlex
//
//  Created by Charlotte on 2024/4/7.
//

//: import UIKit
import UIKit

//: class SocialHeaderView: UICollectionReusableView {
class BlockHeaderView: UICollectionReusableView {
    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: self.frame = CGRectMake(0, 0, ScreenWidth, SocialHeaderView.getSelfHeight())
        self.frame = CGRectMake(0, 0, kLet_halfData, BlockHeaderView.tradeTitle())
        //: basicUI()
        constraintCurrent()
    }

    //: @available(*, unavailable)
    @available(*, unavailable)
    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: kStr_effectValue.map{$0^228}, encoding: .utf8)!)
    }

    // MARK: - Lazy Load

    //: private lazy var hostBtn: UIButton = {
    private lazy var hostBtn: UIButton = {
        //: let btn = UIButton()
        let btn = UIButton()
        //: let dic = LocationThen.share.appConfigMode.homeOpAds.first
        let dic = LocationThen.share.appConfigMode.homeOpAds.first
        //: btn.setUrlImage(urlStr: dic?["pic"] ?? "")
        btn.displayFinish(urlStr: dic?[(String(kStr_nameModelValue))] ?? "")
        //: btn.addTarget(self, action: #selector(hostBtnClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(packageClick), for: .touchUpInside)
        //: self.addSubview(btn)
        self.addSubview(btn)
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var centerBtn: UIButton = {
    private lazy var centerBtn: UIButton = {
        //: let btn = UIButton()
        let btn = UIButton()
        //: let dic = LocationThen.share.appConfigMode.homeOpAds.last
        let dic = LocationThen.share.appConfigMode.homeOpAds.last
        //: btn.setUrlImage(urlStr: dic?["pic"] ?? "")
        btn.displayFinish(urlStr: dic?[(String(kStr_nameModelValue))] ?? "")
        //: btn.addTarget(self, action: #selector(centerBtnClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(viewAppear), for: .touchUpInside)
        //: self.addSubview(btn)
        self.addSubview(btn)
        //: return btn
        return btn
        //: }()
    }()
}

// MARK: - Event

//: extension SocialHeaderView {
extension BlockHeaderView {
    //: @objc private func hostBtnClick() {
    @objc private func packageClick() {
        //: let dic = LocationThen.share.appConfigMode.homeOpAds.first
        let dic = LocationThen.share.appConfigMode.homeOpAds.first
        //: EffectPushManager.share.func__pushToWebVC(urlStr: dic?["url"] ?? "")
        EffectPushManager.share.deleteTake(urlStr: dic?[(String(kStr_networkMakeData))] ?? "")
    }

    //: @objc private func centerBtnClick() {
    @objc private func viewAppear() {
        //: let dic = LocationThen.share.appConfigMode.homeOpAds.last
        let dic = LocationThen.share.appConfigMode.homeOpAds.last
        //: EffectPushManager.share.func__pushToWebVC(urlStr: dic?["url"] ?? "")
        EffectPushManager.share.deleteTake(urlStr: dic?[(String(kStr_networkMakeData))] ?? "")
    }
}

// MARK: - Layout

//: extension SocialHeaderView {
extension BlockHeaderView {
    //: class func getSelfHeight() -> CGFloat {
    class func tradeTitle() -> CGFloat {
        //: var sheight = 0.0
        var sheight = 0.0
        //: if LocationThen.share.loginUserMode.sex == Gender.female.rawValue && LocationThen.share.appConfigMode.homeOpAds.count > 1 {
        if LocationThen.share.loginUserMode.sex == SucceedComparable.female.rawValue && LocationThen.share.appConfigMode.homeOpAds.count > 1 {
            //: sheight += 76.0
            sheight += 76.0
        }
        //: return sheight
        return sheight
    }

    //: private func basicUI() {
    private func constraintCurrent() {
        //: self.backgroundColor = .clear
        self.backgroundColor = .clear
        //: if LocationThen.share.loginUserMode.sex == Gender.female.rawValue, LocationThen.share.appConfigMode.homeOpAds.count > 0 {
        if LocationThen.share.loginUserMode.sex == SucceedComparable.female.rawValue, LocationThen.share.appConfigMode.homeOpAds.count > 0 {
            //: self.hostBtn.frame = CGRect(x: 13, y: 12, width: (self.width-26-8)/2, height: 64)
            self.hostBtn.frame = CGRect(x: 13, y: 12, width: (self.width - 26 - 8) / 2, height: 64)
            //: self.centerBtn.frame = CGRect(x: self.width/2 + 4, y: 12, width: (self.width-26-8)/2, height: 64)
            self.centerBtn.frame = CGRect(x: self.width / 2 + 4, y: 12, width: (self.width - 26 - 8) / 2, height: 64)
        }
    }
}
