
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let kStr_refuseText:[UInt8] = [0x1,0x6,0x1,0xc,0xc0,0xfb,0x7,0xfc,0xfd,0xa,0xd2,0xc1,0xb8,0x0,0xf9,0xb,0xb8,0x6,0x7,0xc,0xb8,0xfa,0xfd,0xfd,0x6,0xb8,0x1,0x5,0x8,0x4,0xfd,0x5,0xfd,0x6,0xc,0xfd,0xfc]

fileprivate func endUser(current num: UInt8) -> UInt8 {
    let value = Int(num) - 152
    if value < 0 {
        return UInt8(value + 256)
    } else {
        return UInt8(value)
    }
}

/*: "More attractive photo more calls" :*/
fileprivate let kStr_contentTableName:[UInt8] = [0x8,0x2a,0x37,0x20,0x65,0x24,0x31,0x31,0x37,0x24,0x26,0x31,0x2c,0x33,0x20,0x65,0x35,0x2d,0x2a,0x31,0x2a,0x65,0x28,0x2a,0x37,0x20,0x65,0x26,0x24,0x29,0x29,0x36]

private func upBy(voice num: UInt8) -> UInt8 {
    return num ^ 69
}

/*: "Upload any photo you like" :*/
fileprivate let kStr_makeCookieName:[Character] = ["U","p","l","o","a","d"," ","a","n","y"," ","p","h","o"]
fileprivate let kStr_dismissTitle:String = "to yohandle background hidden name range"

/*: "F4F4F4" :*/
fileprivate let kStr_sizeName:String = "collectioncollectioncollection"

/*: "btn_add_head_cover_nor" :*/
fileprivate let kStr_makeName:String = "btn_return shared return lab return"
fileprivate let kStr_lineViewLengthValue:String = "_covvar status info section"
fileprivate let kStr_feeMinData:[Character] = ["e","r","_","n","o","r"]

/*: "Please upload a clear and beautiful photo of yourself" :*/
fileprivate let kStr_equalEndTitle:[UInt8] = [0x97,0xb3,0xac,0xa8,0xba,0xac,0x67,0xbc,0xb7,0xb3,0xb6,0xa8,0xab,0x67,0xa8,0x67,0xaa,0xb3,0xac,0xa8,0xb9,0x67,0xa8,0xb5,0xab,0x67,0xa9,0xac,0xa8,0xbc,0xbb,0xb0,0xad,0xbc,0xb3,0x67,0xb7,0xaf,0xb6,0xbb,0xb6,0x67,0xb6,0xad,0x67,0xc0,0xb6,0xbc,0xb9,0xba,0xac,0xb3,0xad]

fileprivate func succeedFee(error num: UInt8) -> UInt8 {
    let value = Int(num) + 185
    if value > 255 {
        return UInt8(value - 256)
    } else {
        return UInt8(value)
    }
}

/*: "No violence, pornography, or politics allowed" :*/
fileprivate let kStr_kitValue:[UInt8] = [0xed,0xcc,0x83,0xd5,0xca,0xcc,0xcf,0xc6,0xcd,0xc0,0xc6,0x8f,0x83,0xd3,0xcc,0xd1,0xcd,0xcc,0xc4,0xd1,0xc2,0xd3,0xcb,0xda,0x8f,0x83,0xcc,0xd1,0x83,0xd3,0xcc,0xcf,0xca,0xd7,0xca,0xc0,0xd0,0x83,0xc2,0xcf,0xcf,0xcc,0xd4,0xc6,0xc7]

private func spectralColour(photo num: UInt8) -> UInt8 {
    return num ^ 163
}

/*: "Next" :*/
fileprivate let kStr_nameData:[Character] = ["N","e","x","t"]

/*: "edit_head_Image_male_ :*/
fileprivate let kStr_pageName:[Character] = ["e","d","i","t","_","h","e","a","d","_","I","m","a","g","e","_","m","a","l","e","_"]

