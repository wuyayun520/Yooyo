
//: Declare String Begin

/*: "#ffffff" :*/
fileprivate let kStr_imageLayerValue:[Character] = ["#","f","f","f","f","f","f"]

/*: "/dist/loungePlus/index.html" :*/
fileprivate let kStr_reportRawValue:String = "self return file detail to/dist/"
fileprivate let kStr_messageContent:String = "dataounge"
fileprivate let kStr_fileValue:String = "var makendex."

/*: "https://" :*/
fileprivate let kStr_labelName:String = "share share table ofhttps:"
fileprivate let kStr_targetData:[Character] = ["/","/"]

/*: "http://" :*/
fileprivate let kStr_labData:String = "image"
fileprivate let kStr_ofValue:[Character] = ["t","t","p",":","/","/"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  BackCanItemView.swift
//  AbroadTalking
//
//  Created by young on 2023/8/10.
//

//: import UIKit
import UIKit

//: class TalkingFloatScreenItemView: UIView {
class BackCanItemView: UIView {
    //: let Broadcast_SpendTime = 5.0
    let Broadcast_SpendTime = 5.0
    //: let Broadcast_LineSpendTime = 1.6
    let Broadcast_LineSpendTime = 1.6
    //: let Broadcast_LevelImageWidth = 12.0
    let Broadcast_LevelImageWidth = 12.0
    //: let Broadcast_HeightOfBackgroundImageView = 22.0
    let Broadcast_HeightOfBackgroundImageView = 22.0
    //: let Broadcast_TextColor = "#ffffff"
    let Broadcast_TextColor = (String(kStr_imageLayerValue))
    //: let Broadcast_ContentFont: UIFont = UIFont.dorsum(fontSize: 12)
    let Broadcast_ContentFont: UIFont = .dorsum(fontSize: 12)

    //: var clickBlock: (() -> Void)?
    var clickBlock: (() -> Void)?
    //: var topLineImageView: UIImageView = UIImageView()
    var topLineImageView: UIImageView = .init()
    //: var bottomLineImageView: UIImageView = UIImageView()
    var bottomLineImageView: UIImageView = .init()

    //: convenience init(model: TalkingFloatingScreenModel?) {
    convenience init(model: NonremittalModelType?) {
        //: self.init()
        self.init()
        //: self.danumuMsgModel = model
        self.danumuMsgModel = model
        //: setupSubviews()
        followUp()
        //: setupSubViewsConstraint()
        ad()
        //: bindInteraction()
        serration()
    }

    //: deinit {
    deinit {}

    //: func func__roomStartAnimation() {
    func skirt() {
        //: topLineImageView.left = 0 - topLineImageView.width
        topLineImageView.left = 0 - topLineImageView.width
        //: bottomLineImageView.left = widthValue
        bottomLineImageView.left = widthValue
    }

    //: func func__endAnimation() {
    func yearTarget() {
        //: layer.removeAllAnimations()
        layer.removeAllAnimations()
        //: headAnimatedImageView.stopAnimating()
        headAnimatedImageView.stopAnimating()
    }

    //: private func configModel() {
    private func dataModel() {
        //: guard let danumuMsgModel else { return }
        guard let danumuMsgModel else { return }
        //: if danumuMsgModel.headPic.count > 0 {
        if danumuMsgModel.headPic.count > 0 {
            //: headAnimatedImageView.setUrlImage(urlStr: danumuMsgModel.headPic)
            headAnimatedImageView.timeFinish(urlStr: danumuMsgModel.headPic)
        }
        //: if danumuMsgModel.bgPic.count > 0 {
        if danumuMsgModel.bgPic.count > 0 {
            //: updateBackground(withUrl: danumuMsgModel.bgPic)
            connectCapacity(withUrl: danumuMsgModel.bgPic)
        }

        //: if danumuMsgModel.content.count > 0 {
        if danumuMsgModel.content.count > 0 {
            //: let parse = TUIChatParseTagHelper.init()
            let parse = TUIChatParseTagHelper()
            //: parse.content = danumuMsgModel.content
            parse.content = danumuMsgModel.content
            //: parse.colorHex = Broadcast_TextColor
            parse.colorHex = Broadcast_TextColor
            //: var mutableAtt = parse.contentParse(withFontSize: 12, insert: "", at: 0)
            var mutableAtt = parse.contentParse(withFontSize: 12, insert: "", at: 0)
            // 限制字符长度
            //: if mutableAtt.string.count > 120 {
            if mutableAtt.string.count > 120 {
                //: mutableAtt = mutableAtt.attributedSubstring(from: NSRange(location: 0, length: 121)) as! NSMutableAttributedString
                mutableAtt = mutableAtt.attributedSubstring(from: NSRange(location: 0, length: 121)) as! NSMutableAttributedString
            }
            //: contentLabel.attributedText = mutableAtt
            contentLabel.attributedText = mutableAtt
        }
    }

    //: func updateBackground(withUrl url: String) {
    func connectCapacity(withUrl url: String) {
        //: self.backgroundImageView.setUrlImage(urlStr: url) {[weak self] result, image in
        self.backgroundImageView.failureFinish(urlStr: url) { [weak self] _, image in
            //: guard let self = self else { return }
            guard let self = self else { return }
            //: var newImage = image
            var newImage = image
            //: if let image {
            if let image {
                //: if image.size.height > self.Broadcast_HeightOfBackgroundImageView {
                if image.size.height > self.Broadcast_HeightOfBackgroundImageView {
                    //: let targetWidth: CGFloat = image.size.width * self.Broadcast_HeightOfBackgroundImageView / image.size.height
                    let targetWidth: CGFloat = image.size.width * self.Broadcast_HeightOfBackgroundImageView / image.size.height
                    //: newImage = image.resize(with: CGSize(width: targetWidth, height: self.Broadcast_HeightOfBackgroundImageView))
                    newImage = image.applicationTo(with: CGSize(width: targetWidth, height: self.Broadcast_HeightOfBackgroundImageView))
                }
            }

            //: newImage = newImage?.resizableImage(withCapInsets: UIEdgeInsets(top: 0, left: 20, bottom: 0, right: 20), resizingMode: .stretch)
            newImage = newImage?.resizableImage(withCapInsets: UIEdgeInsets(top: 0, left: 20, bottom: 0, right: 20), resizingMode: .stretch)
            //: DispatchQueue.main.async {
            DispatchQueue.main.async {
                //: self.backgroundImageView.image = newImage
                self.backgroundImageView.image = newImage
            }
        }
    }

    // MARK: - 懒加载初始化

    //: var danumuMsgModel: TalkingFloatingScreenModel? {
    var danumuMsgModel: NonremittalModelType? {
        //: didSet {
        didSet {
            //: configModel()
            dataModel()
        }
    }

    //: var widthValue: CGFloat {
    var widthValue: CGFloat {
        //: if (danumuMsgModel == nil) {
        if danumuMsgModel == nil {
            //: return 0
            return 0
            //: } else {
        } else {
            //: contentLabel.sizeToFit()
            contentLabel.sizeToFit()
            //: var contentWidthValue = contentLabel.width
            var contentWidthValue = contentLabel.width
            //: contentWidthValue = 70 + 20 + contentWidthValue + 24
            contentWidthValue = 70 + 20 + contentWidthValue + 24
            //: return contentWidthValue
            return contentWidthValue
        }
    }

    //: var totalTime: CGFloat {
    var totalTime: CGFloat {
        //: return (ScreenWidth + widthValue) * Broadcast_SpendTime / ScreenWidth
        return (kLet_halfData + widthValue) * Broadcast_SpendTime / kLet_halfData
    }

    //: var totalTimeOfLine: CGFloat {
    var totalTimeOfLine: CGFloat {
        //: return widthValue * Broadcast_LineSpendTime / ScreenWidth
        return widthValue * Broadcast_LineSpendTime / kLet_halfData
    }

    //: var hide2ShowTime: CGFloat {
    var hide2ShowTime: CGFloat {
        //: return widthValue * Broadcast_SpendTime / ScreenWidth
        return widthValue * Broadcast_SpendTime / kLet_halfData
    }

    //: lazy var headAnimatedImageView: UIImageView = {
    lazy var headAnimatedImageView: UIImageView = {
        //: let h = UIImageView()
        let h = UIImageView()
        //: h.contentMode = .scaleAspectFit
        h.contentMode = .scaleAspectFit
        //: h.layer.masksToBounds = true
        h.layer.masksToBounds = true
        //: return h
        return h
        //: }()
    }()

    //: lazy var contentView: UIView = {
    lazy var contentView: UIView = {
        //: let c = UIView()
        let c = UIView()
        //: c.clipsToBounds = true
        c.clipsToBounds = true
        //: return c
        return c
        //: }()
    }()

    //: lazy var tapGesture: UITapGestureRecognizer = {
    lazy var tapGesture: UITapGestureRecognizer = {
        //: let t = UITapGestureRecognizer(target: self, action: #selector(tapAction(_:)))
        let t = UITapGestureRecognizer(target: self, action: #selector(upAction(_:)))
        //: return t
        return t
        //: }()
    }()

    //: lazy var backgroundImageView: UIImageView = {
    lazy var backgroundImageView: UIImageView = {
        //: let i = UIImageView()
        let i = UIImageView()
        //: i.layer.cornerRadius = Broadcast_HeightOfBackgroundImageView/2
        i.layer.cornerRadius = Broadcast_HeightOfBackgroundImageView / 2
        //: i.clipsToBounds = true
        i.clipsToBounds = true
        //: return i
        return i
        //: }()
    }()

    //: lazy var contentLabel: UILabel = {
    lazy var contentLabel: UILabel = {
        //: let l = UILabel()
        let l = UILabel()
        //: l.font = UIFont.dorsum(fontSize: 12)
        l.font = UIFont.dorsum(fontSize: 12)
        //: l.textColor = .white
        l.textColor = .white
        //: l.numberOfLines = 1
        l.numberOfLines = 1
        //: return l
        return l
        //: }()
    }()
}

// MARK: - Event

//: extension TalkingFloatScreenItemView {
extension BackCanItemView {
    /// 弹幕点击跳转事件
    //: @objc func tapAction(_ tapGesture: UITapGestureRecognizer) {
    @objc func upAction(_: UITapGestureRecognizer) {
        //: guard let jumpType = self.danumuMsgModel?.jumpType else { return }
        guard let jumpType = self.danumuMsgModel?.jumpType else { return }
        //: switch(jumpType) {
        switch jumpType {
        //: case "1": // 个人中心
        case "1": // 个人中心
            //: EffectPushManager.share.func__pushToUserDetailVC(uid: self.danumuMsgModel?.jumpKey)
            EffectPushManager.share.userAdd(uid: self.danumuMsgModel?.jumpKey)

        //: case "2": // 直播间
        case "2": // 直播间
            //: if let uid = self.danumuMsgModel?.jumpKey {
            if let uid = self.danumuMsgModel?.jumpKey {
                //: EffectPushManager.share.func_audiencePushToLiveRoomVC(uid: uid, enterType: .unknown)
                EffectPushManager.share.audience(uid: uid, enterType: .unknown)
            }

        //: case "3": // H5页面
        case "3": // H5页面
            //: if let url = self.danumuMsgModel?.jumpKey {
            if let url = self.danumuMsgModel?.jumpKey {
                //: if url.contains("/dist/loungePlus/index.html") {
                if url.contains((String(kStr_reportRawValue.suffix(6)) + kStr_messageContent.replacingOccurrences(of: "data", with: "l") + "Plus/i" + String(kStr_fileValue.suffix(5)) + "html")) {
                    //: EffectPushManager.share.func__pushToSubscribePageWebVC()
                    EffectPushManager.share.verso()
                    //: return
                    return
                }
                //: let httpsUrl = LocationThen.share.appConfigMode.urlH5Domain+url
                let httpsUrl = LocationThen.share.appConfigMode.urlH5Domain + url
                //: let httpUrl = httpsUrl.replacingOccurrences(of: "https://", with: "http://")
                let httpUrl = httpsUrl.replacingOccurrences(of: (String(kStr_labelName.suffix(6)) + String(kStr_targetData)), with: (kStr_labData.replacingOccurrences(of: "image", with: "h") + String(kStr_ofValue)))
                //: EffectPushManager.share.func__pushToWebVC(urlStr: httpUrl)
                EffectPushManager.share.deleteTake(urlStr: httpUrl)
            }

        //: default: break
        default: break
        }
    }
}

// MARK: - Layout

//: extension TalkingFloatScreenItemView {
extension BackCanItemView {
    // 添加视图
    //: private func setupSubviews() {
    private func followUp() {
        //: addSubview(contentView)
        addSubview(contentView)
        //: addSubview(backgroundImageView)
        addSubview(backgroundImageView)
        //: addSubview(contentLabel)
        addSubview(contentLabel)
        //: addSubview(headAnimatedImageView)
        addSubview(headAnimatedImageView)

        //: configModel()
        dataModel()
    }

    // 添加约束
    //: private func setupSubViewsConstraint() {
    private func ad() {
        //: contentView.snp.makeConstraints { make in
        contentView.snp.makeConstraints { make in
            //: make.leading.equalTo(headAnimatedImageView.snp.trailing).offset(-23)
            make.leading.equalTo(headAnimatedImageView.snp.trailing).offset(-23)
            //: make.trailing.equalTo(self).offset(-61)
            make.trailing.equalTo(self).offset(-61)
            //: make.height.equalTo(Broadcast_HeightOfBackgroundImageView)
            make.height.equalTo(Broadcast_HeightOfBackgroundImageView)
            //: make.centerY.equalTo(self)
            make.centerY.equalTo(self)
        }

        //: headAnimatedImageView.snp.makeConstraints { make in
        headAnimatedImageView.snp.makeConstraints { make in
            //: make.leading.equalTo(0)
            make.leading.equalTo(0)
            //: make.centerY.equalTo(self)
            make.centerY.equalTo(self)
            //: make.size.equalTo(CGSize(width: 43, height: 37))
            make.size.equalTo(CGSize(width: 43, height: 37))
        }

        //: backgroundImageView.snp.makeConstraints { make in
        backgroundImageView.snp.makeConstraints { make in
            //: make.edges.equalTo(contentView)
            make.edges.equalTo(contentView)
        }

        //: contentLabel.snp.makeConstraints { make in
        contentLabel.snp.makeConstraints { make in
            //: make.leading.equalTo(contentView.snp.leading).offset(21.5)
            make.leading.equalTo(contentView.snp.leading).offset(21.5)
            //: make.trailing.top.bottom.equalTo(contentView)
            make.trailing.top.bottom.equalTo(contentView)
        }
    }

    // 添加事件
    //: private func bindInteraction() {
    private func serration() {
        //: addGestureRecognizer(tapGesture)
        addGestureRecognizer(tapGesture)
    }
}
