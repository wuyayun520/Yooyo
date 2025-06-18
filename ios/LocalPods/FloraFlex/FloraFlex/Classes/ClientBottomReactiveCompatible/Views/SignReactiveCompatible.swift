
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let kStr_countData:[UInt8] = [0x44,0x43,0x44,0x59,0x5,0x4e,0x42,0x49,0x48,0x5f,0x17,0x4,0xd,0x45,0x4c,0x5e,0xd,0x43,0x42,0x59,0xd,0x4f,0x48,0x48,0x43,0xd,0x44,0x40,0x5d,0x41,0x48,0x40,0x48,0x43,0x59,0x48,0x49]

private func nonachievementTag(title num: UInt8) -> UInt8 {
    return num ^ 45
}

/*: "icon_kong_kong_default" :*/
fileprivate let kStr_colorValue:[Character] = ["i","c","o"]
fileprivate let kStr_fileLoadData:String = "n_komodel success"
fileprivate let kStr_layerViewContent:String = "ng_defname to reply var sex"

/*: "You've got no list yet." :*/
fileprivate let kStr_playerForcePlayValue:String = "You\'ve g"
fileprivate let kStr_acceptName:String = "link valueot n"
fileprivate let kStr_inputName:String = "make price yet."

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  SignReactiveCompatible.swift
//  AbroadTalking
//
//  Created by young on 2022/9/12.
//

//: import UIKit
import UIKit

//: class SocialEmptyView: UIView {
class SignReactiveCompatible: UIView {
    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: kStr_countData.map{nonachievementTag(title: $0)}, encoding: .utf8)!)
    }

    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: self.backgroundColor = .clear
        self.backgroundColor = .clear
        //: self.setupSubviews()
        self.setupArray()
        //: self.setupSubViewsConstraint()
        self.makeConstraint()
    }

    // MARK: - Lazy load

    //: lazy var imgV: UIImageView = {
    lazy var imgV: UIImageView = {
        //: let v = UIImageView(image: UIImage.bundleBy(name: "icon_kong_kong_default"))
        let v = UIImageView(image: UIImage.bundleBy(name: (String(kStr_colorValue) + String(kStr_fileLoadData.prefix(4)) + "ng_ko" + String(kStr_layerViewContent.prefix(6)) + "ault")))
        //: return v
        return v
        //: }()
    }()

    //: lazy var desLab: UILabel = {
    lazy var desLab: UILabel = {
        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.textColor = UIColor.statusMin()
        lab.textColor = UIColor.statusMin()
        //: lab.font = .pingfangFont(type: .Regular, fontSize: 16)
        lab.font = .groupSize(type: .Regular, fontSize: 16)
        //: lab.numberOfLines = 0
        lab.numberOfLines = 0
        //: lab.textAlignment = .center
        lab.textAlignment = .center
        //: lab.text = "You've got no list yet.".localized
        lab.text = (kStr_playerForcePlayValue + String(kStr_acceptName.suffix(4)) + "o list" + String(kStr_inputName.suffix(5))).localized
        //: return lab
        return lab
        //: }()
    }()
}

//: extension SocialEmptyView {
extension SignReactiveCompatible {
    // 添加视图
    //: private func setupSubviews() {
    private func setupArray() {
        //: self.addSubview(imgV)
        self.addSubview(imgV)
        //: self.addSubview(desLab)
        self.addSubview(desLab)
    }

    // 添加约束
    //: private func setupSubViewsConstraint() {
    private func makeConstraint() {
        //: imgV.snp.makeConstraints { make in
        imgV.snp.makeConstraints { make in
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.top.equalToSuperview().offset(NavigationBarHeight)
            make.top.equalToSuperview().offset(kLet_senseFormatValue)
        }
        //: desLab.snp.makeConstraints { make in
        desLab.snp.makeConstraints { make in
            //: make.top.equalTo(imgV.snp.bottom).offset(20)
            make.top.equalTo(imgV.snp.bottom).offset(20)
            //: make.leading.equalToSuperview().offset(30)
            make.leading.equalToSuperview().offset(30)
            //: make.trailing.equalToSuperview().offset(-30)
            make.trailing.equalToSuperview().offset(-30)
        }
    }
}
