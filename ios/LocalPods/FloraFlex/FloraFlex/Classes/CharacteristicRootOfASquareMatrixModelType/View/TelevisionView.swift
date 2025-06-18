
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let kStr_labValue:[UInt8] = [0xd5,0xd2,0xd5,0xc8,0x94,0xdf,0xd3,0xd8,0xd9,0xce,0x86,0x95,0x9c,0xd4,0xdd,0xcf,0x9c,0xd2,0xd3,0xc8,0x9c,0xde,0xd9,0xd9,0xd2,0x9c,0xd5,0xd1,0xcc,0xd0,0xd9,0xd1,0xd9,0xd2,0xc8,0xd9,0xd8]

private func topMessage(next num: UInt8) -> UInt8 {
    return num ^ 188
}

/*: "btn_dongtai_dianzan_nor" :*/
fileprivate let kStr_endContent:String = "model corner return viewbtn_dong"
fileprivate let kStr_labelName:String = "self in in trytai_di"
fileprivate let kStr_leadingTitleContent:String = "ansizen"

/*: "btn_dongtai_dianzan_nor1" :*/
fileprivate let kStr_makeName:String = "format up trybtn_d"
fileprivate let kStr_capReloadData:String = "_"
fileprivate let kStr_countData:String = "dianfroma"

/*: "btn_dongtai_pinglun_nor" :*/
fileprivate let kStr_value:[Character] = ["b","t","n","_","d","o","n","g","t","a","i","_","p","i","n"]
fileprivate let kStr_dataName:[Character] = ["g","l","u","n","_","n","o","r"]

/*: "btn_dynamic_chat_nor" :*/
fileprivate let kStr_equalValue:String = "btn_dynview name size block"
fileprivate let kStr_hiddenValue:String = "object effect format row coloramic_c"

/*: "icon_dynamic_heart_default" :*/
fileprivate let kStr_minimumTargetName:String = "tag height mask going addicon_"
fileprivate let kStr_makeDataValue:String = "gift image share view varmic_"
fileprivate let kStr_colorHeadTitle:[Character] = ["_","d","e","f","a","u","l","t"]

/*: "Chat" :*/
fileprivate let kStr_mLiveName:String = "if clearChat"

/*: "#752FE9" :*/
fileprivate let kStr_mainName:String = "follow hide#752FE9"

/*: "99+" :*/
fileprivate let kStr_appearAddValue:[UInt8] = [0xfc,0xfc,0xee]

/*: "%d" :*/
fileprivate let kStr_rangeTitle:String = "%ddata var view match"

/*: "Comment" :*/
fileprivate let kStr_whiteValue:String = "Commentcolor interval guard self"

/*: "momentId" :*/
fileprivate let kStr_voicePostName:String = "momentIdpair mode touch valid"

/*: "type" :*/
fileprivate let kStr_groupName:String = "TYPE"

/*: "like" :*/
fileprivate let kStr_barLengthTitle:[Character] = ["l","i","k","e"]

/*: "model" :*/
fileprivate let kStr_rowValue:[UInt8] = [0x6c,0x65,0x64,0x6f,0x6d]

/*: "get json error" :*/
fileprivate let kStr_videoValue:String = "self view max toget "
fileprivate let kStr_addName:String = "make equal error"

/*: "comment" :*/
fileprivate let kStr_errorName:String = "cowithwithent"

/*: "number" :*/
fileprivate let kStr_labelAppValue:String = "numpressr"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  TelevisionView.swift
//  AbroadTalking
//
//  Created by Charlotte on 2022/9/20.
//

//: import UIKit
import UIKit

