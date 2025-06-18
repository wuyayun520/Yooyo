
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let kStr_lineManagerValue:[UInt8] = [0x2f,0x34,0x2f,0x3a,0xee,0x29,0x35,0x2a,0x2b,0x38,0x0,0xef,0xe6,0x2e,0x27,0x39,0xe6,0x34,0x35,0x3a,0xe6,0x28,0x2b,0x2b,0x34,0xe6,0x2f,0x33,0x36,0x32,0x2b,0x33,0x2b,0x34,0x3a,0x2b,0x2a]

fileprivate func fieldCell(after num: UInt8) -> UInt8 {
    let value = Int(num) - 198
    if value < 0 {
        return UInt8(value + 256)
    } else {
        return UInt8(value)
    }
}

/*: "btn_chat_send_nor" :*/
fileprivate let kStr_interactionValue:[Character] = ["b","t","n","_","c","h","a","t","_","s","e","n","d","_","n","o","r"]

/*: "btn_chat_send_dis" :*/
fileprivate let kStr_userName:String = "array frame moment equal letbtn_ch"
fileprivate let kStr_mainValue:[Character] = ["d","_","d","i","s"]

/*: "Send" :*/
fileprivate let kStr_labName:[Character] = ["S","e","n","d"]

/*: "Say something...     " :*/
fileprivate let kStr_colorValue:String = "Say soview last self var"
fileprivate let kStr_comeWithNearData:String = "METH"
fileprivate let kStr_valueName:String = "label     "

/*: "Can't send blank message" :*/
fileprivate let kStr_blackValue:String = "Can\'t"
fileprivate let kStr_gestureFrameGiftData:String = "d blalet count content var"
fileprivate let kStr_makeData:String = "essnameg"
fileprivate let kStr_labValue:String = "table"

/*: "uid" :*/
fileprivate let kStr_modelValue:[UInt8] = [0x39,0x25,0x28]

private func exaggerateAdd(name num: UInt8) -> UInt8 {
    return num ^ 76
}

/*: "name" :*/
fileprivate let kStr_sceneValue:[Character] = ["n","a","m","e"]

/*: "@ :*/
fileprivate let kStr_buttonName:[Character] = ["@"]

/*:  " :*/
fileprivate let kStr_labContent:[Character] = [" "]

/*: "length" :*/
fileprivate let kStr_fromTitle:[Character] = ["l","e","n","g","t","h"]

/*: "<at>@ :*/
fileprivate let kStr_termsData:String = "size let enable<at>@"

/*: </at> " :*/
fileprivate let kStr_sourceData:[Character] = ["<","/","a","t",">"," "]

/*: "\n" :*/
fileprivate let kStr_errorName:[Character] = ["\n"]

/*: "contentSize" :*/
fileprivate let kStr_firstHiddenName:String = "cbehaviornte"
fileprivate let kStr_limitPathValue:String = "zname"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  MiniViewDelegate.swift
//  AbroadTalking
//
//  Created by Charlotte on 2023/7/7.
//

//: import UIKit
import UIKit

//: protocol TalkingLiveRoomInputViewDelegate: NSObject {
protocol OmitThen: NSObject {
    //: func func__sendTextMsg(msgStr: String, atUid: String?)
    func cellErase(msgStr: String, atUid: String?)

    //: func heightToBottomChanged(heightToBottom: CGFloat)
    func bestowal(heightToBottom: CGFloat)

    //: func inputViewHeightChanged(height: CGFloat)
    func digitizerIcon(height: CGFloat)
}

