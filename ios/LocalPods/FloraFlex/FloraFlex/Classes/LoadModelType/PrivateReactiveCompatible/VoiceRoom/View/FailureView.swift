
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let kStr_modeText:[UInt8] = [0x64,0x65,0x74,0x6e,0x65,0x6d,0x65,0x6c,0x70,0x6d,0x69,0x20,0x6e,0x65,0x65,0x62,0x20,0x74,0x6f,0x6e,0x20,0x73,0x61,0x68,0x20,0x29,0x3a,0x72,0x65,0x64,0x6f,0x63,0x28,0x74,0x69,0x6e,0x69]

/*: "#7166F9" :*/
fileprivate let kStr_labValue:[Character] = ["#","7"]
fileprivate let kStr_sourceLiveImportName:String = "text few user166F9"

/*: "party_seat_mike_close" :*/
fileprivate let kStr_withValue:[Character] = ["p","a","r","t","y"]
fileprivate let kStr_toName:String = "_sealet let let make"
fileprivate let kStr_windowValue:String = "t_mifrom if"

/*: "party_seat_host" :*/
fileprivate let kStr_failureValue:[Character] = ["p","a","r","t","y","_","s","e","a","t","_","h","o","s","t"]

/*: "#FA9D33" :*/
fileprivate let kStr_sourceRequestForValue:String = "#FA9D33let data count custom lab"

/*: "party_seat_heartvalue" :*/
fileprivate let kStr_blockValue:[Character] = ["p","a","r","t","y","_","s","e","a","t","_","h"]
fileprivate let kStr_lastData:[Character] = ["e","a","r","t","v","a","l","u","e"]

/*: "party_seat_lock" :*/
fileprivate let kStr_finishValue:[UInt8] = [0x39,0x28,0x3b,0x3d,0x30,0x16,0x3a,0x2c,0x28,0x3d,0x16,0x25,0x26,0x2a,0x22]

private func searchData(bar num: UInt8) -> UInt8 {
    return num ^ 73
}

/*: "party_seat_empty" :*/
fileprivate let kStr_sizeData:String = "parprofile"
fileprivate let kStr_makeValue:String = "any imageat_e"

/*: "99999+" :*/
fileprivate let kStr_informationValue:[UInt8] = [0x2b,0x39,0x39,0x39,0x39,0x39]

/*: "Unlock" :*/
fileprivate let kStr_buttonStackData:String = "item return return equalUnlock"

/*: "The seat is locked, click on the empty seat to play" :*/
fileprivate let kStr_finishName:[UInt8] = [0xc0,0xfc,0xf1,0xb4,0xe7,0xf1,0xf5,0xe0,0xb4,0xfd,0xe7,0xb4,0xf8,0xfb,0xf7,0xff,0xf1,0xf0,0xb8,0xb4,0xf7,0xf8,0xfd,0xf7,0xff,0xb4,0xfb,0xfa,0xb4,0xe0,0xfc,0xf1,0xb4,0xf1,0xf9,0xe4,0xe0,0xed,0xb4,0xe7,0xf1,0xf5,0xe0,0xb4,0xe0,0xfb,0xb4,0xe4,0xf8,0xf5,0xed]

private func sawLog(load num: UInt8) -> UInt8 {
    return num ^ 148
}

/*: "Under mic" :*/
fileprivate let kStr_imageName:String = "Under mself view remove manager"
fileprivate let kStr_stackText:[Character] = ["i","c"]

/*: _ :*/
fileprivate let kStr_sceneData:[Character] = ["_"]

/*: "male" :*/
fileprivate let kStr_storageValue:[UInt8] = [0x52,0x46,0x51,0x4a]

fileprivate func messageTarget(layer num: UInt8) -> UInt8 {
    let value = Int(num) + 27
    if value > 255 {
        return UInt8(value - 256)
    } else {
        return UInt8(value)
    }
}

/*: "female" :*/
fileprivate let kStr_saveContent:[Character] = ["f"]
fileprivate let kStr_handleData:[Character] = ["e","m","a","l","e"]

/*: "On mic" :*/
fileprivate let kStr_momentValue:String = "On micbackground location background"

/*: "Lock" :*/
fileprivate let kStr_viewTitle:String = "Lockif title message"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  FailureView.swift
//  FloraFlex
//
//  Created by DouXiu on 2024/9/24.
//

