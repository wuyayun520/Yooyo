
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let kStr_topValue:[UInt8] = [0x64,0x65,0x74,0x6e,0x65,0x6d,0x65,0x6c,0x70,0x6d,0x69,0x20,0x6e,0x65,0x65,0x62,0x20,0x74,0x6f,0x6e,0x20,0x73,0x61,0x68,0x20,0x29,0x3a,0x72,0x65,0x64,0x6f,0x63,0x28,0x74,0x69,0x6e,0x69]

/*: "Edit Title" :*/
fileprivate let kStr_inputValue:String = "Edit Tiwhite for m if"
fileprivate let kStr_editValue:String = "tlafter"

/*: "0/ :*/
fileprivate let kStr_activeData:String = "0/"

/*: "Finish" :*/
fileprivate let kStr_showText:String = "return true equal cellFinish"

/*: "btn_delete" :*/
fileprivate let kStr_intervalValue:String = "btn_aspect model"
fileprivate let kStr_styleData:String = "makelete"

/*: / :*/
fileprivate let kStr_countVoiceTitle:String = "model"

/*: "\n" :*/
fileprivate let kStr_viewToTitle:String = "\n"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  EditNameView.swift
//  AbroadTalking
//
//  Created by Charlotte on 2023/2/15.
//

//: import UIKit
import UIKit

//: typealias TextUpload = (_ text: String) -> Void
typealias TextUpload = (_ text: String) -> Void

