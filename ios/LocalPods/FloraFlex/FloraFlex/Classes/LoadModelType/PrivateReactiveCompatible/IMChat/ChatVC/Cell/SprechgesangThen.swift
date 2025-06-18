
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let kStr_formatContent:[UInt8] = [0x5a,0x5d,0x5a,0x47,0x1b,0x50,0x5c,0x57,0x56,0x41,0x9,0x1a,0x13,0x5b,0x52,0x40,0x13,0x5d,0x5c,0x47,0x13,0x51,0x56,0x56,0x5d,0x13,0x5a,0x5e,0x43,0x5f,0x56,0x5e,0x56,0x5d,0x47,0x56,0x57]

private func statusLab(add num: UInt8) -> UInt8 {
    return num ^ 51
}

/*: "#EDEDED" :*/
fileprivate let kStr_pushValue:[Character] = ["#","E","D","E","D","E","D"]

/*: "Click for details" :*/
fileprivate let kStr_cellText:[Character] = ["C","l","i","c","k"," ","f","o","r"," ","d","e","t","a","i","l","s"]

/*: "#128CFF" :*/
fileprivate let kStr_yourTopData:String = "#1"
fileprivate let kStr_byName:[Character] = ["2","8","C","F","F"]

/*: "system_notif_click_go" :*/
fileprivate let kStr_managerTitle:String = "addyaddtem"
fileprivate let kStr_equalTitle:String = "make to list model modelif_cl"
fileprivate let kStr_paraName:String = "gaccept"

/*: "img" :*/
fileprivate let kStr_dayData:String = "imlabel"

/*: "jumpKey" :*/
fileprivate let kStr_buttonName:[Character] = ["j","u","m","p","K","e"]
fileprivate let kStr_maleName:[Character] = ["y"]

/*: "url" :*/
fileprivate let kStr_valueSecondData:[Character] = ["u","r","l"]

/*: "mfChat" :*/
fileprivate let kStr_constraintText:[UInt8] = [0x77,0x7c,0x59,0x72,0x7b,0x6e]

private func sceneFinish(leading num: UInt8) -> UInt8 {
    return num ^ 26
}

/*: "jumpUid" :*/
fileprivate let kStr_commentTitle:[Character] = ["j","u","m","p","U"]
fileprivate let kStr_dataValue:String = "ID"

/*: "mfChatGift" :*/
fileprivate let kStr_leadingText:[UInt8] = [0xc8,0xc3,0xe6,0xcd,0xc4,0xd1,0xe2,0xcc,0xc3,0xd1]

/*: "user" :*/
fileprivate let kStr_showWillData:[UInt8] = [0x72,0x65,0x73,0x75]

/*: "outerUrl" :*/
fileprivate let kStr_indexDownTitle:[UInt8] = [0x3c,0x26,0x27,0x36,0x21,0x6,0x21,0x3f]

private func cellAspect(request num: UInt8) -> UInt8 {
    return num ^ 83
}

/*: "系统通知跳转失败：不支持  :*/
fileprivate let kStr_viewValue:String = "系\u{7edf}通\u{77e5}跳"
fileprivate let kStr_equalLackData:[Character] = ["转"]
fileprivate let kStr_managerDownTrueData:[Character] = ["失","败","：","不","支","\u{6301}"," "]

