
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let kStr_addName:[UInt8] = [0x64,0x65,0x74,0x6e,0x65,0x6d,0x65,0x6c,0x70,0x6d,0x69,0x20,0x6e,0x65,0x65,0x62,0x20,0x74,0x6f,0x6e,0x20,0x73,0x61,0x68,0x20,0x29,0x3a,0x72,0x65,0x64,0x6f,0x63,0x28,0x74,0x69,0x6e,0x69]

/*: "gift_bg_dm" :*/
fileprivate let kStr_fillText:[Character] = ["g","i","f","t","_","b"]
fileprivate let kStr_frameValue:String = "g_dmextra string manager finish"

/*: "#FFF4B5" :*/
fileprivate let kStr_giftValue:[Character] = ["#","F"]
fileprivate let kStr_explainValue:[Character] = ["F","F","4","B","5"]

/*: "won " :*/
fileprivate let kStr_yearData:[Character] = ["w","o","n"," "]

/*: " coins in " :*/
fileprivate let kStr_errorName:String = "label name co"
fileprivate let kStr_lineValue:String = "ins in color let target data"

/*: " x :*/
fileprivate let kStr_actionData:[Character] = [" ","x"]

/*: "just sent" :*/
fileprivate let kStr_toTitle:[Character] = ["j","u","s","t"]
fileprivate let kStr_originalData:[Character] = [" ","s","e","n","t"]

/*: "  :*/
fileprivate let kStr_touchValue:String = " "

/*: "#4120C1" :*/
fileprivate let kStr_recordTitle:[Character] = ["#","4","1","2","0","C"]
fileprivate let kStr_lockData:String = "1"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  SearchReactiveCompatible.swift
//  FloraFlex
//
//  Created by DouXiu on 2024/11/25.
//

//: import UIKit
import UIKit

