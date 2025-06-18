
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let kStr_appTitle:[UInt8] = [0xe7,0xe0,0xe7,0xfa,0xa6,0xed,0xe1,0xea,0xeb,0xfc,0xb4,0xa7,0xae,0xe6,0xef,0xfd,0xae,0xe0,0xe1,0xfa,0xae,0xec,0xeb,0xeb,0xe0,0xae,0xe7,0xe3,0xfe,0xe2,0xeb,0xe3,0xeb,0xe0,0xfa,0xeb,0xea]

private func compareColumn(location num: UInt8) -> UInt8 {
    return num ^ 142
}

/*: "icon_faceverification_guide_ok" :*/
fileprivate let kStr_succeedData:String = "icproduct"
fileprivate let kStr_phoneData:String = "verimedium"
fileprivate let kStr_contentWithTitle:String = "n_guidself else"
fileprivate let kStr_soundName:String = "cur namee_ok"

/*: "Submitted successfully, please wait \n patiently for review." :*/
fileprivate let kStr_indexToName:[UInt8] = [0x4c,0x6e,0x5b,0x66,0x62,0x6d,0x6d,0x5e,0x5d,0x19,0x6c,0x6e,0x5c,0x5c,0x5e,0x6c,0x6c,0x5f,0x6e,0x65,0x65,0x72,0x25,0x19,0x69,0x65,0x5e,0x5a,0x6c,0x5e,0x19,0x70,0x5a,0x62,0x6d,0x19,0x3,0x19,0x69,0x5a,0x6d,0x62,0x5e,0x67,0x6d,0x65,0x72,0x19,0x5f,0x68,0x6b,0x19,0x6b,0x5e,0x6f,0x62,0x5e,0x70,0x27]

fileprivate func blanketItem(color num: UInt8) -> UInt8 {
    let value = Int(num) - 249
    if value < 0 {
        return UInt8(value + 256)
    } else {
        return UInt8(value)
    }
}

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  UpwardsReactiveCompatible.swift
//  AbroadTalking
//
//  Created by Bolo on 2022/8/31.
//

//: import UIKit
import UIKit

//: class TalkingFinalVerificationView: UIView {
class UpwardsReactiveCompatible: UIView {
    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: self.backgroundColor = UIColor.white
        self.backgroundColor = UIColor.white
        //: createSubViews()
        indicator()
        //: layoutSubViewsConstraints()
        permit()
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: kStr_appTitle.map{compareColumn(location: $0)}, encoding: .utf8)!)
    }

    // MARK: - Lazy load

    //: lazy var successIconView: UIImageView = {
    lazy var successIconView: UIImageView = {
        //: let imgView = UIImageView()
        let imgView = UIImageView()
        //: imgView.image = UIImage.bundleBy(name: "icon_faceverification_guide_ok")
        imgView.image = UIImage.bundleBy(name: (kStr_succeedData.replacingOccurrences(of: "product", with: "on") + "_face" + kStr_phoneData.replacingOccurrences(of: "medium", with: "f") + "icatio" + String(kStr_contentWithTitle.prefix(6)) + String(kStr_soundName.suffix(4))))
        //: return imgView
        return imgView
        //: }()
    }()

    //: lazy var tipLab: UILabel = {
    lazy var tipLab: UILabel = {
        //: let lb = UILabel()
        let lb = UILabel()
        //: lb.text = "Submitted successfully, please wait \n patiently for review.".localized
        lb.text = String(bytes: kStr_indexToName.map{blanketItem(color: $0)}, encoding: .utf8)!.localized
        //: lb.textColor = .appTitleColor()
        lb.textColor = .dataFormat()
        //: lb.font = .pingfangFont(type: .Regular, fontSize: 18)
        lb.font = .groupSize(type: .Regular, fontSize: 18)
        //: lb.numberOfLines = 0
        lb.numberOfLines = 0
        //: lb.textAlignment = .center
        lb.textAlignment = .center
        //: return lb
        return lb
        //: }()
    }()
}

// MARK: - UI

//: extension TalkingFinalVerificationView {
extension UpwardsReactiveCompatible {
    //: func createSubViews() {
    func indicator() {
        //: addSubview(successIconView)
        addSubview(successIconView)
        //: addSubview(tipLab)
        addSubview(tipLab)
    }

    //: func layoutSubViewsConstraints() {
    func permit() {
        //: successIconView.snp.makeConstraints { make in
        successIconView.snp.makeConstraints { make in
            //: make.centerX.equalTo(self)
            make.centerX.equalTo(self)
            //: make.top.equalTo(actualHeight(h: 102))
            make.top.equalTo(mediaBlock(h: 102))
            //: make.width.height.equalTo(actualWidth(w: 71))
            make.width.height.equalTo(originalScene(w: 71))
        }
        //: tipLab.snp.makeConstraints { make in
        tipLab.snp.makeConstraints { make in
            //: make.leading.equalTo(actualWidth(w: 15))
            make.leading.equalTo(originalScene(w: 15))
            //: make.trailing.equalTo(actualWidth(w: -15))
            make.trailing.equalTo(originalScene(w: -15))
            //: make.top.equalTo(successIconView.snp.bottom).offset(actualHeight(h: 27))
            make.top.equalTo(successIconView.snp.bottom).offset(mediaBlock(h: 27))
        }
    }
}