//: class TalkingMomentItemBottomView: UIView {
class TelevisionView: UIView {
    //: let disposeBag = DisposeBag()
    let disposeBag = DisposeBag()
    //: var cunrrenModel = TalkingMomentModel()
    var cunrrenModel = ModelTransformable()

    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: setupSubviews()
        mentalImageSubviews()
        //: setupSubViewsConstraint()
        userDismiss()
        //: bindInteraction()
        on()
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: kStr_labValue.map{topMessage(next: $0)}, encoding: .utf8)!)
    }

    //: deinit {
    deinit {
        //: NotificationCenter.default.removeObserver(self)
        NotificationCenter.default.removeObserver(self)
    }

    //: lazy var infoLB: UILabel = {
    lazy var infoLB: UILabel = {
        //: let label = UILabel.init()
        let label = UILabel()
        //: label.font = .pingfangFont(type: .Regular, fontSize: 14)
        label.font = .groupSize(type: .Regular, fontSize: 14)
        //: label.textColor = .statusMin()
        label.textColor = .statusMin()
        //: self.addSubview(label)
        self.addSubview(label)
        //: return label
        return label
        //: }()
    }()

    //: lazy var likePlayer: SVGAPlayer = {
    lazy var likePlayer: SVGAPlayer = {
        //: let player = SVGAPlayer.init()
        let player = SVGAPlayer()
        //: player.loops = 1
        player.loops = 1
        //: player.clearsAfterStop = true
        player.clearsAfterStop = true
        //: player.isUserInteractionEnabled = false
        player.isUserInteractionEnabled = false
        //: player.contentMode = .scaleAspectFill
        player.contentMode = .scaleAspectFill
        //: player.delegate = self
        player.delegate = self
        //: self.addSubview(player)
        self.addSubview(player)
        //: return player
        return player
        //: }()
    }()

    //: lazy var likeBtn: UIButton = {
    lazy var likeBtn: UIButton = {
        //: let btn = UIButton.init()
        let btn = UIButton()
        //: btn.setImage(UIImage.bundleBy(name: "btn_dongtai_dianzan_nor"), for: .normal)
        btn.setImage(UIImage.bundleBy(name: (String(kStr_endContent.suffix(8)) + String(kStr_labelName.suffix(6)) + kStr_leadingTitleContent.replacingOccurrences(of: "size", with: "za") + "_nor")), for: .normal)
        //: btn.setImage(UIImage.bundleBy(name: "btn_dongtai_dianzan_nor1"), for: .selected)
        btn.setImage(UIImage.bundleBy(name: (String(kStr_makeName.suffix(5)) + "ongtai" + kStr_capReloadData.capitalized + kStr_countData.replacingOccurrences(of: "from", with: "z") + "n_nor1")), for: .selected)
        //: btn.adjustsImageWhenHighlighted = false
        btn.adjustsImageWhenHighlighted = false
        //: self.addSubview(btn)
        self.addSubview(btn)
        //: return btn
        return btn
        //: }()
    }()

    //: lazy var likeNumberLB: UILabel = {
    lazy var likeNumberLB: UILabel = {
        //: let label = UILabel.init()
        let label = UILabel()
        //: label.font = .pingfangFont(type: .Regular, fontSize: 16)
        label.font = .groupSize(type: .Regular, fontSize: 16)
        //: label.textColor = .statusMin()
        label.textColor = .statusMin()
        //: self.addSubview(label)
        self.addSubview(label)
        //: return label
        return label
        //: }()
    }()

    //: lazy var commentBtn: UIButton = {
    lazy var commentBtn: UIButton = {
        //: let btn = UIButton.init()
        let btn = UIButton()
        //: btn.setImage(UIImage.bundleBy(name: "btn_dongtai_pinglun_nor"), for: .normal)
        btn.setImage(UIImage.bundleBy(name: (String(kStr_value) + String(kStr_dataName))), for: .normal)
        //: btn.isUserInteractionEnabled = false
        btn.isUserInteractionEnabled = false
        //: self.addSubview(btn)
        self.addSubview(btn)
        //: return btn
        return btn
        //: }()
    }()

    //: lazy var commentNumberLB: UILabel = {
    lazy var commentNumberLB: UILabel = {
        //: let label = UILabel.init()
        let label = UILabel()
        //: label.font = .pingfangFont(type: .Regular, fontSize: 16)
        label.font = .groupSize(type: .Regular, fontSize: 16)
        //: label.textColor = .statusMin()
        label.textColor = .statusMin()
        //: self.addSubview(label)
        self.addSubview(label)
        //: return label
        return label
        //: }()
    }()

    //: lazy var greetBtn: TalkingButton = {
    lazy var greetBtn: OverdoTalkingButton = {
        //: let btn = TalkingButton.init()
        let btn = OverdoTalkingButton()
        //: let bubbleInsets = UIEdgeInsets(top: 4, left: 11, bottom: 4, right: 11)
        let bubbleInsets = UIEdgeInsets(top: 4, left: 11, bottom: 4, right: 11)
        //: btn.setBackgroundImage(UIImage.bundleBy(name: "btn_dynamic_chat_nor").resizableImage(withCapInsets: bubbleInsets, resizingMode: .stretch), for: .normal)
        btn.setBackgroundImage(UIImage.bundleBy(name: (String(kStr_equalValue.prefix(7)) + String(kStr_hiddenValue.suffix(6)) + "hat_nor")).resizableImage(withCapInsets: bubbleInsets, resizingMode: .stretch), for: .normal)
        //: btn.setImage(UIImage.bundleBy(name: "icon_dynamic_heart_default"), for: .normal)
        btn.setImage(UIImage.bundleBy(name: (String(kStr_minimumTargetName.suffix(5)) + "dyna" + String(kStr_makeDataValue.suffix(4)) + "heart" + String(kStr_colorHeadTitle))), for: .normal)
        //: btn.setTitle("Chat".localized, for: .normal)
        btn.setTitle((String(kStr_mLiveName.suffix(4))).localized, for: .normal)
        //: btn.setTitleColor(.white, for: .normal)
        btn.setTitleColor(.white, for: .normal)
        //: btn.titleLabel?.font = UIFont.dorsum(fontSize: 14)
        btn.titleLabel?.font = UIFont.dorsum(fontSize: 14)
        //: btn.spaceBetweenTitleAndImage = 4
        btn.spaceBetweenTitleAndImage = 4
        //: self.addSubview(btn)
        self.addSubview(btn)
        //: return btn
        return btn
        //: }()
    }()
}

