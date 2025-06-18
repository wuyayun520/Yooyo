
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let kStr_modelText:[UInt8] = [0x3c,0x3b,0x3c,0x21,0x7d,0x36,0x3a,0x31,0x30,0x27,0x6f,0x7c,0x75,0x3d,0x34,0x26,0x75,0x3b,0x3a,0x21,0x75,0x37,0x30,0x30,0x3b,0x75,0x3c,0x38,0x25,0x39,0x30,0x38,0x30,0x3b,0x21,0x30,0x31]

/*: "img_faceverification_photo" :*/
fileprivate let kStr_windowLengthValue:[Character] = ["i","m","g","_","f","a","c","e","v","e","r"]
fileprivate let kStr_iconShareData:String = "idownic"
fileprivate let kStr_equalData:String = "_photocenter data view inside type"

/*: "Face verification" :*/
fileprivate let kStr_suspendText:String = "for video rowFace v"
fileprivate let kStr_titleData:[Character] = ["e","r","i","f","i","c","a","t","i","o","n"]

/*: "A real-person verification of your profile will get you more and better matches." :*/
fileprivate let kStr_rejectViewData:[UInt8] = [0x6a,0xb,0x59,0x4e,0x4a,0x47,0x6,0x5b,0x4e,0x59,0x58,0x44,0x45,0xb,0x5d,0x4e,0x59,0x42,0x4d,0x42,0x48,0x4a,0x5f,0x42,0x44,0x45,0xb,0x44,0x4d,0xb,0x52,0x44,0x5e,0x59,0xb,0x5b,0x59,0x44,0x4d,0x42,0x47,0x4e,0xb,0x5c,0x42,0x47,0x47,0xb,0x4c,0x4e,0x5f,0xb,0x52,0x44,0x5e,0xb,0x46,0x44,0x59,0x4e,0xb,0x4a,0x45,0x4f,0xb,0x49,0x4e,0x5f,0x5f,0x4e,0x59,0xb,0x46,0x4a,0x5f,0x48,0x43,0x4e,0x58,0x5]

private func videoMini(first num: UInt8) -> UInt8 {
    return num ^ 43
}

/*: "· Take the photo by following the posing guide." :*/
fileprivate let kStr_objectPicTitle:[UInt8] = [0x80,0x75,0xde,0x12,0x1f,0x29,0x23,0xde,0x32,0x26,0x23,0xde,0x2e,0x26,0x2d,0x32,0x2d,0xde,0x20,0x37,0xde,0x24,0x2d,0x2a,0x2a,0x2d,0x35,0x27,0x2c,0x25,0xde,0x32,0x26,0x23,0xde,0x2e,0x2d,0x31,0x27,0x2c,0x25,0xde,0x25,0x33,0x27,0x22,0x23,0xec]

fileprivate func becomeValue(send num: UInt8) -> UInt8 {
    let value = Int(num) - 190
    if value < 0 {
        return UInt8(value + 256)
    } else {
        return UInt8(value)
    }
}

/*: "· The person in the photo must be the account owner." :*/
fileprivate let kStr_toData:[UInt8] = [0xf3,0xe8,0x51,0x85,0x99,0x96,0x51,0xa1,0x96,0xa3,0xa4,0xa0,0x9f,0x51,0x9a,0x9f,0x51,0xa5,0x99,0x96,0x51,0xa1,0x99,0xa0,0xa5,0xa0,0x51,0x9e,0xa6,0xa4,0xa5,0x51,0x93,0x96,0x51,0xa5,0x99,0x96,0x51,0x92,0x94,0x94,0xa0,0xa6,0x9f,0xa5,0x51,0xa0,0xa8,0x9f,0x96,0xa3,0x5f]

fileprivate func pathView(track num: UInt8) -> UInt8 {
    let value = Int(num) + 207
    if value > 255 {
        return UInt8(value - 256)
    } else {
        return UInt8(value)
    }
}

/*: "Continue" :*/
fileprivate let kStr_showName:String = "Contclass view model"

