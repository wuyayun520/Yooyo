
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let kStr_viewValue:[UInt8] = [0x7e,0x83,0x7e,0x89,0x3d,0x78,0x84,0x79,0x7a,0x87,0x4f,0x3e,0x35,0x7d,0x76,0x88,0x35,0x83,0x84,0x89,0x35,0x77,0x7a,0x7a,0x83,0x35,0x7e,0x82,0x85,0x81,0x7a,0x82,0x7a,0x83,0x89,0x7a,0x79]

fileprivate func appData(after num: UInt8) -> UInt8 {
    let value = Int(num) - 21
    if value < 0 {
        return UInt8(value + 256)
    } else {
        return UInt8(value)
    }
}

/*: "btn_me_edit" :*/
fileprivate let kStr_minData:String = "make"
fileprivate let kStr_headData:String = "to content by in entern_me"

/*: "Add" :*/
fileprivate let kStr_frameName:[Character] = ["A","d","d"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  DigitiserViewCell.swift
//  AbroadTalking
//
//  Created by Charlotte on 2023/10/27.
//

//: import UIKit
import UIKit

//: class TalkingGreetingSetTableCell: UITableViewCell {
class DigitiserViewCell: UITableViewCell {
    //: private var index: Int = 0
    private var index: Int = 0
    //: private var islast: Bool = false
    private var islast: Bool = false

    //: override func awakeFromNib() {
    override func awakeFromNib() {
        //: super.awakeFromNib()
        super.awakeFromNib()
    }

    //: override func setSelected(_ selected: Bool, animated: Bool) {
    override func setSelected(_ selected: Bool, animated: Bool) {
        //: super.setSelected(selected, animated: animated)
        super.setSelected(selected, animated: animated)
    }

    //: override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        //: super.init(style: style, reuseIdentifier: reuseIdentifier)
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        //: selectionStyle = UITableViewCell.SelectionStyle.none
        selectionStyle = UITableViewCell.SelectionStyle.none
        //: self.backgroundColor = UIColor.clear
        self.backgroundColor = UIColor.clear
        //: self.contentView.backgroundColor = UIColor.clear
        self.contentView.backgroundColor = UIColor.clear
        //: setupSubviews()
        textSubviews()
        //: setupSubViewsConstraint()
        counterchangeDoing()
    }

    //: required init?(coder aDecoder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: kStr_viewValue.map{appData(after: $0)}, encoding: .utf8)!)
    }

    // MARK: - Lazy load

    //: lazy var backView: UIView = {
    lazy var backView: UIView = {
        //: let view = UIView.init()
        let view = UIView()
        //: view.backgroundColor = UIColor.white
        view.backgroundColor = UIColor.white
        //: view.layer.cornerRadius = 8
        view.layer.cornerRadius = 8
        //: return view
        return view
        //: }()
    }()

    //: lazy var iconImg: UIImageView = {
    lazy var iconImg: UIImageView = {
        //: let img = UIImageView.init()
        let img = UIImageView()
        //: return img
        return img
        //: }()
    }()

    //: lazy var titleBLB: UILabel = {
    lazy var titleBLB: UILabel = {
        //: let lb = UILabel.init()
        let lb = UILabel()
        //: lb.font = UIFont.pingfangFont(type: .Medium, fontSize: 16)
        lb.font = UIFont.groupSize(type: .Medium, fontSize: 16)
        //: lb.textColor = UIColor.appTitleColor()
        lb.textColor = UIColor.dataFormat()
        //: return lb
        return lb
        //: }()
    }()

    //: lazy var editImag: UIImageView = {
    lazy var editImag: UIImageView = {
        //: let imag = UIImageView.init(image: UIImage.bundleBy(name: "btn_me_edit"))
        let imag = UIImageView(image: UIImage.bundleBy(name: (kStr_minData.replacingOccurrences(of: "make", with: "bt") + String(kStr_headData.suffix(4)) + "_edit")))
        //: imag.contentMode = .scaleAspectFit
        imag.contentMode = .scaleAspectFit
        //: return imag
        return imag
        //: }()
    }()

    //: lazy var detailLB: UILabel = {
    lazy var detailLB: UILabel = {
        //: let lb = UILabel.init()
        let lb = UILabel()
        //: lb.font = UIFont.pingfangFont(type: .Regular, fontSize: 14)
        lb.font = UIFont.groupSize(type: .Regular, fontSize: 14)
        //: lb.textColor = UIColor.appValueColor()
        lb.textColor = UIColor.priority()
        //: lb.textAlignment = .right
        lb.textAlignment = .right
        //: lb.text = "Add".localized
        lb.text = (String(kStr_frameName)).localized
        //: lb.isHidden = true
        lb.isHidden = true
        //: return lb
        return lb
        //: }()
    }()
}