//: import UIKit
import UIKit

/// 当前Item宽高
//: let MikePositionItemView_Size = CGSize(width: (ScreenWidth - 35) / 4, height: actualWidth(w: 102))
let kLet_formatVoiceValue = CGSize(width: (kLet_halfData - 35) / 4, height: originalScene(w: 102))

//: class TalkingMikePositionItemView: UIView {
class FailureView: UIView {
    /// 用户资料卡block
    //: public var showUserCardBlock: ((_ uid: Int) -> Void)?
    public var showUserCardBlock: ((_ uid: Int) -> Void)?
    /// 麦位
    //: private var position = 0
    private var position = 0
    /// 麦位模型
    //: private var itemModel = TalkingMikeListItemModel()
    private var itemModel = SharedModelMeasurable()
    /// 是否正在动画
    //: private var isAnimation = false
    private var isAnimation = false
    /// 1s内最大音浪值
    //: private var maxAmplitude = 0.0
    private var maxAmplitude = 0.0

    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: setupSubviews()
        afterProcess()
        //: setupSubViewsConstraint()
        detailConstraint()
        //: bindInteraction()
        cleave()
    }

    //: @available(*, unavailable)
    @available(*, unavailable)
    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: kStr_modeText.reversed(), encoding: .utf8)!)
    }

    // MARK: - Lazy Load

    //: private lazy var animationV1: UIView = {
    private lazy var animationV1: UIView = {
        //: let v = UIView()
        let v = UIView()
        //: v.backgroundColor = UIColor(hex: "#7166F9")?.withAlphaComponent(0.15)
        v.backgroundColor = UIColor(hex: (String(kStr_labValue) + String(kStr_sourceLiveImportName.suffix(5))))?.withAlphaComponent(0.15)
        //: v.layer.cornerRadius = 29
        v.layer.cornerRadius = 29
        //: v.layer.masksToBounds = true
        v.layer.masksToBounds = true
        //: v.isHidden = true
        v.isHidden = true
        //: return v
        return v
        //: }()
    }()

    //: private lazy var animationV2: UIView = {
    private lazy var animationV2: UIView = {
        //: let v = UIView()
        let v = UIView()
        //: v.backgroundColor = UIColor(hex: "#7166F9")?.withAlphaComponent(0.55)
        v.backgroundColor = UIColor(hex: (String(kStr_labValue) + String(kStr_sourceLiveImportName.suffix(5))))?.withAlphaComponent(0.55)
        //: v.layer.cornerRadius = 25
        v.layer.cornerRadius = 25
        //: v.layer.masksToBounds = true
        v.layer.masksToBounds = true
        //: v.isHidden = true
        v.isHidden = true
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
        //: v.layer.cornerRadius = 25
        v.layer.cornerRadius = 25
        //: v.layer.masksToBounds = true
        v.layer.masksToBounds = true
        //: v.isUserInteractionEnabled = true
        v.isUserInteractionEnabled = true
        //: return v
        return v
        //: }()
    }()

    //: private lazy var mikeCloseImgV: UIImageView = {
    private lazy var mikeCloseImgV: UIImageView = {
        //: let v = UIImageView()
        let v = UIImageView()
        //: v.image = UIImage.bundleBy(name: "party_seat_mike_close")
        v.image = UIImage.bundleBy(name: (String(kStr_withValue) + String(kStr_toName.prefix(4)) + String(kStr_windowValue.prefix(4)) + "ke_close"))
        //: v.isHidden = true
        v.isHidden = true
        //: return v
        return v
        //: }()
    }()

    //: private lazy var stackView: UIStackView = {
    private lazy var stackView: UIStackView = {
        //: let v = UIStackView()
        let v = UIStackView()
        //: v.axis = .horizontal
        v.axis = .horizontal
        //: v.alignment = .center
        v.alignment = .center
        //: v.spacing = 2
        v.spacing = 2
        //: return v
        return v
        //: }()
    }()

    //: private lazy var houseImgV: UIImageView = {
    private lazy var houseImgV: UIImageView = {
        //: let v = UIImageView()
        let v = UIImageView()
        //: v.image = UIImage.bundleBy(name: "party_seat_host")
        v.image = UIImage.bundleBy(name: (String(kStr_failureValue)))
        //: v.isHidden = true
        v.isHidden = true
        //: return v
        return v
        //: }()
    }()

    //: private lazy var seatNumLab: UILabel = {
    private lazy var seatNumLab: UILabel = {
        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.backgroundColor = UIColor(hex: "#FA9D33")
        lab.backgroundColor = UIColor(hex: (String(kStr_sourceRequestForValue.prefix(7))))
        //: lab.font = UIFont.dorsum(fontSize: 9)
        lab.font = UIFont.dorsum(fontSize: 9)
        //: lab.textColor = .white
        lab.textColor = .white
        //: lab.textAlignment = .center
        lab.textAlignment = .center
        //: lab.layer.cornerRadius = actualWidth(w: 12) / 2
        lab.layer.cornerRadius = originalScene(w: 12) / 2
        //: lab.layer.masksToBounds = true
        lab.layer.masksToBounds = true
        //: return lab
        return lab
        //: }()
    }()

    //: private lazy var nickNameLab: UILabel = {
    private lazy var nickNameLab: UILabel = {
        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.font = UIFont.messageDown(fontSize: 12)
        lab.font = UIFont.messageDown(fontSize: 12)
        //: lab.textColor = .white
        lab.textColor = .white
        //: return lab
        return lab
        //: }()
    }()

    //: private lazy var heartCoinBtn: TalkingButton = {
    private lazy var heartCoinBtn: OverdoTalkingButton = {
        //: let btn = TalkingButton()
        let btn = OverdoTalkingButton()
        //: btn.setImage(UIImage.bundleBy(name: "party_seat_heartvalue"), for: .normal)
        btn.setImage(UIImage.bundleBy(name: (String(kStr_blockValue) + String(kStr_lastData))), for: .normal)
        //: btn.titleLabel?.font = .pingfangFont(type: .Regular, fontSize: 8)
        btn.titleLabel?.font = .groupSize(type: .Regular, fontSize: 8)
        //: btn.setTitleColor(.white, for: .normal)
        btn.setTitleColor(.white, for: .normal)
        //: btn.setTitle("0", for: .normal)
        btn.setTitle("0", for: .normal)
        //: btn.spaceBetweenTitleAndImage = 2
        btn.spaceBetweenTitleAndImage = 2
        //: btn.backgroundColor = UIColor.white.withAlphaComponent(0.15)
        btn.backgroundColor = UIColor.white.withAlphaComponent(0.15)
        //: btn.layer.cornerRadius = actualWidth(w: 12) / 2
        btn.layer.cornerRadius = originalScene(w: 12) / 2
        //: btn.layer.masksToBounds = true
        btn.layer.masksToBounds = true
        //: btn.isHidden = true
        btn.isHidden = true
        //: return btn
        return btn
        //: }()
    }()
}

