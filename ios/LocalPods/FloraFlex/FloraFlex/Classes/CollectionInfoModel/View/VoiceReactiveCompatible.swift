
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let kStr_imageData:[UInt8] = [0x9a,0x9f,0x9a,0xa5,0x59,0x94,0xa0,0x95,0x96,0xa3,0x6b,0x5a,0x51,0x99,0x92,0xa4,0x51,0x9f,0xa0,0xa5,0x51,0x93,0x96,0x96,0x9f,0x51,0x9a,0x9e,0xa1,0x9d,0x96,0x9e,0x96,0x9f,0xa5,0x96,0x95]

fileprivate func shareButton(make num: UInt8) -> UInt8 {
    let value = Int(num) + 207
    if value > 255 {
        return UInt8(value - 256)
    } else {
        return UInt8(value)
    }
}

/*: "img_faceverification_photopose" :*/
fileprivate let kStr_pathData:[Character] = ["i","m","g","_","f","a","c","e","v","e","r","i","f","i","c","a","t","i","o","n","_","p","h","o","t","o","p"]
fileprivate let kStr_titleText:[Character] = ["o","s","e"]

/*: "To pass the verification, in the photo you should:" :*/
fileprivate let kStr_withMagnitudeimateData:[UInt8] = [0xc4,0xdf,0x90,0xe0,0xd1,0xe3,0xe3,0x90,0xe4,0xd8,0xd5,0x90,0xe6,0xd5,0xe2,0xd9,0xd6,0xd9,0xd3,0xd1,0xe4,0xd9,0xdf,0xde,0x9c,0x90,0xd9,0xde,0x90,0xe4,0xd8,0xd5,0x90,0xe0,0xd8,0xdf,0xe4,0xdf,0x90,0xe9,0xdf,0xe5,0x90,0xe3,0xd8,0xdf,0xe5,0xdc,0xd4,0xaa]

fileprivate func viewContainer(sex num: UInt8) -> UInt8 {
    let value = Int(num) + 144
    if value > 255 {
        return UInt8(value - 256)
    } else {
        return UInt8(value)
    }
}

/*: "· show your face clearly;" :*/
fileprivate let kStr_collectionValue:String = "fill to view· show yo"
fileprivate let kStr_titleName:String = "data video viewur fa"
fileprivate let kStr_finishArrayValue:String = "early;model let half of size"

/*: "· pose exactly like the posing guide." :*/
fileprivate let kStr_showButtonData:[UInt8] = [0xa6,0x9b,0x4,0x54,0x53,0x57,0x49,0x4,0x49,0x5c,0x45,0x47,0x58,0x50,0x5d,0x4,0x50,0x4d,0x4f,0x49,0x4,0x58,0x4c,0x49,0x4,0x54,0x53,0x57,0x4d,0x52,0x4b,0x4,0x4b,0x59,0x4d,0x48,0x49,0x12]

fileprivate func rawSource(object num: UInt8) -> UInt8 {
    let value = Int(num) + 28
    if value > 255 {
        return UInt8(value - 256)
    } else {
        return UInt8(value)
    }
}

/*: "Your photo will never be uploaded to your profile or shown to anvone else." :*/
fileprivate let kStr_lineName:[UInt8] = [0x35,0x3,0x19,0x1e,0x4c,0x1c,0x4,0x3,0x18,0x3,0x4c,0x1b,0x5,0x0,0x0,0x4c,0x2,0x9,0x1a,0x9,0x1e,0x4c,0xe,0x9,0x4c,0x19,0x1c,0x0,0x3,0xd,0x8,0x9,0x8,0x4c,0x18,0x3,0x4c,0x15,0x3,0x19,0x1e,0x4c,0x1c,0x1e,0x3,0xa,0x5,0x0,0x9,0x4c,0x3,0x1e,0x4c,0x1f,0x4,0x3,0x1b,0x2,0x4c,0x18,0x3,0x4c,0xd,0x2,0x1a,0x3,0x2,0x9,0x4c,0x9,0x0,0x1f,0x9,0x42]

