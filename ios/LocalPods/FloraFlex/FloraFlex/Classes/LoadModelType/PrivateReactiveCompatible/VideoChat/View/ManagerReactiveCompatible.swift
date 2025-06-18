
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let kStr_clearData:[UInt8] = [0x85,0x8a,0x85,0x90,0x44,0x7f,0x8b,0x80,0x81,0x8e,0x56,0x45,0x3c,0x84,0x7d,0x8f,0x3c,0x8a,0x8b,0x90,0x3c,0x7e,0x81,0x81,0x8a,0x3c,0x85,0x89,0x8c,0x88,0x81,0x89,0x81,0x8a,0x90,0x81,0x80]

fileprivate func deadlineKit(tap num: UInt8) -> UInt8 {
    let value = Int(num) - 28
    if value < 0 {
        return UInt8(value + 256)
    } else {
        return UInt8(value)
    }
}

/*: "btn_chat_send_nor" :*/
fileprivate let kStr_cornerTitle:[Character] = ["b","t","n","_","c","h","a"]
fileprivate let kStr_data:String = "color equal else rawt_se"

/*: "btn_chat_send_dis" :*/
fileprivate let kStr_titleDomainData:[Character] = ["b","t","n","_","c","h","a","t","_"]
fileprivate let kStr_interactionQuoteArrayData:String = "smakend"

/*: "Send" :*/
fileprivate let kStr_firstTitle:String = "image view effectSend"

/*: "Say something...     " :*/
fileprivate let kStr_contentWarningValue:String = "Say error data false info"
fileprivate let kStr_textData:String = "index morething..."
fileprivate let kStr_applicationMakeEqualData:[Character] = [" "," "," "," "," "]

/*: "Can't send blank message" :*/
fileprivate let kStr_giftAllValue:String = "Can\'t"
fileprivate let kStr_voiceContent:[Character] = [" ","s","e","n","d"," ","b","l","a"]
fileprivate let kStr_managerTitle:String = "nk mtype by"

/*: "\n" :*/
fileprivate let kStr_pushColorText:[Character] = ["\n"]

/*: "contentSize" :*/
fileprivate let kStr_nameMName:[Character] = ["c","o","n","t","e","n","t","S"]
fileprivate let kStr_contentSessionTitle:String = "viewze"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  ManagerReactiveCompatible.swift
//  AbroadTalking
//
//  Created by Charlotte on 2023/7/7.
//

//: import UIKit
import UIKit

//: protocol TalkingVideoCallInputViewDelegate: NSObject {
protocol InputDelegateStyleVideoTalkingViewThen: NSObject {
    //: func func__sendTextMsg(msgStr: String)
    func errorImage(msgStr: String)

    //: func heightToBottomChanged(heightToBottom: CGFloat)
    func buttonBottom(heightToBottom: CGFloat)

    //: func inputViewHeightChanged(height: CGFloat)
    func upHeight(height: CGFloat)
}