//: class GiftFloatView: UIView {
class SearchReactiveCompatible: UIView {
    /// 礼物model
    //: private var giftModel = SocialBroadcastModel()
    private var giftModel = ModelType()

    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: setupSubviews()
        releaseSubviews()
        //: setupSubViewsConstraint()
        argument()
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: kStr_addName.reversed(), encoding: .utf8)!)
    }

    // MARK: - Lazy Load

    //: private lazy var bgView: UIImageView = {
    private lazy var bgView: UIImageView = {
        //: let v = UIImageView()
        let v = UIImageView()
        //: v.image = UIImage.bundleBy(name: "gift_bg_dm")
        v.image = UIImage.bundleBy(name: (String(kStr_fillText) + String(kStr_frameValue.prefix(4))))
        //: v.contentMode = .scaleAspectFill
        v.contentMode = .scaleAspectFill
        //: v.isUserInteractionEnabled = true
        v.isUserInteractionEnabled = true
        //: return v
        return v
        //: }()
    }()

    //: private lazy var icon: UIImageView = {
    private lazy var icon: UIImageView = {
        //: let v = UIImageView()
        let v = UIImageView()
        //: v.contentMode = .scaleAspectFill
        v.contentMode = .scaleAspectFill
        //: v.layer.cornerRadius = 18
        v.layer.cornerRadius = 18
        //: v.layer.masksToBounds = true
        v.layer.masksToBounds = true
        //: v.layer.borderColor = UIColor(hex: "#FFF4B5")?.cgColor
        v.layer.borderColor = UIColor(hex: (String(kStr_giftValue) + String(kStr_explainValue)))?.cgColor
        //: v.layer.borderWidth = 1
        v.layer.borderWidth = 1
        //: v.isUserInteractionEnabled = true
        v.isUserInteractionEnabled = true
        // 添加点击事件
        //: let tap = UITapGestureRecognizer.init { [weak self] _ in
        let tap = UITapGestureRecognizer.init { [weak self] _ in
            //: guard let self = self else { return }
            guard let self = self else { return }
            //: self.pushToUserDetailVC()
            self.pushModeDrunk()
        }
        //: v.addGestureRecognizer(tap)
        v.addGestureRecognizer(tap)
        //: return v
        return v
        //: }()
    }()

    //: private lazy var nicknameLab: UILabel = {
    private lazy var nicknameLab: UILabel = {
        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.textColor = UIColor(hex: "#FFF4B5")
        lab.textColor = UIColor(hex: (String(kStr_giftValue) + String(kStr_explainValue)))
        //: lab.font = UIFont.dorsum(fontSize: 15)
        lab.font = UIFont.dorsum(fontSize: 15)
        //: lab.isUserInteractionEnabled = true
        lab.isUserInteractionEnabled = true
        // 添加点击事件
        //: let tap = UITapGestureRecognizer.init { [weak self] _ in
        let tap = UITapGestureRecognizer.init { [weak self] _ in
            //: guard let self = self else { return }
            guard let self = self else { return }
            //: self.pushToUserDetailVC()
            self.pushModeDrunk()
        }
        //: lab.addGestureRecognizer(tap)
        lab.addGestureRecognizer(tap)
        //: return lab
        return lab
        //: }()
    }()

    //: private lazy var contentLab: UILabel = {
    private lazy var contentLab: UILabel = {
        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.textColor = UIColor(hex: "#FFF4B5")
        lab.textColor = UIColor(hex: (String(kStr_giftValue) + String(kStr_explainValue)))
        //: lab.font = UIFont.messageDown(fontSize: 12)
        lab.font = UIFont.messageDown(fontSize: 12)
        //: lab.numberOfLines = 1
        lab.numberOfLines = 1
        //: lab.lineBreakMode = .byTruncatingTail
        lab.lineBreakMode = .byTruncatingTail
        //: return lab
        return lab
        //: }()
    }()

    //: private lazy var giftNumLab: UILabel = {
    private lazy var giftNumLab: UILabel = {
        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.textColor = UIColor(hex: "#FFF4B5")
        lab.textColor = UIColor(hex: (String(kStr_giftValue) + String(kStr_explainValue)))
        //: lab.font = UIFont.messageDown(fontSize: 12)
        lab.font = UIFont.messageDown(fontSize: 12)
        //: lab.numberOfLines = 1
        lab.numberOfLines = 1
        //: lab.setContentHuggingPriority(.required, for: .horizontal)
        lab.setContentHuggingPriority(.required, for: .horizontal)
        //: lab.setContentCompressionResistancePriority(.required, for: .horizontal)
        lab.setContentCompressionResistancePriority(.required, for: .horizontal)
        //: lab.isHidden = true
        lab.isHidden = true
        //: return lab
        return lab
        //: }()
    }()

    //: private lazy var giftImgV: UIImageView = {
    private lazy var giftImgV: UIImageView = {
        //: let v = UIImageView()
        let v = UIImageView()
        //: v.contentMode = .scaleAspectFill
        v.contentMode = .scaleAspectFill
        //: v.layer.masksToBounds = true
        v.layer.masksToBounds = true
        //: v.isHidden = true
        v.isHidden = true
        //: return v
        return v
        //: }()
    }()
}

// MARK: - Event