// MARK: - Event

//: extension TalkingMikePositionItemView {
extension FailureView {
    /// 刷新视图
    /// - Parameters:
    ///   - seatNumber: 席位
    ///   - model: 模型
    //: func refreshMikeItemView(_ seatNumber: Int, model: TalkingMikeListItemModel) {
    func toSharedModel(_ seatNumber: Int, model: SharedModelMeasurable) {
        //: position = seatNumber
        position = seatNumber
        //: itemModel = model
        itemModel = model
        //: seatNumLab.text = "\(seatNumber + 1)"
        seatNumLab.text = "\(seatNumber + 1)"

        //: guard model.posStatus == 0, model.uid > 0 else {
        guard model.posStatus == 0, model.uid > 0 else {
            //: let imgStr = (itemModel.posStatus == 1) ? "party_seat_lock" : "party_seat_empty"
            let imgStr = (itemModel.posStatus == 1) ? String(bytes: kStr_finishValue.map{searchData(bar: $0)}, encoding: .utf8)! : (kStr_sizeData.replacingOccurrences(of: "profile", with: "t") + "y_se" + String(kStr_makeValue.suffix(4)) + "mpty")
            //: icon.image = UIImage.bundleBy(name: imgStr)
            icon.image = UIImage.bundleBy(name: imgStr)
            //: mikeCloseImgV.isHidden = true
            mikeCloseImgV.isHidden = true
            //: houseImgV.isHidden = true
            houseImgV.isHidden = true
            //: nickNameLab.isHidden = true
            nickNameLab.isHidden = true
            //: heartCoinBtn.isHidden = true
            heartCoinBtn.isHidden = true
            //: return
            return
        }

        // 麦位开启，麦上有人
        //: let optionsInfo = [KingfisherOptionsInfoItem.processor(RoundCornerImageProcessor(cornerRadius: actualWidth(w: 25)))]
        let optionsInfo = [KingfisherOptionsInfoItem.processor(RoundCornerImageProcessor(cornerRadius: originalScene(w: 25)))]
        //: icon.setUrlImage(urlStr: model.headPic, options: optionsInfo)
        icon.failureFinish(urlStr: model.headPic, options: optionsInfo)
        //: mikeCloseImgV.isHidden = (model.mikeStatus == 2)
        mikeCloseImgV.isHidden = (model.mikeStatus == 2)
        // 是否是主播
        //: houseImgV.isHidden = !(model.uid == TalkingVoiceRoomManager.shared().partyModel.streamerInfo.uid)
        houseImgV.isHidden = !(model.uid == SubCheckedReactiveCompatible.replyShared().partyModel.streamerInfo.uid)
        //: nickNameLab.text = model.nickname
        nickNameLab.text = model.nickname
        //: nickNameLab.isHidden = false
        nickNameLab.isHidden = false
        //: let heartValue = (model.coin > 99999) ? "99999+" : String(model.coin)
        let heartValue = (model.coin > 99999) ? String(bytes: kStr_informationValue.reversed(), encoding: .utf8)! : String(model.coin)
        //: heartCoinBtn.setTitle(heartValue, for: .normal)
        heartCoinBtn.setTitle(heartValue, for: .normal)
        //: heartCoinBtn.isHidden = false
        heartCoinBtn.isHidden = false
        //: let width = heartCoinBtn.titleLabel!.text!.size(withAttributes: [.font: heartCoinBtn.titleLabel!.font!]).width + actualWidth(w: 20)
        let width = heartCoinBtn.titleLabel!.text!.size(withAttributes: [.font: heartCoinBtn.titleLabel!.font!]).width + originalScene(w: 20)
        //: heartCoinBtn.snp.updateConstraints { make in
        heartCoinBtn.snp.updateConstraints { make in
            //: make.width.equalTo(width)
            make.width.equalTo(width)
        }
    }

