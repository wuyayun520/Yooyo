
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let kStr_countMasterText:[UInt8] = [0x40,0x45,0x40,0x4b,0xff,0x3a,0x46,0x3b,0x3c,0x49,0x11,0x0,0xf7,0x3f,0x38,0x4a,0xf7,0x45,0x46,0x4b,0xf7,0x39,0x3c,0x3c,0x45,0xf7,0x40,0x44,0x47,0x43,0x3c,0x44,0x3c,0x45,0x4b,0x3c,0x3b]

fileprivate func formatShare(manager num: UInt8) -> UInt8 {
    let value = Int(num) - 215
    if value < 0 {
        return UInt8(value + 256)
    } else {
        return UInt8(value)
    }
}

/*: "Tips" :*/
fileprivate let kStr_makeText:[Character] = ["T","i","p","s"]

/*: "Your post may be recommended as hashtag topic to other users. And its content must comply with current laws regulations and platform requirements which shall not contain:" :*/
fileprivate let kStr_textName:[UInt8] = [0x5a,0x70,0x76,0x73,0x21,0x71,0x70,0x74,0x75,0x21,0x6e,0x62,0x7a,0x21,0x63,0x66,0x21,0x73,0x66,0x64,0x70,0x6e,0x6e,0x66,0x6f,0x65,0x66,0x65,0x21,0x62,0x74,0x21,0x69,0x62,0x74,0x69,0x75,0x62,0x68,0x21,0x75,0x70,0x71,0x6a,0x64,0x21,0x75,0x70,0x21,0x70,0x75,0x69,0x66,0x73,0x21,0x76,0x74,0x66,0x73,0x74,0x2f,0x21,0x42,0x6f,0x65,0x21,0x6a,0x75,0x74,0x21,0x64,0x70,0x6f,0x75,0x66,0x6f,0x75,0x21,0x6e,0x76,0x74,0x75,0x21,0x64,0x70,0x6e,0x71,0x6d,0x7a,0x21,0x78,0x6a,0x75,0x69,0x21,0x64,0x76,0x73,0x73,0x66,0x6f,0x75,0x21,0x6d,0x62,0x78,0x74,0x21,0x73,0x66,0x68,0x76,0x6d,0x62,0x75,0x6a,0x70,0x6f,0x74,0x21,0x62,0x6f,0x65,0x21,0x71,0x6d,0x62,0x75,0x67,0x70,0x73,0x6e,0x21,0x73,0x66,0x72,0x76,0x6a,0x73,0x66,0x6e,0x66,0x6f,0x75,0x74,0x21,0x78,0x69,0x6a,0x64,0x69,0x21,0x74,0x69,0x62,0x6d,0x6d,0x21,0x6f,0x70,0x75,0x21,0x64,0x70,0x6f,0x75,0x62,0x6a,0x6f,0x3b]

fileprivate func chromaticColor(minimize num: UInt8) -> UInt8 {
    let value = Int(num) + 255
    if value > 255 {
        return UInt8(value - 256)
    } else {
        return UInt8(value)
    }
}

/*: "#777777" :*/
fileprivate let kStr_fromText:String = "#7"
fileprivate let kStr_showText:String = "77777"

