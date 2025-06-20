
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let kStr_toViewLeadingValue:[UInt8] = [0x64,0x65,0x74,0x6e,0x65,0x6d,0x65,0x6c,0x70,0x6d,0x69,0x20,0x6e,0x65,0x65,0x62,0x20,0x74,0x6f,0x6e,0x20,0x73,0x61,0x68,0x20,0x29,0x3a,0x72,0x65,0x64,0x6f,0x63,0x28,0x74,0x69,0x6e,0x69]

/*: "group_someoneatme" :*/
fileprivate let kStr_sharedValue:[Character] = ["g","r","o","u","p"]
fileprivate let kStr_mTitle:String = "make pic_someo"

/*: "Someone@ me" :*/
fileprivate let kStr_contentData:[Character] = ["S","o","m","e","o","n","e","@"," "]
fileprivate let kStr_rangeValue:[Character] = ["m","e"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  PerspectiveView.swift
//  AbroadTalking
//
//  Created by young on 2023/4/11.
//

//: import UIKit
import UIKit

//: class TalkingSomeoneAtMeView: UIView {
class PerspectiveView: UIView {
    //: private override init(frame: CGRect) {
    override private init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: setupSubviews()
        faceTo()
        //: setupSubViewsConstraint()
        showConstraint()
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: kStr_toViewLeadingValue.reversed(), encoding: .utf8)!)
    }

    //: deinit {
    deinit {}

    // MARK: - Lazy Load

    //: lazy var mentionBtn: UIButton = {
    lazy var mentionBtn: UIButton = {
        //: let btn = UIButton()
        let btn = UIButton()
        //: btn.titleLabel?.font = UIFont.pingfangFont(type: .Medium, fontSize: 15)
        btn.titleLabel?.font = UIFont.groupSize(type: .Medium, fontSize: 15)
        //: btn.setBackgroundImage(UIImage.bundleBy(name: "group_someoneatme"), for: .normal)
        btn.setBackgroundImage(UIImage.bundleBy(name: (String(kStr_sharedValue) + String(kStr_mTitle.suffix(6)) + "neatme")), for: .normal)
        //: btn.setBackgroundImage(UIImage.bundleBy(name: "group_someoneatme"), for: .highlighted)
        btn.setBackgroundImage(UIImage.bundleBy(name: (String(kStr_sharedValue) + String(kStr_mTitle.suffix(6)) + "neatme")), for: .highlighted)
        //: btn.setTitle("Someone@ me".localized, for: .normal)
        btn.setTitle((String(kStr_contentData) + String(kStr_rangeValue)).localized, for: .normal)
        //: btn.setTitleColor(UIColor.msgTipsColor(), for: .normal)
        btn.setTitleColor(UIColor.welt(), for: .normal)
        //: return btn
        return btn
        //: }()
    }()
}

// MARK: - Layout

//: extension TalkingSomeoneAtMeView {
extension PerspectiveView {
    /// 添加视图
    //: private func setupSubviews() {
    private func faceTo() {
        //: self.backgroundColor = .clear
        self.backgroundColor = .clear
        //: self.addSubview(mentionBtn)
        self.addSubview(mentionBtn)
    }

    /// 添加约束
    //: private func setupSubViewsConstraint() {
    private func showConstraint() {
        //: mentionBtn.snp.makeConstraints { make in
        mentionBtn.snp.makeConstraints { make in
            //: make.edges.equalToSuperview()
            make.edges.equalToSuperview()
        }
    }
}
