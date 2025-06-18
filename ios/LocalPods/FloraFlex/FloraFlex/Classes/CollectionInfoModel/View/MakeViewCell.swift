
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let kStr_feeTitle:[UInt8] = [0x36,0x31,0x36,0x2b,0x77,0x3c,0x30,0x3b,0x3a,0x2d,0x65,0x76,0x7f,0x37,0x3e,0x2c,0x7f,0x31,0x30,0x2b,0x7f,0x3d,0x3a,0x3a,0x31,0x7f,0x36,0x32,0x2f,0x33,0x3a,0x32,0x3a,0x31,0x2b,0x3a,0x3b]

private func fewMake(task num: UInt8) -> UInt8 {
    return num ^ 95
}

/*: "btn_report_selected_nor" :*/
fileprivate let kStr_errPathIfName:[Character] = ["b","t","n","_","r","e","p","o","r","t","_","s","e","l","e","c","t","e","d","_","n","o","r"]

/*: "· %@" :*/
fileprivate let kStr_countData:String = "· %@"

/*: "btn_report_selected_pre" :*/
fileprivate let kStr_shareName:String = "btn_rgift return status image guard"
fileprivate let kStr_padData:String = "ecellr"
fileprivate let kStr_voiceTextData:String = "cted_preelse status model effect image"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  MakeViewCell.swift
//  AbroadTalking
//
//  Created by Bolo on 2022/9/14.
//

//: import Then
import Then
//: import UIKit
import UIKit

//: class TalkingReportViewCell: UITableViewCell {
class MakeViewCell: UITableViewCell {
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
        //: self.selectionStyle = .none
        self.selectionStyle = .none
        //: self.setupSubviews()
        self.largeness()
        //: self.setupSubViewsConstraint()
        self.originalConstraint()
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: kStr_feeTitle.map{fewMake(task: $0)}, encoding: .utf8)!)
    }

    // MARK: - Lazy load

    //: lazy var reasonLabel = UILabel().then {
    lazy var reasonLabel = UILabel().then {
        //: $0.textColor = UIColor.appTitleColor()
        $0.textColor = UIColor.dataFormat()
        //: $0.font = .pingfangFont(type: .Medium, fontSize: 16)
        $0.font = .groupSize(type: .Medium, fontSize: 16)
    }

    //: lazy var selectedImgView = UIImageView().then {
    lazy var selectedImgView = UIImageView().then {
        //: $0.image = UIImage.bundleBy(name: "btn_report_selected_nor")
        $0.image = UIImage.bundleBy(name: (String(kStr_errPathIfName)))
    }
}

// MARK: - update || fitHeight

//: extension TalkingReportViewCell {
extension MakeViewCell {
    //: func updateReportCell(model: TalkingReportModel) {
    func magnitude(model: FillViewReportModel) {
        //: reasonLabel.text = String(format: "· %@", model.reason)
        reasonLabel.text = String(format: "· %@", model.reason)
        //: var image = UIImage.bundleBy(name: "btn_report_selected_nor")
        var image = UIImage.bundleBy(name: (String(kStr_errPathIfName)))
        //: if model.selected == true {
        if model.selected == true {
            //: image = UIImage.bundleBy(name: "btn_report_selected_pre").withTintColor(UIColor.fromBuild())
            image = UIImage.bundleBy(name: (String(kStr_shareName.prefix(5)) + kStr_padData.replacingOccurrences(of: "cell", with: "po") + "t_sele" + String(kStr_voiceTextData.prefix(8)))).withTintColor(UIColor.fromBuild())
        }
        //: selectedImgView.image = image
        selectedImgView.image = image
    }
}

// MARK: - Layout

//: extension TalkingReportViewCell {
extension MakeViewCell {
    //: private func setupSubviews() {
    private func largeness() {
        //: contentView.addSubview(reasonLabel)
        contentView.addSubview(reasonLabel)
        //: contentView.addSubview(selectedImgView)
        contentView.addSubview(selectedImgView)
    }

    //: private func setupSubViewsConstraint() {
    private func originalConstraint() {
        //: reasonLabel.snp.makeConstraints { make in
        reasonLabel.snp.makeConstraints { make in
            //: make.leading.top.equalTo(0)
            make.leading.top.equalTo(0)
            //: make.trailing.equalTo(selectedImgView.snp.leading).offset(-10)
            make.trailing.equalTo(selectedImgView.snp.leading).offset(-10)
        }
        //: selectedImgView.snp.makeConstraints { make in
        selectedImgView.snp.makeConstraints { make in
            //: make.trailing.equalTo(0)
            make.trailing.equalTo(0)
            //: make.centerY.equalTo(reasonLabel.snp.centerY)
            make.centerY.equalTo(reasonLabel.snp.centerY)
            //: make.size.equalTo(CGSize(width: 18, height: 18))
            make.size.equalTo(CGSize(width: 18, height: 18))
        }
    }
}