//: class TalkingVideoCallInputView: UIView {
class ManagerReactiveCompatible: UIView {
    //: let textMaxLengthLimit = 255
    let textMaxLengthLimit = 255
    //: open weak var delegate: TalkingVideoCallInputViewDelegate?
    open weak var delegate: InputDelegateStyleVideoTalkingViewThen?
    //: private let disposeBag = DisposeBag()
    private let disposeBag = DisposeBag()
    //: private var inputAttr = [NSAttributedString.Key: Any]()
    private var inputAttr = [NSAttributedString.Key: Any]()

    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: setupSubviews()
        infoHandleSubviews()
        //: setupSubViewsConstraint()
        addRange()
        //: bindInteraction()
        nameBindMagnitudeeraction()
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: kStr_clearData.map{deadlineKit(tap: $0)}, encoding: .utf8)!)
    }

    //: lazy var sendBtn: UIButton = {
    lazy var sendBtn: UIButton = {
        //: let btn = UIButton.init()
        let btn = UIButton()
        //: btn.setBackgroundImage(UIImage.bundleBy(name: "btn_chat_send_nor"), for: .normal)
        btn.setBackgroundImage(UIImage.bundleBy(name: (String(kStr_cornerTitle) + String(kStr_data.suffix(4)) + "nd_nor")), for: .normal)
        //: btn.setBackgroundImage(UIImage.bundleBy(name: "btn_chat_send_nor"), for: .highlighted)
        btn.setBackgroundImage(UIImage.bundleBy(name: (String(kStr_cornerTitle) + String(kStr_data.suffix(4)) + "nd_nor")), for: .highlighted)
        //: btn.setBackgroundImage(UIImage.bundleBy(name: "btn_chat_send_dis"), for: .disabled)
        btn.setBackgroundImage(UIImage.bundleBy(name: (String(kStr_titleDomainData) + kStr_interactionQuoteArrayData.replacingOccurrences(of: "make", with: "e") + "_dis")), for: .disabled)
        //: btn.setTitle("Send".localized, for: .normal)
        btn.setTitle((String(kStr_firstTitle.suffix(4))).localized, for: .normal)
        //: btn.titleLabel?.font = UIFont.dorsum(fontSize: 15)
        btn.titleLabel?.font = UIFont.dorsum(fontSize: 15)
        //: btn.setTitleColor(.white, for: .normal)
        btn.setTitleColor(.white, for: .normal)
        //: btn.addTarget(self, action: #selector(commentBtnClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(noteGift), for: .touchUpInside)
        //: btn.isEnabled = false
        btn.isEnabled = false
        //: return btn
        return btn
        //: }()
    }()

    //: lazy var contentView: UIView = {
    lazy var contentView: UIView = {
        //: let view = UIView.init()
        let view = UIView()
        //: view.backgroundColor = UIColor.white
        view.backgroundColor = UIColor.white
        //: return view
        return view

        //: }()
    }()

    //: lazy var inputTextView: InputTextView = {
    lazy var inputTextView: TextNameView = {
        //: let input = InputTextView()
        let input = TextNameView()
        //: input.font = UIFont.pingfangFont(type: .Regular, fontSize: 15)
        input.font = UIFont.groupSize(type: .Regular, fontSize: 15)
        //: input.placeholderColor = UIColor.init(red: 153/255.0, green: 153/255.0, blue: 153/255.0, alpha: 0.8)
        input.placeholderColor = UIColor(red: 153 / 255.0, green: 153 / 255.0, blue: 153 / 255.0, alpha: 0.8)
        //: input.placeholder = "Say something...     ".localized
        input.placeholder = (String(kStr_contentWarningValue.prefix(4)) + "some" + String(kStr_textData.suffix(8)) + String(kStr_applicationMakeEqualData)).localized
        //: input.returnKeyType = .send
        input.returnKeyType = .send
        //: input.scrollsToTop = false
        input.scrollsToTop = false
        //: input.delegate = self
        input.delegate = self
        //: input.backgroundColor = UIColor.white
        input.backgroundColor = UIColor.white
        //: input.textColor = UIColor.appTitleColor()
        input.textColor = UIColor.dataFormat()
        //: self.inputAttr = [NSAttributedString.Key.foregroundColor: UIColor.appTitleColor(), .font: UIFont.pingfangFont(type: .Regular, fontSize: 15)]
        self.inputAttr = [NSAttributedString.Key.foregroundColor: UIColor.dataFormat(), .font: UIFont.groupSize(type: .Regular, fontSize: 15)]
        //: input.typingAttributes = self.inputAttr
        input.typingAttributes = self.inputAttr
//        input.layer.cornerRadius = 5
        //: contentView.addSubview(input)
        contentView.addSubview(input)
        //: return input
        return input
        //: }()
    }()
}

//: extension TalkingVideoCallInputView {
extension ManagerReactiveCompatible {
    /// 拉起输入框
    //: func updatePlaceholder() {
    func reload() {
        //: self.isHidden = false
        self.isHidden = false
        //: inputTextView.becomeFirstResponder()
        inputTextView.becomeFirstResponder()
    }