//: class TalkingLiveRoomInputView: UIView {
class MiniViewDelegate: UIView {
    //: open weak var delegate: TalkingLiveRoomInputViewDelegate?
    open weak var delegate: OmitThen?
    //: private let disposeBag = DisposeBag()
    private let disposeBag = DisposeBag()
    //: private var inputAttr = [NSAttributedString.Key: Any]()
    private var inputAttr = [NSAttributedString.Key: Any]()
    //: private var atDic: [String: Any]?
    private var atDic: [String: Any]?
    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: setupSubviews()
        subviewsSquare()
        //: setupSubViewsConstraint()
        thingWith()
        //: bindInteraction()
        requestBind()
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: kStr_lineManagerValue.map{fieldCell(after: $0)}, encoding: .utf8)!)
    }

    //: lazy var sendBtn: UIButton = {
    lazy var sendBtn: UIButton = {
        //: let btn = UIButton.init()
        let btn = UIButton()
        //: btn.setBackgroundImage(UIImage.bundleBy(name: "btn_chat_send_nor"), for: .normal)
        btn.setBackgroundImage(UIImage.bundleBy(name: (String(kStr_interactionValue))), for: .normal)
        //: btn.setBackgroundImage(UIImage.bundleBy(name: "btn_chat_send_nor"), for: .highlighted)
        btn.setBackgroundImage(UIImage.bundleBy(name: (String(kStr_interactionValue))), for: .highlighted)
        //: btn.setBackgroundImage(UIImage.bundleBy(name: "btn_chat_send_dis"), for: .disabled)
        btn.setBackgroundImage(UIImage.bundleBy(name: (String(kStr_userName.suffix(6)) + "at_sen" + String(kStr_mainValue))), for: .disabled)
        //: btn.addTarget(self, action: #selector(commentBtnClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(countClick), for: .touchUpInside)
        //: btn.setTitle("Send".localized, for: .normal)
        btn.setTitle((String(kStr_labName)).localized, for: .normal)
        //: btn.titleLabel?.font = UIFont.dorsum(fontSize: 15)
        btn.titleLabel?.font = UIFont.dorsum(fontSize: 15)
        //: btn.setTitleColor(.white, for: .normal)
        btn.setTitleColor(.white, for: .normal)
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
        //: input.placeholderColor = UIColor.statusMin()
        input.placeholderColor = UIColor.statusMin()
        //: input.placeholder = "Say something...     ".localized
        input.placeholder = (String(kStr_colorValue.prefix(6)) + kStr_comeWithNearData.lowercased() + "ing.." + kStr_valueName.replacingOccurrences(of: "label", with: ".")).localized
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
        //: input.layer.cornerRadius = 5
        input.layer.cornerRadius = 5
        //: contentView.addSubview(input)
        contentView.addSubview(input)
        //: return input
        return input
        //: }()
    }()
}

//: extension TalkingLiveRoomInputView {
extension MiniViewDelegate {
    /// 拉起输入框
    //: func updatePlaceholder() {
    func onDetail() {
        //: self.isHidden = false
        self.isHidden = false
        //: inputTextView.becomeFirstResponder()
        inputTextView.becomeFirstResponder()
    }

    //: @objc func commentBtnClick() {
    @objc func countClick() {
        //: let textstr = self.handleSendText(text: inputTextView.attributedText)
        let textstr = self.extended(text: inputTextView.attributedText)
        //: let temStr = textstr.trimmingCharacters(in: CharacterSet.whitespacesAndNewlines)
        let temStr = textstr.trimmingCharacters(in: CharacterSet.whitespacesAndNewlines)
        //: if temStr.count == 0 {
        if temStr.count == 0 {
            //: func__showStatusBarErrorMsg(showMsg: "Can't send blank message".localized)
            detailDownArray(showMsg: (kStr_blackValue + " sen" + String(kStr_gestureFrameGiftData.prefix(5)) + "nk m" + kStr_makeData.replacingOccurrences(of: "name", with: "a") + kStr_labValue.replacingOccurrences(of: "table", with: "e")).localized)
            //: return
            return
        }
        //: let atStr: String = atDic?["uid"] as? String ?? ""
        let atStr: String = atDic?[String(bytes: kStr_modelValue.map{exaggerateAdd(name: $0)}, encoding: .utf8)!] as? String ?? ""
        //: self.delegate?.func__sendTextMsg(msgStr: textstr, atUid: atStr)
        self.delegate?.cellErase(msgStr: textstr, atUid: atStr)
        //: atDic = nil
        atDic = nil
        //: sendBtn.isEnabled = false
        sendBtn.isEnabled = false
        //: resignkeyBoard()
        listModel()
    }

    //: func resignkeyBoard() {
    func listModel() {
        //: inputTextView.resignFirstResponder()
        inputTextView.resignFirstResponder()
        //: if (inputTextView.text.count == 0) {
        if inputTextView.text.count == 0 {
            //: inputTextView.placeholder = "Say something...     ".localized
            inputTextView.placeholder = (String(kStr_colorValue.prefix(6)) + kStr_comeWithNearData.lowercased() + "ing.." + kStr_valueName.replacingOccurrences(of: "label", with: ".")).localized
        }
    }