// MARK: - Event

//: extension TalkingMomentItemBottomView {
extension TelevisionView {
    //: func configModel(model: TalkingMomentModel) {
    func script(model: ModelTransformable) {
        //: cunrrenModel = model
        cunrrenModel = model
        //: likeBtn.isHidden = false
        likeBtn.isHidden = false
        //: likeNumberLB.isHidden = false
        likeNumberLB.isHidden = false
        //: commentBtn.isHidden = false
        commentBtn.isHidden = false
        //: commentNumberLB.isHidden = false
        commentNumberLB.isHidden = false
        //: greetBtn.isHidden = LocationThen.share.loginUserMode.sex == model.sex ||  LocationThen.share.loginUserMode.userID == model.uid
        greetBtn.isHidden = LocationThen.share.loginUserMode.sex == model.sex || LocationThen.share.loginUserMode.userID == model.uid

        //: infoLB.text = model.addTime
        infoLB.text = model.addTime
        //: likeBtn.isSelected = model.isLike!
        likeBtn.isSelected = model.isLike!
        //: likeNumberLB.textColor = model.isLike! ? UIColor.init(hex: "#752FE9") :.statusMin()
        likeNumberLB.textColor = model.isLike! ? UIColor(hex: (String(kStr_mainName.suffix(7)))) : .statusMin()
        //: likeNumberLB.text = model.likeNum! > 99 ? "99+" : String(format: "%d", model.likeNum! )
        likeNumberLB.text = model.likeNum! > 99 ? "99+" : String(format: "%d", model.likeNum!)
        //: commentNumberLB.text = model.replyNum! > 99 ? "99+" :  model.replyNum! > 0 ? String(format: "%d", model.replyNum!) : "Comment".localized
        commentNumberLB.text = model.replyNum! > 99 ? "99+" : model.replyNum! > 0 ? String(format: "%d", model.replyNum!) : (String(kStr_whiteValue.prefix(7))).localized
    }

