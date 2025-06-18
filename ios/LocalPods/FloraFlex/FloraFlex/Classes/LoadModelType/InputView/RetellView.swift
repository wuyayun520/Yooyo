
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let kStr_exitDataName:[UInt8] = [0x30,0x37,0x30,0x2d,0x71,0x3a,0x36,0x3d,0x3c,0x2b,0x63,0x70,0x79,0x31,0x38,0x2a,0x79,0x37,0x36,0x2d,0x79,0x3b,0x3c,0x3c,0x37,0x79,0x30,0x34,0x29,0x35,0x3c,0x34,0x3c,0x37,0x2d,0x3c,0x3d]

private func formatValue(start num: UInt8) -> UInt8 {
    return num ^ 89
}

/*: "#DCDCD" :*/
fileprivate let kStr_requestData:[Character] = ["#","D","C","D","C","D"]

/*: "Reply" :*/
fileprivate let kStr_voiceWithColorData:[Character] = ["R","e","p","l","y"]

/*: "btn_delete" :*/
fileprivate let kStr_statusName:[Character] = ["b","t","n","_","d","e","l","e","t","e"]

/*: "text" :*/
fileprivate let kStr_netContent:[Character] = ["t","e","x","t"]

/*: "gift" :*/
fileprivate let kStr_messageAddContent:String = "gifby"

/*: "Sent " :*/
fileprivate let kStr_viewText:String = "data size view view typeSent "

/*: " x :*/
fileprivate let kStr_pathManagerData:[Character] = [" ","x"]

/*: "audio" :*/
fileprivate let kStr_equalStatusName:String = "audto"

/*: "[Audio]" :*/
fileprivate let kStr_insideData:[Character] = ["[","A","u","d","i"]
fileprivate let kStr_interactionValue:String = "image true true let viewo]"

/*: "img" :*/
fileprivate let kStr_intimateName:[Character] = ["i","m","g"]

/*: "[Image]" :*/
fileprivate let kStr_sharedTitle:String = "string block make me true[Image]"

/*: "video" :*/
fileprivate let kStr_appButtonTitle:String = "videaction"

/*: ": [" :*/
fileprivate let kStr_modelText:String = ":close["

/*: "Video" :*/
fileprivate let kStr_equalData:String = "Videoview pop"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  RetellView.swift
//  FloraFlex
//
//  Created by Hemming on 2024/7/29.
//

//: import UIKit
import UIKit

//: class InputQuoteView: UIButton {
class RetellView: UIButton {
    //: private let disposeBag = DisposeBag()
    private let disposeBag = DisposeBag()

    //: var closeBtnBlock: (() -> Void)?
    var closeBtnBlock: (() -> Void)?

    //: private override init(frame: CGRect) {
    override private init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: setupSubviews()
        subState()
        //: setupSubViewsConstraint()
        digitizer()
        //: bindInteraction()
        bindSize()
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: kStr_exitDataName.map{formatValue(start: $0)}, encoding: .utf8)!)
    }

    //: deinit {
    deinit {}

    //: lazy var lineView: UIView = {
    lazy var lineView: UIView = {
        //: let view = UIView()
        let view = UIView()
        //: view.backgroundColor = UIColor(hex: "#DCDCD")
        view.backgroundColor = UIColor(hex: (String(kStr_requestData)))
        //: return view
        return view
        //: }()
    }()

    //: lazy var titleLab: UILabel = {
    lazy var titleLab: UILabel = {
        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.font = UIFont.messageDown(fontSize: 14)
        lab.font = UIFont.messageDown(fontSize: 14)
        //: lab.textColor = .appValueColor()
        lab.textColor = .priority()
        //: lab.text = "Reply".localized
        lab.text = (String(kStr_voiceWithColorData)).localized
        //: return lab
        return lab
        //: }()
    }()

    //: lazy var contentLab: UILabel = {
    lazy var contentLab: UILabel = {
        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.font = UIFont.messageDown(fontSize: 14)
        lab.font = UIFont.messageDown(fontSize: 14)
        //: lab.textColor = .statusMin()
        lab.textColor = .statusMin()
        //: return lab
        return lab
        //: }()
    }()

    //: lazy var closeBtn: UIButton = {
    lazy var closeBtn: UIButton = {
        //: let btn = UIButton(type: .custom)
        let btn = UIButton(type: .custom)
        //: btn.setImage(UIImage.bundleBy(name: "btn_delete"), for: .normal)
        btn.setImage(UIImage.bundleBy(name: (String(kStr_statusName))), for: .normal)
        //: return btn
        return btn
        //: }()
    }()

    //: var quoteModel: AbTalkingChatMsgQuoteModel? {
    var quoteModel: DataModel? {
        //: didSet {
        didSet {
            //: guard let quoteModel = quoteModel else { return }
            guard let quoteModel = quoteModel else { return }
            //: if quoteModel.renderType == "text" {
            if quoteModel.renderType == (String(kStr_netContent)) {
                //: self.contentLab.text = quoteModel.sendName + ":" + quoteModel.renderData.content
                self.contentLab.text = quoteModel.sendName + ":" + quoteModel.renderData.content
                //: } else if quoteModel.renderType == "gift" {
            } else if quoteModel.renderType == (kStr_messageAddContent.replacingOccurrences(of: "by", with: "t")) {
                //: self.contentLab.text = quoteModel.sendName + ":" + "Sent ".localized + quoteModel.renderData.giftNameLocal() + " x\(quoteModel.renderData.giftNum)"
                self.contentLab.text = quoteModel.sendName + ":" + (String(kStr_viewText.suffix(5))).localized + quoteModel.renderData.price() + " x\(quoteModel.renderData.giftNum)"
                //: } else if quoteModel.renderType == "audio" {
            } else if quoteModel.renderType == (kStr_equalStatusName.replacingOccurrences(of: "to", with: "io")) {
                //: self.contentLab.text = quoteModel.sendName + ":" + "[Audio]".localized
                self.contentLab.text = quoteModel.sendName + ":" + (String(kStr_insideData) + String(kStr_interactionValue.suffix(2))).localized
                //: } else if quoteModel.renderType == "img" {
            } else if quoteModel.renderType == (String(kStr_intimateName)) {
                //: self.contentLab.text = quoteModel.sendName + ":" + "[Image]".localized
                self.contentLab.text = quoteModel.sendName + ":" + (String(kStr_sharedTitle.suffix(7))).localized
                //: } else if quoteModel.renderType == "video" {
            } else if quoteModel.renderType == (kStr_appButtonTitle.replacingOccurrences(of: "action", with: "o")) {
                //: self.contentLab.text = quoteModel.sendName + ": [" + "Video".localized + "]"
                self.contentLab.text = quoteModel.sendName + ": [" + (String(kStr_equalData.prefix(5))).localized + "]"
            }
        }
    }
}

