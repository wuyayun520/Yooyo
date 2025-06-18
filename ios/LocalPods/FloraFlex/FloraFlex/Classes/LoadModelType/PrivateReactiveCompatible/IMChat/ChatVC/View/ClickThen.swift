
//: Declare String Begin

/*: "ClickThen deinit" :*/
fileprivate let kStr_wrapTitle:[Character] = ["Q","u","o","t","e","D","e","t","a"]
fileprivate let kStr_blockTitle:[Character] = ["i","l","P","o","p","V","i","e","w"," ","d","e","i","n","i","t"]

/*: "init(coder:) has not been implemented" :*/
fileprivate let kStr_requestData:[UInt8] = [0x64,0x65,0x74,0x6e,0x65,0x6d,0x65,0x6c,0x70,0x6d,0x69,0x20,0x6e,0x65,0x65,0x62,0x20,0x74,0x6f,0x6e,0x20,0x73,0x61,0x68,0x20,0x29,0x3a,0x72,0x65,0x64,0x6f,0x63,0x28,0x74,0x69,0x6e,0x69]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  ClickThen.swift
//
//

//: import UIKit
import UIKit

//: class QuoteDetailPopView: UIView {
class ClickThen: UIView {
    //: var popView: TalkingPopView?
    var popView: BackgroundThen?

    //: deinit {
    deinit {
        //: printLog(message: "QuoteDetailPopView deinit")
        pathLine(message: (String(kStr_wrapTitle) + String(kStr_blockTitle)))
    }

    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: self.setupSubviews()
        self.constraintError()
        //: self.setupSubViewsConstraint()
        self.representation()
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: kStr_requestData.reversed(), encoding: .utf8)!)
    }

    //: var msgDetailText: String? {
    var msgDetailText: String? { // 提示文字
        //: didSet {
        didSet {
            //: messageView.text = msgDetailText
            messageView.text = msgDetailText
        }
    }

    //: lazy var messageView: UILabel = {
    lazy var messageView: UILabel = {
        //: let lb = UILabel()
        let lb = UILabel()
        //: lb.font = UIFont.pingfangFont(type: .Regular, fontSize: 16)
        lb.font = UIFont.groupSize(type: .Regular, fontSize: 16)
        //: lb.textColor = UIColor.appTitleColor()
        lb.textColor = UIColor.dataFormat()
        //: lb.numberOfLines = 0
        lb.numberOfLines = 0
        //: lb.backgroundColor = .clear
        lb.backgroundColor = .clear
        //: lb.textAlignment = .center
        lb.textAlignment = .center
        //: return lb
        return lb
        //: }()
    }()
}

//: extension QuoteDetailPopView {
extension ClickThen {
    //: func show() {
    func coloured() {
        //: popView = TalkingPopView.init(frame: UIScreen.main.bounds)
        popView = BackgroundThen(frame: UIScreen.main.bounds)
        //: popView?.initWithView(view: self)
        popView?.toViewText(view: self)
        //: popView?.showInView(view: TableMacroDefine.getWindow())
        popView?.beyondAllAdjust(view: TableMacroDefine.oeilDeBoeufView())
    }

    //: @objc func dismiss() {
    @objc func upBy() {
        //: popView?.dismissView()
        popView?.placePushAside()
        //: popView = nil
        popView = nil
    }
}

//: extension QuoteDetailPopView {
extension ClickThen {
    // 添加视图
    //: private func setupSubviews() {
    private func constraintError() {
        //: self.backgroundColor = UIColor.appBgColor()
        self.backgroundColor = UIColor.bottomValue()
        //: self.addSubview(messageView)
        self.addSubview(messageView)
    }

    // 添加约束
    //: private func setupSubViewsConstraint() {
    private func representation() {
        //: messageView.snp.makeConstraints { make in
        messageView.snp.makeConstraints { make in
            //: make.leading.equalTo(20)
            make.leading.equalTo(20)
            //: make.centerY.equalToSuperview()
            make.centerY.equalToSuperview()
            //: make.trailing.equalTo(-20)
            make.trailing.equalTo(-20)
        }
    }
}
