
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let kStr_loadData:[UInt8] = [0x16,0x11,0x16,0xb,0x57,0x1c,0x10,0x1b,0x1a,0xd,0x45,0x56,0x5f,0x17,0x1e,0xc,0x5f,0x11,0x10,0xb,0x5f,0x1d,0x1a,0x1a,0x11,0x5f,0x16,0x12,0xf,0x13,0x1a,0x12,0x1a,0x11,0xb,0x1a,0x1b]

/*: "icon_translation" :*/
fileprivate let kStr_indexTitle:[Character] = ["i","c","o","n","_","t"]
fileprivate let kStr_valueName:String = "raavailable"

/*: "English" :*/
fileprivate let kStr_cellTitle:String = "path rootEnglis"
fileprivate let kStr_viewAdjustData:String = "send"

/*: "icon_translation_go" :*/
fileprivate let kStr_centerData:[Character] = ["i","c","o","n","_","t","r","a"]
fileprivate let kStr_pathValue:[Character] = ["n","s","l","a","t","i","o","n","_","g","o"]

/*: "Trans" :*/
fileprivate let kStr_showText:String = "message lab status letTrans"

/*: "targetText" :*/
fileprivate let kStr_giftLabelValue:String = "TARGE"
fileprivate let kStr_cornerContent:String = "tTextgift let camera else"

/*: "en" :*/
fileprivate let kStr_makeValue:String = "textn"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  WithBlockView.swift
//  AbroadTalking
//
//  Created by young on 2023/7/4.
//

//: import NaturalLanguage
import NaturalLanguage
//: import UIKit
import UIKit

