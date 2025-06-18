
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let kStr_coverData:[UInt8] = [0x64,0x65,0x74,0x6e,0x65,0x6d,0x65,0x6c,0x70,0x6d,0x69,0x20,0x6e,0x65,0x65,0x62,0x20,0x74,0x6f,0x6e,0x20,0x73,0x61,0x68,0x20,0x29,0x3a,0x72,0x65,0x64,0x6f,0x63,0x28,0x74,0x69,0x6e,0x69]

/*: "#9256FF" :*/
fileprivate let kStr_expressShareBusinessTitle:String = "#9256FFstyle not in item modify"

/*: "bg_kb_tc" :*/
fileprivate let kStr_moreContent:String = "bg_kb_make let s"
fileprivate let kStr_imageName:String = "tcolor"

/*: "Start Live to work!" :*/
fileprivate let kStr_managerConversationText:String = "array kit lab view firstStart"
fileprivate let kStr_finishText:String = "to table var attribute to w"
fileprivate let kStr_postClearData:[Character] = ["o","r","k","!"]

/*: "Start Live" :*/
fileprivate let kStr_sizeName:[Character] = ["S","t","a","r","t"," ","L","i","v","e"]

/*: "#9610FF" :*/
fileprivate let kStr_policyName:String = "#96layer"
fileprivate let kStr_makeTitle:String = "line"

/*: "#8566FF" :*/
fileprivate let kStr_arrayValue:String = "#8"
fileprivate let kStr_modelContent:[Character] = ["5","6","6","F","F"]

/*: "btn_intimate_close" :*/
fileprivate let kStr_meetingContent:String = "model let reason greetbtn_int"
fileprivate let kStr_makeName:String = "imacapacitye"
fileprivate let kStr_appTitle:String = "_closeto make content class"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  ColorThen.swift
//  AbroadTalking
//
//  Created by Charlotte on 2023/8/14.
//

//: import UIKit
import UIKit

//: class TalkingLiveTipsPopUpView: UIView {
class ColorThen: UIView {
    //: var endBlock: (() -> Void)?
    var endBlock: (() -> Void)?

