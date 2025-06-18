
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let kStr_toAtRequestValue:[UInt8] = [0x3c,0x3b,0x3c,0x21,0x7d,0x36,0x3a,0x31,0x30,0x27,0x6f,0x7c,0x75,0x3d,0x34,0x26,0x75,0x3b,0x3a,0x21,0x75,0x37,0x30,0x30,0x3b,0x75,0x3c,0x38,0x25,0x39,0x30,0x38,0x30,0x3b,0x21,0x30,0x31]

private func makeTitle(text num: UInt8) -> UInt8 {
    return num ^ 85
}

/*: "img_faceverification_pose" :*/
fileprivate let kStr_toText:String = "make for matchimg_"
fileprivate let kStr_centerValue:String = "blockrif"
fileprivate let kStr_statusValue:String = "_posecase status top"

/*: "Strike this pose and take a photo" :*/
fileprivate let kStr_kitName:[UInt8] = [0xf8,0xdf,0xd9,0xc2,0xc0,0xce,0x8b,0xdf,0xc3,0xc2,0xd8,0x8b,0xdb,0xc4,0xd8,0xce,0x8b,0xca,0xc5,0xcf,0x8b,0xdf,0xca,0xc0,0xce,0x8b,0xca,0x8b,0xdb,0xc3,0xc4,0xdf,0xc4]

/*: "Your photo will never be uploaded to your profile or shown to anyone else." :*/
fileprivate let kStr_makeGestureName:[UInt8] = [0x2e,0x65,0x73,0x6c,0x65,0x20,0x65,0x6e,0x6f,0x79,0x6e,0x61,0x20,0x6f,0x74,0x20,0x6e,0x77,0x6f,0x68,0x73,0x20,0x72,0x6f,0x20,0x65,0x6c,0x69,0x66,0x6f,0x72,0x70,0x20,0x72,0x75,0x6f,0x79,0x20,0x6f,0x74,0x20,0x64,0x65,0x64,0x61,0x6f,0x6c,0x70,0x75,0x20,0x65,0x62,0x20,0x72,0x65,0x76,0x65,0x6e,0x20,0x6c,0x6c,0x69,0x77,0x20,0x6f,0x74,0x6f,0x68,0x70,0x20,0x72,0x75,0x6f,0x59]

/*: "Camera" :*/
fileprivate let kStr_viewValue:String = "remove"
fileprivate let kStr_layerTitle:[Character] = ["a","m","e","r","a"]

/*: "btn_me_back_continue" :*/
fileprivate let kStr_bottomName:String = "btn_memake to"
fileprivate let kStr_halfFrameName:String = "connormal"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  SucceedView.swift
//  AbroadTalking
//
//  Created by Bolo on 2022/8/31.
//

//: import UIKit
import UIKit

//: class TalkingVerificationExampleView: UIView {
class SucceedView: UIView {
    //: let disposeBag = DisposeBag()
    let disposeBag = DisposeBag()
    //: typealias CameraBtnClickBlock = () -> Void
    typealias CameraBtnClickBlock = () -> Void
    //: var btnClickBlock: CameraBtnClickBlock?
    var btnClickBlock: CameraBtnClickBlock?

    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: self.backgroundColor = UIColor.white
        self.backgroundColor = UIColor.white
        //: createSubViews()
        viewsAllow()
        //: layoutSubViewsConstraints()
        clubTo()
        //: bindInteraction()
        live()
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: kStr_toAtRequestValue.map{makeTitle(text: $0)}, encoding: .utf8)!)
    }

    // MARK: - Lazy load

    //: lazy var faceBackImageView: UIImageView = {
    lazy var faceBackImageView: UIImageView = {
        //: let imgView = UIImageView()
        let imgView = UIImageView()
        //: imgView.image = UIImage.bundleBy(name: "img_faceverification_pose")
        imgView.image = UIImage.bundleBy(name: (String(kStr_toText.suffix(4)) + "facev" + kStr_centerValue.replacingOccurrences(of: "block", with: "e") + "ication" + String(kStr_statusValue.prefix(5))))
        //: return imgView
        return imgView
        //: }()
    }()

    //: lazy var verificationTitleLab: UILabel = {
    lazy var verificationTitleLab: UILabel = {
        //: let lb = UILabel()
        let lb = UILabel()
        //: lb.text = "Strike this pose and take a photo".localized
        lb.text = String(bytes: kStr_kitName.map{$0^171}, encoding: .utf8)!.localized
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
        //: lb.text = "Your photo will never be uploaded to your profile or shown to anyone else.".localized
        lb.text = String(bytes: kStr_makeGestureName.reversed(), encoding: .utf8)!.localized
        //: lb.textColor = .appValueColor()
        lb.textColor = .priority()
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
        //: btn.setTitle("Camera".localized, for: .normal)
        btn.setTitle((kStr_viewValue.replacingOccurrences(of: "remove", with: "C") + String(kStr_layerTitle)).localized, for: .normal)
        //: btn.setBackgroundImage(UIImage.bundleBy(name: "btn_me_back_continue"), for: .normal)
        btn.setBackgroundImage(UIImage.bundleBy(name: (String(kStr_bottomName.prefix(6)) + "_back_" + kStr_halfFrameName.replacingOccurrences(of: "normal", with: "t") + "inue")), for: .normal)
        //: btn.titleLabel?.font = .pingfangFont(type: .Medium, fontSize: 17)
        btn.titleLabel?.font = .groupSize(type: .Medium, fontSize: 17)
        //: return btn
        return btn
        //: }()
    }()
}

