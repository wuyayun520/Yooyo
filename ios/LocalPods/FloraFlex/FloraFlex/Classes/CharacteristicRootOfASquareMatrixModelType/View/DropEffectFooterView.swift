
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let kStr_resultData:[UInt8] = [0x64,0x65,0x74,0x6e,0x65,0x6d,0x65,0x6c,0x70,0x6d,0x69,0x20,0x6e,0x65,0x65,0x62,0x20,0x74,0x6f,0x6e,0x20,0x73,0x61,0x68,0x20,0x29,0x3a,0x72,0x65,0x64,0x6f,0x63,0x28,0x74,0x69,0x6e,0x69]

/*: "#F0F0F0" :*/
fileprivate let kStr_locationName:[Character] = ["#","F","0","F","0","F"]
fileprivate let kStr_titleData:[Character] = ["0"]

/*: "icon_fbmoments_notice" :*/
fileprivate let kStr_equalText:[Character] = ["i","c","o","n","_","f"]
fileprivate let kStr_secureMainData:String = "bmomeunknowns"
fileprivate let kStr_toValue:String = "digital self size to frame_notice"

/*: "Don’t post content that induces others to send gifts or other money-related cintent." :*/
fileprivate let kStr_adjustContent:[UInt8] = [0x2a,0x1,0x0,0x8c,0xee,0xf7,0x1a,0x4e,0x1e,0x1,0x1d,0x1a,0x4e,0xd,0x1,0x0,0x1a,0xb,0x0,0x1a,0x4e,0x1a,0x6,0xf,0x1a,0x4e,0x7,0x0,0xa,0x1b,0xd,0xb,0x1d,0x4e,0x1,0x1a,0x6,0xb,0x1c,0x1d,0x4e,0x1a,0x1,0x4e,0x1d,0xb,0x0,0xa,0x4e,0x9,0x7,0x8,0x1a,0x1d,0x4e,0x1,0x1c,0x4e,0x1,0x1a,0x6,0xb,0x1c,0x4e,0x3,0x1,0x0,0xb,0x17,0x43,0x1c,0xb,0x2,0xf,0x1a,0xb,0xa,0x4e,0xd,0x7,0x0,0x1a,0xb,0x0,0x1a,0x40]

private func loadCrop(icon num: UInt8) -> UInt8 {
    return num ^ 110
}

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  DropEffectFooterView.swift
//  AbroadTalking
//
//  Created by young on 2022/9/21.
//

//: import UIKit
import UIKit

//: class FreeCollectionFooterView: UICollectionReusableView {
class DropEffectFooterView: UICollectionReusableView {
    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: kStr_resultData.reversed(), encoding: .utf8)!)
    }

    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: setupSubviews()
        equalSubviews()
        //: setupSubViewsConstraint()
        changeRemote()
    }

    // MARK: - Lazy load

    //: private lazy var noticeView: UIView = {
    private lazy var noticeView: UIView = {
        //: let v = UIView()
        let v = UIView()
        //: v.backgroundColor = UIColor(hex: "#F0F0F0")
        v.backgroundColor = UIColor(hex: (String(kStr_locationName) + String(kStr_titleData)))
        //: v.layer.cornerRadius = 6
        v.layer.cornerRadius = 6
        //: v.layer.masksToBounds = true
        v.layer.masksToBounds = true
        //: return v
        return v
        //: }()
    }()

    //: private lazy var iconImgView: UIImageView = {
    private lazy var iconImgView: UIImageView = {
        //: let imgV = UIImageView(image: UIImage.bundleBy(name: "icon_fbmoments_notice"))
        let imgV = UIImageView(image: UIImage.bundleBy(name: (String(kStr_equalText) + kStr_secureMainData.replacingOccurrences(of: "unknown", with: "nt") + String(kStr_toValue.suffix(7)))))
        //: return imgV
        return imgV
        //: }()
    }()

    //: private lazy var tipLabel: UILabel = {
    private lazy var tipLabel: UILabel = {
        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.numberOfLines = 0
        lab.numberOfLines = 0
        //: lab.text = "Don’t post content that induces others to send gifts or other money-related cintent.".localized
        lab.text = String(bytes: kStr_adjustContent.map{loadCrop(icon: $0)}, encoding: .utf8)!.localized
        //: lab.font = UIFont.pingfangFont(type: .Regular, fontSize: 13)
        lab.font = UIFont.groupSize(type: .Regular, fontSize: 13)
        //: lab.textColor = UIColor.appValueColor()
        lab.textColor = UIColor.priority()
        //: return lab
        return lab
        //: }()
    }()
}

// MARK: - LayoutUI

//: extension FreeCollectionFooterView {
extension DropEffectFooterView {
    // 添加视图
    //: private func setupSubviews() {
    private func equalSubviews() {
        //: self.addSubview(noticeView)
        self.addSubview(noticeView)
        //: noticeView.addSubview(iconImgView)
        noticeView.addSubview(iconImgView)
        //: noticeView.addSubview(tipLabel)
        noticeView.addSubview(tipLabel)
    }

    // 添加约束
    //: private func setupSubViewsConstraint() {
    private func changeRemote() {
        //: noticeView.snp.makeConstraints { make in
        noticeView.snp.makeConstraints { make in
            //: make.leading.equalTo(15)
            make.leading.equalTo(15)
            //: make.top.equalTo(10)
            make.top.equalTo(10)
            //: if TalkingRequestAddrTool.share.interfaceLang == LangType.es.rawValue ||
            if ViewManagerAddrTool.share.interfaceLang == CountClusterLiteral.es.rawValue ||
                //: TalkingRequestAddrTool.share.interfaceLang == LangType.pt.rawValue {
                ViewManagerAddrTool.share.interfaceLang == CountClusterLiteral.pt.rawValue
            {
                //: make.size.equalTo(CGSize(width: ScreenWidth-30, height: 56))
                make.size.equalTo(CGSize(width: kLet_halfData - 30, height: 56))
                //: } else {
            } else {
                //: make.size.equalTo(CGSize(width: ScreenWidth-30, height: 46))
                make.size.equalTo(CGSize(width: kLet_halfData - 30, height: 46))
            }
        }
        //: iconImgView.snp.makeConstraints { make in
        iconImgView.snp.makeConstraints { make in
            //: make.leading.equalTo(9)
            make.leading.equalTo(9)
            //: make.top.equalTo(7)
            make.top.equalTo(7)
            //: make.size.equalTo(CGSize(width: 15, height: 15))
            make.size.equalTo(CGSize(width: 15, height: 15))
        }
        //: tipLabel.snp.makeConstraints { make in
        tipLabel.snp.makeConstraints { make in
            //: make.leading.equalTo(iconImgView.snp.trailing).offset(4)
            make.leading.equalTo(iconImgView.snp.trailing).offset(4)
            //: make.trailing.equalTo(-9)
            make.trailing.equalTo(-9)
            //: make.centerY.equalToSuperview()
            make.centerY.equalToSuperview()
        }
    }
}