/*: "btn_me_back_continue" :*/
fileprivate let kStr_toTimeTitle:[Character] = ["b","t","n","_","m","e","_","b","a","c","k","_","c","o"]
fileprivate let kStr_mainText:[Character] = ["n","t","i","n","u","e"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  EngineView.swift
//  AbroadTalking
//
//  Created by Bolo on 2022/8/31.
//

//: import UIKit
import UIKit

//: class TalkingFaceVerificationView: UIView {
class EngineView: UIView {
    //: let disposeBag = DisposeBag()
    let disposeBag = DisposeBag()
    //: typealias ContinueBtnClickBlock = () -> Void
    typealias ContinueBtnClickBlock = () -> Void
    //: var btnClickBlock: ContinueBtnClickBlock?
    var btnClickBlock: ContinueBtnClickBlock?

    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: self.backgroundColor = UIColor.white
        self.backgroundColor = UIColor.white
        //: createSubViews()
        currentSuccess()
        //: layoutSubViewsConstraints()
        inputTarget()
        //: bindInteraction()
        streetwise()
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: kStr_modelText.map{$0^85}, encoding: .utf8)!)
    }

    // MARK: - Lazy load

    //: lazy var faceBackImageView: UIImageView = {
    lazy var faceBackImageView: UIImageView = {
        //: let imgView = UIImageView()
        let imgView = UIImageView()
        //: imgView.image = UIImage.bundleBy(name: "img_faceverification_photo")
        imgView.image = UIImage.bundleBy(name: (String(kStr_windowLengthValue) + kStr_iconShareData.replacingOccurrences(of: "down", with: "f") + "ation" + String(kStr_equalData.prefix(6))))
        //: return imgView
        return imgView
        //: }()
    }()

    //: lazy var verificationTitleLab: UILabel = {
    lazy var verificationTitleLab: UILabel = {
        //: let lb = UILabel()
        let lb = UILabel()
        //: lb.text = "Face verification".localized
        lb.text = (String(kStr_suspendText.suffix(6)) + String(kStr_titleData)).localized
        //: lb.textColor = .appTitleColor()
        lb.textColor = .dataFormat()
        //: lb.font = .pingfangFont(type: .Medium, fontSize: 22)
        lb.font = .groupSize(type: .Medium, fontSize: 22)
        //: return lb
        return lb
        //: }()
    }()

    //: lazy var verificationDesLab: UILabel = {
    lazy var verificationDesLab: UILabel = {
        //: let lb = UILabel()
        let lb = UILabel()
        //: lb.text = "A real-person verification of your profile will get you more and better matches.".localized
        lb.text = String(bytes: kStr_rejectViewData.map{videoMini(first: $0)}, encoding: .utf8)!.localized
        //: lb.textColor = .statusMin()
        lb.textColor = .statusMin()
        //: lb.font = .pingfangFont(type: .Medium, fontSize: 18)
        lb.font = .groupSize(type: .Medium, fontSize: 18)
        //: lb.numberOfLines = 0
        lb.numberOfLines = 0
        //: return lb
        return lb
        //: }()
    }()

    //: lazy var subFirstDesLab: UILabel = {
    lazy var subFirstDesLab: UILabel = {
        //: let lb = UILabel()
        let lb = UILabel()
        //: lb.text = "· Take the photo by following the posing guide.".localized
        lb.text = String(bytes: kStr_objectPicTitle.map{becomeValue(send: $0)}, encoding: .utf8)!.localized
        //: lb.textColor = .appTitleColor()
        lb.textColor = .dataFormat()
        //: lb.font = .pingfangFont(type: .Regular, fontSize: 16)
        lb.font = .groupSize(type: .Regular, fontSize: 16)
        //: lb.numberOfLines = 0
        lb.numberOfLines = 0
        //: return lb
        return lb
        //: }()
    }()

    //: lazy var subSecondDesLab: UILabel = {
    lazy var subSecondDesLab: UILabel = {
        //: let lb = UILabel()
        let lb = UILabel()
        //: lb.text = "· The person in the photo must be the account owner.".localized
        lb.text = String(bytes: kStr_toData.map{pathView(track: $0)}, encoding: .utf8)!.localized
        //: lb.textColor = .appTitleColor()
        lb.textColor = .dataFormat()
        //: lb.font = .pingfangFont(type: .Regular, fontSize: 16)
        lb.font = .groupSize(type: .Regular, fontSize: 16)
        //: lb.numberOfLines = 0
        lb.numberOfLines = 0
        //: return lb
        return lb
        //: }()
    }()

    //: lazy var continueBtn: UIButton = {
    lazy var continueBtn: UIButton = {
        //: let btn = UIButton(type: .custom)
        let btn = UIButton(type: .custom)
        //: btn.setTitle("Continue".localized, for: .normal)
        btn.setTitle((String(kStr_showName.prefix(4)) + "inue").localized, for: .normal)
        //: btn.setBackgroundImage(UIImage.bundleBy(name: "btn_me_back_continue"), for: .normal)
        btn.setBackgroundImage(UIImage.bundleBy(name: (String(kStr_toTimeTitle) + String(kStr_mainText))), for: .normal)
        //: btn.titleLabel?.font = .pingfangFont(type: .Medium, fontSize: 17)
        btn.titleLabel?.font = .groupSize(type: .Medium, fontSize: 17)
        //: return btn
        return btn
        //: }()
    }()
}

// MARK: - Event

//: extension TalkingFaceVerificationView {
extension EngineView {
    //: @objc func registerBtnAction() {
    @objc func assemblage() {
        //: if btnClickBlock != nil {
        if btnClickBlock != nil {
            //: btnClickBlock!()
            btnClickBlock!()
        }
    }