private func fruitCorner(universal num: UInt8) -> UInt8 {
    return num ^ 108
}

/*: "Submit Photo" :*/
fileprivate let kStr_contentData:[Character] = ["S"]
fileprivate let kStr_positionValue:[Character] = ["u","b","m","i","t"," ","P","h","o","t","o"]

/*: "btn_me_back_continue" :*/
fileprivate let kStr_statusLabName:String = "btn_me_image error var model to"
fileprivate let kStr_commentText:String = "bfieldck"
fileprivate let kStr_makeValue:String = "bottomue"

/*: "Retake Photo" :*/
fileprivate let kStr_textData:[Character] = ["R","e","t","a","k","e"]
fileprivate let kStr_sendObjectText:[Character] = [" ","P","h","o","t","o"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  VoiceReactiveCompatible.swift
//  AbroadTalking
//
//  Created by Bolo on 2022/8/31.
//

//: import UIKit
import UIKit

//: class TalkingVerificationTakePhotoView: UIView {
class VoiceReactiveCompatible: UIView {
    //: let disposeBag = DisposeBag()
    let disposeBag = DisposeBag()
    //: typealias SubmitBtnClickBlock = (_ photoImage: UIImage) -> Void
    typealias SubmitBtnClickBlock = (_ photoImage: UIImage) -> Void
    //: typealias RetakeBtnClickBlock = () -> Void
    typealias RetakeBtnClickBlock = () -> Void
    //: var submitClickBlock: SubmitBtnClickBlock?
    var submitClickBlock: SubmitBtnClickBlock?
    //: var retakeClickBlock: RetakeBtnClickBlock?
    var retakeClickBlock: RetakeBtnClickBlock?

    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: self.backgroundColor = UIColor.white
        self.backgroundColor = UIColor.white
        //: createSubViews()
        save()
        //: layoutSubViewsConstraints()
        layoutThroughConstraints()
        //: bindInteraction()
        fromSize()
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: kStr_imageData.map{shareButton(make: $0)}, encoding: .utf8)!)
    }

    // MARK: - Lazy load

    //: lazy var leftExampleImageView: UIImageView = {
    lazy var leftExampleImageView: UIImageView = {
        //: let imgView = UIImageView()
        let imgView = UIImageView()
        //: imgView.image = UIImage.bundleBy(name: "img_faceverification_photopose")
        imgView.image = UIImage.bundleBy(name: (String(kStr_pathData) + String(kStr_titleText)))
        //: imgView.layer.cornerRadius = 8
        imgView.layer.cornerRadius = 8
        //: imgView.layer.masksToBounds = true
        imgView.layer.masksToBounds = true
        //: imgView.contentMode = .scaleAspectFill
        imgView.contentMode = .scaleAspectFill
        //: return imgView
        return imgView
        //: }()
    }()

    //: lazy var rightPhotoImageView: UIImageView = {
    lazy var rightPhotoImageView: UIImageView = {
        //: let imgView = UIImageView()
        let imgView = UIImageView()
        //: imgView.backgroundColor = UIColor.appValueColor()
        imgView.backgroundColor = UIColor.priority()
        //: imgView.layer.cornerRadius = 8
        imgView.layer.cornerRadius = 8
        //: imgView.layer.masksToBounds = true
        imgView.layer.masksToBounds = true
        //: imgView.contentMode = .scaleAspectFill
        imgView.contentMode = .scaleAspectFill
        //: return imgView
        return imgView
        //: }()
    }()

    //: lazy var titleLab: UILabel = {
    lazy var titleLab: UILabel = {
        //: let lb = UILabel()
        let lb = UILabel()
        //: lb.text = "To pass the verification, in the photo you should:".localized
        lb.text = String(bytes: kStr_withMagnitudeimateData.map{viewContainer(sex: $0)}, encoding: .utf8)!.localized
        //: lb.textColor = .appTitleColor()
        lb.textColor = .dataFormat()
        //: lb.font = .pingfangFont(type: .Regular, fontSize: 18)
        lb.font = .groupSize(type: .Regular, fontSize: 18)
        //: lb.numberOfLines = 0
        lb.numberOfLines = 0
        //: return lb
        return lb
        //: }()
    }()

    //: lazy var firstDesLab: UILabel = {
    lazy var firstDesLab: UILabel = {
        //: let lb = UILabel()
        let lb = UILabel()
        //: lb.text = "· show your face clearly;".localized
        lb.text = (String(kStr_collectionValue.suffix(9)) + String(kStr_titleName.suffix(5)) + "ce cl" + String(kStr_finishArrayValue.prefix(6))).localized
        //: lb.textColor = .statusMin()
        lb.textColor = .statusMin()
        //: lb.font = .pingfangFont(type: .Regular, fontSize: 16)
        lb.font = .groupSize(type: .Regular, fontSize: 16)
        //: lb.numberOfLines = 0
        lb.numberOfLines = 0
        //: return lb
        return lb
        //: }()
    }()

    //: lazy var secondDesLab: UILabel = {
    lazy var secondDesLab: UILabel = {
        //: let lb = UILabel()
        let lb = UILabel()
        //: lb.text = "· pose exactly like the posing guide.".localized
        lb.text = String(bytes: kStr_showButtonData.map{rawSource(object: $0)}, encoding: .utf8)!.localized
        //: lb.textColor = .statusMin()
        lb.textColor = .statusMin()
        //: lb.font = .pingfangFont(type: .Regular, fontSize: 16)
        lb.font = .groupSize(type: .Regular, fontSize: 16)
        //: lb.numberOfLines = 0
        lb.numberOfLines = 0
        //: return lb
        return lb
        //: }()
    }()

    //: lazy var bottomTipLab: UILabel = {
    lazy var bottomTipLab: UILabel = {
        //: let lb = UILabel()
        let lb = UILabel()
        //: lb.text = "Your photo will never be uploaded to your profile or shown to anvone else.".localized
        lb.text = String(bytes: kStr_lineName.map{fruitCorner(universal: $0)}, encoding: .utf8)!.localized
        //: lb.textColor = .statusMin()
        lb.textColor = .statusMin()
        //: lb.font = .pingfangFont(type: .Regular, fontSize: 15)
        lb.font = .groupSize(type: .Regular, fontSize: 15)
        //: lb.numberOfLines = 0
        lb.numberOfLines = 0
        //: return lb
        return lb
        //: }()
    }()

    //: lazy var submitBtn: UIButton = {
    lazy var submitBtn: UIButton = {
        //: let btn = UIButton(type: .custom)
        let btn = UIButton(type: .custom)
        //: btn.setTitle("Submit Photo".localized, for: .normal)
        btn.setTitle((String(kStr_contentData) + String(kStr_positionValue)).localized, for: .normal)
        //: btn.setBackgroundImage(UIImage.bundleBy(name: "btn_me_back_continue"), for: .normal)
        btn.setBackgroundImage(UIImage.bundleBy(name: (String(kStr_statusLabName.prefix(7)) + kStr_commentText.replacingOccurrences(of: "field", with: "a") + "_cont" + kStr_makeValue.replacingOccurrences(of: "bottom", with: "in"))), for: .normal)
        //: btn.titleLabel?.font = .pingfangFont(type: .Medium, fontSize: 17)
        btn.titleLabel?.font = .groupSize(type: .Medium, fontSize: 17)
        //: return btn
        return btn
        //: }()
    }()

    //: lazy var retakeBtn: UIButton = {
    lazy var retakeBtn: UIButton = {
        //: let btn = UIButton(type: .custom)
        let btn = UIButton(type: .custom)
        //: btn.setTitle("Retake Photo".localized, for: .normal)
        btn.setTitle((String(kStr_textData) + String(kStr_sendObjectText)).localized, for: .normal)
        //: btn.setTitleColor(.appValueColor(), for: .normal)
        btn.setTitleColor(.priority(), for: .normal)
        //: btn.titleLabel?.font = .pingfangFont(type: .Regular, fontSize: 18)
        btn.titleLabel?.font = .groupSize(type: .Regular, fontSize: 18)
        //: return btn
        return btn
        //: }()
    }()
}

