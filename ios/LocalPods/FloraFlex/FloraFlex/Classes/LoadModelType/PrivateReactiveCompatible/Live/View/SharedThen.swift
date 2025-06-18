
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let kStr_dateName:[UInt8] = [0x8c,0x91,0x8c,0x97,0x4b,0x86,0x92,0x87,0x88,0x95,0x5d,0x4c,0x43,0x8b,0x84,0x96,0x43,0x91,0x92,0x97,0x43,0x85,0x88,0x88,0x91,0x43,0x8c,0x90,0x93,0x8f,0x88,0x90,0x88,0x91,0x97,0x88,0x87]

fileprivate func dismissHead(always num: UInt8) -> UInt8 {
    let value = Int(num) + 221
    if value > 255 {
        return UInt8(value - 256)
    } else {
        return UInt8(value)
    }
}

/*: "icon_tc_warn" :*/
fileprivate let kStr_endTitle:String = "icon_raw share return if"

/*: "Live Warning" :*/
fileprivate let kStr_sharedValue:[Character] = ["L","i","v","e"," ","W","a","r","n","i","n","g"]

/*: "OK" :*/
fileprivate let kStr_beginLiveValue:[Character] = ["O","K"]

/*: "Violation Reason: " :*/
fileprivate let kStr_videoContentValue:String = "Violatreturn content"
fileprivate let kStr_textValue:[Character] = ["s","o","n",":"," "]

/*: "Warning Time: " :*/
fileprivate let kStr_valueTitle:String = "segment add modelWarning T"
fileprivate let kStr_toData:String = "make value self var succeedime: "

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  SharedThen.swift
//  AbroadTalking
//
//  Created by young on 2023/8/1.
//

//: import UIKit
import UIKit

