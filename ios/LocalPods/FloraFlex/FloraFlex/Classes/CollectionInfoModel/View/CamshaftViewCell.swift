
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let kStr_sectionTitle:[UInt8] = [0xed,0xea,0xed,0xf0,0xac,0xe7,0xeb,0xe0,0xe1,0xf6,0xbe,0xad,0xa4,0xec,0xe5,0xf7,0xa4,0xea,0xeb,0xf0,0xa4,0xe6,0xe1,0xe1,0xea,0xa4,0xed,0xe9,0xf4,0xe8,0xe1,0xe9,0xe1,0xea,0xf0,0xe1,0xe0]

/*: "#999999" :*/
fileprivate let kStr_observerPageTitle:String = "#finishfinishfinish"

/*: "0/20" :*/
fileprivate let kStr_fillOneName:[Character] = ["0","/","2","0"]

/*: "Nickname" :*/
fileprivate let kStr_databaseData:[Character] = ["N","i","c","k","n","a","m","e"]

/*: "enter your name" :*/
fileprivate let kStr_postAppNameTitle:String = "enindexe"
fileprivate let kStr_leadingData:String = "view"
fileprivate let kStr_textData:[Character] = [" ","n","a","m","e"]

/*: /20" :*/
fileprivate let kStr_noGroupNetText:[Character] = ["/","2","0"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  CamshaftViewCell.swift
//  AbroadTalking
//
//  Created by Charlotte on 2022/8/30.
//

//: import UIKit
import UIKit

//: typealias EditNameBlock = (String) ->(Void)
typealias EditNameBlock = (String) -> Void

//: class TalkingEditNameCell: UITableViewCell {
class CamshaftViewCell: UITableViewCell {
    //: var nameBlock: EditNameBlock!
    var nameBlock: EditNameBlock!

    //: override func awakeFromNib() {
    override func awakeFromNib() {
        //: super.awakeFromNib()
        super.awakeFromNib()
    }

    //: override func setSelected(_ selected: Bool, animated: Bool) {
    override func setSelected(_ selected: Bool, animated: Bool) {
        //: super.setSelected(selected, animated: animated)
        super.setSelected(selected, animated: animated)
    }

    //: override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        //: super.init(style: style, reuseIdentifier: reuseIdentifier)
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        //: selectionStyle = UITableViewCell.SelectionStyle.none
        selectionStyle = UITableViewCell.SelectionStyle.none
        //: self.backgroundColor = UIColor.clear
        self.backgroundColor = UIColor.clear
        //: self.contentView.backgroundColor = UIColor.clear
        self.contentView.backgroundColor = UIColor.clear
        //: self.addSubview(backView)
        self.addSubview(backView)
        //: backView .addSubview(nameTF)
        backView.addSubview(nameTF)
        //: backView.addSubview(numberLB)
        backView.addSubview(numberLB)
        //: backView.addSubview(titleLB)
        backView.addSubview(titleLB)

        //: NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillBeHidden(notification:)), name: UIResponder.keyboardWillHideNotification, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(last(notification:)), name: UIResponder.keyboardWillHideNotification, object: nil)
    }

    //: required init?(coder aDecoder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: kStr_sectionTitle.map{$0^132}, encoding: .utf8)!)
    }

    //: override func layoutSubviews() {
    override func layoutSubviews() {
        //: super.layoutSubviews()
        super.layoutSubviews()

        //: backView.snp.makeConstraints { make in
        backView.snp.makeConstraints { make in
            //: make.leading.equalTo(self).offset(15)
            make.leading.equalTo(self).offset(15)
            //: make.trailing.equalTo(self.snp.trailing).offset(-15)
            make.trailing.equalTo(self.snp.trailing).offset(-15)
            //: make.top.equalTo(self)
            make.top.equalTo(self)
            //: make.bottom.equalTo(self).offset(-15)
            make.bottom.equalTo(self).offset(-15)
        }
        //: nameTF.snp.makeConstraints { make in
        nameTF.snp.makeConstraints { make in
            //: make.leading.equalTo(backView).offset(12)
            make.leading.equalTo(backView).offset(12)
            //: make.trailing.equalTo(backView.snp.trailing).offset(-12)
            make.trailing.equalTo(backView.snp.trailing).offset(-12)
            //: make.top.equalTo(backView).offset(46)
            make.top.equalTo(backView).offset(46)
            //: make.bottom.equalTo(backView.snp.bottom).offset(-12)
            make.bottom.equalTo(backView.snp.bottom).offset(-12)
        }
        //: numberLB.snp.makeConstraints { make in
        numberLB.snp.makeConstraints { make in
            //: make.trailing.equalTo(backView.snp.trailing).offset(-12)
            make.trailing.equalTo(backView.snp.trailing).offset(-12)
            //: make.top.equalTo(backView).offset(12)
            make.top.equalTo(backView).offset(12)
            //: make.height.equalTo(20)
            make.height.equalTo(20)
        }
        //: titleLB.snp.makeConstraints { make in
        titleLB.snp.makeConstraints { make in
            //: make.leading.equalTo(backView).offset(12)
            make.leading.equalTo(backView).offset(12)
            //: make.top.equalTo(backView).offset(12)
            make.top.equalTo(backView).offset(12)
            //: make.height.equalTo(24)
            make.height.equalTo(24)
        }
    }

    // MARK: - Lazy load

    //: lazy var backView: UIView = {
    lazy var backView: UIView = {
        //: let view = UIView.init()
        let view = UIView()
        //: view.layer.cornerRadius = 8
        view.layer.cornerRadius = 8
        //: view.backgroundColor = UIColor.white
        view.backgroundColor = UIColor.white
        //: return view
        return view
        //: }()
    }()

    //: lazy var numberLB: UILabel = {
    lazy var numberLB: UILabel = {
        //: let LB = UILabel.init()
        let LB = UILabel()
        //: LB.textColor = UIColor.init(hex: "#999999")
        LB.textColor = UIColor(hex: (kStr_observerPageTitle.replacingOccurrences(of: "finish", with: "99")))
        //: LB.font = UIFont.pingfangFont(type: .Regular, fontSize: 14)
        LB.font = UIFont.groupSize(type: .Regular, fontSize: 14)
        //: LB.text = "0/20"
        LB.text = (String(kStr_fillOneName))
        //: LB.textAlignment = .right
        LB.textAlignment = .right
        //: return LB
        return LB
        //: }()
    }()

    //: lazy var titleLB: UILabel = {
    lazy var titleLB: UILabel = {
        //: let LB = UILabel.init()
        let LB = UILabel()
        //: LB.textColor = UIColor.appTitleColor()
        LB.textColor = UIColor.dataFormat()
        //: LB.font = UIFont.pingfangFont(type: .Medium, fontSize: 17)
        LB.font = UIFont.groupSize(type: .Medium, fontSize: 17)
        //: LB.text = "Nickname".localized
        LB.text = (String(kStr_databaseData)).localized
        //: return LB
        return LB
        //: }()
    }()

    //: lazy var nameTF: UITextField = {
    lazy var nameTF: UITextField = {
        //: let tf = UITextField.init()
        let tf = UITextField()
        //: tf.backgroundColor = .appBgColor()
        tf.backgroundColor = .bottomValue()
        //: tf.textColor = UIColor.appTitleColor()
        tf.textColor = UIColor.dataFormat()
        //: tf.font = UIFont.pingfangFont(type: .Medium, fontSize: 16)
        tf.font = UIFont.groupSize(type: .Medium, fontSize: 16)
        //: tf.textAlignment = .center
        tf.textAlignment = .center
        //: tf.attributedPlaceholder = NSAttributedString.init(string: "enter your name".localized, attributes: [
        tf.attributedPlaceholder = NSAttributedString(string: (kStr_postAppNameTitle.replacingOccurrences(of: "index", with: "t") + "r yo" + kStr_leadingData.replacingOccurrences(of: "view", with: "ur") + String(kStr_textData)).localized, attributes: [
            //: NSAttributedString.Key.foregroundColor: UIColor.init(hex: "#999999")!])
            NSAttributedString.Key.foregroundColor: UIColor(hex: (kStr_observerPageTitle.replacingOccurrences(of: "finish", with: "99")))!])
        //: tf.delegate = self
        tf.delegate = self
        //: tf.returnKeyType = UIReturnKeyType.done
        tf.returnKeyType = UIReturnKeyType.done
        //: tf.text = LocationThen.share.loginUserMode.nickname
        tf.text = LocationThen.share.loginUserMode.nickname
        //: numberLB.text = "\(LocationThen.share.loginUserMode.nickname?.count ?? 0)/20"
        numberLB.text = "\(LocationThen.share.loginUserMode.nickname?.count ?? 0)/20"
        //: return tf
        return tf
        //: }()
    }()
}