// MARK: - Layout

//: extension InputQuoteView {
extension RetellView {
    /// 添加视图
    //: private func setupSubviews() {
    private func subState() {
        //: self.backgroundColor = .clear
        self.backgroundColor = .clear
        //: self.addSubview(titleLab)
        self.addSubview(titleLab)
        //: self.addSubview(contentLab)
        self.addSubview(contentLab)
        //: self.addSubview(lineView)
        self.addSubview(lineView)
        //: self.addSubview(closeBtn)
        self.addSubview(closeBtn)
    }

    /// 添加约束
    //: private func setupSubViewsConstraint() {
    private func digitizer() {
        //: titleLab.snp.makeConstraints { make in
        titleLab.snp.makeConstraints { make in
            //: make.leading.equalTo(9)
            make.leading.equalTo(9)
            //: make.centerY.equalToSuperview()
            make.centerY.equalToSuperview()
        }

        //: contentLab.snp.makeConstraints { make in
        contentLab.snp.makeConstraints { make in
            //: make.leading.equalTo(titleLab.snp.trailing).offset(6)
            make.leading.equalTo(titleLab.snp.trailing).offset(6)
            //: make.centerY.equalToSuperview()
            make.centerY.equalToSuperview()
            //: make.trailing.lessThanOrEqualTo(-42)
            make.trailing.lessThanOrEqualTo(-42)
        }
        //: lineView.snp.makeConstraints { make in
        lineView.snp.makeConstraints { make in
            //: make.trailing.equalToSuperview().offset(-32)
            make.trailing.equalToSuperview().offset(-32)
            //: make.height.equalTo(18)
            make.height.equalTo(18)
            //: make.width.equalTo(1)
            make.width.equalTo(1)
            //: make.centerY.equalToSuperview()
            make.centerY.equalToSuperview()
        }
        //: closeBtn.snp.makeConstraints { make in
        closeBtn.snp.makeConstraints { make in
            //: make.leading.equalTo(lineView.snp.trailing)
            make.leading.equalTo(lineView.snp.trailing)
            //: make.trailing.equalToSuperview()
            make.trailing.equalToSuperview()
            //: make.height.equalTo(28)
            make.height.equalTo(28)
            //: make.centerY.equalToSuperview()
            make.centerY.equalToSuperview()
        }
    }

    // 添加事件
    //: private func bindInteraction() {
    private func bindSize() {
        //: closeBtn.rx.controlEvent(.touchUpInside)
        closeBtn.rx.controlEvent(.touchUpInside)
            //: .subscribe(onNext: { [weak self] in
            .subscribe(onNext: { [weak self] in
                //: guard let self = self else {return}
                guard let self = self else { return }
                //: self.closeBtnBlock?()
                self.closeBtnBlock?()
                //: })
            })
            //: .disposed(by: disposeBag)
            .disposed(by: disposeBag)
    }
}