/*: "1. Hate comments or rumors. \n2. Induce others to send gifts. \n3. Induce others to pay and trade on money. \n4. Nudity or sexual activity. \n5. Advertising information. \n6. Other contents prohibited by laws and administrative regulations." :*/
fileprivate let kStr_sectionCookieName:[UInt8] = [0x2e,0x73,0x6e,0x6f,0x69,0x74,0x61,0x6c,0x75,0x67,0x65,0x72,0x20,0x65,0x76,0x69,0x74,0x61,0x72,0x74,0x73,0x69,0x6e,0x69,0x6d,0x64,0x61,0x20,0x64,0x6e,0x61,0x20,0x73,0x77,0x61,0x6c,0x20,0x79,0x62,0x20,0x64,0x65,0x74,0x69,0x62,0x69,0x68,0x6f,0x72,0x70,0x20,0x73,0x74,0x6e,0x65,0x74,0x6e,0x6f,0x63,0x20,0x72,0x65,0x68,0x74,0x4f,0x20,0x2e,0x36,0xa,0x20,0x2e,0x6e,0x6f,0x69,0x74,0x61,0x6d,0x72,0x6f,0x66,0x6e,0x69,0x20,0x67,0x6e,0x69,0x73,0x69,0x74,0x72,0x65,0x76,0x64,0x41,0x20,0x2e,0x35,0xa,0x20,0x2e,0x79,0x74,0x69,0x76,0x69,0x74,0x63,0x61,0x20,0x6c,0x61,0x75,0x78,0x65,0x73,0x20,0x72,0x6f,0x20,0x79,0x74,0x69,0x64,0x75,0x4e,0x20,0x2e,0x34,0xa,0x20,0x2e,0x79,0x65,0x6e,0x6f,0x6d,0x20,0x6e,0x6f,0x20,0x65,0x64,0x61,0x72,0x74,0x20,0x64,0x6e,0x61,0x20,0x79,0x61,0x70,0x20,0x6f,0x74,0x20,0x73,0x72,0x65,0x68,0x74,0x6f,0x20,0x65,0x63,0x75,0x64,0x6e,0x49,0x20,0x2e,0x33,0xa,0x20,0x2e,0x73,0x74,0x66,0x69,0x67,0x20,0x64,0x6e,0x65,0x73,0x20,0x6f,0x74,0x20,0x73,0x72,0x65,0x68,0x74,0x6f,0x20,0x65,0x63,0x75,0x64,0x6e,0x49,0x20,0x2e,0x32,0xa,0x20,0x2e,0x73,0x72,0x6f,0x6d,0x75,0x72,0x20,0x72,0x6f,0x20,0x73,0x74,0x6e,0x65,0x6d,0x6d,0x6f,0x63,0x20,0x65,0x74,0x61,0x48,0x20,0x2e,0x31]

/*: "OK" :*/
fileprivate let kStr_jumpTouchData:String = "normalK"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  ImageReactiveCompatible.swift
//  AbroadTalking
//
//  Created by young on 2022/9/21.
//

//: import UIKit
import UIKit

