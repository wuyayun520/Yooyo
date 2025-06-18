
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let kStr_itemName:[UInt8] = [0xcd,0xca,0xcd,0xd0,0x8c,0xc7,0xcb,0xc0,0xc1,0xd6,0x9e,0x8d,0x84,0xcc,0xc5,0xd7,0x84,0xca,0xcb,0xd0,0x84,0xc6,0xc1,0xc1,0xca,0x84,0xcd,0xc9,0xd4,0xc8,0xc1,0xc9,0xc1,0xca,0xd0,0xc1,0xc0]

private func editShare(gift num: UInt8) -> UInt8 {
    return num ^ 164
}

/*: "icon_cover_toast" :*/
fileprivate let kStr_displayValue:[Character] = ["i","c","o","n","_","c","o","v","e","r","_","t","o"]
fileprivate let kStr_removeValue:String = "AST"

/*: "OK" :*/
fileprivate let kStr_indexValue:String = "ok"

/*: "Not for now" :*/
fileprivate let kStr_frameTitle:String = "Not file view read label source"

/*: "Turn on" :*/
fileprivate let kStr_userName:String = "make gift source ifTurn on"

/*: "Live Certification off" :*/
fileprivate let kStr_actionData:String = "Live extension to view photo border"
fileprivate let kStr_tableText:String = "icatifrom"
fileprivate let kStr_kitValue:String = "size"

/*: "Please make sure your face is always in the video screen" :*/
fileprivate let kStr_existingText:[UInt8] = [0xbe,0x82,0x8b,0x8f,0x9d,0x8b,0xce,0x83,0x8f,0x85,0x8b,0xce,0x9d,0x9b,0x9c,0x8b,0xce,0x97,0x81,0x9b,0x9c,0xce,0x88,0x8f,0x8d,0x8b,0xce,0x87,0x9d,0xce,0x8f,0x82,0x99,0x8f,0x97,0x9d,0xce,0x87,0x80,0xce,0x9a,0x86,0x8b,0xce,0x98,0x87,0x8a,0x8b,0x81,0xce,0x9d,0x8d,0x9c,0x8b,0x8b,0x80]

private func toSearchion(bean num: UInt8) -> UInt8 {
    return num ^ 238
}

/*: "Current network unavailable" :*/
fileprivate let kStr_skinTitle:String = "sub make center i panCurrent"
fileprivate let kStr_extraByValue:String = " netwoface label model corner margin"
fileprivate let kStr_toScriptValue:String = "avaidatable"

/*: "Live Reminder" :*/
fileprivate let kStr_storeTitle:[Character] = ["L","i","v","e"," "]
fileprivate let kStr_tableTitle:[Character] = ["R","e","m","i","n","d","e","r"]

/*: "You haven't used your free video opportunity yet, talk to someone first!" :*/
fileprivate let kStr_managerName:[UInt8] = [0xef,0xd9,0xc3,0x96,0xde,0xd7,0xc0,0xd3,0xd8,0x91,0xc2,0x96,0xc3,0xc5,0xd3,0xd2,0x96,0xcf,0xd9,0xc3,0xc4,0x96,0xd0,0xc4,0xd3,0xd3,0x96,0xc0,0xdf,0xd2,0xd3,0xd9,0x96,0xd9,0xc6,0xc6,0xd9,0xc4,0xc2,0xc3,0xd8,0xdf,0xc2,0xcf,0x96,0xcf,0xd3,0xc2,0x9a,0x96,0xc2,0xd7,0xda,0xdd,0x96,0xc2,0xd9,0x96,0xc5,0xd9,0xdb,0xd3,0xd9,0xd8,0xd3,0x96,0xd0,0xdf,0xc4,0xc5,0xc2,0x97]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  MakeAlertView.swift
//  AbroadTalking
//
//  Created by young on 2023/6/20.
//

//: import UIKit
import UIKit

//: enum LiveAlertViewType {
enum LayerViewType {
    //: case noFace
    case noFace // 无人脸
    //: case noNetwork
    case noNetwork // 无网络
    //: case turnOnLive
    case turnOnLive // 开播提醒
    //: case freeVideo
    case freeVideo // 免费视频挽留
}

//: class TalkingLiveAlertView: UIView {
class MakeAlertView: UIView {
    // 右边按钮点击事件
    //: var rightBlcok: (() -> Void)?
    var rightBlcok: (() -> Void)?