    //: @objc func commentBtnClick() {
    @objc func noteGift() {
        //: let textstr = self.handleSendText(text: inputTextView.attributedText)
        let textstr = self.userDoing(text: inputTextView.attributedText)
        //: let temStr = textstr.trimmingCharacters(in: CharacterSet.whitespacesAndNewlines)
        let temStr = textstr.trimmingCharacters(in: CharacterSet.whitespacesAndNewlines)
        //: if temStr.count == 0 {
        if temStr.count == 0 {
            //: func__showStatusBarErrorMsg(showMsg: "Can't send blank message".localized)
            detailDownArray(showMsg: (kStr_giftAllValue + String(kStr_voiceContent) + String(kStr_managerTitle.prefix(4)) + "essage").localized)
            //: return
            return
        }
        //: self.delegate?.func__sendTextMsg(msgStr: textstr)
        self.delegate?.errorImage(msgStr: textstr)
        //: sendBtn.isEnabled = false
        sendBtn.isEnabled = false
        //: resignkeyBoard()
        titleBoard()
    }

    //: func resignkeyBoard() {
    func titleBoard() {
        //: inputTextView.resignFirstResponder()
        inputTextView.resignFirstResponder()
        //: if (inputTextView.text.count == 0) {
        if inputTextView.text.count == 0 {
            //: inputTextView.placeholder = "Say something...     ".localized
            inputTextView.placeholder = (String(kStr_contentWarningValue.prefix(4)) + "some" + String(kStr_textData.suffix(8)) + String(kStr_applicationMakeEqualData)).localized
        }
    }

    //: func func__updateInputContentView() {
    func viewFuncContentInputModify() {
        //: let textSize = inputTextView.contentSize
        let textSize = inputTextView.contentSize
        //: let textHeight = max(30, min(100, textSize.height))
        let textHeight = max(30, min(100, textSize.height))
        //: inputTextView.snp.updateConstraints { make in
        inputTextView.snp.updateConstraints { make in
            //: make.height.equalTo(textHeight)
            make.height.equalTo(textHeight)
        }
        //: self.delegate?.inputViewHeightChanged(height: textHeight+16)
        self.delegate?.upHeight(height: textHeight + 16)
    }

    //: @objc func keyboardWasShown(notification: NSNotification) {
    @objc func showNotification(notification: NSNotification) {
        //: let info = notification.userInfo!
        let info = notification.userInfo!
        //: var kbRect = (info[UIResponder.keyboardFrameEndUserInfoKey]! as! NSValue).cgRectValue
        var kbRect = (info[UIResponder.keyboardFrameEndUserInfoKey]! as! NSValue).cgRectValue
        //: kbRect = self.convert(kbRect, from: nil)
        kbRect = self.convert(kbRect, from: nil)
        //: let height = kbRect.size.height
        let height = kbRect.size.height
        //: self.delegate?.heightToBottomChanged(heightToBottom: height)
        self.delegate?.buttonBottom(heightToBottom: height)
    }

    //: @objc func keyboardWillBeHidden(notification: NSNotification) {
    @objc func beatWillNotificationInsertUnseeableAdd(notification _: NSNotification) {
        //: self.isHidden = true
        self.isHidden = true
//
        //: self.delegate?.heightToBottomChanged(heightToBottom: 0)
        self.delegate?.buttonBottom(heightToBottom: 0)
    }
}

//: extension TalkingVideoCallInputView {
extension ManagerReactiveCompatible {
    /// 发送消息处理富文本
    //: private func handleSendText(text: NSAttributedString?) -> String {
    private func userDoing(text: NSAttributedString?) -> String {
        //: var mText: NSMutableAttributedString!
        var mText: NSMutableAttributedString!
        //: if text == nil {
        if text == nil {
            //: mText = NSMutableAttributedString(string: "")
            mText = NSMutableAttributedString(string: "")
            //: } else {
        } else {
            //: mText = NSMutableAttributedString(attributedString: text!)
            mText = NSMutableAttributedString(attributedString: text!)
        }

        //: var string = String()
        var string = String()
        //: mText.enumerateAttributes(in: NSRange(location: 0, length: mText.length)) { attrs, range, stop in
        mText.enumerateAttributes(in: NSRange(location: 0, length: mText.length)) { _, range, _ in
            //: let str = mText.attributedSubstring(from: range).string
            let str = mText.attributedSubstring(from: range).string
            //: string.append(str)
            string.append(str)
        }

        //: return string
        return string
    }
}

// MARK: - UITextViewDelegate

//: extension TalkingVideoCallInputView: UITextViewDelegate {
extension ManagerReactiveCompatible: UITextViewDelegate {
    //: func textViewDidEndEditing(_ textView: UITextView) {
    func textViewDidEndEditing(_: UITextView) {}