// MARK: - Event

//: extension TalkingEditNameCell {
extension CamshaftViewCell {
    //: @objc func keyboardWillBeHidden(notification: NSNotification) {
    @objc func last(notification _: NSNotification) {
        //: if self.nameBlock != nil {
        if self.nameBlock != nil {
            //: self.nameBlock(nameTF.text ?? "")
            self.nameBlock(nameTF.text ?? "")
        }
    }
}

// MARK: - UITextFieldDelegate

//: extension TalkingEditNameCell: UITextFieldDelegate {
extension CamshaftViewCell: UITextFieldDelegate {
    //: func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
    func textField(_ textField: UITextField, shouldChangeCharactersIn _: NSRange, replacementString string: String) -> Bool {
        //: if textField.text!.count+string.count>20 || textField.text!.count+string.count <= 0 {
        if textField.text!.count + string.count > 20 || textField.text!.count + string.count <= 0 {
            //: return false
            return false
        }

        //: numberLB.text = "\(textField.text!.count+string.count)/20"
        numberLB.text = "\(textField.text!.count + string.count)/20"
        //: return true
        return true
    }

    //: func textFieldShouldReturn(_ textField: UITextField) -> Bool {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        //: textField.resignFirstResponder()
        textField.resignFirstResponder()

        //: return true
        return true
    }
}