//: class TalkingSelectTranslationView: UIView {
class WithBlockView: UIView {
    //: var transBlock: ((_ succeed: Bool, _ text: String) -> Void)?
    var transBlock: ((_ succeed: Bool, _ text: String) -> Void)? // 翻译结果Block
    //: private var checkTransStr = ""                                // 需要翻译的文本
    private var checkTransStr = "" // 需要翻译的文本

    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: backgroundColor = .white
        backgroundColor = .white
        //: setupSubviews()
        setupOff()
        //: setupSubViewsConstraint()
        forefrontConstraint()
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: kStr_loadData.map{$0^127}, encoding: .utf8)!)
    }

    // MARK: - Lazy Load

    //: private lazy var leftBtn: TalkingButton = {
    private lazy var leftBtn: OverdoTalkingButton = {
        //: let btn = TalkingButton()
        let btn = OverdoTalkingButton()
        //: btn.setImage(UIImage.bundleBy(name: "icon_translation"), for: .normal)
        btn.setImage(UIImage.bundleBy(name: (String(kStr_indexTitle) + kStr_valueName.replacingOccurrences(of: "available", with: "ns") + "lation")), for: .normal)
        //: btn.titleLabel?.font = .pingfangFont(type: .Regular, fontSize: 14)
        btn.titleLabel?.font = .groupSize(type: .Regular, fontSize: 14)
        //: btn.setTitleColor(UIColor.appValueColor(), for: .normal)
        btn.setTitleColor(UIColor.priority(), for: .normal)
        //: btn.setTitle("English".localized, for: .normal)
        btn.setTitle((String(kStr_cellTitle.suffix(6)) + kStr_viewAdjustData.replacingOccurrences(of: "send", with: "h")).localized, for: .normal)
        //: btn.imageAlignment = .left
        btn.imageAlignment = .left
        //: btn.spaceBetweenTitleAndImage = 5
        btn.spaceBetweenTitleAndImage = 5
        //: btn.isEnabled = false
        btn.isEnabled = false
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var rightBtn: TalkingButton = {
    private lazy var rightBtn: OverdoTalkingButton = {
        //: let btn = TalkingButton()
        let btn = OverdoTalkingButton()
        //: let image = UIImage.bundleBy(name: "icon_translation_go").withTintColor(.fromBuild())
        let image = UIImage.bundleBy(name: (String(kStr_centerData) + String(kStr_pathValue))).withTintColor(.fromBuild())
        //: btn.setImage(image, for: .normal)
        btn.setImage(image, for: .normal)
        //: btn.titleLabel?.font = .pingfangFont(type: .Medium, fontSize: 14)
        btn.titleLabel?.font = .groupSize(type: .Medium, fontSize: 14)
        //: btn.setTitleColor(UIColor.fromBuild(), for: .normal)
        btn.setTitleColor(UIColor.fromBuild(), for: .normal)
        //: btn.setTitle("Trans".localized, for: .normal)
        btn.setTitle((String(kStr_showText.suffix(5))).localized, for: .normal)
        //: btn.imageAlignment = .right
        btn.imageAlignment = .right
        //: btn.spaceBetweenTitleAndImage = 3
        btn.spaceBetweenTitleAndImage = 3
        //: btn.addTarget(self, action: #selector(transButtonClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(userClick), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()
}

// MARK: - 请求数据

//: extension TalkingSelectTranslationView {
extension WithBlockView {
    /// 翻译文本内容
    //: private func req_translateText() {
    private func cellTitle() {
        //: UpsetCountRequestTool.req_translateText(text: checkTransStr) { succeed, result, errorModel in
        UpsetCountRequestTool.repeatFinishCompletion(text: checkTransStr) { succeed, result, _ in
            //: guard succeed else {
            guard succeed else {
                //: self.transBlock?(succeed, "")
                self.transBlock?(succeed, "")
                //: return
                return
            }

            //: let json = JSON(result ?? [String: Any]())
            let json = JSON(result ?? [String: Any]())
            //: let content = json["targetText"].stringValue
            let content = json[(kStr_giftLabelValue.lowercased() + String(kStr_cornerContent.prefix(5)))].stringValue
            //: self.transBlock?(succeed, content)
            self.transBlock?(succeed, content)
        }
    }
}

// MARK: - Event

//: extension TalkingSelectTranslationView {
extension WithBlockView {
    /// 检测输入内容是否为英文
    /// - Parameter inputText: 输入内容
    /// - Returns: 结果
    //: func checkInputLanguage(_ inputText: String) -> Bool {
    func canvasUponLanguage(_ inputText: String) -> Bool {
        //: checkTransStr = inputText.trimmingCharacters(in: .whitespaces)
        checkTransStr = inputText.trimmingCharacters(in: .whitespaces)
        //: guard checkTransStr.count > 0 else {
        guard checkTransStr.count > 0 else {
            //: return true
            return true
        }
        //: let languageRecognizer = NLLanguageRecognizer()
        let languageRecognizer = NLLanguageRecognizer()
        //: languageRecognizer.processString(inputText)
        languageRecognizer.processString(inputText)
        //: let language = languageRecognizer.dominantLanguage?.rawValue
        let language = languageRecognizer.dominantLanguage?.rawValue
        //: return language == "en"
        return language == "en"
    }

    /// 翻译按钮点击事件
    //: @objc private func transButtonClick() {
    @objc private func userClick() {
        //: self.req_translateText()
        self.cellTitle()
    }
}

// MARK: - Layout

//: extension TalkingSelectTranslationView {
extension WithBlockView {
    /// 添加视图
    //: private func setupSubviews() {
    private func setupOff() {
        //: self.addSubview(leftBtn)
        self.addSubview(leftBtn)
        //: self.addSubview(rightBtn)
        self.addSubview(rightBtn)
    }

    /// 添加约束
    //: private func setupSubViewsConstraint() {
    private func forefrontConstraint() {
        //: leftBtn.snp.makeConstraints { make in
        leftBtn.snp.makeConstraints { make in
            //: make.leading.equalTo(8)
            make.leading.equalTo(8)
            //: make.top.equalTo(9)
            make.top.equalTo(9)
            //: make.height.equalTo(17)
            make.height.equalTo(17)
            //: make.width.equalTo(70)
            make.width.equalTo(70)
        }
        //: rightBtn.snp.makeConstraints { make in
        rightBtn.snp.makeConstraints { make in
            //: make.trailing.equalTo(-10)
            make.trailing.equalTo(-10)
            //: make.centerY.height.equalTo(leftBtn)
            make.centerY.height.equalTo(leftBtn)
        }
    }
}
