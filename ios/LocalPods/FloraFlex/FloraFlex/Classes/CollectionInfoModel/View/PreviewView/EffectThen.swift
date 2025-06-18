
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let kStr_magnitudeRequestFileValue:[UInt8] = [0xa9,0xae,0xa9,0xb4,0x68,0xa3,0xaf,0xa4,0xa5,0xb2,0x7a,0x69,0x60,0xa8,0xa1,0xb3,0x60,0xae,0xaf,0xb4,0x60,0xa2,0xa5,0xa5,0xae,0x60,0xa9,0xad,0xb0,0xac,0xa5,0xad,0xa5,0xae,0xb4,0xa5,0xa4]

fileprivate func lineLabelName(at num: UInt8) -> UInt8 {
    let value = Int(num) + 192
    if value > 255 {
        return UInt8(value - 256)
    } else {
        return UInt8(value)
    }
}

/*: "nav_back_black_nor" :*/
fileprivate let kStr_makeText:String = "nav_bstatus var any"
fileprivate let kStr_upEqualTitle:String = "ack_blicon to model top"
fileprivate let kStr_originalValue:[Character] = ["a","c","k","_","n","o","r"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  EffectThen.swift
//  AbroadTalking
//
//  Created by Bolo on 2022/9/12.
//

//: import Then
import Then
//: import UIKit
import UIKit

//: class TPreviewNaviBarView: UIView {
class EffectThen: UIView {
    //: var uid = ""
    var uid = ""
    //: var previewSaveBlock: (() -> Void)?
    var previewSaveBlock: (() -> Void)?
    //: var tapHeadPicBlock: (() -> Void)?
    var tapHeadPicBlock: (() -> Void)?

    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: self.setupSubviews()
        self.sectionSubviews()
        //: self.setupSubViewsConstraint()
        self.contentConstraint()
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: kStr_magnitudeRequestFileValue.map{lineLabelName(at: $0)}, encoding: .utf8)!)
    }

    // MARK: - Lazy load

    //: lazy var backButton = UIButton().then {
    lazy var backButton = UIButton().then {
        //: let img = UIImage(named: "nav_back_black_nor")?.withRenderingMode(.alwaysTemplate)
        let img = UIImage(named: (String(kStr_makeText.prefix(5)) + String(kStr_upEqualTitle.prefix(6)) + String(kStr_originalValue)))?.withRenderingMode(.alwaysTemplate)
        //: $0.setImage(img, for: .normal)
        $0.setImage(img, for: .normal)
        //: $0.tintColor = .white
        $0.tintColor = .white
        //: $0.addTarget(self, action: #selector(registerBackAction), for: .touchUpInside)
        $0.addTarget(self, action: #selector(bean), for: .touchUpInside)
    }
}

// MARK: - Bind && Event

//: extension TPreviewNaviBarView {
extension EffectThen {
    //: @objc func registerBackAction() {
    @objc func bean() {
        //: EffectPushManager.share.func__getCurrentActivityVC()?.navigationController!.popViewController(animated: true)
        EffectPushManager.share.quantityimateTarget()?.navigationController!.popViewController(animated: true)
    }

    //: @objc func registerSaveAction() {
    @objc func viewError() {
        // 相册权限
    }

    //: @objc func tapUserHeadPic() {
    @objc func run() {}
}

// MARK: Layout

//: extension TPreviewNaviBarView {
extension EffectThen {
    //: private func setupSubviews() {
    private func sectionSubviews() {
        //: addSubview(backButton)
        addSubview(backButton)
    }

    //: private func setupSubViewsConstraint() {
    private func contentConstraint() {
        //: backButton.snp.makeConstraints { make in
        backButton.snp.makeConstraints { make in
            //: make.leading.equalTo(0)
            make.leading.equalTo(0)
            //: make.top.equalTo(StatusBarHeight)
            make.top.equalTo(kLet_postPartyValue)
            //: make.size.equalTo(CGSize(width: 40, height: NavigationBarHeight))
            make.size.equalTo(CGSize(width: 40, height: kLet_senseFormatValue))
        }
    }
}