    //: func likeBtnClik() {
    func clik() {
        //: if !likeBtn.isSelected {
        if !likeBtn.isSelected {
            //: self.req_MomentLike(type: 1)
            self.noneTargetType(type: 1)
            //: self.likeplayer()
            self.opposition()
            //: }else {
        } else {
            //: req_MomentLike(type: 2)
            noneTargetType(type: 2)
        }
    }

    //: func req_MomentLike(type: Int) {
    func noneTargetType(type: Int) {
        //: likeBtn.isUserInteractionEnabled = false
        likeBtn.isUserInteractionEnabled = false
        //: var dict = Dictionary<String, Any>()
        var dict = [String: Any]()
        //: dict["momentId"] = cunrrenModel.mid
        dict[(String(kStr_voicePostName.prefix(8)))] = cunrrenModel.mid
        //: dict["type"] = type
        dict[(kStr_groupName.lowercased())] = type

        //: TalkingMomentRequestTool.req_MomentLike(params: dict) { succeed, result, errorModel in
        FromThen.enjoyBind(params: dict) { succeed, _, errorModel in
            //: self.likeBtn.isUserInteractionEnabled = true
            self.likeBtn.isUserInteractionEnabled = true
            //: if succeed {
            if succeed {
                //: let isLike  =  type==1 ? true:false
                let isLike = type == 1 ? true : false
                //: var number = isLike ?  self.cunrrenModel.likeNum!+1 : self.cunrrenModel.likeNum!-1
                var number = isLike ? self.cunrrenModel.likeNum! + 1 : self.cunrrenModel.likeNum! - 1
                //: if number < 0 {
                if number < 0 {
                    //: number = 0
                    number = 0
                }
                //: self.likeBtn.isSelected = isLike
                self.likeBtn.isSelected = isLike
                //: self.cunrrenModel.isLike = isLike
                self.cunrrenModel.isLike = isLike
                //: self.cunrrenModel.likeNum = number
                self.cunrrenModel.likeNum = number
                //: self.likeNumberLB.text = String(format: "%d", number)
                self.likeNumberLB.text = String(format: "%d", number)
                //: self.likeNumberLB.textColor = isLike ? UIColor.init(hex: "#752FE9") :.statusMin()
                self.likeNumberLB.textColor = isLike ? UIColor(hex: (String(kStr_mainName.suffix(7)))) : .statusMin()
                //: DispatchQueue.main.asyncAfter(deadline: DispatchTime.now()+0.5) {
                DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 0.5) {
                    //: NotificationCenter.default.post(name: UPDATE_LIKE_NUMBER_NOTIFICATION, object: self, userInfo: ["type": "like", "model": self.cunrrenModel])
                    NotificationCenter.default.post(name: kLet_barTitle, object: self, userInfo: [(kStr_groupName.lowercased()): (String(kStr_barLengthTitle)), String(bytes: kStr_rowValue.reversed(), encoding: .utf8)!: self.cunrrenModel])
                }
                //: }else {
            } else {
                //: self.func__showStatusBarErrorMsg(showMsg: errorModel!.errorMsg)
                self.detailDownArray(showMsg: errorModel!.errorMsg)
            }
        }
    }

    //: func greetBtnClick() {
    func hailMain() {
        //: EffectPushManager.share.func__pushToPriveteChatVC(chatID: cunrrenModel.uid ?? "")
        EffectPushManager.share.fromCompletion(chatID: cunrrenModel.uid ?? "")
    }

    //: func likeplayer() {
    func opposition() {
        //: var url = SVGAEffectTool.default.getZipEffectPath(type: .Moment_like)
        var url = LoadGrappleEffectTool.default.sunnahType(type: .Moment_like)
        //: if LanguageManager.shared.direction == .rightToLeft {
        if DeleteClientThen.shared.direction == .rightToLeft {
            //: url = SVGAEffectTool.default.getZipEffectPath(type: .Moment_likeRight)
            url = LoadGrappleEffectTool.default.sunnahType(type: .Moment_likeRight)
        }
        //: do {
        do {
            //: let data = try Data(contentsOf: url)
            let data = try Data(contentsOf: url)
            //: let parser = SVGAParser.init()
            let parser = SVGAParser()
            //: parser.parse(with: data, cacheKey: "") { [weak self] videoItem in
            parser.parse(with: data, cacheKey: "") { [weak self] videoItem in
                //: guard let self = self else {return}
                guard let self = self else { return }
                //: self.likePlayer.videoItem = videoItem
                self.likePlayer.videoItem = videoItem
                //: self.likePlayer.startAnimation()
                self.likePlayer.startAnimation()
            }
            //: } catch _ as Error? {
        } catch _ as Error? {
            //: printLog(message: "get json error")
            pathLine(message: (String(kStr_videoValue.suffix(4)) + "json" + String(kStr_addName.suffix(6))))
        }
    }

    //: @objc func updateCommentNumber(notification: NSNotification) -> Void {
    @objc func query(notification: NSNotification) {
        //: let userinfo = notification.userInfo as! [String: AnyObject]
        let userinfo = notification.userInfo as! [String: AnyObject]

        //: if userinfo["momentId"] as? Int != self.cunrrenModel.mid {
        if userinfo[(String(kStr_voicePostName.prefix(8)))] as? Int != self.cunrrenModel.mid {
            //: return
            return
                //: } else if userinfo["type"] as! String == "comment".localized {
        } else if userinfo[(kStr_groupName.lowercased())] as! String == (kStr_errorName.replacingOccurrences(of: "with", with: "m")).localized {
            //: self.cunrrenModel.replyNum = userinfo["number"] as? Int
            self.cunrrenModel.replyNum = userinfo[(kStr_labelAppValue.replacingOccurrences(of: "press", with: "be"))] as? Int
            //: commentNumberLB.text = String(format: "%d", self.cunrrenModel.replyNum!)
            commentNumberLB.text = String(format: "%d", self.cunrrenModel.replyNum!)
        }
    }
}