// MARK: - Event

//: extension TalkingVerificationTakePhotoView {
extension VoiceReactiveCompatible {
    //: @objc func registerSubmitAction() {
    @objc func info() {
        //: if submitClickBlock != nil, rightPhotoImageView.image != nil {
        if submitClickBlock != nil, rightPhotoImageView.image != nil {
            //: submitClickBlock!(rightPhotoImageView.image!)
            submitClickBlock!(rightPhotoImageView.image!)
        }
    }

    //: @objc func registerRetakeAction() {
    @objc func obtrudeUponAction() {
        //: if retakeClickBlock != nil {
        if retakeClickBlock != nil {
            //: retakeClickBlock!()
            retakeClickBlock!()
        }
    }

    //: private func bindInteraction() {
    private func fromSize() {
        //: submitBtn.rx.controlEvent(.touchUpInside)
        submitBtn.rx.controlEvent(.touchUpInside)
            //: .subscribe(onNext: { [weak self] in
            .subscribe(onNext: { [weak self] in
                //: guard let self = self else {return}
                guard let self = self else { return }
                //: self.registerSubmitAction()
                self.info()
                //: }).disposed(by: disposeBag)
            }).disposed(by: disposeBag)

        //: retakeBtn.rx.controlEvent(.touchUpInside)
        retakeBtn.rx.controlEvent(.touchUpInside)
            //: .subscribe(onNext: { [weak self] in
            .subscribe(onNext: { [weak self] in
                //: guard let self = self else {return}
                guard let self = self else { return }
                //: self.registerRetakeAction()
                self.obtrudeUponAction()
                //: }).disposed(by: disposeBag)
            }).disposed(by: disposeBag)
    }
}