    /// 麦位点击事件
    //: @objc func tapGestureRecognizer(_ tap: UITapGestureRecognizer) {
    @objc func recordBy(_: UITapGestureRecognizer) {
        // 是否房主
        //: let isAnchor = (String(TalkingVoiceRoomManager.shared().partyModel.streamerInfo.uid) == LocationThen.share.loginUid)
        let isAnchor = (String(SubCheckedReactiveCompatible.replyShared().partyModel.streamerInfo.uid) == LocationThen.share.loginUid)
        //: guard itemModel.posStatus == 0 else {
        guard itemModel.posStatus == 0 else {
            //: if itemModel.posStatus == 1 {
            if itemModel.posStatus == 1 { // 麦位锁定
                //: if isAnchor {
                if isAnchor { // 房主
                    //: let vc = TalkingMunuPopView(frame: UIScreen.main.bounds)
                    let vc = FillView(frame: UIScreen.main.bounds)
                    //: vc.initwithList(cellTitleList: ["Unlock".localized])
                    vc.compartmentList(cellTitleList: [(String(kStr_buttonStackData.suffix(6))).localized])
                    //: vc.cancelColor = .appTitleColor()
                    vc.cancelColor = .dataFormat()
                    //: vc.munuBlock = { [weak self] _, str in
                    vc.munuBlock = { [weak self] _, str in
                        //: guard let self = self else { return }
                        guard let self = self else { return }
                        //: if str == "Unlock".localized {
                        if str == (String(kStr_buttonStackData.suffix(6))).localized {
                            //: TalkingVoiceRoomManager.shared().voiceRoom_reqAdminChangeMike(uid: 0, type: 2, position: position)
                            SubCheckedReactiveCompatible.replyShared().dealDismiss(uid: 0, type: 2, position: position)
                        }
                    }

                    //: } else {
                } else {
                    //: func__showStatusBarErrorMsg(showMsg: "The seat is locked, click on the empty seat to play".localized)
                    detailDownArray(showMsg: String(bytes: kStr_finishName.map{sawLog(load: $0)}, encoding: .utf8)!.localized)
                }
            }
            //: return
            return
        }

        // 麦位开启
        //: if itemModel.uid > 0 {
        if itemModel.uid > 0 { // 麦上有人
            //: if String(itemModel.uid) == LocationThen.share.loginUid {
            if String(itemModel.uid) == LocationThen.share.loginUid { // 点击自己麦位
                // 用户主动下麦
                //: let vc = TalkingMunuPopView(frame: UIScreen.main.bounds)
                let vc = FillView(frame: UIScreen.main.bounds)
                //: vc.initwithList(cellTitleList: ["Under mic".localized])
                vc.compartmentList(cellTitleList: [(String(kStr_imageName.prefix(7)) + String(kStr_stackText)).localized])
                //: vc.cancelColor = .appTitleColor()
                vc.cancelColor = .dataFormat()
                //: vc.munuBlock = { [weak self] _, str in
                vc.munuBlock = { [weak self] _, str in
                    //: guard let self = self else { return }
                    guard let self = self else { return }
                    //: if str == "Under mic".localized {
                    if str == (String(kStr_imageName.prefix(7)) + String(kStr_stackText)).localized {
                        //: TalkingVoiceRoomManager.shared().voiceRoom_reqChangeMike(type: 2, position: position)
                        SubCheckedReactiveCompatible.replyShared().analyze(type: 2, position: position)
                        //: uploadRecord.uploadRecordEvent(eventID: "\(click_partyDetail_underMic)_\(LocationThen.share.loginUserMode.sex == Gender.male.rawValue ? "male" : "female")")
                        kLet_dismissValue.digitizerInsideStatus(eventID: "\(kLet_userDeviceData)_\(LocationThen.share.loginUserMode.sex == SucceedComparable.male.rawValue ? String(bytes: kStr_storageValue.map{messageTarget(layer: $0)}, encoding: .utf8)! : (String(kStr_saveContent) + String(kStr_handleData)))")
                    }
                }

                //: } else {
            } else { // 点击别人麦位, 查看资料卡
                //: showUserCardBlock?(itemModel.uid)
                showUserCardBlock?(itemModel.uid)
            }

            //: } else {
        } else { // 空位
            //: if isAnchor {
            if isAnchor { // 房主
                //: let vc = TalkingMunuPopView(frame: UIScreen.main.bounds)
                let vc = FillView(frame: UIScreen.main.bounds)
                //: vc.initwithList(cellTitleList: ["On mic".localized, "Lock".localized])
                vc.compartmentList(cellTitleList: [(String(kStr_momentValue.prefix(6))).localized, (String(kStr_viewTitle.prefix(4))).localized])
                //: vc.cancelColor = .appTitleColor()
                vc.cancelColor = .dataFormat()
                //: vc.munuBlock = { [weak self] _, str in
                vc.munuBlock = { [weak self] _, str in
                    //: guard let self = self else { return }
                    guard let self = self else { return }
                    //: if str == "On mic".localized {
                    if str == (String(kStr_momentValue.prefix(6))).localized {
                        //: if TalkingVoiceRoomManager.shared().partyModel.position >= 0 {
                        if SubCheckedReactiveCompatible.replyShared().partyModel.position >= 0 { // 在麦位上切麦
                            //: TalkingVoiceRoomManager.shared().voiceRoom_reqChangeMike(type: 3,
                            SubCheckedReactiveCompatible.replyShared().analyze(type: 3,
                                                                          //: position: TalkingVoiceRoomManager.shared().partyModel.position,
                                                                          position: SubCheckedReactiveCompatible.replyShared().partyModel.position,
                                                                          //: toPosition: position)
                                                                          toPosition: position)
                            //: } else {
                        } else {
                            //: TalkingVoiceRoomManager.shared().voiceRoom_reqChangeMike(type: 1, position: position)
                            SubCheckedReactiveCompatible.replyShared().analyze(type: 1, position: position)
                            //: uploadRecord.uploadRecordEvent(eventID: "\(click_partyDetail_onMic)_\(LocationThen.share.loginUserMode.sex == Gender.male.rawValue ? "male" : "female")")
                            kLet_dismissValue.digitizerInsideStatus(eventID: "\(kLet_exploreContent)_\(LocationThen.share.loginUserMode.sex == SucceedComparable.male.rawValue ? String(bytes: kStr_storageValue.map{messageTarget(layer: $0)}, encoding: .utf8)! : (String(kStr_saveContent) + String(kStr_handleData)))")
                        }

                        //: } else if str == "Lock".localized {
                    } else if str == (String(kStr_viewTitle.prefix(4))).localized {
                        //: TalkingVoiceRoomManager.shared().voiceRoom_reqAdminChangeMike(uid: 0, type: 1, position: position)
                        SubCheckedReactiveCompatible.replyShared().dealDismiss(uid: 0, type: 1, position: position)
                    }
                }

                //: } else {
            } else { // 观众在麦位上切麦，否则上麦
                //: if TalkingVoiceRoomManager.shared().partyModel.position >= 0 {
                if SubCheckedReactiveCompatible.replyShared().partyModel.position >= 0 {
                    //: TalkingVoiceRoomManager.shared().voiceRoom_reqChangeMike(type: 3,
                    SubCheckedReactiveCompatible.replyShared().analyze(type: 3,
                                                                  //: position: TalkingVoiceRoomManager.shared().partyModel.position,
                                                                  position: SubCheckedReactiveCompatible.replyShared().partyModel.position,
                                                                  //: toPosition: position)
                                                                  toPosition: position)
                    //: } else {
                } else {
                    //: TalkingVoiceRoomManager.shared().voiceRoom_reqChangeMike(type: 1, position: position)
                    SubCheckedReactiveCompatible.replyShared().analyze(type: 1, position: position)
                    //: uploadRecord.uploadRecordEvent(eventID: "\(click_partyDetail_onMic)_\(LocationThen.share.loginUserMode.sex == Gender.male.rawValue ? "male" : "female")")
                    kLet_dismissValue.digitizerInsideStatus(eventID: "\(kLet_exploreContent)_\(LocationThen.share.loginUserMode.sex == SucceedComparable.male.rawValue ? String(bytes: kStr_storageValue.map{messageTarget(layer: $0)}, encoding: .utf8)! : (String(kStr_saveContent) + String(kStr_handleData)))")
                }
            }
        }
    }
}

