
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let kStr_formatData:[UInt8] = [0x43,0x44,0x43,0x5e,0x2,0x49,0x45,0x4e,0x4f,0x58,0x10,0x3,0xa,0x42,0x4b,0x59,0xa,0x44,0x45,0x5e,0xa,0x48,0x4f,0x4f,0x44,0xa,0x43,0x47,0x5a,0x46,0x4f,0x47,0x4f,0x44,0x5e,0x4f,0x4e]

/*: "extra" :*/
fileprivate let kStr_value:[Character] = ["e","x","t","r","a"]

/*: "msgInfo" :*/
fileprivate let kStr_selectValue:[Character] = ["m","s","g","I","n","f","o"]

/*: "icon_talk_left_voive_3" :*/
fileprivate let kStr_fillValue:[Character] = ["i","c","o","n","_","t","a","l","k","_","l","e","f","t","_","v","o","i"]
fileprivate let kStr_viewBottomValue:[Character] = ["v","e","_","3"]

/*: "icon_talk_right_voive_3" :*/
fileprivate let kStr_textValue:[Character] = ["i","c","o","n","_","t"]
fileprivate let kStr_shareData:[Character] = ["a","l","k","_","r","i","g","h","t","_","v","o","i","v","e","_","3"]

/*: "%ld″" :*/
fileprivate let kStr_indexData:String = "model now info view only%ld″"

/*: "audioLength" :*/
fileprivate let kStr_presentationData:String = "audioLdismiss type"

/*: "isPlayingStatus" :*/
fileprivate let kStr_titleValue:String = "isPlline cell top table raw"
fileprivate let kStr_acceptName:[Character] = ["g","S","t","a","t","u","s"]

/*: "activityShowStatus" :*/
fileprivate let kStr_viewContent:String = "aframeiv"
fileprivate let kStr_labelData:String = "itySmain lab message constraint"
fileprivate let kStr_documentData:String = "atevents"

/*: "0″" :*/
fileprivate let kStr_sectionName:String = "0\u{2033}"

/*: "FF506D" :*/
fileprivate let kStr_locationTitle:String = "FF50original"

/*: "icon_talk_left_voive_1" :*/
fileprivate let kStr_selectedData:String = "icon_titem to on block block"
fileprivate let kStr_homeData:String = "self group viewalk_"
fileprivate let kStr_closeData:String = "oive_1inside self touch"

/*: "icon_talk_left_voive_2" :*/
fileprivate let kStr_centerHiddenTitle:[Character] = ["i","c","o","n","_","t","a","l","k","_","l","e","f","t","_","v","o","i","v"]
fileprivate let kStr_labData:[Character] = ["e","_","2"]

/*: "icon_talk_right_voive_1" :*/
fileprivate let kStr_userText:[Character] = ["i","c","o","n","_","t","a","l","k","_","r","i","g","h","t","_","v"]
fileprivate let kStr_sizeTitle:String = "oive_1push left"

/*: "icon_talk_right_voive_2" :*/
fileprivate let kStr_managerData:String = "icdemand"
fileprivate let kStr_toValue:String = "righview"
fileprivate let kStr_pointValue:String = "_voive_2view as count color"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  ChatView.swift
//  AbroadTalking
//
//  Created by Charlotte on 2023/2/28.
//

//: import UIKit
import UIKit

//: class TalkingChatAudioMsgCell: TalkingChatBaseMsgCell {
class ChatView: CollectionViewCell {
    //: var audioData: CanPointCellData?
    var audioData: CanPointCellData?

    //: fileprivate lazy var disposeBag = DisposeBag()
    fileprivate lazy var disposeBag = DisposeBag()

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