    //: func func__updateInputContentView() {
    func somebody() {
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
        self.delegate?.digitizerIcon(height: textHeight + 16)
    }

    //: @objc func keyboardWasShown(notification: NSNotification) {
    @objc func blockEqual(notification: NSNotification) {
        //: let info = notification.userInfo!
        let info = notification.userInfo!
        //: var kbRect = (info[UIResponder.keyboardFrameEndUserInfoKey]! as! NSValue).cgRectValue
        var kbRect = (info[UIResponder.keyboardFrameEndUserInfoKey]! as! NSValue).cgRectValue
        //: kbRect = self.convert(kbRect, from: nil)
        kbRect = self.convert(kbRect, from: nil)
        //: let height = kbRect.size.height
        let height = kbRect.size.height
        //: self.delegate?.heightToBottomChanged(heightToBottom: height)
        self.delegate?.bestowal(heightToBottom: height)
    }

    //: @objc func keyboardWillBeHidden(notification: NSNotification) {
    @objc func analogDigitalConverter(notification _: NSNotification) {
        //: self.isHidden = true
        self.isHidden = true
        //: atDic = nil
        atDic = nil
        //: inputTextView.attributedText = nil
        inputTextView.attributedText = nil
        //: self.delegate?.heightToBottomChanged(heightToBottom: 0)
        self.delegate?.bestowal(heightToBottom: 0)
    }

    //: func callUserText(toUid: String, nickName: String) {
    func changeContent(toUid: String, nickName: String) {
        //: updatePlaceholder()
        onDetail()
        //: atDic = ["uid": toUid, "name": nickName]
        atDic = [String(bytes: kStr_modelValue.map{exaggerateAdd(name: $0)}, encoding: .utf8)!: toUid, (String(kStr_sceneValue)): nickName]
        //: self.receiveAtInfotoUser(range: nil, dict: atDic!)
        self.voiceDict(range: nil, dict: atDic!)
    }
}

//: extension TalkingLiveRoomInputView {
extension MiniViewDelegate {
    /// 替换@ 消息为富文本
    //: func receiveAtInfotoUser(range: NSRange?, dict: [String: Any]) {
    func voiceDict(range: NSRange?, dict: [String: Any]) {
        //: var atRange = range
        var atRange = range
        //: if atRange != nil {
        if atRange != nil { // 输入框@
            //: if atRange!.location > 0 && (atRange!.length + atRange!.location > self.inputTextView.text.count) {
            if atRange!.location > 0, atRange!.length + atRange!.location > self.inputTextView.text.count {
                //: atRange!.location -= 1
                atRange!.location -= 1
            }
            //: } else {
        } else { // 操作面板@ Ta
            //: atRange = NSRange(location: self.inputTextView.attributedText.length, length: 0)
            atRange = NSRange(location: self.inputTextView.attributedText.length, length: 0)
        }

        //: let atStr: String = "@\(dict["name"] ?? "") "
        let atStr = "@\(dict[(String(kStr_sceneValue))] ?? "") "
        //: let label = UILabel()
        let label = UILabel()
        //: label.textColor = UIColor.RGBA(0, 132, 255, 1)
        label.textColor = UIColor.largesse(0, 132, 255, 1)
        //: label.font = UIFont.systemFont(ofSize: 16)
        label.font = UIFont.systemFont(ofSize: 16)
        //: label.text = atStr
        label.text = atStr
        //: label.textAlignment = .center
        label.textAlignment = .center
        //: label.sizeToFit()
        label.sizeToFit()
        //: let renderer = UIGraphicsImageRenderer(size: label.bounds.size)
        let renderer = UIGraphicsImageRenderer(size: label.bounds.size)
        //: let image = renderer.image { context in
        let image = renderer.image { context in
            //: label.layer.render(in: context.cgContext)
            label.layer.render(in: context.cgContext)
        }

        //: let textAtta = TalkingTextAttachment()
        let textAtta = WordsThen()
        //: textAtta.bounds = CGRect(x: 0, y: label.font.descender,
        textAtta.bounds = CGRect(x: 0, y: label.font.descender,
                                 //: width: image.size.width,
                                 width: image.size.width,
                                 //: height: image.size.height)
                                 height: image.size.height)
        //: textAtta.image = image
        textAtta.image = image
        //: var atInfo = dict
        var atInfo = dict
        //: atInfo["length"] = atStr.count
        atInfo[(String(kStr_fromTitle))] = atStr.count
        //: textAtta.atInfo = atInfo
        textAtta.atInfo = atInfo

        //: let attaImage = NSAttributedString(attachment: textAtta)
        let attaImage = NSAttributedString(attachment: textAtta)
        //: let attrText = NSMutableAttributedString(attributedString: self.inputTextView.attributedText)
        let attrText = NSMutableAttributedString(attributedString: self.inputTextView.attributedText)
        //: attrText.replaceCharacters(in: atRange!, with: attaImage)
        attrText.replaceCharacters(in: atRange!, with: attaImage)
        //: self.inputTextView.attributedText = attrText
        self.inputTextView.attributedText = attrText
    }