/*:  跳转类型。" :*/
fileprivate let kStr_itemValue:[Character] = [" ","跳","转","类","型"]
fileprivate let kStr_infoData:[Character] = ["。"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  SprechgesangThen.swift
//  AbroadTalking
//
//  Created by young on 2023/11/8.
//

//: import UIKit
import UIKit

//: class TalkingChatSystemNotifJumpMsgCell: TalkingChatBaseMsgCell {
class SprechgesangThen: CollectionViewCell {
    //: var textData: DiagonalCellData?
    var textData: DiagonalCellData?

    //: override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        //: super.init(style: style, reuseIdentifier: reuseIdentifier)
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        //: setupSubviews()
        customer()
    }

    //: required init?(coder aDecoder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: kStr_formatContent.map{statusLab(add: $0)}, encoding: .utf8)!)
    }

    // MARK: - Lazy Load

    //: private lazy var bannerImgV: UIImageView = {
    private lazy var bannerImgV: UIImageView = {
        //: let img = UIImageView()
        let img = UIImageView()
        //: img.isHidden = true
        img.isHidden = true
        //: self.bubbleImgView.addSubview(img)
        self.bubbleImgView.addSubview(img)
        //: return img
        return img
        //: }()
    }()

    //: private lazy var titleLab: YYLabel = {
    private lazy var titleLab: YYLabel = {
        //: let lab = YYLabel()
        let lab = YYLabel()
        //: lab.numberOfLines = 0
        lab.numberOfLines = 0
        //: lab.isHidden = true
        lab.isHidden = true
        //: self.bubbleImgView.addSubview(lab)
        self.bubbleImgView.addSubview(lab)
        //: return lab
        return lab
        //: }()
    }()

    //: private lazy var contentLab: YYLabel = {
    private lazy var contentLab: YYLabel = {
        //: let lab = YYLabel()
        let lab = YYLabel()
        //: lab.numberOfLines = 0
        lab.numberOfLines = 0
        //: lab.isHidden = true
        lab.isHidden = true
        //: self.bubbleImgView.addSubview(lab)
        self.bubbleImgView.addSubview(lab)
        //: return lab
        return lab
        //: }()
    }()

    //: private lazy var jumpBtn: UIButton = {
    private lazy var jumpBtn: UIButton = {
        //: let btn = UIButton()
        let btn = UIButton()
        //: btn.addTarget(self, action: #selector(jumpToDetailsButtonEvent), for: .touchUpInside)
        btn.addTarget(self, action: #selector(viewEvent), for: .touchUpInside)
        //: btn.isHidden = true
        btn.isHidden = true
        //: self.bubbleImgView.addSubview(btn)
        self.bubbleImgView.addSubview(btn)
        //: let line = UIView()
        let line = UIView()
        //: line.backgroundColor = UIColor(hex: "#EDEDED")
        line.backgroundColor = UIColor(hex: (String(kStr_pushValue)))
        //: btn.addSubview(line)
        btn.addSubview(line)
        //: line.snp.makeConstraints { make in
        line.snp.makeConstraints { make in
            //: make.top.equalToSuperview()
            make.top.equalToSuperview()
            //: make.leading.equalTo(10)
            make.leading.equalTo(10)
            //: make.trailing.equalTo(-10)
            make.trailing.equalTo(-10)
            //: make.height.equalTo(0.5)
            make.height.equalTo(0.5)
        }
        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.text = "Click for details".localized
        lab.text = (String(kStr_cellText)).localized
        //: lab.textColor = UIColor(hex: "#128CFF")
        lab.textColor = UIColor(hex: (kStr_yourTopData.capitalized + String(kStr_byName)))
        //: lab.font = UIFont.pingfangFont(type: .Regular, fontSize: 14)
        lab.font = UIFont.groupSize(type: .Regular, fontSize: 14)
        //: btn.addSubview(lab)
        btn.addSubview(lab)
        //: lab.snp.makeConstraints { make in
        lab.snp.makeConstraints { make in
            //: make.centerY.equalToSuperview()
            make.centerY.equalToSuperview()
            //: make.leading.equalTo(10)
            make.leading.equalTo(10)
            //: make.trailing.equalTo(-20)
            make.trailing.equalTo(-20)
        }
        //: let imgV = UIImageView()
        let imgV = UIImageView()
        //: imgV.image = UIImage.bundleBy(name: "system_notif_click_go")
        imgV.image = UIImage.bundleBy(name: (kStr_managerTitle.replacingOccurrences(of: "add", with: "s") + "_not" + String(kStr_equalTitle.suffix(5)) + "ick_" + kStr_paraName.replacingOccurrences(of: "accept", with: "o")))
        //: btn.addSubview(imgV)
        btn.addSubview(imgV)
        //: imgV.snp.makeConstraints { make in
        imgV.snp.makeConstraints { make in
            //: make.centerY.equalToSuperview()
            make.centerY.equalToSuperview()
            //: make.trailing.equalTo(-10)
            make.trailing.equalTo(-10)
            //: make.size.equalTo(CGSize(width: 6, height: 11))
            make.size.equalTo(CGSize(width: 6, height: 11))
        }
        //: return btn
        return btn
        //: }()
    }()
}

// MARK: - Event