        //: self.bubbleImgView.isHidden = false
        self.bubbleImgView.isHidden = false
        //: designCellView()
        equalStatus()
    }

    //: required init?(coder aDecoder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: kStr_formatData.map{$0^42}, encoding: .utf8)!)
    }

    //: override func fill(with data: TCommonCellData) {
    override func fill(with data: TCommonCellData) {
        //: super.fill(with: data)
        super.fill(with: data)
        //: audioData = data as? CanPointCellData
        audioData = data as? CanPointCellData
        //: guard let newData = audioData else { return }
        guard let newData = audioData else { return }
        //: if let extra = String(data: newData.innerMessage.customElem.data, encoding: .utf8) {
        if let extra = String(data: newData.innerMessage.customElem.data, encoding: .utf8) {
            //: let extraDic = JSON(parseJSON: extra)
            let extraDic = JSON(parseJSON: extra)
            //: let conentDic = extraDic["extra"]
            let conentDic = extraDic[(String(kStr_value))]
            //: let msgInfo = conentDic["msgInfo"]
            let msgInfo = conentDic[(String(kStr_selectValue))]
            //: let voiceModel = newData.voiceModel
            let voiceModel = newData.voiceModel

            //: let isVoiceStyle = TUIMsgChatManager.checkVoiceJsonMsg(msginfo: msgInfo.dictionaryValue)
            let isVoiceStyle = TUIMsgChatManager.checkVoiceJsonMsg(msginfo: msgInfo.dictionaryValue)

            //: if newData.direction == .MsgDirectionIncoming {
            if newData.direction == .MsgDirectionIncoming {
                //: self.lenLB.textColor = UIColor.appTitleColor()
                self.lenLB.textColor = UIColor.dataFormat()
                //: self.voiceImageV.image = UIImage.bundleBy(name: "icon_talk_left_voive_3")
                self.voiceImageV.image = UIImage.bundleBy(name: (String(kStr_fillValue) + String(kStr_viewBottomValue)))
                //: self.voiceImageV.animationImages = leftVoiceAnimImagToCoverColor()
                self.voiceImageV.animationImages = complexion()
                //: } else {
            } else {
                //: self.lenLB.textColor = .white
                self.lenLB.textColor = .white
                //: self.voiceImageV.image = UIImage.bundleBy(name: "icon_talk_right_voive_3")
                self.voiceImageV.image = UIImage.bundleBy(name: (String(kStr_textValue) + String(kStr_shareData)))
                //: self.voiceImageV.animationImages = rightVoiceAnimImagToCoverColor()
                self.voiceImageV.animationImages = warning()
            }
            //: if isVoiceStyle {
            if isVoiceStyle {
                //: self.lenLB.text = String.init(format: "%ld″", msgInfo["audioLength"].intValue)
                self.lenLB.text = String(format: "%ld″", msgInfo[(String(kStr_presentationData.prefix(6)) + "ength")].intValue)
                //: newData.voiceModel.audioLength = msgInfo["audioLength"].intValue
                newData.voiceModel.audioLength = msgInfo[(String(kStr_presentationData.prefix(6)) + "ength")].intValue

                //: voiceModel.rx.observeWeakly(Int.self, "isPlayingStatus").subscribe(onNext: { [weak self] (value) in
                voiceModel.rx.observeWeakly(Int.self, (String(kStr_titleValue.prefix(4)) + "ayin" + String(kStr_acceptName))).subscribe(onNext: { [weak self] value in
                    //: guard let self = self else { return }
                    guard let self = self else { return }
                    //: DispatchQueue.main.async {
                    DispatchQueue.main.async {
                        //: if value == 1 {
                        if value == 1 {
                            //: self.voiceShowView.stopAnimating()
                            self.voiceShowView.stopAnimating()
                            //: self.voiceImageV.startAnimating()
                            self.voiceImageV.startAnimating()
                            //: self.voiceTrackPoint.isHidden = true
                            self.voiceTrackPoint.isHidden = true
                            //: } else {
                        } else {
                            //: self.voiceImageV.stopAnimating()
                            self.voiceImageV.stopAnimating()
                        }
                    }
                    //: }).disposed(by: disposeBag)
                }).disposed(by: disposeBag)

                //: voiceModel.rx.observeWeakly(Int.self, "activityShowStatus").subscribe(onNext: { [weak self] (value) in
                voiceModel.rx.observeWeakly(Int.self, (kStr_viewContent.replacingOccurrences(of: "frame", with: "ct") + String(kStr_labelData.prefix(4)) + "howSt" + kStr_documentData.replacingOccurrences(of: "event", with: "u"))).subscribe(onNext: { [weak self] value in
                    //: guard let self = self else { return }
                    guard let self = self else { return }
                    //: DispatchQueue.main.async {
                    DispatchQueue.main.async {
                        //: if value == 1 {
                        if value == 1 {
                            //: self.voiceTrackPoint.isHidden = true
                            self.voiceTrackPoint.isHidden = true
                            //: self.voiceShowView.startAnimating()
                            self.voiceShowView.startAnimating()
                            //: } else {
                        } else {
                            //: self.voiceShowView.stopAnimating()
                            self.voiceShowView.stopAnimating()
                        }
                    }
                    //: }).disposed(by: disposeBag)
                }).disposed(by: disposeBag)

                //: } else {
            } else {
                //: newData.voiceModel.audioLength = -1
                newData.voiceModel.audioLength = -1
                //: self.voiceShowView.stopAnimating()
                self.voiceShowView.stopAnimating()
                //: self.voiceTrackPoint.isHidden = true
                self.voiceTrackPoint.isHidden = true
            }

            //: self.voiceImageV.isHidden = !isVoiceStyle
            self.voiceImageV.isHidden = !isVoiceStyle
        }
    }

    // MARK: - Lazy load

    //: lazy var voiceBackView: UIView = {
    lazy var voiceBackView: UIView = {
        //: let view = UIView.init()
        let view = UIView()
        //: view.backgroundColor = .clear
        view.backgroundColor = .clear
        //: return view
        return view
        //: }()
    }()

    // 时长
    //: lazy var lenLB: UILabel = {
    lazy var lenLB: UILabel = {
        //: let label = UILabel.init()
        let label = UILabel()
        //: label.textColor = UIColor.appTitleColor()
        label.textColor = UIColor.dataFormat()
        //: label.font = UIFont.messageDown(fontSize: 17)
        label.font = UIFont.messageDown(fontSize: 17)
        //: label.text = "0″"
        label.text = "0″"
        //: return label
        return label
        //: }()
    }()

    // 声波动画
    //: lazy var voiceImageV: UIImageView = {
    lazy var voiceImageV: UIImageView = {
        //: let imag = UIImageView.init()
        let imag = UIImageView()
        //: imag.isUserInteractionEnabled = true
        imag.isUserInteractionEnabled = true
        //: imag.animationDuration = 1
        imag.animationDuration = 1
        //: return imag
        return imag
        //: }()
    }()

    // 未读红点
    //: lazy var voiceTrackPoint: UIImageView = {
    lazy var voiceTrackPoint: UIImageView = {
        //: let imag = UIImageView.init()
        let imag = UIImageView()
        //: imag.backgroundColor = UIColor.init(hex: "FF506D")
        imag.backgroundColor = UIColor(hex: (kStr_locationTitle.replacingOccurrences(of: "original", with: "6D")))
        //: imag.isHidden = true
        imag.isHidden = true
        //: imag.layer.cornerRadius = 9/2
        imag.layer.cornerRadius = 9 / 2
        //: imag.layer.masksToBounds = true
        imag.layer.masksToBounds = true
        //: return imag
        return imag
        //: }()
    }()

    // 转圈
    //: lazy var voiceShowView: UIActivityIndicatorView = {
    lazy var voiceShowView: UIActivityIndicatorView = {
        //: let view = UIActivityIndicatorView.init()
        let view = UIActivityIndicatorView()
        //: if #available(iOS 13.0, *) {
        if #available(iOS 13.0, *) {
            //: view.style = .medium
            view.style = .medium
            //: }else {
        } else {
            //: view.style = .gray
            view.style = .gray
        }
        //: view.hidesWhenStopped = true
        view.hidesWhenStopped = true
        //: return view
        return view
        //: }()
    }()
}