//: extension TalkingMomentItemBottomView: SVGAPlayerDelegate {
extension TelevisionView: SVGAPlayerDelegate {
    //: func svgaPlayerDidFinishedAnimation(_ player: SVGAPlayer!) {
    func svgaPlayerDidFinishedAnimation(_: SVGAPlayer!) {}
}

// MARK: - LayoutUI

//: extension TalkingMomentItemBottomView {
extension TelevisionView {
    // 添加视图
    //: private func setupSubviews() {
    private func mentalImageSubviews() {
        //: backgroundColor = .clear
        backgroundColor = .clear
    }

    // 添加约束
    //: private func setupSubViewsConstraint() {
    private func userDismiss() {
        //: infoLB.snp.makeConstraints { make in
        infoLB.snp.makeConstraints { make in
            //: make.leading.equalTo(0)
            make.leading.equalTo(0)
            //: make.top.equalTo(7)
            make.top.equalTo(7)
        }

        //: likeBtn.snp.makeConstraints { make in
        likeBtn.snp.makeConstraints { make in
            //: make.leading.equalTo(0)
            make.leading.equalTo(0)
            //: make.top.equalTo(infoLB.snp.bottom).offset(16)
            make.top.equalTo(infoLB.snp.bottom).offset(16)
            //: make.size.equalTo(CGSize.init(width: 24, height: 24))
            make.size.equalTo(CGSize(width: 24, height: 24))
        }

        //: likePlayer.snp.makeConstraints { make in
        likePlayer.snp.makeConstraints { make in
            //: make.leading.equalTo(-5)
            make.leading.equalTo(-5)
            //: make.bottom.equalTo(likeBtn.snp.bottom).offset(2)
            make.bottom.equalTo(likeBtn.snp.bottom).offset(2)
            //: make.size.equalTo(CGSize.init(width: 40, height: 60))
            make.size.equalTo(CGSize(width: 40, height: 60))
        }

        //: likeNumberLB.snp.makeConstraints { make in
        likeNumberLB.snp.makeConstraints { make in
            //: make.centerY.equalTo(likeBtn)
            make.centerY.equalTo(likeBtn)
            //: make.leading.equalTo(likeBtn.snp.trailing).offset(10)
            make.leading.equalTo(likeBtn.snp.trailing).offset(10)
            //: make.size.equalTo(CGSize.init(width: 52, height: 22))
            make.size.equalTo(CGSize(width: 52, height: 22))
        }

        //: commentBtn.snp.makeConstraints { make in
        commentBtn.snp.makeConstraints { make in
            //: make.centerY.equalTo(likeBtn)
            make.centerY.equalTo(likeBtn)
            //: make.leading.equalTo(likeNumberLB.snp.trailing)
            make.leading.equalTo(likeNumberLB.snp.trailing)
            //: make.size.equalTo(CGSize.init(width: 24, height: 24))
            make.size.equalTo(CGSize(width: 24, height: 24))
        }

        //: commentNumberLB.snp.makeConstraints { make in
        commentNumberLB.snp.makeConstraints { make in
            //: make.centerY.equalTo(likeBtn)
            make.centerY.equalTo(likeBtn)
            //: make.leading.equalTo(commentBtn.snp.trailing).offset(10)
            make.leading.equalTo(commentBtn.snp.trailing).offset(10)
            //: make.height.equalTo(24)
            make.height.equalTo(24)
        }

        //: let str = greetBtn.titleLabel?.text ?? ""
        let str = greetBtn.titleLabel?.text ?? ""
        //: let size = (str as NSString).boundingRect(with: CGSize(width: CGFloat(MAXFLOAT), height: 0.0), options: .usesLineFragmentOrigin, attributes: [NSAttributedString.Key.font: UIFont.dorsum(fontSize: 14)], context: nil)
        let size = (str as NSString).boundingRect(with: CGSize(width: CGFloat(MAXFLOAT), height: 0.0), options: .usesLineFragmentOrigin, attributes: [NSAttributedString.Key.font: UIFont.dorsum(fontSize: 14)], context: nil)

        //: greetBtn.snp.makeConstraints { make in
        greetBtn.snp.makeConstraints { make in
            //: make.trailing.equalTo(0)
            make.trailing.equalTo(0)
            //: make.bottom.equalTo(-15)
            make.bottom.equalTo(-15)
            //: make.height.equalTo(30)
            make.height.equalTo(30)
            //: make.width.equalTo(size.width+40)
            make.width.equalTo(size.width + 40)
        }
    }

    // 添加事件
    //: private func bindInteraction() {
    private func on() {
        //: NotificationCenter.default.addObserver(self, selector: #selector(updateCommentNumber(notification:)), name: UPDATE_COMMENTNUMBER_NOTIFICATION, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(query(notification:)), name: kLet_screenDeviceName, object: nil)
        //: likeBtn.rx.tap.subscribe(onNext: { [weak self] in
        likeBtn.rx.tap.subscribe(onNext: { [weak self] in
            //: guard let self = self else {return}
            guard let self = self else { return }
            //: self.likeBtnClik()
            self.clik()
            //: }).disposed(by: disposeBag)
        }).disposed(by: disposeBag)

        //: commentBtn.rx.tap.subscribe(onNext: {
        commentBtn.rx.tap.subscribe(onNext: {
            //: }).disposed(by: disposeBag)
        }).disposed(by: disposeBag)

        //: greetBtn.rx.tap.subscribe(onNext: { [weak self] in
        greetBtn.rx.tap.subscribe(onNext: { [weak self] in
            //: guard let self = self else {return}
            guard let self = self else { return }
            //: self.greetBtnClick()
            self.hailMain()
            //: }).disposed(by: disposeBag)
        }).disposed(by: disposeBag)
    }
}
