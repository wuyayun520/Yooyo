
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let kStr_sourceName:[UInt8] = [0xee,0xe9,0xee,0xf3,0xaf,0xe4,0xe8,0xe3,0xe2,0xf5,0xbd,0xae,0xa7,0xef,0xe6,0xf4,0xa7,0xe9,0xe8,0xf3,0xa7,0xe5,0xe2,0xe2,0xe9,0xa7,0xee,0xea,0xf7,0xeb,0xe2,0xea,0xe2,0xe9,0xf3,0xe2,0xe3]

private func detailTop(view num: UInt8) -> UInt8 {
    return num ^ 135
}

/*: "icon_translation_go" :*/
fileprivate let kStr_halfContent:String = "ok make view titleicon_"
fileprivate let kStr_frameName:String = "atrow"
fileprivate let kStr_valueData:String = "edit table true videon_go"

/*: "#EAE8FE" :*/
fileprivate let kStr_regularCountName:String = "#EAE8view manager player pic view"
fileprivate let kStr_titleTheSessionData:String = "fe"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  ClientTopView.swift
//  FloraFlex
//
//  Created by DouXiu on 2024/11/21.
//

//: import UIKit
import UIKit

//: class PrivateChatNotesTopView: UIView {
class ClientTopView: UIView {
    //: var tapBlock: (() -> Void)?
    var tapBlock: (() -> Void)?
    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: setupSubviews()
        restrictionIcon()
        //: setupSubViewsConstraint()
        subView()
        //: bindInteraction()
        upSub()
    }

    //: @available(*, unavailable)
    @available(*, unavailable)
    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: kStr_sourceName.map{detailTop(view: $0)}, encoding: .utf8)!)
    }

    // MARK: - Lazy Load

    //: private lazy var contentLab: UILabel = {
    private lazy var contentLab: UILabel = {
        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.textColor = UIColor.fromBuild()
        lab.textColor = UIColor.fromBuild()
        //: lab.font = UIFont.messageDown(fontSize: 16)
        lab.font = UIFont.messageDown(fontSize: 16)
        //: return lab
        return lab
        //: }()
    }()

    //: private lazy var imgV: UIImageView = {
    private lazy var imgV: UIImageView = {
        //: let img = UIImageView()
        let img = UIImageView()
        //: img.image = UIImage.bundleBy(name: "icon_translation_go").withTintColor(.fromBuild())
        img.image = UIImage.bundleBy(name: (String(kStr_halfContent.suffix(5)) + "transl" + kStr_frameName.replacingOccurrences(of: "row", with: "io") + String(kStr_valueData.suffix(4)))).withTintColor(.fromBuild())
        //: img.contentMode = .scaleAspectFill
        img.contentMode = .scaleAspectFill
        //: return img
        return img
        //: }()
    }()
}

// MARK: - Event

//: extension PrivateChatNotesTopView {
extension ClientTopView {
    /// 刷新视图
    //: func refresh(_ model: FailureReactiveCompatible) {
    func beyondWindowActivity(_ model: FailureReactiveCompatible) {
        //: self.isHidden = (model.top != 1)
        self.isHidden = (model.top != 1)
        //: contentLab.text = model.content
        contentLab.text = model.content
    }

    /// 点击事件
    //: @objc private func tapGestureRecognizer(_ tap: UITapGestureRecognizer) {
    @objc private func adjoinRecognizer(_: UITapGestureRecognizer) {
        //: tapBlock?()
        tapBlock?()
    }
}

// MARK: - Layout

//: extension PrivateChatNotesTopView {
extension ClientTopView {
    /// 添加视图
    //: private func setupSubviews() {
    private func restrictionIcon() {
        //: backgroundColor = UIColor(hex: "#EAE8FE")
        backgroundColor = UIColor(hex: (String(kStr_regularCountName.prefix(5)) + kStr_titleTheSessionData.uppercased()))
        //: layer.borderWidth = 1
        layer.borderWidth = 1
        //: layer.borderColor = UIColor.fromBuild().cgColor
        layer.borderColor = UIColor.fromBuild().cgColor
        //: layer.cornerRadius = 8
        layer.cornerRadius = 8
        //: layer.masksToBounds = true
        layer.masksToBounds = true

        //: addSubview(contentLab)
        addSubview(contentLab)
        //: addSubview(imgV)
        addSubview(imgV)
    }

    /// 设置约束
    //: private func setupSubViewsConstraint() {
    private func subView() {
        //: contentLab.snp.makeConstraints { make in
        contentLab.snp.makeConstraints { make in
            //: make.leading.equalTo(8)
            make.leading.equalTo(8)
            //: make.trailing.equalTo(-25)
            make.trailing.equalTo(-25)
            //: make.centerY.equalToSuperview()
            make.centerY.equalToSuperview()
        }

        //: imgV.snp.makeConstraints { make in
        imgV.snp.makeConstraints { make in
            //: make.centerY.equalToSuperview()
            make.centerY.equalToSuperview()
            //: make.trailing.equalTo(-10)
            make.trailing.equalTo(-10)
            //: make.height.width.equalTo(10)
            make.height.width.equalTo(10)
        }
    }

    /// 添加事件
    //: private func bindInteraction() {
    private func upSub() {
        //: let tap = UITapGestureRecognizer(target: self, action: #selector(tapGestureRecognizer))
        let tap = UITapGestureRecognizer(target: self, action: #selector(adjoinRecognizer))
        //: addGestureRecognizer(tap)
        addGestureRecognizer(tap)
    }
}