// MARK: - Event

//: extension TalkingChatAudioMsgCell {
extension ChatView {
    //: func leftVoiceAnimImagToCoverColor() -> [UIImage] {
    func complexion() -> [UIImage] {
        //: return [UIImage.bundleBy(name: "icon_talk_left_voive_1"), UIImage.bundleBy(name: "icon_talk_left_voive_2"), UIImage.bundleBy(name: "icon_talk_left_voive_3")]
        return [UIImage.bundleBy(name: (String(kStr_selectedData.prefix(6)) + String(kStr_homeData.suffix(4)) + "left_v" + String(kStr_closeData.prefix(6)))), UIImage.bundleBy(name: (String(kStr_centerHiddenTitle) + String(kStr_labData))), UIImage.bundleBy(name: (String(kStr_fillValue) + String(kStr_viewBottomValue)))]
    }

    //: func rightVoiceAnimImagToCoverColor() -> [UIImage] {
    func warning() -> [UIImage] {
        //: return [UIImage.bundleBy(name: "icon_talk_right_voive_1"), UIImage.bundleBy(name: "icon_talk_right_voive_2"), UIImage.bundleBy(name: "icon_talk_right_voive_3")]
        return [UIImage.bundleBy(name: (String(kStr_userText) + String(kStr_sizeTitle.prefix(6)))), UIImage.bundleBy(name: (kStr_managerData.replacingOccurrences(of: "demand", with: "on") + "_talk_" + kStr_toValue.replacingOccurrences(of: "view", with: "t") + String(kStr_pointValue.prefix(8)))), UIImage.bundleBy(name: (String(kStr_textValue) + String(kStr_shareData)))]
    }
}