//: extension GiftFloatView {
extension SearchReactiveCompatible {
    /// 刷新视图
    //: func refreshGift(_ model: SocialBroadcastModel) {
    func placeLive(_ model: ModelType) {
        //: giftModel = model
        giftModel = model
        //: icon.setUrlImage(urlStr: giftModel.headPic)
        icon.timeFinish(urlStr: giftModel.headPic)
        //: nicknameLab.text = giftModel.uNickname
        nicknameLab.text = giftModel.uNickname
        //: if giftModel.broadStatus == 1 {
        if giftModel.broadStatus == 1 { // 中奖
            //: giftImgV.isHidden = true
            giftImgV.isHidden = true
            //: giftNumLab.isHidden = true
            giftNumLab.isHidden = true
            //: contentLab.text = "won ".localized + "\(giftModel.totalCoin)" + " coins in ".localized + giftModel.gameName
            contentLab.text = (String(kStr_yearData)).localized + "\(giftModel.totalCoin)" + (String(kStr_errorName.suffix(3)) + String(kStr_lineValue.prefix(7))).localized + giftModel.gameName
            //: contentLab.snp.remakeConstraints { make in
            contentLab.snp.remakeConstraints { make in
                //: make.leading.height.equalTo(nicknameLab)
                make.leading.height.equalTo(nicknameLab)
                //: make.bottom.equalTo(-5)
                make.bottom.equalTo(-5)
                //: make.trailing.equalTo(-10)
                make.trailing.equalTo(-10)
            }

            //: } else {
        } else {
            //: giftImgV.isHidden = false
            giftImgV.isHidden = false
            //: giftImgV.setUrlImage(urlStr: giftModel.img)
            giftImgV.timeFinish(urlStr: giftModel.img)
            //: giftNumLab.isHidden = false
            giftNumLab.isHidden = false
            //: giftNumLab.text = " x\(giftModel.num)"
            giftNumLab.text = " x\(giftModel.num)"
            //: let rangeText = "just sent".localized
            let rangeText = (String(kStr_toTitle) + String(kStr_originalData)).localized
            //: let giftName = changeGiftName(giftmodel: giftModel)
            let giftName = notName(giftmodel: giftModel)
            //: let fullText = rangeText + " \(giftName)"
            let fullText = rangeText + " \(giftName)"
            //: let attributedString = NSMutableAttributedString(string: fullText)
            let attributedString = NSMutableAttributedString(string: fullText)
            //: if let range = fullText.range(of: rangeText) {
            if let range = fullText.range(of: rangeText) {
                //: let nsRange = NSRange(range, in: fullText)
                let nsRange = NSRange(range, in: fullText)
                //: attributedString.addAttribute(.foregroundColor, value: UIColor(hex: "#4120C1")!, range: nsRange)
                attributedString.addAttribute(.foregroundColor, value: UIColor(hex: (String(kStr_recordTitle) + kStr_lockData.capitalized))!, range: nsRange)
            }
            //: contentLab.attributedText = attributedString
            contentLab.attributedText = attributedString
            //: contentLab.snp.remakeConstraints { make in
            contentLab.snp.remakeConstraints { make in
                //: make.leading.height.equalTo(nicknameLab)
                make.leading.height.equalTo(nicknameLab)
                //: make.bottom.equalTo(-5)
                make.bottom.equalTo(-5)
            }
        }
    }

    /// 获取礼物名称
    //: private func changeGiftName(giftmodel: SocialBroadcastModel) -> String {
    private func notName(giftmodel: ModelType) -> String {
        //: var gameName = giftmodel.giftName
        var gameName = giftmodel.giftName
        //: if TalkingRequestAddrTool.share.interfaceLang == LangType.en.rawValue {
        if ViewManagerAddrTool.share.interfaceLang == CountClusterLiteral.en.rawValue {
            //: gameName = giftmodel.giftNameI18n.en
            gameName = giftmodel.giftNameI18n.en
            //: } else if TalkingRequestAddrTool.share.interfaceLang == LangType.ar.rawValue {
        } else if ViewManagerAddrTool.share.interfaceLang == CountClusterLiteral.ar.rawValue {
            //: gameName = giftmodel.giftNameI18n.ar
            gameName = giftmodel.giftNameI18n.ar
            //: } else if TalkingRequestAddrTool.share.interfaceLang == LangType.es.rawValue {
        } else if ViewManagerAddrTool.share.interfaceLang == CountClusterLiteral.es.rawValue {
            //: gameName = giftmodel.giftNameI18n.es
            gameName = giftmodel.giftNameI18n.es
            //: } else if TalkingRequestAddrTool.share.interfaceLang == LangType.pt.rawValue {
        } else if ViewManagerAddrTool.share.interfaceLang == CountClusterLiteral.pt.rawValue {
            //: gameName = giftmodel.giftNameI18n.pt
            gameName = giftmodel.giftNameI18n.pt
        }
        //: return gameName
        return gameName
    }

