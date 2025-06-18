
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let kStr_handleTitle:[UInt8] = [0xb4,0xb9,0xb4,0xbf,0x73,0xae,0xba,0xaf,0xb0,0xbd,0x85,0x74,0x6b,0xb3,0xac,0xbe,0x6b,0xb9,0xba,0xbf,0x6b,0xad,0xb0,0xb0,0xb9,0x6b,0xb4,0xb8,0xbb,0xb7,0xb0,0xb8,0xb0,0xb9,0xbf,0xb0,0xaf]

fileprivate func noRun(to num: UInt8) -> UInt8 {
    let value = Int(num) - 75
    if value < 0 {
        return UInt8(value + 256)
    } else {
        return UInt8(value)
    }
}

/*: "nav_back_black_nor" :*/
fileprivate let kStr_viewName:String = "index handle return gift areanav_ba"
fileprivate let kStr_indexTitle:String = "path"
fileprivate let kStr_equalFinishNameTitle:String = "model superk_bla"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  StatuteNameThen.swift
//  AbroadTalking
//
//  Created by Bolo on 2022/9/14.
//

//: import Then
import Then
//: import UIKit
import UIKit

//: class SocialRankTitleView: UIView {
class StatuteNameThen: UIView {
    // MARK: Life

    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: self.setupSubviews()
        self.subviewsText()
        //: self.setupSubViewsConstraint()
        self.anValue()
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: kStr_handleTitle.map{noRun(to: $0)}, encoding: .utf8)!)
    }

    // MARK: UI

    //: lazy var backButton = UIButton().then {
    lazy var backButton = UIButton().then {
        //: let img = UIImage.bundleBy(name: "nav_back_black_nor").withRenderingMode(.alwaysTemplate)
        let img = UIImage.bundleBy(name: (String(kStr_viewName.suffix(6)) + kStr_indexTitle.replacingOccurrences(of: "path", with: "c") + String(kStr_equalFinishNameTitle.suffix(5)) + "ck_nor")).withRenderingMode(.alwaysTemplate)
        //: $0.setImage(img, for: .normal)
        $0.setImage(img, for: .normal)
        //: $0.tintColor = .white
        $0.tintColor = .white
        //: $0.addTarget(self, action: #selector(registerBackAction), for: .touchUpInside)
        $0.addTarget(self, action: #selector(nowChange), for: .touchUpInside)
    }
}

// MARK: - Bind && Event

//: extension SocialRankTitleView {
extension StatuteNameThen {
    //: @objc func registerBackAction() {
    @objc func nowChange() {
        //: currentViewController()?.navigationController?.popViewController(animated: true)
        giftFew()?.navigationController?.popViewController(animated: true)
    }
}

// MARK: Layout

//: extension SocialRankTitleView {
extension StatuteNameThen {
    //: private func setupSubviews() {
    private func subviewsText() {
        //: addSubview(backButton)
        addSubview(backButton)
    }

    //: private func setupSubViewsConstraint() {
    private func anValue() {
        //: backButton.snp.makeConstraints { make in
        backButton.snp.makeConstraints { make in
            //: make.top.equalToSuperview().offset(StatusBarHeight)
            make.top.equalToSuperview().offset(kLet_postPartyValue)
            //: make.leading.equalToSuperview()
            make.leading.equalToSuperview()
            //: make.size.equalTo(CGSize(width: 40, height: 44))
            make.size.equalTo(CGSize(width: 40, height: 44))
        }
    }
}
