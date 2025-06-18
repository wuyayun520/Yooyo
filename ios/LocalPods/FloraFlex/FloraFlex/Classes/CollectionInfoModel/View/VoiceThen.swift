
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let kStr_postData:[UInt8] = [0xb,0xc,0xb,0x16,0x4a,0x1,0xd,0x6,0x7,0x10,0x58,0x4b,0x42,0xa,0x3,0x11,0x42,0xc,0xd,0x16,0x42,0x0,0x7,0x7,0xc,0x42,0xb,0xf,0x12,0xe,0x7,0xf,0x7,0xc,0x16,0x7,0x6]

private func braceBy(factor num: UInt8) -> UInt8 {
    return num ^ 98
}

/*: "You can receive a gold coins bonus once a day while the " :*/
fileprivate let kStr_toName:[UInt8] = [0x20,0x65,0x68,0x74,0x20,0x65,0x6c,0x69,0x68,0x77,0x20,0x79,0x61,0x64,0x20,0x61,0x20,0x65,0x63,0x6e,0x6f,0x20,0x73,0x75,0x6e,0x6f,0x62,0x20,0x73,0x6e,0x69,0x6f,0x63,0x20,0x64,0x6c,0x6f,0x67,0x20,0x61,0x20,0x65,0x76,0x69,0x65,0x63,0x65,0x72,0x20,0x6e,0x61,0x63,0x20,0x75,0x6f,0x59]

/*: "Lounge plus" :*/
fileprivate let kStr_followName:String = "Loungehidden self label view self"

/*: " subscription service is active.The time of the daily gold coins will be based on the US Eastern Time Zone." :*/
fileprivate let kStr_headValue:[UInt8] = [0xf1,0xa2,0xa4,0xb3,0xa2,0xb2,0xa3,0xb8,0xa1,0xa5,0xb8,0xbe,0xbf,0xf1,0xa2,0xb4,0xa3,0xa7,0xb8,0xb2,0xb4,0xf1,0xb8,0xa2,0xf1,0xb0,0xb2,0xa5,0xb8,0xa7,0xb4,0xff,0x85,0xb9,0xb4,0xf1,0xa5,0xb8,0xbc,0xb4,0xf1,0xbe,0xb7,0xf1,0xa5,0xb9,0xb4,0xf1,0xb5,0xb0,0xb8,0xbd,0xa8,0xf1,0xb6,0xbe,0xbd,0xb5,0xf1,0xb2,0xbe,0xb8,0xbf,0xa2,0xf1,0xa6,0xb8,0xbd,0xbd,0xf1,0xb3,0xb4,0xf1,0xb3,0xb0,0xa2,0xb4,0xb5,0xf1,0xbe,0xbf,0xf1,0xa5,0xb9,0xb4,0xf1,0x84,0x82,0xf1,0x94,0xb0,0xa2,0xa5,0xb4,0xa3,0xbf,0xf1,0x85,0xb8,0xbc,0xb4,0xf1,0x8b,0xbe,0xbf,0xb4,0xff]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  VoiceThen.swift
//  AbroadTalking
//
//  Created by young on 2022/12/5.
//

//: import UIKit
import UIKit

//: class TalkingDailyFooterView: UICollectionReusableView {
class VoiceThen: UICollectionReusableView {
    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: kStr_postData.map{braceBy(factor: $0)}, encoding: .utf8)!)
    }

    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: self.backgroundColor = .clear
        self.backgroundColor = .clear
        //: self.setupSubviews()
        self.present()
        //: self.setupSubViewsConstraint()
        self.wearingApparel()
    }

    // MARK: - Lazy Load

    //: private lazy var cornersView: UIView = {
    private lazy var cornersView: UIView = {
        //: let view = UIView(frame: CGRect(x: 0, y: 0, width: ScreenWidth-30, height: 20))
        let view = UIView(frame: CGRect(x: 0, y: 0, width: kLet_halfData - 30, height: 20))
        //: view.Corner(width: view.frame.size.width, height: view.frame.size.height, corners: [.bottomLeft, .bottomRight], cornerRadii: .init(width: 12, height: 12))
        view.loftiness(width: view.frame.size.width, height: view.frame.size.height, corners: [.bottomLeft, .bottomRight], cornerRadii: .init(width: 12, height: 12))
        //: view.backgroundColor = .white
        view.backgroundColor = .white
        //: return view
        return view
        //: }()
    }()

    //: private lazy var desLab: UILabel = {
    private lazy var desLab: UILabel = {
        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.text = "You can receive a gold coins bonus once a day while the \"Lounge plus\" subscription service is active.The time of the daily gold coins will be based on the US Eastern Time Zone.".localized
        lab.text = String(bytes: kStr_toName.reversed(), encoding: .utf8)! + "\"" + (String(kStr_followName.prefix(6)) + " plus") + "\"" + String(bytes: kStr_headValue.map{$0^209}, encoding: .utf8)!.localized
        //: lab.font = UIFont.messageDown(fontSize: 14)
        lab.font = UIFont.messageDown(fontSize: 14)
        //: lab.textColor = UIColor.statusMin()
        lab.textColor = UIColor.statusMin()
        //: lab.textAlignment = .center
        lab.textAlignment = .center
        //: lab.numberOfLines = 0
        lab.numberOfLines = 0
        //: return lab
        return lab
        //: }()
    }()
}

// MARK: - Event

//: extension TalkingDailyFooterView {
extension VoiceThen {
    /// 获取当前视图高度
    //: static func getFooterViewHeight() -> CGFloat {
    static func manager() -> CGFloat {
        //: if LocationThen.share.loginUserMode.isSignIn {
        if LocationThen.share.loginUserMode.isSignIn {
            //: return actualWidth(w: 124)
            return originalScene(w: 124)
            //: } else {
        } else {
            //: return actualWidth(w: 200)
            return originalScene(w: 200)
        }
    }
}

// MARK: - Layout

//: extension TalkingDailyFooterView {
extension VoiceThen {
    // 添加视图
    //: private func setupSubviews() {
    private func present() {
        //: self.addSubview(cornersView)
        self.addSubview(cornersView)
        //: self.addSubview(desLab)
        self.addSubview(desLab)
    }

    // 添加约束
    //: private func setupSubViewsConstraint() {
    private func wearingApparel() {
        //: desLab.snp.makeConstraints { make in
        desLab.snp.makeConstraints { make in
            //: make.top.equalTo(cornersView.snp.bottom).offset(actualWidth(w: 12))
            make.top.equalTo(cornersView.snp.bottom).offset(originalScene(w: 12))
            //: make.leading.width.centerX.equalToSuperview()
            make.leading.width.centerX.equalToSuperview()
        }
    }
}