// MARK: - UI

//: extension TalkingChatAudioMsgCell {
extension ChatView {
    //: func designCellView() {
    func equalStatus() {
        //: self.container.addSubview(voiceBackView)
        self.container.addSubview(voiceBackView)
        //: voiceBackView.addSubview(lenLB)
        voiceBackView.addSubview(lenLB)
        // 语音模块
        //: voiceBackView.addSubview(voiceImageV)
        voiceBackView.addSubview(voiceImageV)
        //: voiceBackView.addSubview(voiceTrackPoint)
        voiceBackView.addSubview(voiceTrackPoint)
        //: voiceBackView.addSubview(voiceShowView)
        voiceBackView.addSubview(voiceShowView)
        //: voiceBackView.gestureRecognizers?.forEach(voiceBackView.removeGestureRecognizer(_:))
        voiceBackView.gestureRecognizers?.forEach(voiceBackView.removeGestureRecognizer(_:))
    }

    //: override public func updateConstraints() {
    override public func updateConstraints() {
        //: super.updateConstraints()
        super.updateConstraints()
        //: guard let newData = self.audioData else { return }
        guard let newData = self.audioData else { return }
        //: let voiceModel = newData.voiceModel
        let voiceModel = newData.voiceModel
        //: let audioWidth = Double(voiceModel.audioLength) * 2.4 + 90
        let audioWidth = Double(voiceModel.audioLength) * 2.4 + 90

        //: voiceBackView.snp.remakeConstraints { (make) in
        voiceBackView.snp.remakeConstraints { make in
            //: make.leading.top.height.equalToSuperview()
            make.leading.top.height.equalToSuperview()
            //: make.width.equalTo(audioWidth)
            make.width.equalTo(audioWidth)
        }

        //: if newData.direction == .MsgDirectionIncoming {
        if newData.direction == .MsgDirectionIncoming {
            //: voiceImageV.snp.remakeConstraints { (make) in
            voiceImageV.snp.remakeConstraints { make in
                //: make.leading.equalTo(16)
                make.leading.equalTo(16)
                //: make.centerY.equalToSuperview()
                make.centerY.equalToSuperview()
                //: make.width.equalTo(13)
                make.width.equalTo(13)
                //: make.height.equalTo(19)
                make.height.equalTo(19)
            }

            //: voiceTrackPoint.snp.remakeConstraints { (make) in
            voiceTrackPoint.snp.remakeConstraints { make in
                //: make.leading.equalTo(voiceBackView.snp.trailing).offset(10)
                make.leading.equalTo(voiceBackView.snp.trailing).offset(10)
                //: make.centerY.equalToSuperview()
                make.centerY.equalToSuperview()
                //: make.width.height.equalTo(9)
                make.width.height.equalTo(9)
            }

            //: voiceShowView.snp.remakeConstraints { (make) in
            voiceShowView.snp.remakeConstraints { make in
                //: make.leading.equalTo(voiceBackView.snp.trailing).offset(10)
                make.leading.equalTo(voiceBackView.snp.trailing).offset(10)
                //: make.centerY.equalToSuperview()
                make.centerY.equalToSuperview()
                //: make.width.height.equalTo(15)
                make.width.height.equalTo(15)
            }

            //: lenLB.snp.remakeConstraints { (make) in
            lenLB.snp.remakeConstraints { make in
                //: make.leading.equalTo(voiceImageV.snp.trailing).offset(12)
                make.leading.equalTo(voiceImageV.snp.trailing).offset(12)
                //: make.top.height.equalToSuperview()
                make.top.height.equalToSuperview()
                //: make.width.equalTo(30)
                make.width.equalTo(30)
            }

            //: voiceTrackPoint.isHidden = newData.voiceModel.db_voiceCacheWrap.db_isRead == "1"
            voiceTrackPoint.isHidden = newData.voiceModel.db_voiceCacheWrap.db_isRead == "1"
            //: if newData.voiceModel.activityShowStatus != 1 {
            if newData.voiceModel.activityShowStatus != 1 {
                //: voiceShowView.stopAnimating()
                voiceShowView.stopAnimating()
            }

            //: } else {
        } else {
            //: voiceImageV.snp.remakeConstraints { (make) in
            voiceImageV.snp.remakeConstraints { make in
                //: make.trailing.equalTo(-16)
                make.trailing.equalTo(-16)
                //: make.centerY.equalToSuperview()
                make.centerY.equalToSuperview()
                //: make.width.equalTo(13)
                make.width.equalTo(13)
                //: make.height.equalTo(19)
                make.height.equalTo(19)
            }

            //: lenLB.textAlignment = LanguageManager.shared.direction == .rightToLeft ? .left:.right
            lenLB.textAlignment = DeleteClientThen.shared.direction == .rightToLeft ? .left : .right
            //: lenLB.snp.remakeConstraints { (make) in
            lenLB.snp.remakeConstraints { make in
                //: make.trailing.equalTo(voiceImageV.snp.leading).offset(-12)
                make.trailing.equalTo(voiceImageV.snp.leading).offset(-12)
                //: make.top.height.equalToSuperview()
                make.top.height.equalToSuperview()
                //: make.width.equalTo(30)
                make.width.equalTo(30)
            }

            //: voiceShowView.snp.remakeConstraints { (make) in
            voiceShowView.snp.remakeConstraints { make in
                //: make.trailing.equalTo(voiceBackView.snp.leading).offset(-30)
                make.trailing.equalTo(voiceBackView.snp.leading).offset(-30)
                //: make.centerY.equalToSuperview()
                make.centerY.equalToSuperview()
                //: make.width.height.equalTo(15)
                make.width.height.equalTo(15)
            }

            //: if newData.voiceModel.activityShowStatus != 1 {
            if newData.voiceModel.activityShowStatus != 1 {
                //: voiceShowView.stopAnimating()
                voiceShowView.stopAnimating()
            }
            //: voiceTrackPoint.isHidden = true
            voiceTrackPoint.isHidden = true
        }
    }
}