// MARK: - UI

//: extension TalkingVerificationTakePhotoView {
extension VoiceReactiveCompatible {
    //: func createSubViews() {
    func save() {
        //: addSubview(leftExampleImageView)
        addSubview(leftExampleImageView)
        //: addSubview(rightPhotoImageView)
        addSubview(rightPhotoImageView)
        //: addSubview(titleLab)
        addSubview(titleLab)
        //: addSubview(firstDesLab)
        addSubview(firstDesLab)
        //: addSubview(secondDesLab)
        addSubview(secondDesLab)
        //: addSubview(submitBtn)
        addSubview(submitBtn)
        //: addSubview(retakeBtn)
        addSubview(retakeBtn)
        //: addSubview(bottomTipLab)
        addSubview(bottomTipLab)
    }

    //: func layoutSubViewsConstraints() {
    func layoutThroughConstraints() {
        //: let itemWidth = (ScreenWidth - actualWidth(w: 40)) / 2.0
        let itemWidth = (kLet_halfData - originalScene(w: 40)) / 2.0
        //: leftExampleImageView.snp.makeConstraints { make in
        leftExampleImageView.snp.makeConstraints { make in
            //: make.leading.equalTo(actualWidth(w: 15))
            make.leading.equalTo(originalScene(w: 15))
            //: make.top.equalTo(actualHeight(h: 18))
            make.top.equalTo(mediaBlock(h: 18))
            //: make.width.height.equalTo(itemWidth)
            make.width.height.equalTo(itemWidth)
        }
        //: rightPhotoImageView.snp.makeConstraints { make in
        rightPhotoImageView.snp.makeConstraints { make in
            //: make.leading.equalTo(leftExampleImageView.snp.trailing).offset(actualWidth(w: 10))
            make.leading.equalTo(leftExampleImageView.snp.trailing).offset(originalScene(w: 10))
            //: make.top.equalTo(leftExampleImageView.snp.top)
            make.top.equalTo(leftExampleImageView.snp.top)
            //: make.width.height.equalTo(itemWidth)
            make.width.height.equalTo(itemWidth)
        }
        //: titleLab.snp.makeConstraints { make in
        titleLab.snp.makeConstraints { make in
            //: make.leading.equalTo(actualWidth(w: 15))
            make.leading.equalTo(originalScene(w: 15))
            //: make.trailing.equalTo(actualWidth(w: -15))
            make.trailing.equalTo(originalScene(w: -15))
            //: make.top.equalTo(leftExampleImageView.snp.bottom).offset(actualHeight(h: 17))
            make.top.equalTo(leftExampleImageView.snp.bottom).offset(mediaBlock(h: 17))
        }
        //: firstDesLab.snp.makeConstraints { make in
        firstDesLab.snp.makeConstraints { make in
            //: make.leading.equalTo(actualWidth(w: 15))
            make.leading.equalTo(originalScene(w: 15))
            //: make.trailing.equalTo(actualWidth(w: -15))
            make.trailing.equalTo(originalScene(w: -15))
            //: make.top.equalTo(titleLab.snp.bottom).offset(actualHeight(h: 10))
            make.top.equalTo(titleLab.snp.bottom).offset(mediaBlock(h: 10))
        }
        //: secondDesLab.snp.makeConstraints { make in
        secondDesLab.snp.makeConstraints { make in
            //: make.leading.equalTo(titleLab.snp.leading)
            make.leading.equalTo(titleLab.snp.leading)
            //: make.trailing.equalTo(titleLab.snp.trailing)
            make.trailing.equalTo(titleLab.snp.trailing)
            //: make.top.equalTo(firstDesLab.snp.bottom).offset(actualHeight(h: 5))
            make.top.equalTo(firstDesLab.snp.bottom).offset(mediaBlock(h: 5))
        }

        //: bottomTipLab.snp.makeConstraints { make in
        bottomTipLab.snp.makeConstraints { make in
            //: make.leading.equalTo(titleLab.snp.leading)
            make.leading.equalTo(titleLab.snp.leading)
            //: make.trailing.equalTo(titleLab.snp.trailing)
            make.trailing.equalTo(titleLab.snp.trailing)
            //: make.bottom.equalTo(-24-kDeviceSafeBottomHeight)
            make.bottom.equalTo(-24 - kLet_formatNetValue)
        }
        //: retakeBtn.snp.makeConstraints { make in
        retakeBtn.snp.makeConstraints { make in
            //: make.bottom.equalTo(bottomTipLab.snp.top).offset(-5)
            make.bottom.equalTo(bottomTipLab.snp.top).offset(-5)
            //: make.leading.equalTo(actualWidth(w: 54))
            make.leading.equalTo(originalScene(w: 54))
            //: make.trailing.equalTo(actualWidth(w: -54))
            make.trailing.equalTo(originalScene(w: -54))
            //: make.height.equalTo(actualHeight(h: 42))
            make.height.equalTo(mediaBlock(h: 42))
        }
        //: submitBtn.snp.makeConstraints { make in
        submitBtn.snp.makeConstraints { make in
            //: make.bottom.equalTo(retakeBtn.snp.top)
            make.bottom.equalTo(retakeBtn.snp.top)
            //: make.centerX.equalTo(self)
            make.centerX.equalTo(self)
            //: make.width.equalTo(267)
            make.width.equalTo(267)
            //: make.height.equalTo(50)
            make.height.equalTo(50)
        }
    }
}
