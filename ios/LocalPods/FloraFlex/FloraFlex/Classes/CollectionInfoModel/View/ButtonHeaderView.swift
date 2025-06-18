
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let kStr_byValue:[UInt8] = [0x65,0x62,0x65,0x78,0x24,0x6f,0x63,0x68,0x69,0x7e,0x36,0x25,0x2c,0x64,0x6d,0x7f,0x2c,0x62,0x63,0x78,0x2c,0x6e,0x69,0x69,0x62,0x2c,0x65,0x61,0x7c,0x60,0x69,0x61,0x69,0x62,0x78,0x69,0x68]

/*: "Sun" :*/
fileprivate let kStr_makeData:[Character] = ["S","u","n"]

/*: "Mon" :*/
fileprivate let kStr_modelMessageHideName:[Character] = ["M","o","n"]

/*: "Tue" :*/
fileprivate let kStr_topTitle:String = "Tuepop network value false super"

/*: "Wed" :*/
fileprivate let kStr_tempName:[Character] = ["W","e","d"]

/*: "Thu" :*/
fileprivate let kStr_senseContent:String = "inside equal withThu"

/*: "Fri" :*/
fileprivate let kStr_cellName:String = "share gesture effectFri"

/*: "Sat" :*/
fileprivate let kStr_blockValue:[Character] = ["S","a","t"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  ButtonHeaderView.swift
//  AbroadTalking
//
//  Created by young on 2022/12/5.
//

//: import UIKit
import UIKit

//: let TalkingDailyHeaderView_H = actualWidth(w: 96)
let kLet_topValue = originalScene(w: 96)

//: class TalkingDailyHeaderView: UICollectionReusableView {
class ButtonHeaderView: UICollectionReusableView {
    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: kStr_byValue.map{$0^12}, encoding: .utf8)!)
    }

    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: self.setupSubviews()
        self.upSubviews()
        //: self.setupSubViewsConstraint()
        self.airt()
    }

    // MARK: - Lazy Laod

    //: lazy var titleLab: UILabel = {
    lazy var titleLab: UILabel = {
        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.font = UIFont.dorsum(fontSize: 18)
        lab.font = UIFont.dorsum(fontSize: 18)
        //: lab.textColor = UIColor.appTitleColor()
        lab.textColor = UIColor.dataFormat()
        //: lab.textAlignment = .center
        lab.textAlignment = .center
        //: return lab
        return lab
        //: }()
    }()

    //: private lazy var weekArr: [String] = {
    private lazy var weekArr: [String] = //: return ["Sun", "Mon", "Tue", "Wed", "Thu", "Fri", "Sat"]
        [(String(kStr_makeData)), (String(kStr_modelMessageHideName)), (String(kStr_topTitle.prefix(3))), (String(kStr_tempName)), (String(kStr_senseContent.suffix(3))), (String(kStr_cellName.suffix(3))), (String(kStr_blockValue))]
    //: }()
}

// MARK: - Layout

//: extension TalkingDailyHeaderView {
extension ButtonHeaderView {
    // 添加视图
    //: private func setupSubviews() {
    private func upSubviews() {
        //: self.backgroundColor = .white
        self.backgroundColor = .white
        //: self.Corner(width: ScreenWidth, height: TalkingDailyHeaderView_H, corners: [.topLeft, .topRight], cornerRadii: .init(width: 16, height: 16))
        self.loftiness(width: kLet_halfData, height: kLet_topValue, corners: [.topLeft, .topRight], cornerRadii: .init(width: 16, height: 16))

        //: self.addSubview(titleLab)
        self.addSubview(titleLab)

        //: var lastLab: UILabel?
        var lastLab: UILabel?
        //: for (index, title) in weekArr.enumerated() {
        for (index, title) in weekArr.enumerated() {
            //: let lab = UILabel()
            let lab = UILabel()
            //: lab.text = title.localized
            lab.text = title.localized
            //: lab.textColor = UIColor.appTitleColor()
            lab.textColor = UIColor.dataFormat()
            //: lab.textAlignment = .center
            lab.textAlignment = .center
            //: lab.font = UIFont.messageDown(fontSize: 16)
            lab.font = UIFont.messageDown(fontSize: 16)
            //: self.addSubview(lab)
            self.addSubview(lab)

            //: let width = ScreenWidth/CGFloat(weekArr.count)
            let width = kLet_halfData / CGFloat(weekArr.count)
            //: if index == 0 {
            if index == 0 { // 首个
                //: lab.snp.makeConstraints { make in
                lab.snp.makeConstraints { make in
                    //: make.leading.equalTo(0)
                    make.leading.equalTo(0)
                    //: make.top.equalTo(actualWidth(w: 66))
                    make.top.equalTo(originalScene(w: 66))
                    //: make.width.equalTo(width)
                    make.width.equalTo(width)
                    //: make.bottom.equalToSuperview()
                    make.bottom.equalToSuperview()
                }
                //: } else {
            } else {
                //: lab.snp.makeConstraints { make in
                lab.snp.makeConstraints { make in
                    //: make.leading.equalTo(lastLab!.snp.trailing)
                    make.leading.equalTo(lastLab!.snp.trailing)
                    //: make.top.width.bottom.equalTo(lastLab!)
                    make.top.width.bottom.equalTo(lastLab!)
                }
            }
            //: lastLab = lab
            lastLab = lab
        }
    }

    // 添加约束
    //: private func setupSubViewsConstraint() {
    private func airt() {
        //: titleLab.snp.makeConstraints { make in
        titleLab.snp.makeConstraints { make in
            //: make.top.equalTo(actualWidth(w: 16))
            make.top.equalTo(originalScene(w: 16))
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
        }
    }
}