// MARK: - Event

//: extension TalkingGreetingSetTableCell {
extension DigitiserViewCell {
    //: func setCellMessage(titile: String, iconStr: String, isShowDet:Bool) {
    func adjacent(titile: String, iconStr: String, isShowDet: Bool) {
        //: titleBLB.text = titile
        titleBLB.text = titile
        //: iconImg.image = UIImage.bundleBy(name: iconStr)
        iconImg.image = UIImage.bundleBy(name: iconStr)
        //: detailLB.isHidden = isShowDet
        detailLB.isHidden = isShowDet
    }
}

//: extension TalkingGreetingSetTableCell {
extension DigitiserViewCell {
    // 添加视图
    //: private func setupSubviews() {
    private func textSubviews() {
        //: self.addSubview(backView)
        self.addSubview(backView)
        //: backView.addSubview(iconImg)
        backView.addSubview(iconImg)
        //: backView.addSubview(titleBLB)
        backView.addSubview(titleBLB)
        //: backView.addSubview(editImag)
        backView.addSubview(editImag)
        //: backView.addSubview(detailLB)
        backView.addSubview(detailLB)
    }

    // 添加约束
    //: private func setupSubViewsConstraint() {
    private func counterchangeDoing() {
        //: backView.snp.makeConstraints { make in
        backView.snp.makeConstraints { make in
            //: make.leading.equalTo(self).offset(15)
            make.leading.equalTo(self).offset(15)
            //: make.trailing.equalTo(self.snp.trailing).offset(-15)
            make.trailing.equalTo(self.snp.trailing).offset(-15)
            //: make.top.bottom.equalTo(self)
            make.top.bottom.equalTo(self)
        }
        //: iconImg.snp.makeConstraints { make in
        iconImg.snp.makeConstraints { make in
            //: make.leading.equalTo(backView).offset(12)
            make.leading.equalTo(backView).offset(12)
            //: make.centerY.equalTo(backView)
            make.centerY.equalTo(backView)
            //: make.size.equalTo(25)
            make.size.equalTo(25)
        }
        //: titleBLB.snp.makeConstraints { make in
        titleBLB.snp.makeConstraints { make in
            //: make.leading.equalTo(iconImg.snp.trailing).offset(7)
            make.leading.equalTo(iconImg.snp.trailing).offset(7)
            //: make.centerY.equalTo(iconImg)
            make.centerY.equalTo(iconImg)
            //: make.trailing.equalTo(detailLB.snp.leading).offset(-5)
            make.trailing.equalTo(detailLB.snp.leading).offset(-5)
        }

        //: editImag.snp.makeConstraints { make in
        editImag.snp.makeConstraints { make in
            //: make.centerY.equalTo(titleBLB)
            make.centerY.equalTo(titleBLB)
            //: make.trailing.equalTo(backView.snp.trailing).offset(-12)
            make.trailing.equalTo(backView.snp.trailing).offset(-12)
            //: make.width.equalTo(12)
            make.width.equalTo(12)
            //: make.height.equalTo(12)
            make.height.equalTo(12)
        }

        //: detailLB.snp.makeConstraints { make in
        detailLB.snp.makeConstraints { make in
            //: make.centerY.equalTo(titleBLB)
            make.centerY.equalTo(titleBLB)
            //: make.trailing.equalTo(backView.snp.trailing).offset(-27)
            make.trailing.equalTo(backView.snp.trailing).offset(-27)
        }
    }
}