    //: var popView: TalkingPopView?
    var popView: BackgroundThen?

    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: setupSubviews()
        roundRecord()
        //: setupSubViewsConstraint()
        firstSetup()
    }

    //: @available(*, unavailable)
    @available(*, unavailable)
    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: kStr_coverData.reversed(), encoding: .utf8)!)
    }

    //: deinit {
    deinit {
        //: NotificationCenter.default.removeObserver(self)
        NotificationCenter.default.removeObserver(self)
    }

    // MARK: - Lazy Load

    //: private lazy var contentView: UIView = {
    private lazy var contentView: UIView = {
        //: let view = UIView()
        let view = UIView()
        //: view.isUserInteractionEnabled = true
        view.isUserInteractionEnabled = true
        //: view.backgroundColor = .white
        view.backgroundColor = .white
        //: view.layer.cornerRadius = 16
        view.layer.cornerRadius = 16
        //: view.layer.borderColor = UIColor(hex: "#9256FF")?.cgColor
        view.layer.borderColor = UIColor(hex: (String(kStr_expressShareBusinessTitle.prefix(7))))?.cgColor
        //: view.layer.borderWidth = 8
        view.layer.borderWidth = 8
        //: return view
        return view
        //: }()
    }()

    //: private lazy var topIcon: UIImageView = {
    private lazy var topIcon: UIImageView = {
        //: let iamg = UIImageView()
        let iamg = UIImageView()
        //: iamg.image = UIImage.bundleBy(name: "bg_kb_tc")
        iamg.image = UIImage.bundleBy(name: (String(kStr_moreContent.prefix(6)) + kStr_imageName.replacingOccurrences(of: "color", with: "c")))
        //: iamg.contentMode = .scaleAspectFill
        iamg.contentMode = .scaleAspectFill
        //: return iamg
        return iamg
        //: }()
    }()

    //: private lazy var titleLabel: UILabel = {
    private lazy var titleLabel: UILabel = {
        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.textColor = UIColor.appTitleColor()
        lab.textColor = UIColor.dataFormat()
        //: lab.font = UIFont.pingfangFont(type: .Medium, fontSize: 19)
        lab.font = UIFont.groupSize(type: .Medium, fontSize: 19)
        //: lab.text = "Start Live to work!".localized
        lab.text = (String(kStr_managerConversationText.suffix(5)) + " Live" + String(kStr_finishText.suffix(5)) + String(kStr_postClearData)).localized
        //: lab.textAlignment = .center
        lab.textAlignment = .center
        //: return lab
        return lab
        //: }()
    }()

    //: private lazy var startLiveBtn: UIButton = {
    private lazy var startLiveBtn: UIButton = {
        //: let btn = UIButton(type: .custom)
        let btn = UIButton(type: .custom)
        //: btn.setTitle("Start Live".localized, for: .normal)
        btn.setTitle((String(kStr_sizeName)).localized, for: .normal)
        //: btn.titleLabel?.font = UIFont.pingfangFont(type: .Medium, fontSize: 18)
        btn.titleLabel?.font = UIFont.groupSize(type: .Medium, fontSize: 18)
        //: btn.setTitleColor(.white, for: .normal)
        btn.setTitleColor(.white, for: .normal)
        //: let colors = [UIColor(hex: "#9610FF")!.cgColor, UIColor(hex: "#8566FF")!.cgColor]
        let colors = [UIColor(hex: (kStr_policyName.replacingOccurrences(of: "layer", with: "10") + kStr_makeTitle.replacingOccurrences(of: "line", with: "FF")))!.cgColor, UIColor(hex: (kStr_arrayValue.capitalized + String(kStr_modelContent)))!.cgColor]
        //: btn.setBackgroundImage(UIImage.imageGradientColor(colors: colors, size: CGSize(width: 203, height: 50)), for: .normal)
        btn.setBackgroundImage(UIImage.upTo(colors: colors, size: CGSize(width: 203, height: 50)), for: .normal)
        //: btn.layer.cornerRadius = 25
        btn.layer.cornerRadius = 25
        //: btn.clipsToBounds = true
        btn.clipsToBounds = true
        //: btn.addTarget(self, action: #selector(startLiveBtnClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(windowClick), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var closeBtn: UIButton = {
    private lazy var closeBtn: UIButton = {
        //: let btn = UIButton(type: .custom)
        let btn = UIButton(type: .custom)
        //: btn.setImage(UIImage.bundleBy(name: "btn_intimate_close"), for: .normal)
        btn.setImage(UIImage.bundleBy(name: (String(kStr_meetingContent.suffix(7)) + kStr_makeName.replacingOccurrences(of: "capacity", with: "t") + String(kStr_appTitle.prefix(6)))), for: .normal)
        //: btn.addTarget(self, action: #selector(closeBtnClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(messageTo), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()
}

// MARK: - Event

//: extension TalkingLiveTipsPopUpView {
extension ColorThen {
    /// 开始直播按钮点击事件
    //: @objc private func startLiveBtnClick() {
    @objc private func windowClick() {
        //: dismiss()
        poise()
        //: NotificationCenter.default.post(name: LIVE_NEED_OPEN_NOTIFICATION, object: nil)
        NotificationCenter.default.post(name: kLet_meTitle, object: nil)
    }

    /// 关闭按钮点击事件
    //: @objc private func closeBtnClick() {
    @objc private func messageTo() {
        //: dismiss()
        poise()
    }

    //: func show() {
    func keyTheme() {
        //: popView = TalkingPopView(frame: UIScreen.main.bounds)
        popView = BackgroundThen(frame: UIScreen.main.bounds)
        //: popView?.initWithView(view: self)
        popView?.toViewText(view: self)
        //: popView?.showInView(view: TableMacroDefine.getWindow())
        popView?.beyondAllAdjust(view: TableMacroDefine.oeilDeBoeufView())
        //: popView?.isRemoveTapGes = true
        popView?.isRemoveTapGes = true
    }

    //: @objc private func dismiss() {
    @objc private func poise() {
        //: endBlock?()
        endBlock?()
        //: popView?.dismissView()
        popView?.placePushAside()
        //: popView = nil
        popView = nil
    }
}

// MARK: - Layout

//: extension TalkingLiveTipsPopUpView {
extension ColorThen {
    /// 添加视图
    //: private func setupSubviews() {
    private func roundRecord() {
        //: addSubview(contentView)
        addSubview(contentView)
        //: contentView.addSubview(topIcon)
        contentView.addSubview(topIcon)
        //: contentView.addSubview(closeBtn)
        contentView.addSubview(closeBtn)
        //: contentView.addSubview(titleLabel)
        contentView.addSubview(titleLabel)
        //: contentView.addSubview(startLiveBtn)
        contentView.addSubview(startLiveBtn)
        //: addSubview(closeBtn)
        addSubview(closeBtn)
    }

    /// 添加约束
    //: private func setupSubViewsConstraint() {
    private func firstSetup() {
        //: contentView.snp.makeConstraints { make in
        contentView.snp.makeConstraints { make in
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.centerY.equalToSuperview().offset(-actualWidth(w: 30))
            make.centerY.equalToSuperview().offset(-originalScene(w: 30))
            //: make.size.equalTo(CGSize(width: actualWidth(w: 297), height: actualWidth(w: 263)))
            make.size.equalTo(CGSize(width: originalScene(w: 297), height: originalScene(w: 263)))
        }

        //: topIcon.snp.makeConstraints { make in
        topIcon.snp.makeConstraints { make in
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.top.equalTo(actualWidth(w: 28))
            make.top.equalTo(originalScene(w: 28))
            //: make.size.equalTo(CGSize(width: actualWidth(w: 100), height: actualWidth(w: 100)))
            make.size.equalTo(CGSize(width: originalScene(w: 100), height: originalScene(w: 100)))
        }

        //: titleLabel.snp.makeConstraints { make in
        titleLabel.snp.makeConstraints { make in
            //: make.top.equalTo(topIcon.snp.bottom).offset(actualWidth(w: 10))
            make.top.equalTo(topIcon.snp.bottom).offset(originalScene(w: 10))
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.height.equalTo(28)
            make.height.equalTo(28)
        }

        //: startLiveBtn.snp.makeConstraints { make in
        startLiveBtn.snp.makeConstraints { make in
            //: make.bottom.equalTo(-actualWidth(w: 28))
            make.bottom.equalTo(-originalScene(w: 28))
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.width.equalTo(203)
            make.width.equalTo(203)
            //: make.height.equalTo(50)
            make.height.equalTo(50)
        }

        //: closeBtn.snp.makeConstraints { make in
        closeBtn.snp.makeConstraints { make in
            //: make.top.equalTo(contentView.snp.bottom).offset(30)
            make.top.equalTo(contentView.snp.bottom).offset(30)
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
        }
    }
}