    /// 跳转到用户详情页
    //: private func pushToUserDetailVC() {
    private func pushModeDrunk() {
        //: var uid = "\(giftModel.uid)"
        var uid = "\(giftModel.uid)"
        //: if giftModel.broadStatus == 1 {
        if giftModel.broadStatus == 1 {
            //: uid = "\(giftModel.senderUid)"
            uid = "\(giftModel.senderUid)"
        }
        //: EffectPushManager.share.func__pushToUserDetailVC(uid: uid)
        EffectPushManager.share.userAdd(uid: uid)
    }
}

// MARK: - Layout

//: extension GiftFloatView {
extension SearchReactiveCompatible {
    /// 添加视图
    //: private func setupSubviews() {
    private func releaseSubviews() {
        //: self.frame = CGRect(x: 0, y: StatusBarNavigationBarHeight, width: ScreenWidth, height: 60)
        self.frame = CGRect(x: 0, y: kLet_netName, width: kLet_halfData, height: 60)
        //: self.addSubview(bgView)
        self.addSubview(bgView)
        //: bgView.addSubview(icon)
        bgView.addSubview(icon)
        //: bgView.addSubview(nicknameLab)
        bgView.addSubview(nicknameLab)
        //: bgView.addSubview(contentLab)
        bgView.addSubview(contentLab)
        //: bgView.addSubview(giftNumLab)
        bgView.addSubview(giftNumLab)
        //: bgView.addSubview(giftImgV)
        bgView.addSubview(giftImgV)
    }

    /// 添加约束
    //: private func setupSubViewsConstraint() {
    private func argument() {
        //: bgView.snp.makeConstraints { make in
        bgView.snp.makeConstraints { make in
            //: make.leading.equalTo(35)
            make.leading.equalTo(35)
            //: make.trailing.equalTo(-35)
            make.trailing.equalTo(-35)
            //: make.centerY.equalToSuperview()
            make.centerY.equalToSuperview()
            //: make.height.equalTo(actualWidth(w: 44))
            make.height.equalTo(originalScene(w: 44))
        }

        //: icon.snp.makeConstraints { make in
        icon.snp.makeConstraints { make in
            //: make.centerY.equalToSuperview()
            make.centerY.equalToSuperview()
            //: make.leading.equalTo(4)
            make.leading.equalTo(4)
            //: make.size.equalTo(36)
            make.size.equalTo(36)
        }

        //: nicknameLab.snp.makeConstraints { make in
        nicknameLab.snp.makeConstraints { make in
            //: make.leading.equalTo(46)
            make.leading.equalTo(46)
            //: make.height.equalTo(17)
            make.height.equalTo(17)
            //: make.top.equalTo(5)
            make.top.equalTo(5)
            //: make.trailing.lessThanOrEqualTo(giftImgV.snp.leading).offset(-5)
            make.trailing.lessThanOrEqualTo(giftImgV.snp.leading).offset(-5)
        }

        //: giftImgV.snp.makeConstraints { make in
        giftImgV.snp.makeConstraints { make in
            //: make.size.equalTo(56)
            make.size.equalTo(56)
            //: make.centerY.equalToSuperview()
            make.centerY.equalToSuperview()
            //: make.trailing.equalTo(-10)
            make.trailing.equalTo(-10)
        }

        //: contentLab.snp.makeConstraints { make in
        contentLab.snp.makeConstraints { make in
            //: make.leading.height.equalTo(nicknameLab)
            make.leading.height.equalTo(nicknameLab)
            //: make.bottom.equalTo(-5)
            make.bottom.equalTo(-5)
        }

        //: giftNumLab.snp.makeConstraints { make in
        giftNumLab.snp.makeConstraints { make in
            //: make.height.bottom.equalTo(contentLab)
            make.height.bottom.equalTo(contentLab)
            //: make.leading.equalTo(contentLab.snp.trailing)
            make.leading.equalTo(contentLab.snp.trailing)
            //: make.trailing.lessThanOrEqualTo(giftImgV.snp.leading).offset(-5)
            make.trailing.lessThanOrEqualTo(giftImgV.snp.leading).offset(-5)
        }
    }
}