//: class TalkingGreetEditTextView: UIView {
class EditNameView: UIView {
    //: var textUpload: TextUpload?
    var textUpload: TextUpload?
    //: var popView: TalkingPopView?
    var popView: BackgroundThen?
    //: let lengthLimit = 60
    let lengthLimit = 60

    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: self.setupSubviews()
        self.limit()
        //: self.setupSubViewsConstraint()
        self.noneLine()
        //: let tapGesture = UITapGestureRecognizer(target: self, action: #selector(dismissView))
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(barClick))
        //: self.addGestureRecognizer(tapGesture)
        self.addGestureRecognizer(tapGesture)
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: kStr_topValue.reversed(), encoding: .utf8)!)
    }

    //: deinit {
    deinit {}

    // 懒加载初始化

    //: lazy var contentView: UIView = {
    lazy var contentView: UIView = {
        //: let view = UIView.init()
        let view = UIView()
        //: view.backgroundColor = .white
        view.backgroundColor = .white
        //: view.layer.cornerRadius = 8
        view.layer.cornerRadius = 8
        //: view.layer.masksToBounds = true
        view.layer.masksToBounds = true
        //: return view
        return view
        //: }()
    }()

    //: lazy var titleLabel: UILabel = {
    lazy var titleLabel: UILabel = {
        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.textColor = UIColor.appTitleColor()
        lab.textColor = UIColor.dataFormat()
        //: lab.font = UIFont.pingfangFont(type: .Semibold, fontSize: 20)
        lab.font = UIFont.groupSize(type: .Semibold, fontSize: 20)
        //: lab.numberOfLines = 0
        lab.numberOfLines = 0
        //: lab.text = "Edit Title".localized
        lab.text = (String(kStr_inputValue.prefix(7)) + kStr_editValue.replacingOccurrences(of: "after", with: "e")).localized
        //: lab.textAlignment = .center
        lab.textAlignment = .center
        //: return lab
        return lab
        //: }()
    }()

    //: lazy var numberLB: UILabel = {
    lazy var numberLB: UILabel = {
        //: let LB = UILabel.init()
        let LB = UILabel()
        //: LB.textColor = UIColor.statusMin()
        LB.textColor = UIColor.statusMin()
        //: LB.font = UIFont.pingfangFont(type: .Regular, fontSize: 16)
        LB.font = UIFont.groupSize(type: .Regular, fontSize: 16)
        //: LB.text = "0/\(lengthLimit)"
        LB.text = "0/\(lengthLimit)"
        //: LB.textAlignment = .right
        LB.textAlignment = .right
        //: return LB
        return LB
        //: }()
    }()

    //: lazy var inputTView: TalkingTextView = {
    lazy var inputTView: VoiceTextView = {
        //: let textView = TalkingTextView()
        let textView = VoiceTextView()
        //: textView.placeholder = ""
        textView.placeholder = ""
        //: textView.PlaceholderInsets = UIEdgeInsets(top: 10, left: 10, bottom: 10, right: 10)
        textView.PlaceholderInsets = UIEdgeInsets(top: 10, left: 10, bottom: 10, right: 10)
        //: textView.font = UIFont.pingfangFont(type: .Regular, fontSize: 16)
        textView.font = UIFont.groupSize(type: .Regular, fontSize: 16)
        //: textView.textColor = UIColor.appTitleColor()
        textView.textColor = UIColor.dataFormat()
        //: textView.textContainer.maximumNumberOfLines = 0
        textView.textContainer.maximumNumberOfLines = 0
        //: textView.textAlignment = .left
        textView.textAlignment = .left
        //: if LanguageManager.shared.direction == .rightToLeft {
        if DeleteClientThen.shared.direction == .rightToLeft {
            //: textView.textAlignment = .right
            textView.textAlignment = .right
        }
        //: textView.delegate = self
        textView.delegate = self
        //: textView.clipsToBounds = true
        textView.clipsToBounds = true
        //: textView.layer.cornerRadius = 4
        textView.layer.cornerRadius = 4
        //: textView.returnKeyType = UIReturnKeyType.done
        textView.returnKeyType = UIReturnKeyType.done
        //: textView.bounces = false
        textView.bounces = false
        //: textView.backgroundColor = .appBgColor()
        textView.backgroundColor = .bottomValue()
        //: return textView
        return textView
        //: }()
    }()

    //: private lazy var finishBtn: UIButton = {
    private lazy var finishBtn: UIButton = {
        //: let btn = UIButton.init(type: .custom)
        let btn = UIButton(type: .custom)
        //: btn.setTitle("Finish".localized, for: .normal)
        btn.setTitle((String(kStr_showText.suffix(6))).localized, for: .normal)
        //: btn.titleLabel?.font = UIFont.pingfangFont(type: .Medium, fontSize: 17)
        btn.titleLabel?.font = UIFont.groupSize(type: .Medium, fontSize: 17)
        //: btn.setTitleColor(.white, for: .normal)
        btn.setTitleColor(.white, for: .normal)
        //: btn.setBackgroundImage(UIImage.imageGradientColor(colors: UIColor.appGradientColor(), size: CGSize(width: 267, height: 50)), for: .normal)
        btn.setBackgroundImage(UIImage.upTo(colors: UIColor.thirdColor(), size: CGSize(width: 267, height: 50)), for: .normal)
        //: btn.layer.cornerRadius = 25
        btn.layer.cornerRadius = 25
        //: btn.clipsToBounds = true
        btn.clipsToBounds = true
        //: btn.addTarget(self, action: #selector(finishBtnClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(surcharge), for: .touchUpInside)
        //: btn.isEnabled = false
        btn.isEnabled = false
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var closeBtn: UIButton = {
    private lazy var closeBtn: UIButton = {
        //: let btn = UIButton.init(type: .custom)
        let btn = UIButton(type: .custom)
        //: btn.setImage(UIImage.bundleBy(name: "btn_delete"), for: .normal)
        btn.setImage(UIImage.bundleBy(name: (String(kStr_intervalValue.prefix(4)) + kStr_styleData.replacingOccurrences(of: "make", with: "de"))), for: .normal)
        //: btn.addTarget(self, action: #selector(closeBtnClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(clickImmediate), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()
}

//: extension TalkingGreetEditTextView {
extension EditNameView {
    //: @objc func dismissView() {
    @objc func barClick() {}

    //: @objc func finishBtnClick() {
    @objc func surcharge() {
        //: dismiss()
        voxBind()
        //: if textUpload != nil {
        if textUpload != nil {
            //: textUpload!(inputTView.text)
            textUpload!(inputTView.text)
        }
    }

    //: @objc func closeBtnClick() {
    @objc func clickImmediate() {
        //: dismiss()
        voxBind()
    }

    //: func show() {
    func fromBy() {
        //: popView = TalkingPopView.init(frame: UIScreen.main.bounds)
        popView = BackgroundThen(frame: UIScreen.main.bounds)
        //: popView?.initWithView(view: self)
        popView?.toViewText(view: self)
        //: popView?.showInView(view: TableMacroDefine.getWindow())
        popView?.beyondAllAdjust(view: TableMacroDefine.oeilDeBoeufView())
    }

    //: func dismiss() {
    func voxBind() {
        //: popView?.dismissView()
        popView?.placePushAside()
        //: popView = nil
        popView = nil
    }
}

// MARK: - UITextViewDelegate

//: extension TalkingGreetEditTextView: UITextViewDelegate {
extension EditNameView: UITextViewDelegate {
    //: public func textViewDidChange(_ textView: UITextView) {
    public func textViewDidChange(_ textView: UITextView) {
        //: if textView.text.count>0 {
        if textView.text.count > 0 {
            //: finishBtn.isEnabled = true
            finishBtn.isEnabled = true
            //: } else {
        } else {
            //: finishBtn.isEnabled = false
            finishBtn.isEnabled = false
        }
        //: if textView.text.count > lengthLimit {
        if textView.text.count > lengthLimit {
            // 获得已输出字数与正输入字母数
            //: let selectRange = textView.markedTextRange
            let selectRange = textView.markedTextRange

            // 获取高亮部分 － 如果有联想词则解包成功
            //: if let selectRange = selectRange {
            if let selectRange = selectRange {
                //: let position =  textView.position(from: (selectRange.start), offset: 0)
                let position = textView.position(from: selectRange.start, offset: 0)
                //: if (position != nil) {
                if position != nil {
                    //: return
                    return
                }
            }

            //: let textContent = textView.text ?? ""
            let textContent = textView.text ?? ""
            //: let textNum = textContent.count
            let textNum = textContent.count

            // 截取
            //: if textNum > lengthLimit && lengthLimit > 0 {
            if textNum > lengthLimit && lengthLimit > 0 {
                //: textView.text = string_prefix(index: lengthLimit, text: textContent)
                textView.text = offline(index: lengthLimit, text: textContent)
            }
        }
        //: numberLB.text =  "\(textView.text.count)/\(lengthLimit)"
        numberLB.text = "\(textView.text.count)/\(lengthLimit)"
    }

    //: public func textViewShouldBeginEditing(_ textView: UITextView) -> Bool {
    public func textViewShouldBeginEditing(_: UITextView) -> Bool {
        //: numberLB.isHidden = false
        numberLB.isHidden = false
        //: return true
        return true
    }

    //: public func textViewDidEndEditing(_ textView: UITextView) {
    public func textViewDidEndEditing(_ textView: UITextView) {
        //: if textView.text.isEmpty {
        if textView.text.isEmpty {
            //: numberLB.isHidden = false
            numberLB.isHidden = false
            //: } else {
        } else {
            //: numberLB.isHidden = true
            numberLB.isHidden = true
        }
    }

    //: public func textView(_ textView: UITextView, shouldChangeTextIn range: NSRange, replacementText text: String) -> Bool {
    public func textView(_ textView: UITextView, shouldChangeTextIn _: NSRange, replacementText text: String) -> Bool {
        //: if textView.returnKeyType == .done {
        if textView.returnKeyType == .done {
            //: if text == "\n" {
            if text == "\n" {
                //: textView.resignFirstResponder()
                textView.resignFirstResponder()
            }
            //: return true
            return true
        }
        //: return true
        return true
    }

    // 字符串的截取 从头截取到指定index
    //: private func string_prefix(index: Int, text: String) -> String {
    private func offline(index: Int, text: String) -> String {
        //: if text.count <= index {
        if text.count <= index {
            //: return text
            return text
            //: } else {
        } else {
            //: let index = text.index(text.startIndex, offsetBy: index)
            let index = text.index(text.startIndex, offsetBy: index)
            //: let str = text.prefix(upTo: index)
            let str = text.prefix(upTo: index)
            //: return String(str)
            return String(str)
        }
    }
}

//: extension TalkingGreetEditTextView {
extension EditNameView {
    // 添加视图
    //: private func setupSubviews() {
    private func limit() {
        //: self.addSubview(contentView)
        self.addSubview(contentView)
        //: contentView.addSubview(titleLabel)
        contentView.addSubview(titleLabel)
        //: contentView.addSubview(closeBtn)
        contentView.addSubview(closeBtn)
        //: contentView.addSubview(inputTView)
        contentView.addSubview(inputTView)
        //: contentView.addSubview(finishBtn)
        contentView.addSubview(finishBtn)
        //: contentView.addSubview(numberLB)
        contentView.addSubview(numberLB)
        //: contentView.bringSubviewToFront(numberLB)
        contentView.bringSubviewToFront(numberLB)
    }

    // 添加约束
    //: private func setupSubViewsConstraint() {
    private func noneLine() {
        //: contentView.snp.makeConstraints { make in
        contentView.snp.makeConstraints { make in
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.top.equalTo(100)
            make.top.equalTo(100)
            //: make.size.equalTo(CGSize.init(width: actualWidth(w: 297), height: actualWidth(w: 320)))
            make.size.equalTo(CGSize(width: originalScene(w: 297), height: originalScene(w: 320)))
        }

        //: closeBtn.snp.makeConstraints { make in
        closeBtn.snp.makeConstraints { make in
            //: make.top.equalTo(13)
            make.top.equalTo(13)
            //: make.trailing.equalTo(-13)
            make.trailing.equalTo(-13)
            //: make.size.equalTo(CGSize.init(width: 18, height: 18))
            make.size.equalTo(CGSize(width: 18, height: 18))
        }

        //: titleLabel.snp.makeConstraints { make in
        titleLabel.snp.makeConstraints { make in
            //: make.top.equalTo(30)
            make.top.equalTo(30)
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
        }

        //: finishBtn.snp.makeConstraints { make in
        finishBtn.snp.makeConstraints { make in
            //: make.bottom.equalTo(-18)
            make.bottom.equalTo(-18)
            //: make.leading.equalTo(20)
            make.leading.equalTo(20)
            //: make.trailing.equalTo(-20)
            make.trailing.equalTo(-20)
            //: make.height.equalTo(50)
            make.height.equalTo(50)
        }

        //: inputTView.snp.makeConstraints { make in
        inputTView.snp.makeConstraints { make in
            //: make.top.equalTo(titleLabel.snp.bottom).offset(14)
            make.top.equalTo(titleLabel.snp.bottom).offset(14)
            //: make.leading.equalTo(20)
            make.leading.equalTo(20)
            //: make.trailing.equalTo(-20)
            make.trailing.equalTo(-20)
            //: make.bottom.equalTo(finishBtn.snp.top).offset(-24)
            make.bottom.equalTo(finishBtn.snp.top).offset(-24)
        }

        //: numberLB.snp.makeConstraints { make in
        numberLB.snp.makeConstraints { make in
            //: make.trailing.equalTo(inputTView.snp.trailing).offset(-16)
            make.trailing.equalTo(inputTView.snp.trailing).offset(-16)
            //: make.height.equalTo(20)
            make.height.equalTo(20)
            //: make.bottom.equalTo(inputTView.snp.bottom).offset(-12)
            make.bottom.equalTo(inputTView.snp.bottom).offset(-12)
        }
    }
}