// MARK: - 音浪动效

//: extension TalkingMikePositionItemView {
extension FailureView {
    /// 播放音浪值动效
    /// - Parameter amplitude: 音浪值
    //: func animateCircle(withAmplitude amplitude: CGFloat) {
    func topTitle(withAmplitude amplitude: CGFloat) {
        //: maxAmplitude = max(maxAmplitude, amplitude)
        maxAmplitude = max(maxAmplitude, amplitude)
        //: guard isAnimation == false else { return }
        guard isAnimation == false else { return }
        //: isAnimation = true
        isAnimation = true

        //: animationV1.isHidden = false
        animationV1.isHidden = false
        //: animationV2.isHidden = false
        animationV2.isHidden = false
        //: let scale1 = (25 + (maxAmplitude / 100) * 7) / 25
        let scale1 = (25 + (maxAmplitude / 100) * 7) / 25
        //: let scale2 = (29 + (maxAmplitude / 100) * 8) / 29
        let scale2 = (29 + (maxAmplitude / 100) * 8) / 29
        //: maxAmplitude = 0.0
        maxAmplitude = 0.0
        //: UIView.animate(withDuration: 1, animations: {
        UIView.animate(withDuration: 1, animations: {
            //: self.animationV1.transform = CGAffineTransform(scaleX: scale1, y: scale1)
            self.animationV1.transform = CGAffineTransform(scaleX: scale1, y: scale1)
            //: self.animationV2.transform = CGAffineTransform(scaleX: scale2, y: scale2)
            self.animationV2.transform = CGAffineTransform(scaleX: scale2, y: scale2)
            //: }) { _ in
        }) { _ in
            //: self.animationV1.transform = .identity
            self.animationV1.transform = .identity
            //: self.animationV2.transform = .identity
            self.animationV2.transform = .identity
            //: self.animationV1.isHidden = true
            self.animationV1.isHidden = true
            //: self.animationV2.isHidden = true
            self.animationV2.isHidden = true
            //: self.isAnimation = false
            self.isAnimation = false
        }
    }
}