/*: "edit_head_Image_ :*/
fileprivate let kStr_showData:[Character] = ["e","d","i","t","_","h","e","a","d"]
fileprivate let kStr_progressTitle:String = "_Image_view to touch raw"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  GeneratorReactiveCompatible.swift
//  AbroadTalking
//
//  Created by Charlotte on 2024/5/24.
//

//: import UIKit
import UIKit

//: class TalkingLoginEditPhotoView: UIView {
class GeneratorReactiveCompatible: UIView {
    //: typealias InfoActionBlock = (_ type: EditInfoType) -> Void
    typealias InfoActionBlock = (_ type: ShowInfoType) -> Void

    //: let disposeBag = DisposeBag()
    let disposeBag = DisposeBag()
    //: var btnBlock: InfoActionBlock?
    var btnBlock: InfoActionBlock?

    //: private var nameCount: Int = 20
    private var nameCount: Int = 20

    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: self.backgroundColor = UIColor.white
        self.backgroundColor = UIColor.white

        //: self.setupSubviews()
        self.modification()
        //: self.setupSubViewsConstraint()
        self.perimeter()
        //: self.bindInteraction()
        self.tableTotaleraction()
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: kStr_refuseText.map{endUser(current: $0)}, encoding: .utf8)!)
    }

    //: lazy var contentView: UIView = {
    lazy var contentView: UIView = {
        //: let contentView = UIView.init()
        let contentView = UIView()
        //: return contentView
        return contentView
        //: }()
    }()

    //: lazy var tipsLab: UILabel = {
    lazy var tipsLab: UILabel = {
        //: let label = UILabel()
        let label = UILabel()
        //: label.font = .pingfangFont(type: .Semibold, fontSize: 17)
        label.font = .groupSize(type: .Semibold, fontSize: 17)
        //: label.textColor = .appTitleColor()
        label.textColor = .dataFormat()
        //: label.textAlignment = .center
        label.textAlignment = .center
        //: if LocationThen.share.userFillInfoMode.sex == Gender.female.rawValue {
        if LocationThen.share.userFillInfoMode.sex == SucceedComparable.female.rawValue {
            //: label.text = "More attractive photo more calls".localized
            label.text = String(bytes: kStr_contentTableName.map{upBy(voice: $0)}, encoding: .utf8)!.localized
            //: } else {
        } else {
            //: label.text = "Upload any photo you like".localized
            label.text = (String(kStr_makeCookieName) + String(kStr_dismissTitle.prefix(5)) + "u like").localized
        }
        //: return label
        return label
        //: }()
    }()

    //: lazy var addHeadButton: UIButton = {
    lazy var addHeadButton: UIButton = {
        //: let btn = UIButton(type: .custom)
        let btn = UIButton(type: .custom)
        //: btn.backgroundColor = UIColor(hex: "F4F4F4")
        btn.backgroundColor = UIColor(hex: (kStr_sizeName.replacingOccurrences(of: "collection", with: "F4")))
        //: btn.layer.cornerRadius = 5
        btn.layer.cornerRadius = 5
        //: btn.imageView?.contentMode = .scaleAspectFill
        btn.imageView?.contentMode = .scaleAspectFill
        //: btn.clipsToBounds = true
        btn.clipsToBounds = true

        //: let headImg = LocationThen.share.userFillInfoMode.headImage ?? nil
        let headImg = LocationThen.share.userFillInfoMode.headImage ?? nil
        //: if headImg != nil {
        if headImg != nil {
            //: btn.setImage(headImg, for: .normal)
            btn.setImage(headImg, for: .normal)
            //: } else {
        } else {
            //: btn.setImage(UIImage.bundleBy(name: "btn_add_head_cover_nor"), for: .normal)
            btn.setImage(UIImage.bundleBy(name: (String(kStr_makeName.prefix(4)) + "add_head" + String(kStr_lineViewLengthValue.prefix(4)) + String(kStr_feeMinData))), for: .normal)
        }
        //: return btn
        return btn
        //: }()
    }()

    //: lazy var msgLab: UILabel = {
    lazy var msgLab: UILabel = {
        //: let label = UILabel()
        let label = UILabel()
        //: label.font = .pingfangFont(type: .Regular, fontSize: 15)
        label.font = .groupSize(type: .Regular, fontSize: 15)
        //: label.textColor = .appValueColor()
        label.textColor = .priority()
        //: if LocationThen.share.userFillInfoMode.sex == Gender.female.rawValue {
        if LocationThen.share.userFillInfoMode.sex == SucceedComparable.female.rawValue {
            //: label.text = "Please upload a clear and beautiful photo of yourself".localized
            label.text = String(bytes: kStr_equalEndTitle.map{succeedFee(error: $0)}, encoding: .utf8)!.localized
            //: } else {
        } else {
            //: label.text = "No violence, pornography, or politics allowed".localized
            label.text = String(bytes: kStr_kitValue.map{spectralColour(photo: $0)}, encoding: .utf8)!.localized
        }
        //: label.numberOfLines = 0
        label.numberOfLines = 0
        //: return label
        return label
        //: }()
    }()

    //: lazy var commitButton: UIButton = {
    lazy var commitButton: UIButton = {
        //: let btn = UIButton(type: .custom)
        let btn = UIButton(type: .custom)
        //: btn.isEnabled = false
        btn.isEnabled = false
        //: btn.setTitleColor(UIColor.white, for: .normal)
        btn.setTitleColor(UIColor.white, for: .normal)
        //: btn.titleLabel?.font = UIFont.pingfangFont(type: .Medium, fontSize: 17)
        btn.titleLabel?.font = UIFont.groupSize(type: .Medium, fontSize: 17)
        //: btn.setTitle("Next".localized, for: .normal)
        btn.setTitle((String(kStr_nameData)).localized, for: .normal)
        //: btn.setBackgroundImage(UIImage.imageGradientColor(colors: UIColor.appGradientColor(), size: CGSize(width: ScreenWidth-60, height: 50)), for: .normal)
        btn.setBackgroundImage(UIImage.upTo(colors: UIColor.thirdColor(), size: CGSize(width: kLet_halfData - 60, height: 50)), for: .normal)
        //: btn.layer.cornerRadius = 25
        btn.layer.cornerRadius = 25
        //: btn.clipsToBounds = true
        btn.clipsToBounds = true
        //: return btn
        return btn
        //: }()
    }()
}