//: extension TalkingChatSystemNotifJumpMsgCell {
extension SprechgesangThen {
    /// 刷新视图
    //: override func fill(with data: TCommonCellData) {
    override func fill(with data: TCommonCellData) {
        //: super.fill(with: data)
        super.fill(with: data)
        //: bannerImgV.isHidden = true
        bannerImgV.isHidden = true
        //: titleLab.isHidden = true
        titleLab.isHidden = true
        //: contentLab.isHidden = true
        contentLab.isHidden = true
        //: jumpBtn.isHidden = true
        jumpBtn.isHidden = true
        //: textData = data as? DiagonalCellData
        textData = data as? DiagonalCellData
        //: guard let textData = textData else { return }
        guard let textData = textData else { return }
        //: if textData.hasBanner {
        if textData.hasBanner {
            //: bannerImgV.setUrlImage(urlStr: textData.extraJson["img"].stringValue)
            bannerImgV.timeFinish(urlStr: textData.extraJson[(kStr_dayData.replacingOccurrences(of: "label", with: "g"))].stringValue)
            //: bannerImgV.isHidden = false
            bannerImgV.isHidden = false
            //: bannerImgV.Corner(width: textData.bannerSize.width,
            bannerImgV.loftiness(width: textData.bannerSize.width,
                                 //: height: textData.bannerSize.height,
                                 height: textData.bannerSize.height,
                                 //: corners: [ .topRight],
                                 corners: [.topRight],
                                 //: cornerRadii: CGSize(width: 12, height: 12))
                                 cornerRadii: CGSize(width: 12, height: 12))
        }
        //: if textData.titleHeight > 0 {
        if textData.titleHeight > 0 {
            //: let width = textData.bannerSize.width-20
            let width = textData.bannerSize.width - 20
            //: let yyLayout = YYTextLayout.init(containerSize: CGSize(width: width, height: CGFLOAT_MAX), text: textData.titleAttrStr)
            let yyLayout = YYTextLayout(containerSize: CGSize(width: width, height: CGFLOAT_MAX), text: textData.titleAttrStr)
            //: titleLab.textLayout = yyLayout
            titleLab.textLayout = yyLayout
            //: titleLab.isHidden = false
            titleLab.isHidden = false
        }
        //: if textData.contentHeight > 0 {
        if textData.contentHeight > 0 {
            //: let width = textData.bannerSize.width-20
            let width = textData.bannerSize.width - 20
            //: let yyLayout = YYTextLayout.init(containerSize: CGSize(width: width, height: CGFLOAT_MAX), text: textData.contentAttrStr)
            let yyLayout = YYTextLayout(containerSize: CGSize(width: width, height: CGFLOAT_MAX), text: textData.contentAttrStr)
            //: contentLab.textLayout = yyLayout
            contentLab.textLayout = yyLayout
            //: contentLab.isHidden = false
            contentLab.isHidden = false
        }

        //: jumpBtn.isHidden = (textData.jumpHeight == 0)
        jumpBtn.isHidden = (textData.jumpHeight == 0)
    }

    /// 跳转事件
    //: @objc private func jumpToDetailsButtonEvent() {
    @objc private func viewEvent() {
        //: guard let textData = textData else { return }
        guard let textData = textData else { return }
        //: guard textData.jumpHeight > 0 else { return }
        guard textData.jumpHeight > 0 else { return }
        //: let jumpKey = textData.extraJson["jumpKey"].stringValue
        let jumpKey = textData.extraJson[(String(kStr_buttonName) + String(kStr_maleName))].stringValue
        //: switch (jumpKey) {
        switch jumpKey {
        //: case "url": // 网页
        case (String(kStr_valueSecondData)): // 网页
            //: let url = textData.extraJson["url"].stringValue
            let url = textData.extraJson[(String(kStr_valueSecondData))].stringValue
            //: EffectPushManager.share.func__pushToWebVC(urlStr: url)
            EffectPushManager.share.deleteTake(urlStr: url)

        //: case "mfChat":  // 私聊
        case String(bytes: kStr_constraintText.map{sceneFinish(leading: $0)}, encoding: .utf8)!: // 私聊
            //: let jumpUid = textData.extraJson["jumpUid"].stringValue
            let jumpUid = textData.extraJson[(String(kStr_commentTitle) + kStr_dataValue.lowercased())].stringValue
            //: EffectPushManager.share.func__pushToPriveteChatVC(chatID: jumpUid)
            EffectPushManager.share.fromCompletion(chatID: jumpUid)

        //: case "mfChatGift":  // 私聊打开礼物面板
        case String(bytes: kStr_leadingText.map{$0^165}, encoding: .utf8)!: // 私聊打开礼物面板
            //: let jumpUid = textData.extraJson["jumpUid"].stringValue
            let jumpUid = textData.extraJson[(String(kStr_commentTitle) + kStr_dataValue.lowercased())].stringValue
            //: EffectPushManager.share.func__pushToPriveteChatVC(chatID: jumpUid) { vc in
            EffectPushManager.share.fromCompletion(chatID: jumpUid) { vc in
                //: vc.msgInputView.clickgiftBtn()
                vc.msgInputView.giveAndTake()
            }
        //: case "user": // 用户详情
        case String(bytes: kStr_showWillData.reversed(), encoding: .utf8)!: // 用户详情
            //: let jumpUid = textData.extraJson["jumpUid"].stringValue
            let jumpUid = textData.extraJson[(String(kStr_commentTitle) + kStr_dataValue.lowercased())].stringValue
            //: EffectPushManager.share.func__pushToUserDetailVC(uid: jumpUid)
            EffectPushManager.share.userAdd(uid: jumpUid)

        //: case "outerUrl": // 外链
        case String(bytes: kStr_indexDownTitle.map{cellAspect(request: $0)}, encoding: .utf8)!: // 外链
            //: let url = textData.extraJson["url"].stringValue
            let url = textData.extraJson[(String(kStr_valueSecondData))].stringValue
            //: if let url = URL(string: url) {
            if let url = URL(string: url) {
                //: UIApplication.shared.open(url, options: [:], completionHandler: nil)
                UIApplication.shared.open(url, options: [:], completionHandler: nil)
            }

        //: default:
        default:
            //: printLog(message: "系统通知跳转失败：不支持 \(jumpKey) 跳转类型。")
            pathLine(message: (kStr_viewValue + String(kStr_equalLackData) + String(kStr_managerDownTrueData)) + "\(jumpKey)" + (String(kStr_itemValue) + String(kStr_infoData)))
        }
    }
}