//: class TalkingLiveWarningView: UIView {
class SharedThen: UIView {
    //: private var popView: TalkingPopView?
    private var popView: BackgroundThen?

    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: self.frame = UIScreen.main.bounds
        self.frame = UIScreen.main.bounds
        //: setupSubviews()
        quoteSubviews()
        //: setupSubViewsConstraint()
        quantityry()
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: kStr_dateName.map{dismissHead(always: $0)}, encoding: .utf8)!)
    }

    // MARK: - Lazy Load

    //: private lazy var contentView: UIView = {
    private lazy var contentView: UIView = {
        //: let view = UIView()
        let view = UIView()
        //: view.backgroundColor = UIColor.white
        view.backgroundColor = UIColor.white
        //: view.layer.cornerRadius = 8
        view.layer.cornerRadius = 8
        //: return view
        return view
        //: }()
    }()

    //: private lazy var topIcon: UIImageView = {
    private lazy var topIcon: UIImageView = {
        //: let iamg = UIImageView()
        let iamg = UIImageView()
        //: iamg.image = UIImage.bundleBy(name: "icon_tc_warn")
        iamg.image = UIImage.bundleBy(name: (String(kStr_endTitle.prefix(5)) + "tc_warn"))
        //: iamg.contentMode = .scaleAspectFill
        iamg.contentMode = .scaleAspectFill
        //: return iamg
        return iamg
        //: }()
    }()

    //: private lazy var titleLab: UILabel = {
    private lazy var titleLab: UILabel = {
        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.textColor = .appTitleColor()
        lab.textColor = .dataFormat()
        //: lab.font = UIFont.pingfangFont(type: .Semibold, fontSize: 18)
        lab.font = UIFont.groupSize(type: .Semibold, fontSize: 18)
        //: lab.textAlignment = .center
        lab.textAlignment = .center
        //: lab.text = "Live Warning".localized
        lab.text = (String(kStr_sharedValue)).localized
        //: return lab
        return lab
        //: }()
    }()

    //: private lazy var contentLab: UILabel = {
    private lazy var contentLab: UILabel = {
        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.textColor = .appValueColor()
        lab.textColor = .priority()
        //: lab.font = UIFont.messageDown(fontSize: 15)
        lab.font = UIFont.messageDown(fontSize: 15)
        //: lab.numberOfLines = 0
        lab.numberOfLines = 0
        //: return lab
        return lab
        //: }()
    }()

    //: private lazy var reasonLab: UILabel = {
    private lazy var reasonLab: UILabel = {
        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.textColor = .appTitleColor()
        lab.textColor = .dataFormat()
        //: lab.font = UIFont.messageDown(fontSize: 15)
        lab.font = UIFont.messageDown(fontSize: 15)
        //: lab.numberOfLines = 0
        lab.numberOfLines = 0
        //: return lab
        return lab
        //: }()
    }()

    //: private lazy var timeLab: UILabel = {
    private lazy var timeLab: UILabel = {
        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.textColor = .appTitleColor()
        lab.textColor = .dataFormat()
        //: lab.font = UIFont.messageDown(fontSize: 15)
        lab.font = UIFont.messageDown(fontSize: 15)
        //: lab.numberOfLines = 0
        lab.numberOfLines = 0
        //: return lab
        return lab
        //: }()
    }()

    //: private lazy var okBtn: UIButton = {
    private lazy var okBtn: UIButton = {
        //: let btn = UIButton()
        let btn = UIButton()
        //: let size = CGSize(width: actualWidth(w: 257), height: actualWidth(w: 50))
        let size = CGSize(width: originalScene(w: 257), height: originalScene(w: 50))
        //: btn.setBackgroundImage(UIImage.imageGradientColor(colors: UIColor.appGradientColor(), size: size), for: .normal)
        btn.setBackgroundImage(UIImage.upTo(colors: UIColor.thirdColor(), size: size), for: .normal)
        //: btn.titleLabel?.font = UIFont.dorsum(fontSize: 16)
        btn.titleLabel?.font = UIFont.dorsum(fontSize: 16)
        //: btn.setTitleColor(.white, for: .normal)
        btn.setTitleColor(.white, for: .normal)
        //: btn.setTitle("OK".localized, for: .normal)
        btn.setTitle("OK".localized, for: .normal)
        //: btn.layer.cornerRadius = actualWidth(w: 50/2)
        btn.layer.cornerRadius = originalScene(w: 50 / 2)
        //: btn.layer.masksToBounds = true
        btn.layer.masksToBounds = true
        //: btn.addTarget(self, action: #selector(dismiss), for: .touchUpInside)
        btn.addTarget(self, action: #selector(foursquareDismiss), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()
}

// MARK: - Event

//: extension TalkingLiveWarningView {
extension SharedThen {
    //: func show() {
    func viewQuantity() {
        //: popView = TalkingPopView.init(frame: UIScreen.main.bounds)
        popView = BackgroundThen(frame: UIScreen.main.bounds)
        //: popView?.initWithView(view: self)
        popView?.toViewText(view: self)
        //: popView?.showInView(view: TableMacroDefine.getWindow())
        popView?.beyondAllAdjust(view: TableMacroDefine.oeilDeBoeufView())
        //: popView?.isRemoveTapGes = true
        popView?.isRemoveTapGes = true
    }

    //: @objc func dismiss() {
    @objc func foursquareDismiss() {
        //: popView?.dismissView()
        popView?.placePushAside()
        //: popView = nil
        popView = nil
    }
}

// MARK: - Layout

//: extension TalkingLiveWarningView {
extension SharedThen {
    /// 展示直播警告视图
    /// - Parameters:
    ///   - content: 内容
    ///   - reason: 原因
    ///   - time: 时间
    //: func refreshUI(content: String, reason: String, time: String) {
    func observe(content: String, reason: String, time: String) {
        //: contentLab.text = content
        contentLab.text = content

        //: let attributes = [.foregroundColor: UIColor.fromBuild()] as [NSAttributedString.Key: Any]
        let attributes = [.foregroundColor: UIColor.fromBuild()] as [NSAttributedString.Key: Any]
        //: var reasonText = "Violation Reason: ".localized
        var reasonText = (String(kStr_videoContentValue.prefix(6)) + "ion Rea" + String(kStr_textValue)).localized
        //: let reasonAttr = NSMutableAttributedString(string: reasonText + reason)
        let reasonAttr = NSMutableAttributedString(string: reasonText + reason)
        //: reasonAttr.addAttributes(attributes, range: NSRange(location: 0, length: reasonText.count))
        reasonAttr.addAttributes(attributes, range: NSRange(location: 0, length: reasonText.count))
        //: reasonLab.attributedText = reasonAttr
        reasonLab.attributedText = reasonAttr

        //: var timeText = "Warning Time: ".localized
        var timeText = (String(kStr_valueTitle.suffix(9)) + String(kStr_toData.suffix(5))).localized
        //: let timeAttr = NSMutableAttributedString(string: timeText + time)
        let timeAttr = NSMutableAttributedString(string: timeText + time)
        //: timeAttr.addAttributes(attributes, range: NSRange(location: 0, length: timeText.count))
        timeAttr.addAttributes(attributes, range: NSRange(location: 0, length: timeText.count))
        //: timeLab.attributedText = timeAttr
        timeLab.attributedText = timeAttr
    }

    // 添加视图
    //: private func setupSubviews() {
    private func quoteSubviews() {
        //: self.addSubview(contentView)
        self.addSubview(contentView)
        //: contentView.addSubview(topIcon)
        contentView.addSubview(topIcon)
        //: contentView.addSubview(titleLab)
        contentView.addSubview(titleLab)
        //: contentView.addSubview(contentLab)
        contentView.addSubview(contentLab)
        //: contentView.addSubview(reasonLab)
        contentView.addSubview(reasonLab)
        //: contentView.addSubview(timeLab)
        contentView.addSubview(timeLab)
        //: contentView.addSubview(okBtn)
        contentView.addSubview(okBtn)
    }

    // 添加约束
    //: private func setupSubViewsConstraint() {
    private func quantityry() {
        //: contentView.snp.makeConstraints { make in
        contentView.snp.makeConstraints { make in
            //: make.top.equalTo(self.snp.centerY).offset(-180)
            make.top.equalTo(self.snp.centerY).offset(-180)
            //: make.leading.equalTo(40)
            make.leading.equalTo(40)
            //: make.trailing.equalTo(-40)
            make.trailing.equalTo(-40)
        }

        //: topIcon.snp.makeConstraints { make in
        topIcon.snp.makeConstraints { make in
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.top.equalTo(20)
            make.top.equalTo(20)
            //: make.size.equalTo(CGSize(width: actualWidth(w: 74), height: actualWidth(w: 74)))
            make.size.equalTo(CGSize(width: originalScene(w: 74), height: originalScene(w: 74)))
        }

        //: titleLab.snp.makeConstraints { make in
        titleLab.snp.makeConstraints { make in
            //: make.top.equalTo(topIcon.snp.bottom).offset(17)
            make.top.equalTo(topIcon.snp.bottom).offset(17)
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.leading.equalTo(20)
            make.leading.equalTo(20)
            //: make.trailing.equalTo(-20)
            make.trailing.equalTo(-20)
        }

        //: contentLab.snp.makeConstraints { make in
        contentLab.snp.makeConstraints { make in
            //: make.top.equalTo(titleLab.snp.bottom).offset(14)
            make.top.equalTo(titleLab.snp.bottom).offset(14)
            //: make.leading.trailing.equalTo(titleLab)
            make.leading.trailing.equalTo(titleLab)
        }

        //: reasonLab.snp.makeConstraints { make in
        reasonLab.snp.makeConstraints { make in
            //: make.top.equalTo(contentLab.snp.bottom).offset(14)
            make.top.equalTo(contentLab.snp.bottom).offset(14)
            //: make.leading.trailing.equalTo(titleLab)
            make.leading.trailing.equalTo(titleLab)
        }

        //: timeLab.snp.makeConstraints { make in
        timeLab.snp.makeConstraints { make in
            //: make.top.equalTo(reasonLab.snp.bottom).offset(14)
            make.top.equalTo(reasonLab.snp.bottom).offset(14)
            //: make.leading.trailing.equalTo(titleLab)
            make.leading.trailing.equalTo(titleLab)
        }

        //: okBtn.snp.makeConstraints { make in
        okBtn.snp.makeConstraints { make in
            //: make.top.equalTo(timeLab.snp.bottom).offset(20)
            make.top.equalTo(timeLab.snp.bottom).offset(20)
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.size.equalTo(CGSize(width: actualWidth(w: 257), height: actualWidth(w: 50)))
            make.size.equalTo(CGSize(width: originalScene(w: 257), height: originalScene(w: 50)))
            //: make.bottom.equalToSuperview().offset(-17)
            make.bottom.equalToSuperview().offset(-17)
        }
    }
}