    /// 发送消息处理富文本
    //: private func handleSendText(text: NSAttributedString?) -> String {
    private func extended(text: NSAttributedString?) -> String {
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
        mText.enumerateAttributes(in: NSRange(location: 0, length: mText.length)) { attrs, range, _ in
            //: let atta = attrs[NSAttributedString.Key.attachment] as? TalkingTextAttachment
            let atta = attrs[NSAttributedString.Key.attachment] as? WordsThen
            //: if atta != nil && range.length == 1 {
            if atta != nil && range.length == 1 {
                //: if let name = atta!.atInfo["name"] {
                if let name = atta!.atInfo[(String(kStr_sceneValue))] {
                    //: let str = "<at>@\(name)</at> "
                    let str = "<at>@\(name)</at> "
                    //: string.append(str)
                    string.append(str)
                }
                //: } else {
            } else {
                //: let str = mText.attributedSubstring(from: range).string
                let str = mText.attributedSubstring(from: range).string
                //: string.append(str)
                string.append(str)
            }
        }

        //: return string
        return string
    }
}

// MARK: - UITextViewDelegate

//: extension TalkingLiveRoomInputView: UITextViewDelegate {
extension MiniViewDelegate: UITextViewDelegate {
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
        //: if textView.text.count == 0 {
        if textView.text.count == 0 {
            //: atDic = nil
            atDic = nil
        }
        //: self.inputTextView.typingAttributes = self.inputAttr
        self.inputTextView.typingAttributes = self.inputAttr

        //: if (text == "\n") {
        if text == "\n" {
            //: commentBtnClick()
            countClick()
            //: textView.resignFirstResponder()
            textView.resignFirstResponder()
        }
        //: return true
        return true
    }
}

// MARK: - LayoutUI

//: extension TalkingLiveRoomInputView {
extension MiniViewDelegate {
    // 添加视图
    //: private func setupSubviews() {
    private func subviewsSquare() {
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
    private func thingWith() {
        //: contentView.snp.makeConstraints { make in
        contentView.snp.makeConstraints { make in
            //: make.top.leading.trailing.bottom.equalTo(self)
            make.top.leading.trailing.bottom.equalTo(self)
        }
        //: sendBtn.snp.makeConstraints { make in
        sendBtn.snp.makeConstraints { make in
            //: make.centerY.equalToSuperview()
            make.centerY.equalToSuperview()
            //: make.trailing.equalTo(-8)
            make.trailing.equalTo(-8)
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
    private func requestBind() {
        //: NotificationCenter.default.addObserver(self, selector: #selector(keyboardWasShown(notification:)), name: UIResponder.keyboardWillShowNotification, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(blockEqual(notification:)), name: UIResponder.keyboardWillShowNotification, object: nil)
        //: NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillBeHidden(notification:)), name: UIResponder.keyboardWillHideNotification, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(analogDigitalConverter(notification:)), name: UIResponder.keyboardWillHideNotification, object: nil)

        //: inputTextView.rx.observeWeakly(UITextView.self, "contentSize").subscribe(onNext: { [weak self] (change) in
        inputTextView.rx.observeWeakly(UITextView.self, (kStr_firstHiddenName.replacingOccurrences(of: "behavior", with: "o") + "ntSi" + kStr_limitPathValue.replacingOccurrences(of: "name", with: "e"))).subscribe(onNext: { [weak self] _ in
            //: guard let self = self else {return}
            guard let self = self else { return }
            //: self.func__updateInputContentView()
            self.somebody()
            //: }).disposed(by: disposeBag)
        }).disposed(by: disposeBag)
    }
}