// MARK: - Event

//: extension TalkingVerificationExampleView {
extension SucceedView {
    //: @objc func registerBtnAction() {
    @objc func conversationAction() {
        //: if btnClickBlock != nil {
        if btnClickBlock != nil {
            //: btnClickBlock!()
            btnClickBlock!()
        }
    }

    //: private func bindInteraction() {
    private func live() {
        //: continueBtn.rx.controlEvent(.touchUpInside)
        continueBtn.rx.controlEvent(.touchUpInside)
            //: .subscribe(onNext: { [weak self] in
            .subscribe(onNext: { [weak self] in
                //: guard let self = self else {return}
                guard let self = self else { return }
                //: self.registerBtnAction()
                self.conversationAction()
                //: }).disposed(by: disposeBag)
            }).disposed(by: disposeBag)
    }
}

// MARK: - Layout

//: extension TalkingVerificationExampleView {
extension SucceedView {
    //: func createSubViews() {
    func viewsAllow() {
        //: addSubview(faceBackImageView)
        addSubview(faceBackImageView)
        //: addSubview(verificationTitleLab)
        addSubview(verificationTitleLab)
        //: addSubview(verificationDesLab)
        addSubview(verificationDesLab)
        //: addSubview(continueBtn)
        addSubview(continueBtn)
    }

    //: func layoutSubViewsConstraints() {
    func clubTo() {
        //: let fitH = 686 * (ScreenWidth - actualWidth(w: 30)) / 690
        let fitH = 686 * (kLet_halfData - originalScene(w: 30)) / 690
        //: faceBackImageView.snp.makeConstraints { make in
        faceBackImageView.snp.makeConstraints { make in
            //: make.top.equalTo((actualHeight(h: 18)))
            make.top.equalTo(mediaBlock(h: 18))
            //: make.leading.equalTo(actualWidth(w: 15))
            make.leading.equalTo(originalScene(w: 15))
            //: make.width.equalTo(ScreenWidth-actualWidth(w: 30))
            make.width.equalTo(kLet_halfData - originalScene(w: 30))
            //: make.height.equalTo(fitH)
            make.height.equalTo(fitH)
        }
        //: verificationTitleLab.snp.makeConstraints { make in
        verificationTitleLab.snp.makeConstraints { make in
            //: make.leading.equalTo(actualWidth(w: 15))
            make.leading.equalTo(originalScene(w: 15))
            //: make.trailing.equalTo(actualWidth(w: -15))
            make.trailing.equalTo(originalScene(w: -15))
            //: make.top.equalTo(faceBackImageView.snp.bottom).offset(actualHeight(h: 24))
            make.top.equalTo(faceBackImageView.snp.bottom).offset(mediaBlock(h: 24))
        }
        //: verificationDesLab.snp.makeConstraints { make in
        verificationDesLab.snp.makeConstraints { make in
            //: make.leading.equalTo(verificationTitleLab.snp.leading)
            make.leading.equalTo(verificationTitleLab.snp.leading)
            //: make.trailing.equalTo(verificationTitleLab.snp.trailing)
            make.trailing.equalTo(verificationTitleLab.snp.trailing)
            //: make.top.equalTo(verificationTitleLab.snp.bottom).offset(10)
            make.top.equalTo(verificationTitleLab.snp.bottom).offset(10)
        }
        //: continueBtn.snp.makeConstraints { make in
        continueBtn.snp.makeConstraints { make in
            //: make.bottom.equalTo(-actualHeight(h: 34)-kDeviceSafeBottomHeight)
            make.bottom.equalTo(-mediaBlock(h: 34) - kLet_formatNetValue)
            //: make.centerX.equalTo(self)
            make.centerX.equalTo(self)
            //: make.width.equalTo(267)
            make.width.equalTo(267)
            //: make.height.equalTo(50)
            make.height.equalTo(50)
        }
    }
}