// MARK: - Layout

//: extension TalkingChatSystemNotifJumpMsgCell {
extension SprechgesangThen {
    /// 初始化视图
    //: private func setupSubviews() {
    private func customer() {
        //: self.bubbleImgView.layer.cornerRadius = 2
        self.bubbleImgView.layer.cornerRadius = 2
        //: self.bubbleImgView.layer.masksToBounds = true
        self.bubbleImgView.layer.masksToBounds = true
        //: self.bubbleImgView.isHidden = false
        self.bubbleImgView.isHidden = false
        //: self.bubbleImgView.isUserInteractionEnabled = true
        self.bubbleImgView.isUserInteractionEnabled = true
    }

    /// 自动更新布局
    //: override func layoutSubviews() {
    override func layoutSubviews() {
        //: super.layoutSubviews()
        super.layoutSubviews()
        //: guard let textData = textData else { return }
        guard let textData = textData else { return }
        //: let bannerH = textData.hasBanner ? textData.bannerSize.height:0
        let bannerH = textData.hasBanner ? textData.bannerSize.height : 0
        //: self.bannerImgV.snp.makeConstraints { make in
        self.bannerImgV.snp.makeConstraints { make in
            //: make.top.leading.equalToSuperview()
            make.top.leading.equalToSuperview()
            //: make.width.equalTo(textData.bannerSize.width)
            make.width.equalTo(textData.bannerSize.width)
            //: make.height.equalTo(bannerH)
            make.height.equalTo(bannerH)
        }

        //: titleLab.snp.makeConstraints { make in
        titleLab.snp.makeConstraints { make in
            //: make.top.equalTo(bannerImgV.snp.bottom).offset(10)
            make.top.equalTo(bannerImgV.snp.bottom).offset(10)
            //: make.leading.equalTo(10)
            make.leading.equalTo(10)
            //: make.trailing.equalTo(-10)
            make.trailing.equalTo(-10)
            //: make.height.equalTo(textData.titleHeight)
            make.height.equalTo(textData.titleHeight)
        }

        //: contentLab.snp.makeConstraints { make in
        contentLab.snp.makeConstraints { make in
            //: make.top.equalTo(titleLab.snp.bottom).offset(4)
            make.top.equalTo(titleLab.snp.bottom).offset(4)
            //: make.leading.trailing.equalTo(titleLab)
            make.leading.trailing.equalTo(titleLab)
            //: make.height.equalTo(textData.contentHeight)
            make.height.equalTo(textData.contentHeight)
        }

        //: jumpBtn.snp.makeConstraints { make in
        jumpBtn.snp.makeConstraints { make in
            //: make.top.equalTo(contentLab.snp.bottom).offset(10)
            make.top.equalTo(contentLab.snp.bottom).offset(10)
            //: make.leading.equalToSuperview()
            make.leading.equalToSuperview()
            //: make.width.equalTo(bannerImgV)
            make.width.equalTo(bannerImgV)
            //: make.height.equalTo(textData.jumpHeight)
            make.height.equalTo(textData.jumpHeight)
        }
    }
}
