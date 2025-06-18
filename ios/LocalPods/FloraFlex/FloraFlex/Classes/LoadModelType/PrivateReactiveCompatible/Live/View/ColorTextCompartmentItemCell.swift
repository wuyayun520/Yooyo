
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let kStr_makeData:[UInt8] = [0x17,0x1c,0x17,0x22,0xd6,0x11,0x1d,0x12,0x13,0x20,0xe8,0xd7,0xce,0x16,0xf,0x21,0xce,0x1c,0x1d,0x22,0xce,0x10,0x13,0x13,0x1c,0xce,0x17,0x1b,0x1e,0x1a,0x13,0x1b,0x13,0x1c,0x22,0x13,0x12]

fileprivate func panoramicView(mid num: UInt8) -> UInt8 {
    let value = Int(num) - 174
    if value < 0 {
        return UInt8(value + 256)
    } else {
        return UInt8(value)
    }
}

/*: "Slots" :*/
fileprivate let kStr_byText:String = "self sufficient size lab colorSlots"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  ColorTextCompartmentItemCell.swift
//  AbroadTalking
//
//  Created by young on 2023/7/12.
//

//: import UIKit
import UIKit

//: let GameItem_H = actualWidth(w: 113)
let kLet_name = originalScene(w: 113)
//: class TalkingliveRoomGameItemCell: UICollectionViewCell {
class ColorTextCompartmentItemCell: UICollectionViewCell {
    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: self.setupSubviews()
        self.tradeName()
        //: self.setupSubViewsConstraint()
        self.behindModel()
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: kStr_makeData.map{panoramicView(mid: $0)}, encoding: .utf8)!)
    }

    // MARK: - Lazy load

    //: private lazy var iconImgV: UIImageView = {
    private lazy var iconImgV: UIImageView = {
        //: let imgV = UIImageView()
        let imgV = UIImageView()
        //: imgV.backgroundColor = .clear
        imgV.backgroundColor = .clear
        //: return imgV
        return imgV
        //: }()
    }()

    //: private lazy var nameLab: UILabel = {
    private lazy var nameLab: UILabel = {
        //: let lb = UILabel()
        let lb = UILabel()
        //: lb.text = "Slots".localized
        lb.text = (String(kStr_byText.suffix(5))).localized
        //: lb.font = UIFont.messageDown(fontSize: 12)
        lb.font = UIFont.messageDown(fontSize: 12)
        //: lb.textColor = .white
        lb.textColor = .white
        //: lb.textAlignment = .center
        lb.textAlignment = .center
        //: return lb
        return lb
        //: }()
    }()
}

// MARK: Layout

//: extension TalkingliveRoomGameItemCell {
extension ColorTextCompartmentItemCell {
    /// 刷新cell
    /// - Parameters:
    ///   - model: 模型
    ///   - nameColor: 名称颜色
    //: func refreshView(model: TalkingGameListModel, nameColor: UIColor = .white) {
    func viewDismiss(model: ClickMeasurable, nameColor: UIColor = .white) {
        //: iconImgV.setUrlImage(urlStr: model.icon)
        iconImgV.timeFinish(urlStr: model.icon)
        //: nameLab.text = model.name
        nameLab.text = model.name
        //: nameLab.textColor = nameColor
        nameLab.textColor = nameColor
    }

    //: private func setupSubviews() {
    private func tradeName() {
        //: addSubview(iconImgV)
        addSubview(iconImgV)
        //: addSubview(nameLab)
        addSubview(nameLab)
    }

    //: private func setupSubViewsConstraint() {
    private func behindModel() {
        //: iconImgV.snp.makeConstraints { make in
        iconImgV.snp.makeConstraints { make in
            //: make.top.equalToSuperview()
            make.top.equalToSuperview()
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.width.height.equalTo(actualWidth(w: 66))
            make.width.height.equalTo(originalScene(w: 66))

            //: nameLab.snp.makeConstraints { make in
            nameLab.snp.makeConstraints { make in
                //: make.top.equalTo(iconImgV.snp.bottom).offset(12)
                make.top.equalTo(iconImgV.snp.bottom).offset(12)
                //: make.width.equalToSuperview()
                make.width.equalToSuperview()
            }
        }
    }
}