    //: private var popView: TalkingPopView?
    private var popView: BackgroundThen?
    //: private var type = LiveAlertViewType.noFace
    private var type = LayerViewType.noFace

    //: init(frame: CGRect, type: LiveAlertViewType) {
    init(frame: CGRect, type: LayerViewType) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: self.frame = UIScreen.main.bounds
        self.frame = UIScreen.main.bounds
        //: self.type = type
        self.type = type
        //: setupSubviews()
        userSubviews()
        //: setupSubViewsConstraint()
        loadConstraint()
        //: refreshUI()
        pastAdd()
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: kStr_itemName.map{editShare(gift: $0)}, encoding: .utf8)!)
    }

    // MARK: - Lazy Load

    //: private lazy var contentView: UIView = {
    private lazy var contentView: UIView = {
        //: let view = UIView()
        let view = UIView()
        //: view.backgroundColor = UIColor.white
        view.backgroundColor = UIColor.white
        //: view.layer.cornerRadius = 15
        view.layer.cornerRadius = 15
        //: return view
        return view
        //: }()
    }()

    //: private lazy var topIcon: UIImageView = {
    private lazy var topIcon: UIImageView = {
        //: let iamg = UIImageView()
        let iamg = UIImageView()
        //: iamg.image = UIImage.bundleBy(name: "icon_cover_toast")
        iamg.image = UIImage.bundleBy(name: (String(kStr_displayValue) + kStr_removeValue.lowercased()))
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
        //: lab.font = UIFont.dorsum(fontSize: 18)
        lab.font = UIFont.dorsum(fontSize: 18)
        //: lab.textAlignment = .center
        lab.textAlignment = .center
        //: lab.numberOfLines = 0
        lab.numberOfLines = 0
        //: return lab
        return lab
        //: }()
    }()

    //: private lazy var contentLab: UILabel = {
    private lazy var contentLab: UILabel = {
        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.textColor = .appTitleColor()
        lab.textColor = .dataFormat()
        //: lab.font = UIFont.messageDown(fontSize: 16)
        lab.font = UIFont.messageDown(fontSize: 16)
        //: lab.textAlignment = .center
        lab.textAlignment = .center
        //: lab.numberOfLines = 0
        lab.numberOfLines = 0
        //: return lab
        return lab
        //: }()
    }()

    //: private lazy var closeBtn: UIButton = {
    private lazy var closeBtn: UIButton = {
        //: let btn = UIButton()
        let btn = UIButton()
        //: let size = CGSize(width: actualWidth(w: 203), height: actualWidth(w: 50))
        let size = CGSize(width: originalScene(w: 203), height: originalScene(w: 50))
        //: btn.setBackgroundImage(UIImage.imageGradientColor(colors: UIColor.appGradientColor(), size: size), for: .normal)
        btn.setBackgroundImage(UIImage.upTo(colors: UIColor.thirdColor(), size: size), for: .normal)
        //: btn.titleLabel?.font = UIFont.dorsum(fontSize: 18)
        btn.titleLabel?.font = UIFont.dorsum(fontSize: 18)
        //: btn.setTitleColor(.white, for: .normal)
        btn.setTitleColor(.white, for: .normal)
        //: btn.setTitle("OK".localized, for: .normal)
        btn.setTitle("OK".localized, for: .normal)
        //: btn.layer.cornerRadius = actualWidth(w: 50/2)
        btn.layer.cornerRadius = originalScene(w: 50 / 2)
        //: btn.layer.masksToBounds = true
        btn.layer.masksToBounds = true
        //: btn.addTarget(self, action: #selector(rightButtonClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(hen), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var leftBtn: UIButton = {
    private lazy var leftBtn: UIButton = {
        //: let btn = UIButton()
        let btn = UIButton()
        //: btn.backgroundColor = .white
        btn.backgroundColor = .white
        //: btn.titleLabel?.font = UIFont.dorsum(fontSize: 16)
        btn.titleLabel?.font = UIFont.dorsum(fontSize: 16)
        //: btn.setTitleColor(.fromBuild(), for: .normal)
        btn.setTitleColor(.fromBuild(), for: .normal)
        //: btn.setTitle("Not for now".localized, for: .normal)
        btn.setTitle((String(kStr_frameTitle.prefix(4)) + "for now").localized, for: .normal)
        //: btn.layer.cornerRadius = actualWidth(w: 50/2)
        btn.layer.cornerRadius = originalScene(w: 50 / 2)
        //: btn.layer.masksToBounds = true
        btn.layer.masksToBounds = true
        //: btn.layer.borderWidth = 1
        btn.layer.borderWidth = 1
        //: btn.layer.borderColor = UIColor.fromBuild().cgColor
        btn.layer.borderColor = UIColor.fromBuild().cgColor
        //: btn.addTarget(self, action: #selector(leftButtonClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(track), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var rightBtn: UIButton = {
    private lazy var rightBtn: UIButton = {
        //: let btn = UIButton()
        let btn = UIButton()
        //: btn.backgroundColor = .fromBuild()
        btn.backgroundColor = .fromBuild()
        //: btn.titleLabel?.font = UIFont.dorsum(fontSize: 16)
        btn.titleLabel?.font = UIFont.dorsum(fontSize: 16)
        //: btn.setTitleColor(.white, for: .normal)
        btn.setTitleColor(.white, for: .normal)
        //: btn.setTitle("Turn on".localized, for: .normal)
        btn.setTitle((String(kStr_userName.suffix(7))).localized, for: .normal)
        //: btn.layer.cornerRadius = actualWidth(w: 50/2)
        btn.layer.cornerRadius = originalScene(w: 50 / 2)
        //: btn.layer.masksToBounds = true
        btn.layer.masksToBounds = true
        //: btn.addTarget(self, action: #selector(rightButtonClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(hen), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()
}

// MARK: - Event

//: extension TalkingLiveAlertView {
extension MakeAlertView {
    //: func show() {
    func clickFor() {
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
    @objc func willText() {
        //: popView?.dismissView()
        popView?.placePushAside()
        //: popView = nil
        popView = nil
    }

    //: @objc private func leftButtonClick() {
    @objc private func track() {
        //: dismiss()
        willText()
    }

    //: @objc private func rightButtonClick() {
    @objc private func hen() {
        //: dismiss()
        willText()
        //: rightBlcok?()
        rightBlcok?()
    }

    //: override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
    override func touchesBegan(_: Set<UITouch>, with _: UIEvent?) {
        //: if type != .freeVideo {
        if type != .freeVideo {
            //: dismiss()
            willText()
        }
    }
}

// MARK: - Layout

//: extension TalkingLiveAlertView {
extension MakeAlertView {
    // 刷新视图
    //: private func refreshUI() {
    private func pastAdd() {
        //: switch (type) {
        switch type {
        //: case .noFace:
        case .noFace:
            //: titleLab.text = "Live Certification off".localized
            titleLab.text = (String(kStr_actionData.prefix(5)) + "Certif" + kStr_tableText.replacingOccurrences(of: "from", with: "o") + "n of" + kStr_kitValue.replacingOccurrences(of: "size", with: "f")).localized
            //: contentLab.text = "Please make sure your face is always in the video screen".localized
            contentLab.text = String(bytes: kStr_existingText.map{toSearchion(bean: $0)}, encoding: .utf8)!.localized

        //: case .noNetwork:
        case .noNetwork:
            //: titleLab.text = "Live Certification off".localized
            titleLab.text = (String(kStr_actionData.prefix(5)) + "Certif" + kStr_tableText.replacingOccurrences(of: "from", with: "o") + "n of" + kStr_kitValue.replacingOccurrences(of: "size", with: "f")).localized
            //: contentLab.text = "Current network unavailable".localized
            contentLab.text = (String(kStr_skinTitle.suffix(7)) + String(kStr_extraByValue.prefix(6)) + "rk un" + kStr_toScriptValue.replacingOccurrences(of: "data", with: "la")).localized

        //: case .turnOnLive:
        case .turnOnLive:
            //: titleLab.text = "Live Reminder".localized
            titleLab.text = (String(kStr_storeTitle) + String(kStr_tableTitle)).localized
            //: contentLab.text = ""
            contentLab.text = ""

        //: case .freeVideo:
        case .freeVideo:
            //: titleLab.text = ""
            titleLab.text = ""
            //: contentLab.text = "You haven't used your free video opportunity yet, talk to someone first!".localized
            contentLab.text = String(bytes: kStr_managerName.map{$0^182}, encoding: .utf8)!.localized
        }
    }

    // 添加视图
    //: private func setupSubviews() {
    private func userSubviews() {
        //: self.addSubview(contentView)
        self.addSubview(contentView)
        //: contentView.addSubview(topIcon)
        contentView.addSubview(topIcon)
        //: contentView.addSubview(titleLab)
        contentView.addSubview(titleLab)
        //: contentView.addSubview(contentLab)
        contentView.addSubview(contentLab)
        //: if self.type == .turnOnLive {
        if self.type == .turnOnLive {
            //: contentView.addSubview(leftBtn)
            contentView.addSubview(leftBtn)
            //: contentView.addSubview(rightBtn)
            contentView.addSubview(rightBtn)
            //: } else {
        } else {
            //: contentView.addSubview(closeBtn)
            contentView.addSubview(closeBtn)
        }
    }

    // 添加约束
    //: private func setupSubViewsConstraint() {
    private func loadConstraint() {
        //: contentView.snp.makeConstraints { make in
        contentView.snp.makeConstraints { make in
            //: make.top.equalTo(self.snp.centerY).offset(-114)
            make.top.equalTo(self.snp.centerY).offset(-114)
            //: make.leading.equalTo(40)
            make.leading.equalTo(40)
            //: make.trailing.equalTo(-40)
            make.trailing.equalTo(-40)
        }

        //: topIcon.snp.makeConstraints { make in
        topIcon.snp.makeConstraints { make in
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.top.equalTo(-39)
            make.top.equalTo(-39)
            //: make.size.equalTo(CGSize(width: actualWidth(w: 101), height: actualWidth(w: 101)))
            make.size.equalTo(CGSize(width: originalScene(w: 101), height: originalScene(w: 101)))
        }

        //: titleLab.snp.makeConstraints { make in
        titleLab.snp.makeConstraints { make in
            //: make.top.equalTo(topIcon.snp.bottom).offset(8)
            make.top.equalTo(topIcon.snp.bottom).offset(8)
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.leading.equalTo(20)
            make.leading.equalTo(20)
            //: make.trailing.equalTo(-20)
            make.trailing.equalTo(-20)
        }

        //: contentLab.snp.makeConstraints { make in
        contentLab.snp.makeConstraints { make in
            //: make.top.equalTo(titleLab.snp.bottom).offset(10)
            make.top.equalTo(titleLab.snp.bottom).offset(10)
            //: make.centerX.leading.trailing.equalTo(titleLab)
            make.centerX.leading.trailing.equalTo(titleLab)
        }

        //: if self.type == .turnOnLive {
        if self.type == .turnOnLive {
            //: leftBtn.snp.makeConstraints { make in
            leftBtn.snp.makeConstraints { make in
                //: make.top.equalTo(titleLab.snp.bottom).offset(20)
                make.top.equalTo(titleLab.snp.bottom).offset(20)
                //: make.leading.equalTo(13)
                make.leading.equalTo(13)
                //: make.size.equalTo(CGSize(width: actualWidth(w: 130), height: actualWidth(w: 50)))
                make.size.equalTo(CGSize(width: originalScene(w: 130), height: originalScene(w: 50)))
            }
            //: rightBtn.snp.makeConstraints { make in
            rightBtn.snp.makeConstraints { make in
                //: make.top.size.equalTo(leftBtn)
                make.top.size.equalTo(leftBtn)
                //: make.trailing.equalTo(-13)
                make.trailing.equalTo(-13)
                //: make.bottom.equalToSuperview().offset(-20)
                make.bottom.equalToSuperview().offset(-20)
            }

            //: } else {
        } else {
            //: closeBtn.snp.makeConstraints { make in
            closeBtn.snp.makeConstraints { make in
                //: make.centerX.equalToSuperview()
                make.centerX.equalToSuperview()
                //: make.top.equalTo(contentLab.snp.bottom).offset(20)
                make.top.equalTo(contentLab.snp.bottom).offset(20)
                //: make.size.equalTo(CGSize(width: actualWidth(w: 203), height: actualWidth(w: 50)))
                make.size.equalTo(CGSize(width: originalScene(w: 203), height: originalScene(w: 50)))
                //: make.bottom.equalToSuperview().offset(-20)
                make.bottom.equalToSuperview().offset(-20)
            }
        }
    }
}