// MARK: - Layout

//: extension TalkingLoginEditPhotoView {
extension GeneratorReactiveCompatible {
    // 添加视图
    //: private func setupSubviews() {
    private func modification() {
        //: addSubview(contentView)
        addSubview(contentView)
        //: contentView.addSubview(tipsLab)
        contentView.addSubview(tipsLab)
        //: contentView.addSubview(addHeadButton)
        contentView.addSubview(addHeadButton)
        //: contentView.addSubview(commitButton)
        contentView.addSubview(commitButton)
        //: contentView.addSubview(msgLab)
        contentView.addSubview(msgLab)
    }

    // 添加约束
    //: private func setupSubViewsConstraint() {
    private func perimeter() {
        //: contentView.snp.makeConstraints { make in
        contentView.snp.makeConstraints { make in
            //: make.edges.equalToSuperview()
            make.edges.equalToSuperview()
        }
        //: tipsLab.snp.makeConstraints { make in
        tipsLab.snp.makeConstraints { make in
            //: make.leading.equalTo(24)
            make.leading.equalTo(24)
            //: make.height.equalTo(28)
            make.height.equalTo(28)
            //: make.top.equalTo(34)
            make.top.equalTo(34)
        }

        //: addHeadButton.snp.makeConstraints { make in
        addHeadButton.snp.makeConstraints { make in
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.width.height.equalTo(159)
            make.width.height.equalTo(159)
            //: make.top.equalTo(tipsLab.snp.bottom).offset(34)
            make.top.equalTo(tipsLab.snp.bottom).offset(34)
        }

        //: let imgWidth: CGFloat = (ScreenWidth - 76) / 3.0
        let imgWidth: CGFloat = (kLet_halfData - 76) / 3.0
        //: let imgHeight: CGFloat = imgWidth
        let imgHeight: CGFloat = imgWidth

        //: for i in 0 ..< 3 {
        for i in 0 ..< 3 {
            //: let imageView = UIImageView.init()
            let imageView = UIImageView()
            //: if LocationThen.share.userFillInfoMode.sex == "1" {
            if LocationThen.share.userFillInfoMode.sex == "1" {
                //: imageView.image = UIImage.bundleBy(name: "edit_head_Image_male_\(i)")
                imageView.image = UIImage.bundleBy(name: (String(kStr_pageName)) + "\(i)")
                //: } else {
            } else {
                //: imageView.image = UIImage.bundleBy(name: "edit_head_Image_\(i)")
                imageView.image = UIImage.bundleBy(name: (String(kStr_showData) + String(kStr_progressTitle.prefix(7))) + "\(i)")
            }
            //: contentView.addSubview(imageView)
            contentView.addSubview(imageView)
            //: imageView.snp.makeConstraints { make in
            imageView.snp.makeConstraints { make in
                //: make.top.equalTo(addHeadButton.snp.bottom).offset(30)
                make.top.equalTo(addHeadButton.snp.bottom).offset(30)
                //: make.leading.equalTo(30 + (imgWidth+8)*CGFloat(i))
                make.leading.equalTo(30 + (imgWidth + 8) * CGFloat(i))
                //: make.width.equalTo(imgWidth)
                make.width.equalTo(imgWidth)
                //: make.height.equalTo(imgHeight)
                make.height.equalTo(imgHeight)
            }
        }
        //: msgLab.snp.makeConstraints { make in
        msgLab.snp.makeConstraints { make in
            //: make.leading.equalTo(30)
            make.leading.equalTo(30)
            //: make.trailing.equalTo(-30)
            make.trailing.equalTo(-30)
            //: make.top.equalTo(addHeadButton.snp.bottom).offset(146)
            make.top.equalTo(addHeadButton.snp.bottom).offset(146)
        }

        //: commitButton.snp.makeConstraints { make in
        commitButton.snp.makeConstraints { make in
            //: make.leading.equalTo(30)
            make.leading.equalTo(30)
            //: make.trailing.equalTo(-30)
            make.trailing.equalTo(-30)
            //: make.height.equalTo(50)
            make.height.equalTo(50)
            //: make.top.equalTo(msgLab.snp.bottom).offset(30)
            make.top.equalTo(msgLab.snp.bottom).offset(30)
        }
    }

    // 添加事件
    //: private func bindInteraction() {
    private func tableTotaleraction() {
        //: commitButton.rx.tap
        commitButton.rx.tap
            //: .subscribe(onNext: { [weak self] in
            .subscribe(onNext: { [weak self] in
                //: guard let self = self else {return}
                guard let self = self else { return }
                //: if self.btnBlock != nil {
                if self.btnBlock != nil {
                    //: self.btnBlock!(.Finish)
                    self.btnBlock!(.Finish)
                }
                //: })
            })
            //: .disposed(by: disposeBag)
            .disposed(by: disposeBag)

        //: addHeadButton.rx.tap
        addHeadButton.rx.tap
            //: .subscribe(onNext: { [weak self] in
            .subscribe(onNext: { [weak self] in
                //: guard let self = self else {return}
                guard let self = self else { return }
                //: if self.btnBlock != nil {
                if self.btnBlock != nil {
                    //: self.btnBlock!(.HeadPic)
                    self.btnBlock!(.HeadPic)
                }
                //: })
            })
            //: .disposed(by: disposeBag)
            .disposed(by: disposeBag)
    }
}