    //: func textViewDidChange(_ textView: UITextView) {
    func textViewDidChange(_ textView: UITextView) {
        //: if textView.text.count>0 {
        if textView.text.count > 0 {
            //: sendBtn.isEnabled = true
            sendBtn.isEnabled = true
            //: } else {
        } else {
            //: sendBtn.isEnabled = false
            sendBtn.isEnabled = false
        }
    }

    //: func textView(_ textView: UITextView, shouldChangeTextIn range: NSRange, replacementText text: String) -> Bool {
    func textView(_ textView: UITextView, shouldChangeTextIn _: NSRange, replacementText text: String) -> Bool {
        //: self.inputTextView.typingAttributes = self.inputAttr
        self.inputTextView.typingAttributes = self.inputAttr

        //: let string = textView.text + text
        let string = textView.text + text
        //: guard string.count < textMaxLengthLimit else {
        guard string.count < textMaxLengthLimit else {
            //: return false
            return false
        }
        //: if (text == "\n") {
        if text == "\n" {
            //: commentBtnClick()
            noteGift()
            //: textView.resignFirstResponder()
            textView.resignFirstResponder()
        }
        //: return true
        return true
    }
}

// MARK: - LayoutUI

//: extension TalkingVideoCallInputView {
extension ManagerReactiveCompatible {
    // 添加视图
    //: private func setupSubviews() {
    private func infoHandleSubviews() {
        //: backgroundColor = .clear
        backgroundColor = .clear
        //: addSubview(contentView)
        addSubview(contentView)
        //: contentView.addSubview(sendBtn)
        contentView.addSubview(sendBtn)
        //: contentView.addSubview(inputTextView)
        contentView.addSubview(inputTextView)
    }

    // 添加约束
    //: private func setupSubViewsConstraint() {
    private func addRange() {
        //: contentView.snp.makeConstraints { make in
        contentView.snp.makeConstraints { make in
            //: make.top.leading.trailing.bottom.equalTo(self)
            make.top.leading.trailing.bottom.equalTo(self)
        }
        //: sendBtn.snp.makeConstraints { make in
        sendBtn.snp.makeConstraints { make in
            //: make.centerY.equalToSuperview()
            make.centerY.equalToSuperview()
            //: make.trailing.equalTo(-15)
            make.trailing.equalTo(-15)
            //: make.height.equalTo(30)
            make.height.equalTo(30)
            //: make.width.equalTo(66)
            make.width.equalTo(66)
        }
        //: inputTextView.snp.makeConstraints { make in
        inputTextView.snp.makeConstraints { make in
            //: make.centerY.equalToSuperview()
            make.centerY.equalToSuperview()
            //: make.leading.equalTo(contentView.snp.leading).offset(15)
            make.leading.equalTo(contentView.snp.leading).offset(15)
            //: make.trailing.equalTo(sendBtn.snp.leading).offset(-10)
            make.trailing.equalTo(sendBtn.snp.leading).offset(-10)
            //: make.height.equalTo(40)
            make.height.equalTo(40)
        }
    }

    // 添加事件
    //: private func bindInteraction() {
    private func nameBindMagnitudeeraction() {
        //: NotificationCenter.default.addObserver(self, selector: #selector(keyboardWasShown(notification:)), name: UIResponder.keyboardWillShowNotification, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(showNotification(notification:)), name: UIResponder.keyboardWillShowNotification, object: nil)
        //: NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillBeHidden(notification:)), name: UIResponder.keyboardWillHideNotification, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(beatWillNotificationInsertUnseeableAdd(notification:)), name: UIResponder.keyboardWillHideNotification, object: nil)

        //: inputTextView.rx.observeWeakly(UITextView.self, "contentSize").subscribe(onNext: { [weak self] (change) in
        inputTextView.rx.observeWeakly(UITextView.self, (String(kStr_nameMName) + kStr_contentSessionTitle.replacingOccurrences(of: "view", with: "i"))).subscribe(onNext: { [weak self] _ in
            //: guard let self = self else {return}
            guard let self = self else { return }
            //: self.func__updateInputContentView()
            self.viewFuncContentInputModify()
            //: }).disposed(by: disposeBag)
        }).disposed(by: disposeBag)
    }
}