//: class TalkingFreeTipsView: UIView {
class ImageReactiveCompatible: UIView {
    //: let disposeBag = DisposeBag()
    let disposeBag = DisposeBag()

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: kStr_countMasterText.map{formatShare(manager: $0)}, encoding: .utf8)!)
    }

    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: setupSubviews()
        outPlayer()
        //: setupSubViewsConstraint()
        plainspoken()
    }

    // MARK: - Lazy load

    //: private lazy var whiteBgV: UIView = {
    private lazy var whiteBgV: UIView = {
        //: let v = UIView()
        let v = UIView()
        //: v.backgroundColor = .white
        v.backgroundColor = .white
        //: v.layer.cornerRadius = 15
        v.layer.cornerRadius = 15
        //: v.layer.masksToBounds = true
        v.layer.masksToBounds = true
        //: return v
        return v
        //: }()
    }()

    //: private lazy var titleLab: UILabel = {
    private lazy var titleLab: UILabel = {
        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.textColor = UIColor.appTitleColor()
        lab.textColor = UIColor.dataFormat()
        //: lab.font = UIFont.pingfangFont(type: .Semibold, fontSize: 22)
        lab.font = UIFont.groupSize(type: .Semibold, fontSize: 22)
        //: lab.text = "Tips".localized
        lab.text = (String(kStr_makeText)).localized
        //: return lab
        return lab
        //: }()
    }()

    //: private lazy var scrollView: UIScrollView = {
    private lazy var scrollView: UIScrollView = {
        //: let scrollV = UIScrollView()
        let scrollV = UIScrollView()
        //: scrollV.backgroundColor = .white
        scrollV.backgroundColor = .white
        //: scrollV.showsVerticalScrollIndicator = true
        scrollV.showsVerticalScrollIndicator = true
        //: scrollV.showsHorizontalScrollIndicator = false
        scrollV.showsHorizontalScrollIndicator = false
        //: return scrollV
        return scrollV
        //: }()
    }()

    //: private lazy var textLab1: UILabel = {
    private lazy var textLab1: UILabel = {
        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.textColor = UIColor.appTitleColor()
        lab.textColor = UIColor.dataFormat()
        //: lab.font = UIFont.pingfangFont(type: .Medium, fontSize: 16)
        lab.font = UIFont.groupSize(type: .Medium, fontSize: 16)
        //: lab.numberOfLines = 0
        lab.numberOfLines = 0
        //: lab.text = "Your post may be recommended as hashtag topic to other users. And its content must comply with current laws regulations and platform requirements which shall not contain:".localized
        lab.text = String(bytes: kStr_textName.map{chromaticColor(minimize: $0)}, encoding: .utf8)!.localized
        //: return lab
        return lab
        //: }()
    }()

    //: private lazy var textLab2: UILabel = {
    private lazy var textLab2: UILabel = {
        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.textColor = UIColor(hex: "#777777")
        lab.textColor = UIColor(hex: (kStr_fromText.capitalized + kStr_showText.capitalized))
        //: lab.font = UIFont.pingfangFont(type: .Regular, fontSize: 16)
        lab.font = UIFont.groupSize(type: .Regular, fontSize: 16)
        //: lab.numberOfLines = 0
        lab.numberOfLines = 0
        //: lab.text = "1. Hate comments or rumors. \n2. Induce others to send gifts. \n3. Induce others to pay and trade on money. \n4. Nudity or sexual activity. \n5. Advertising information. \n6. Other contents prohibited by laws and administrative regulations.".localized
        lab.text = String(bytes: kStr_sectionCookieName.reversed(), encoding: .utf8)!.localized
        //: return lab
        return lab
        //: }()
    }()

    //: private lazy var okBtn: UIButton = {
    private lazy var okBtn: UIButton = {
        //: let btn = UIButton()
        let btn = UIButton()
        //: btn.setTitle("OK".localized, for: .normal)
        btn.setTitle("OK".localized, for: .normal)
        //: btn.setTitleColor(.white, for: .normal)
        btn.setTitleColor(.white, for: .normal)
        //: btn.titleLabel?.font = UIFont.pingfangFont(type: .Medium, fontSize: 18)
        btn.titleLabel?.font = UIFont.groupSize(type: .Medium, fontSize: 18)
        //: btn.setBackgroundImage(UIImage.imageGradientColor(colors: UIColor.appGradientColor(), size: CGSize(width: 255, height: 50)), for: .normal)
        btn.setBackgroundImage(UIImage.upTo(colors: UIColor.thirdColor(), size: CGSize(width: 255, height: 50)), for: .normal)
        //: btn.layer.cornerRadius = 25
        btn.layer.cornerRadius = 25
        //: btn.clipsToBounds = true
        btn.clipsToBounds = true
        //: return btn
        return btn
        //: }()
    }()
}

// MARK: - Event

//: extension TalkingFreeTipsView {
extension ImageReactiveCompatible {
    //: func showView(okHandler: @escaping () -> Void) {
    func viewHandler(okHandler: @escaping () -> Void) {
        //: show()
        taskStart()
        // bind event
        //: okBtn.rx.controlEvent(.touchUpInside)
        okBtn.rx.controlEvent(.touchUpInside)
            //: .subscribe(onNext: { [weak self] in
            .subscribe(onNext: { [weak self] in
                //: guard let self = self else { return }
                guard let self = self else { return }
                // 记录同意状态
                //: Defaults.set(true, forKey: TalkingFreeTipsViewIsShow)
                kLet_managerValue.set(true, forKey: kLet_timeKeyValue)
                //: self.dismiss()
                self.toneDismiss()
                //: okHandler()
                okHandler()
                //: })
            })
            //: .disposed(by: disposeBag)
            .disposed(by: disposeBag)
    }

    //: private func show() {
    private func taskStart() {
        //: UIView.animate(withDuration: 0.3) {
        UIView.animate(withDuration: 0.3) {
            //: self.alpha = 1
            self.alpha = 1
            //: } completion: { finish in
        } completion: { _ in
            //: TableMacroDefine.getWindow().addSubview(self)
            TableMacroDefine.oeilDeBoeufView().addSubview(self)
        }
    }