    //: private func bindInteraction() {
    private func streetwise() {
        //: continueBtn.rx.controlEvent(.touchUpInside)
        continueBtn.rx.controlEvent(.touchUpInside)
            //: .subscribe(onNext: { [weak self] in
            .subscribe(onNext: { [weak self] in
                //: guard let self = self else {return}
                guard let self = self else { return }
                //: self.registerBtnAction()
                self.assemblage()
                //: }).disposed(by: disposeBag)
            }).disposed(by: disposeBag)
    }
}

// MARK: - Layout

//: extension TalkingFaceVerificationView {
extension EngineView {
    //: func createSubViews() {
    func currentSuccess() {
        //: addSubview(faceBackImageView)
        addSubview(faceBackImageView)
        //: addSubview(verificationTitleLab)
        addSubview(verificationTitleLab)
        //: addSubview(verificationDesLab)
        addSubview(verificationDesLab)
        //: addSubview(subFirstDesLab)
        addSubview(subFirstDesLab)
        //: addSubview(subSecondDesLab)
        addSubview(subSecondDesLab)
        //: addSubview(continueBtn)
        addSubview(continueBtn)
    }

    //: func layoutSubViewsConstraints() {
    func inputTarget() {
        //: let imgSize = faceBackImageView.image?.size
        let imgSize = faceBackImageView.image?.size
        //: let fitH = imgSize!.height * ScreenWidth / imgSize!.width
        let fitH = imgSize!.height * kLet_halfData / imgSize!.width
        //: faceBackImageView.snp.makeConstraints { make in
        faceBackImageView.snp.makeConstraints { make in
            //: make.top.equalTo(actualHeight(h: 11)+StatusBarHeight)
            make.top.equalTo(mediaBlock(h: 11) + kLet_postPartyValue)
            //: make.leading.trailing.equalTo(0)
            make.leading.trailing.equalTo(0)
            //: make.height.equalTo(fitH)
            make.height.equalTo(fitH)
        }
        //: verificationTitleLab.snp.makeConstraints { make in
        verificationTitleLab.snp.makeConstraints { make in
            //: make.leading.equalTo(actualWidth(w: 15))
            make.leading.equalTo(originalScene(w: 15))
            //: make.trailing.equalTo(actualWidth(w: -5))
            make.trailing.equalTo(originalScene(w: -5))
            //: make.top.equalTo(faceBackImageView.snp.bottom).offset(actualHeight(h: 26))
            make.top.equalTo(faceBackImageView.snp.bottom).offset(mediaBlock(h: 26))
        }
        //: verificationDesLab.snp.makeConstraints { make in
        verificationDesLab.snp.makeConstraints { make in
            //: make.leading.equalTo(verificationTitleLab.snp.leading)
            make.leading.equalTo(verificationTitleLab.snp.leading)
            //: make.trailing.equalTo(verificationTitleLab.snp.trailing)
            make.trailing.equalTo(verificationTitleLab.snp.trailing)
            //: make.top.equalTo(verificationTitleLab.snp.bottom).offset(actualHeight(h: 10))
            make.top.equalTo(verificationTitleLab.snp.bottom).offset(mediaBlock(h: 10))
        }
        //: subFirstDesLab.snp.makeConstraints { make in
        subFirstDesLab.snp.makeConstraints { make in
            //: make.leading.equalTo(verificationTitleLab.snp.leading)
            make.leading.equalTo(verificationTitleLab.snp.leading)
            //: make.trailing.equalTo(verificationTitleLab.snp.trailing)
            make.trailing.equalTo(verificationTitleLab.snp.trailing)
            //: make.top.equalTo(verificationDesLab.snp.bottom).offset(actualHeight(h: 12))
            make.top.equalTo(verificationDesLab.snp.bottom).offset(mediaBlock(h: 12))
        }
        //: subSecondDesLab.snp.makeConstraints { make in
        subSecondDesLab.snp.makeConstraints { make in
            //: make.leading.equalTo(verificationTitleLab.snp.leading)
            make.leading.equalTo(verificationTitleLab.snp.leading)
            //: make.trailing.equalTo(verificationTitleLab.snp.trailing)
            make.trailing.equalTo(verificationTitleLab.snp.trailing)
            //: make.top.equalTo(subFirstDesLab.snp.bottom).offset(actualHeight(h: 9))
            make.top.equalTo(subFirstDesLab.snp.bottom).offset(mediaBlock(h: 9))
        }
        //: continueBtn.snp.makeConstraints { make in
        continueBtn.snp.makeConstraints { make in
            //: make.top.equalTo(subSecondDesLab.snp.bottom).offset(actualHeight(h: 24))
            make.top.equalTo(subSecondDesLab.snp.bottom).offset(mediaBlock(h: 24))
            //: make.centerX.equalTo(self)
            make.centerX.equalTo(self)
            //: make.width.equalTo(267)
            make.width.equalTo(267)
            //: make.height.equalTo(50)
            make.height.equalTo(50)
        }
    }
}