// MARK: - Layout

//: extension TalkingMikePositionItemView {
extension FailureView {
    /// 添加视图
    //: private func setupSubviews() {
    private func afterProcess() {
        //: addSubview(animationV1)
        addSubview(animationV1)
        //: addSubview(animationV2)
        addSubview(animationV2)
        //: addSubview(icon)
        addSubview(icon)
        //: addSubview(mikeCloseImgV)
        addSubview(mikeCloseImgV)
        //: addSubview(stackView)
        addSubview(stackView)
        //: stackView.addArrangedSubview(houseImgV)
        stackView.addArrangedSubview(houseImgV)
        //: stackView.addArrangedSubview(seatNumLab)
        stackView.addArrangedSubview(seatNumLab)
        //: stackView.addArrangedSubview(nickNameLab)
        stackView.addArrangedSubview(nickNameLab)
        //: addSubview(heartCoinBtn)
        addSubview(heartCoinBtn)
    }

    /// 添加约束
    //: private func setupSubViewsConstraint() {
    private func detailConstraint() {
        //: animationV1.snp.makeConstraints { make in
        animationV1.snp.makeConstraints { make in
            //: make.top.equalTo(actualWidth(w: 8))
            make.top.equalTo(originalScene(w: 8))
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.width.height.equalTo(58)
            make.width.height.equalTo(58)
        }

        //: animationV2.snp.makeConstraints { make in
        animationV2.snp.makeConstraints { make in
            //: make.center.equalTo(animationV1)
            make.center.equalTo(animationV1)
            //: make.width.height.equalTo(50)
            make.width.height.equalTo(50)
        }

        //: icon.snp.makeConstraints { make in
        icon.snp.makeConstraints { make in
            //: make.center.equalTo(animationV1)
            make.center.equalTo(animationV1)
            //: make.width.height.equalTo(50)
            make.width.height.equalTo(50)
        }

        //: mikeCloseImgV.snp.makeConstraints { make in
        mikeCloseImgV.snp.makeConstraints { make in
            //: make.trailing.bottom.equalTo(icon).offset(3)
            make.trailing.bottom.equalTo(icon).offset(3)
            //: make.width.height.equalTo(actualWidth(w: 18))
            make.width.height.equalTo(originalScene(w: 18))
        }

        //: stackView.snp.makeConstraints { make in
        stackView.snp.makeConstraints { make in
            //: make.top.equalTo(icon.snp.bottom).offset(actualWidth(w: 6))
            make.top.equalTo(icon.snp.bottom).offset(originalScene(w: 6))
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.width.lessThanOrEqualToSuperview()
            make.width.lessThanOrEqualToSuperview()
        }
        //: houseImgV.snp.makeConstraints { make in
        houseImgV.snp.makeConstraints { make in
            //: make.width.height.equalTo(actualWidth(w: 12))
            make.width.height.equalTo(originalScene(w: 12))
        }
        //: seatNumLab.snp.makeConstraints { make in
        seatNumLab.snp.makeConstraints { make in
            //: make.width.height.equalTo(actualWidth(w: 12))
            make.width.height.equalTo(originalScene(w: 12))
        }

        //: heartCoinBtn.snp.makeConstraints { make in
        heartCoinBtn.snp.makeConstraints { make in
            //: make.top.equalTo(icon.snp.bottom).offset(actualWidth(w: 24))
            make.top.equalTo(icon.snp.bottom).offset(originalScene(w: 24))
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.height.equalTo(actualWidth(w: 12))
            make.height.equalTo(originalScene(w: 12))
            //: make.width.equalTo(actualWidth(w: 21))
            make.width.equalTo(originalScene(w: 21))
        }
    }

    /// 添加事件
    //: private func bindInteraction() {
    private func cleave() {
        //: let tap = UITapGestureRecognizer(target: self, action: #selector(tapGestureRecognizer))
        let tap = UITapGestureRecognizer(target: self, action: #selector(recordBy))
        //: addGestureRecognizer(tap)
        addGestureRecognizer(tap)
    }
}