    //: private func dismiss() {
    private func toneDismiss() {
        //: UIView.animate(withDuration: 0.3) {
        UIView.animate(withDuration: 0.3) {
            //: self.alpha = 0
            self.alpha = 0
            //: } completion: { finish in
        } completion: { _ in
            //: guard self.superview != nil else { return }
            guard self.superview != nil else { return }
            //: self.removeFromSuperview()
            self.removeFromSuperview()
        }
    }
}

// MARK: - Layout

//: extension TalkingFreeTipsView {
extension ImageReactiveCompatible {
    // 添加视图
    //: private func setupSubviews() {
    private func outPlayer() {
        //: frame = CGRect(x: 0, y: 0, width: ScreenWidth, height: ScreenHeight)
        frame = CGRect(x: 0, y: 0, width: kLet_halfData, height: kLet_noSeatName)
        //: backgroundColor = UIColor.RGBA(0, 0, 0, 0.6)
        backgroundColor = UIColor.largesse(0, 0, 0, 0.6)
        //: alpha = 0
        alpha = 0
        //: addSubview(whiteBgV)
        addSubview(whiteBgV)
        //: whiteBgV.addSubview(titleLab)
        whiteBgV.addSubview(titleLab)
        //: whiteBgV.addSubview(scrollView)
        whiteBgV.addSubview(scrollView)
        //: scrollView.addSubview(textLab1)
        scrollView.addSubview(textLab1)
        //: scrollView.addSubview(textLab2)
        scrollView.addSubview(textLab2)
        //: whiteBgV.addSubview(okBtn)
        whiteBgV.addSubview(okBtn)
    }

    // 添加约束
    //: private func setupSubViewsConstraint() {
    private func plainspoken() {
        //: whiteBgV.snp.makeConstraints { make in
        whiteBgV.snp.makeConstraints { make in
            //: make.center.equalToSuperview()
            make.center.equalToSuperview()
            //: make.size.equalTo(CGSize(width: 295, height: 374))
            make.size.equalTo(CGSize(width: 295, height: 374))
        }
        //: titleLab.snp.makeConstraints { make in
        titleLab.snp.makeConstraints { make in
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.top.equalToSuperview().offset(20)
            make.top.equalToSuperview().offset(20)
        }
        //: scrollView.snp.makeConstraints { make in
        scrollView.snp.makeConstraints { make in
            //: make.top.equalTo(titleLab.snp.bottom).offset(10)
            make.top.equalTo(titleLab.snp.bottom).offset(10)
            //: make.leading.equalTo(20)
            make.leading.equalTo(20)
            //: make.trailing.equalTo(-20)
            make.trailing.equalTo(-20)
            //: make.bottom.equalToSuperview().offset(-82)
            make.bottom.equalToSuperview().offset(-82)
        }
        //: textLab1.snp.makeConstraints { make in
        textLab1.snp.makeConstraints { make in
            //: make.top.equalToSuperview()
            make.top.equalToSuperview()
            //: make.leading.equalTo(whiteBgV.snp.leading).offset(20)
            make.leading.equalTo(whiteBgV.snp.leading).offset(20)
            //: make.trailing.equalTo(whiteBgV.snp.trailing).offset(-20)
            make.trailing.equalTo(whiteBgV.snp.trailing).offset(-20)
        }
        //: textLab2.snp.makeConstraints { make in
        textLab2.snp.makeConstraints { make in
            //: make.top.equalTo(textLab1.snp.bottom).offset(4)
            make.top.equalTo(textLab1.snp.bottom).offset(4)
            //: make.leading.width.equalTo(textLab1)
            make.leading.width.equalTo(textLab1)
        }
        //: okBtn.snp.makeConstraints { make in
        okBtn.snp.makeConstraints { make in
            //: make.bottom.equalToSuperview().offset(-16)
            make.bottom.equalToSuperview().offset(-16)
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.size.equalTo(CGSize(width: 255, height: 50))
            make.size.equalTo(CGSize(width: 255, height: 50))
        }
    }
}
