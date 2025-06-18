
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let kStr_languageName:[UInt8] = [0xfb,0xfc,0xfb,0xe6,0xba,0xf1,0xfd,0xf6,0xf7,0xe0,0xa8,0xbb,0xb2,0xfa,0xf3,0xe1,0xb2,0xfc,0xfd,0xe6,0xb2,0xf0,0xf7,0xf7,0xfc,0xb2,0xfb,0xff,0xe2,0xfe,0xf7,0xff,0xf7,0xfc,0xe6,0xf7,0xf6]

private func viewSize(mode num: UInt8) -> UInt8 {
    return num ^ 146
}

/*: "Followers" :*/
fileprivate let kStr_pushData:String = "Folto var make"
fileprivate let kStr_ofName:[Character] = ["l","o","w","e","r","s"]

/*: "Following" :*/
fileprivate let kStr_dateValue:String = "text"
fileprivate let kStr_voiceName:String = "minlo"

/*: "#E6E6E6" :*/
fileprivate let kStr_withUserTitle:String = "control"
fileprivate let kStr_timeContent:[Character] = ["E","6","E","6","E","6"]

/*: "btn_message_more" :*/
fileprivate let kStr_hidePerformValue:String = "btn_mname model"
fileprivate let kStr_frameToValue:[Character] = ["m","o","r","e"]

/*: "UID:  :*/
fileprivate let kStr_userAddBurnContent:String = "modify make notUID: "

/*: "level_ :*/
fileprivate let kStr_totalTitle:String = "LEVEL"
fileprivate let kStr_modelName:String = "path"

/*: "Follow" :*/
fileprivate let kStr_successData:String = "size color topFollow"

/*: "Chat" :*/
fileprivate let kStr_topName:String = "Chatdata case gesture"

/*: "attentionUid" :*/
fileprivate let kStr_viewText:[Character] = ["a"]
fileprivate let kStr_voiceDataNoneValue:[Character] = ["t","t","e","n","t","i","o","n","U","i","d"]

/*: "source" :*/
fileprivate let kStr_replacementData:String = "termsource"

/*: "Report" :*/
fileprivate let kStr_equalName:[Character] = ["R","e","p","o","r","t"]

/*: "Block" :*/
fileprivate let kStr_indexShareName:String = "Blockview lab"

/*: "Muted" :*/
fileprivate let kStr_colorValue:String = "view any endMuted"

/*: "Mute" :*/
fileprivate let kStr_arrayTitle:[Character] = ["M","u","t","e"]

/*: "#F6F6F6" :*/
fileprivate let kStr_shareData:String = "format"
fileprivate let kStr_lineData:String = "up6up6up6"

/*: "Cancel" :*/
fileprivate let kStr_makeData:String = "Canceluser select extension bottom block"

/*: "OK" :*/
fileprivate let kStr_replyValue:String = "Onumber"

/*: "Kicked out of the live room" :*/
fileprivate let kStr_scriptName:String = "voice var letKicke"
fileprivate let kStr_managerTitle:[Character] = ["d"]
fileprivate let kStr_kindMakeValue:String = " outmake for me"
fileprivate let kStr_managerContent:String = "temp managerhe liv"

/*: "uid" :*/
fileprivate let kStr_titleValue:[UInt8] = [0x38,0x24,0x29]

private func visualImage(live num: UInt8) -> UInt8 {
    return num ^ 77
}

/*: "Shielding Success" :*/
fileprivate let kStr_giftValue:String = "Shieldlab let"
fileprivate let kStr_keyData:[Character] = ["u","c","c","e","s","s"]

/*: "Are you sure you want to cancel the mute?" :*/
fileprivate let kStr_centerTitle:[UInt8] = [0x3d,0x6e,0x61,0x1c,0x75,0x6b,0x71,0x1c,0x6f,0x71,0x6e,0x61,0x1c,0x75,0x6b,0x71,0x1c,0x73,0x5d,0x6a,0x70,0x1c,0x70,0x6b,0x1c,0x5f,0x5d,0x6a,0x5f,0x61,0x68,0x1c,0x70,0x64,0x61,0x1c,0x69,0x71,0x70,0x61,0x3b]

fileprivate func imageSmall(word num: UInt8) -> UInt8 {
    let value = Int(num) - 252
    if value < 0 {
        return UInt8(value + 256)
    } else {
        return UInt8(value)
    }
}

/*: "Confirm" :*/
fileprivate let kStr_eventTitle:String = "hidden valueConfirm"

/*: "The mute has been lifted~" :*/
fileprivate let kStr_toText:String = "The muerror more row down register"
fileprivate let kStr_pathAllName:String = "s beeview if by cell add"
fileprivate let kStr_startValue:String = "other observe at nord~"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  PageReactiveCompatible.swift
//  AbroadTalking
//
//  Created by Charlotte on 2023/7/12.
//

//: import UIKit
import UIKit

//: enum LiveUserCardType: Int {
enum BottomLayerQuickLookable: Int {
    //: case user_me = 0
    case user_me = 0 // 当前用户

    //: case user_other
    case user_other // 别人
}

//: @objc protocol TalkingLiveUserCardViewDelegate: NSObjectProtocol {
@objc protocol GiftObjectProtocol: NSObjectProtocol {
    // @
    //: func func__atUserClick(uid: String, nickname: String)
    func patronymic(uid: String, nickname: String)
}

//: class TalkingLiveUserCardView: UIView {
class PageReactiveCompatible: UIView {
    //: var popView: TalkingPopView?
    var popView: BackgroundThen?
    //: var data =  [String: Any]()
    var data = [String: Any]()
    //: var type: LiveUserCardType?
    var type: BottomLayerQuickLookable?
    //: var uid = ""
    var uid = ""
    //: var liveUserId = String(TalkingLiveManager.shared().liveRoomModel.streamerInfo.uid)
    var liveUserId = String(VideoPushListener.isGesture().liveRoomModel.streamerInfo.uid) // 主播ID
    //: var liveRoomDanmuID = TalkingLiveManager.shared().liveRoomModel.chatGroupId
    var liveRoomDanmuID = VideoPushListener.isGesture().liveRoomModel.chatGroupId
    //: var userModel = TalkingUserInfoModel.init()
    var userModel = LoadMeasurable()

    //: open weak var delegate: TalkingLiveUserCardViewDelegate?
    open weak var delegate: GiftObjectProtocol?

    //: init(frame: CGRect, uid: String) {
    init(frame: CGRect, uid: String) {
        //: super.init(frame: frame)
        super.init(frame: frame)

        //: if uid == LocationThen.share.loginUserMode.userID {
        if uid == LocationThen.share.loginUserMode.userID {
            //: self.type = .user_me
            self.type = .user_me
            //: } else {
        } else {
            //: self.type = .user_other
            self.type = .user_other
        }
        //: self.uid = uid
        self.uid = uid
        //: setupSubviews()
        picture()
        //: setupSubViewsConstraint()
        actionName()
        //: reqUserCardInfo()
        noneSize()
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: kStr_languageName.map{viewSize(mode: $0)}, encoding: .utf8)!)
    }

    //: deinit {
    deinit {}

    // 懒加载初始化

    //: lazy var contentView: UIView = {
    lazy var contentView: UIView = {
        //: let view = UIView.init()
        let view = UIView()
        //: view.backgroundColor = UIColor.white
        view.backgroundColor = UIColor.white
        //: view.layer.cornerRadius = 8
        view.layer.cornerRadius = 8
        //: return view
        return view
        //: }()
    }()

    //: lazy var uidLb: UILabel = {
    lazy var uidLb: UILabel = {
        //: let label = UILabel.init()
        let label = UILabel()
        //: label.font = .pingfangFont(type: .Regular, fontSize: 12)
        label.font = .groupSize(type: .Regular, fontSize: 12)
        //: label.textColor = UIColor.statusMin()
        label.textColor = UIColor.statusMin()
        //: return label
        return label
        //: }()
    }()

    //: lazy var topIcon: UIButton = {
    lazy var topIcon: UIButton = {
        //: let btn = UIButton.init()
        let btn = UIButton()
        //: btn.addTarget(self, action: #selector(iconBtnClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(moveClick), for: .touchUpInside)
        //: btn.layer.cornerRadius = 40
        btn.layer.cornerRadius = 40
        //: btn.layer.masksToBounds = true
        btn.layer.masksToBounds = true
        //: btn.imageView?.contentMode = .scaleAspectFill
        btn.imageView?.contentMode = .scaleAspectFill
        //: btn.layer.borderWidth = 2
        btn.layer.borderWidth = 2
        //: btn.layer.borderColor = UIColor.white.cgColor
        btn.layer.borderColor = UIColor.white.cgColor
        //: return btn
        return btn

        //: }()
    }()

    //: lazy var nameLb: UILabel = {
    lazy var nameLb: UILabel = {
        //: let label = UILabel.init()
        let label = UILabel()
        //: label.font = .pingfangFont(type: .Semibold, fontSize: 15)
        label.font = .groupSize(type: .Semibold, fontSize: 15)
        //: label.textColor = UIColor.appTitleColor()
        label.textColor = UIColor.dataFormat()
        //: return label
        return label
        //: }()
    }()

    //: lazy var levelIcon: UIImageView = {
    lazy var levelIcon: UIImageView = {
        //: let imag = UIImageView.init()
        let imag = UIImageView()
        //: imag.contentMode = .scaleAspectFill
        imag.contentMode = .scaleAspectFill
        //: return imag
        return imag
        //: }()
    }()

    //: lazy var signLb: UILabel = {
    lazy var signLb: UILabel = {
        //: let label = UILabel.init()
        let label = UILabel()
        //: label.font = .pingfangFont(type: .Regular, fontSize: 13)
        label.font = .groupSize(type: .Regular, fontSize: 13)
        //: label.textColor = UIColor.statusMin()
        label.textColor = UIColor.statusMin()
        //: label.textAlignment = .center
        label.textAlignment = .center
        //: label.numberOfLines = 2
        label.numberOfLines = 2
        //: return label
        return label
        //: }()
    }()

    //: private lazy var followersLab: UILabel = {
    private lazy var followersLab: UILabel = {
        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.textColor = .statusMin()
        lab.textColor = .statusMin()
        //: lab.textAlignment = .center
        lab.textAlignment = .center
        //: lab.text = "Followers".localized
        lab.text = (String(kStr_pushData.prefix(3)) + String(kStr_ofName)).localized
        //: lab.font = UIFont.pingfangFont(type: .Semibold, fontSize: 12)
        lab.font = UIFont.groupSize(type: .Semibold, fontSize: 12)
        //: return lab
        return lab
        //: }()
    }()

    //: private lazy var followersNum: UILabel = {
    private lazy var followersNum: UILabel = {
        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.textColor = .appTitleColor()
        lab.textColor = .dataFormat()
        //: lab.textAlignment = .center
        lab.textAlignment = .center
        //: lab.text = "0"
        lab.text = "0"
        //: lab.font = UIFont.pingfangFont(type: .Semibold, fontSize: 15)
        lab.font = UIFont.groupSize(type: .Semibold, fontSize: 15)
        //: return lab
        return lab
        //: }()
    }()

    //: private lazy var followingLab: UILabel = {
    private lazy var followingLab: UILabel = {
        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.textColor = .statusMin()
        lab.textColor = .statusMin()
        //: lab.textAlignment = .center
        lab.textAlignment = .center
        //: lab.text = "Following".localized
        lab.text = (kStr_dateValue.replacingOccurrences(of: "text", with: "F") + kStr_voiceName.replacingOccurrences(of: "min", with: "ol") + "wing").localized
        //: lab.font = UIFont.pingfangFont(type: .Semibold, fontSize: 12)
        lab.font = UIFont.groupSize(type: .Semibold, fontSize: 12)
        //: return lab
        return lab
        //: }()
    }()

    //: private lazy var followingNum: UILabel = {
    private lazy var followingNum: UILabel = {
        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.textColor = .appTitleColor()
        lab.textColor = .dataFormat()
        //: lab.textAlignment = .center
        lab.textAlignment = .center
        //: lab.text = "0"
        lab.text = "0"
        //: lab.font = UIFont.pingfangFont(type: .Semibold, fontSize: 15)
        lab.font = UIFont.groupSize(type: .Semibold, fontSize: 15)
        //: return lab
        return lab
        //: }()
    }()

    //: private lazy var lineView: UIView = {
    private lazy var lineView: UIView = {
        //: let view = UIView()
        let view = UIView()
        //: view.backgroundColor = UIColor.init(hex: "#E6E6E6")
        view.backgroundColor = UIColor(hex: (kStr_withUserTitle.replacingOccurrences(of: "control", with: "#") + String(kStr_timeContent)))
        //: return view
        return view
        //: }()
    }()

    //: private lazy var stackView: UIStackView = {
    private lazy var stackView: UIStackView = {
        //: let v = UIStackView()
        let v = UIStackView()
        //: v.axis = .horizontal
        v.axis = .horizontal
        //: v.alignment = .fill
        v.alignment = .fill
        //: v.distribution = .fillEqually
        v.distribution = .fillEqually
        //: return v
        return v
        //: }()
    }()

    //: private lazy var moreBtn: UIButton = {
    private lazy var moreBtn: UIButton = {
        //: let btn = UIButton.init()
        let btn = UIButton()
        //: btn.imageView?.contentMode = .scaleAspectFill
        btn.imageView?.contentMode = .scaleAspectFill
        //: btn.setImage(UIImage.bundleBy(name: "btn_message_more"), for: .normal)
        btn.setImage(UIImage.bundleBy(name: (String(kStr_hidePerformValue.prefix(5)) + "essage_" + String(kStr_frameToValue))), for: .normal)
        //: btn.addTarget(self, action: #selector(moreBtnClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(toAGreaterExtentClick), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var muteView: TalkingLiveRoomMuteView = {
    private lazy var muteView: GiftMuteView = {
        //: let v = TalkingLiveRoomMuteView()
        let v = GiftMuteView()
        //: v.viewType  = .live
        v.viewType = .live
        //: return v
        return v
        //: }()
    }()
}

//: extension TalkingLiveUserCardView {
extension PageReactiveCompatible {
    //: func reqUserCardInfo() {
    func noneSize() {
        //: TalkingLiveManager.req__userCardInfo(uid: self.uid, streamerUid: liveUserId) { succeed, result, errorModel in
        VideoPushListener.tool(uid: self.uid, streamerUid: liveUserId) { succeed, result, _ in
            //: guard succeed else { return }
            guard succeed else { return }

            //: if let userModel = JSONDeserializer<TalkingUserInfoModel>.deserializeFrom(dict: result as? Dictionary<String, Any>, designatedPath: nil) {
            if let userModel = JSONDeserializer<LoadMeasurable>.deserializeFrom(dict: result as? [String: Any], designatedPath: nil) {
                //: self.userModel = userModel
                self.userModel = userModel
                //: self.setUserCardData()
                self.upperClass()
            }
        }
    }

    //: func setUserCardData() {
    func upperClass() {
        //: uidLb.text = "UID: \(self.userModel.uid)"
        uidLb.text = (String(kStr_userAddBurnContent.suffix(5))) + "\(self.userModel.uid)"
        //: topIcon.setUrlImage(urlStr: self.userModel.headPic)
        topIcon.displayFinish(urlStr: self.userModel.headPic)
        //: nameLb.text = self.userModel.nickname
        nameLb.text = self.userModel.nickname
        //: levelIcon.image = UIImage.bundleBy(name: "level_\(self.userModel.level)")
        levelIcon.image = UIImage.bundleBy(name: (kStr_totalTitle.lowercased() + kStr_modelName.replacingOccurrences(of: "path", with: "_")) + "\(self.userModel.level)")
        //: signLb.text = self.userModel.signature
        signLb.text = self.userModel.signature
        //: followersNum.text = self.userModel.attentionNum
        followersNum.text = self.userModel.attentionNum
        //: followingNum.text = self.userModel.fansNum
        followingNum.text = self.userModel.fansNum

        //: if self.type == .user_other {
        if self.type == .user_other {
            //: setBottomView(sex: self.userModel.sex)
            faceTitle(sex: self.userModel.sex)
        }
    }

    //: func setBottomView(sex: String) {
    func faceTitle(sex: String) {
        //: var dataSource = Array<String>()
        var dataSource = [String]()
        //: if LocationThen.share.loginUserMode.sex == sex {
        if LocationThen.share.loginUserMode.sex == sex {
            //: dataSource = ["@"]
            dataSource = ["@"]
            //: } else {
        } else {
            //: dataSource = ["Follow", "@", "Chat"]
            dataSource = [(String(kStr_successData.suffix(6))), "@", (String(kStr_topName.prefix(4)))]
            //: if self.userModel.isAttention {
            if self.userModel.isAttention {
                //: dataSource.remove(at: 0)
                dataSource.remove(at: 0)
            }
        }

        //: for i in 0 ..< dataSource.count {
        for i in 0 ..< dataSource.count {
            //: let btn = UIButton()
            let btn = UIButton()
            //: btn.tag = 200 + i
            btn.tag = 200 + i
            //: btn.setTitleColor(UIColor.fromBuild(), for: UIControl.State.normal)
            btn.setTitleColor(UIColor.fromBuild(), for: UIControl.State.normal)
            //: btn.titleLabel?.font = UIFont.dorsum(fontSize: 15)
            btn.titleLabel?.font = UIFont.dorsum(fontSize: 15)
            //: btn.setTitle(dataSource[i].localized, for: UIControl.State.normal)
            btn.setTitle(dataSource[i].localized, for: UIControl.State.normal)
            //: btn.addTarget(self, action: #selector(itemTouch(sender:)), for: UIControl.Event.touchUpInside)
            btn.addTarget(self, action: #selector(titleSender(sender:)), for: UIControl.Event.touchUpInside)
            //: self.stackView.addArrangedSubview(btn)
            self.stackView.addArrangedSubview(btn)

            //: if i != 0 {
            if i != 0 {
                //: let lineView = UIView.init()
                let lineView = UIView()
                //: lineView.backgroundColor = UIColor.init(hex: "#E6E6E6")
                lineView.backgroundColor = UIColor(hex: (kStr_withUserTitle.replacingOccurrences(of: "control", with: "#") + String(kStr_timeContent)))
                //: btn.addSubview(lineView)
                btn.addSubview(lineView)
                //: lineView.snp.makeConstraints { make in
                lineView.snp.makeConstraints { make in
                    //: make.top.equalTo(10)
                    make.top.equalTo(10)
                    //: make.leading.equalToSuperview()
                    make.leading.equalToSuperview()
                    //: make.width.equalTo(1)
                    make.width.equalTo(1)
                    //: make.height.equalTo(24)
                    make.height.equalTo(24)
                }
            }
        }
    }

    //: @objc func itemTouch(sender: UIButton) {
    @objc func titleSender(sender: UIButton) {
        //: let tag = sender.tag - 200
        let tag = sender.tag - 200
        //: if LocationThen.share.loginUserMode.sex == self.userModel.sex {
        if LocationThen.share.loginUserMode.sex == self.userModel.sex {
            //: switch tag {
            switch tag {
            //: case 0:
            case 0:
                //: self.delegate?.func__atUserClick(uid: self.userModel.uid, nickname: self.userModel.nickname)
                self.delegate?.patronymic(uid: self.userModel.uid, nickname: self.userModel.nickname)
                //: self.dismiss()
                self.now()
            //: break
            //: default:
            default:
                //: break
                break
            }
            //: } else {
        } else {
            //: if self.userModel.isAttention {
            if self.userModel.isAttention {
                //: switch tag {
                switch tag {
                //: case 0:
                case 0:
                    //: self.delegate?.func__atUserClick(uid: self.userModel.uid, nickname: self.userModel.nickname)
                    self.delegate?.patronymic(uid: self.userModel.uid, nickname: self.userModel.nickname)
                    //: self.dismiss()
                    self.now()
                //: break
                //: case 1:
                case 1:
                    //: EffectPushManager.share.func__pushToPriveteChatVC(chatID: self.userModel.uid, isFrom: .LiveRoom)
                    EffectPushManager.share.fromCompletion(chatID: self.userModel.uid, isFrom: .LiveRoom)
                    //: self.dismiss()
                    self.now()
                //: break
                //: default:
                default:
                    //: break
                    break
                }
                //: } else {
            } else {
                //: switch tag {
                switch tag {
                //: case 0:
                case 0:
                    //: freshfollowUser(sender: sender)
                    freshfollow(sender: sender)
                //: break
                //: case 1:
                case 1:
                    //: self.delegate?.func__atUserClick(uid: self.userModel.uid, nickname: self.userModel.nickname)
                    self.delegate?.patronymic(uid: self.userModel.uid, nickname: self.userModel.nickname)
                    //: self.dismiss()
                    self.now()
                //: break
                //: case 2:
                case 2:
                    //: EffectPushManager.share.func__pushToPriveteChatVC(chatID: self.userModel.uid, isFrom: .LiveRoom)
                    EffectPushManager.share.fromCompletion(chatID: self.userModel.uid, isFrom: .LiveRoom)
                    //: self.dismiss()
                    self.now()
                //: break
                //: default:
                default:
                    //: break
                    break
                }
            }
        }
    }

    //: func freshfollowUser(sender: UIButton) {
    func freshfollow(sender: UIButton) {
        //: req_followUser(uid: self.userModel.uid) { succeed in
        sinceImage(uid: self.userModel.uid) { succeed in
            //: if succeed {
            if succeed {
                //: self.followingNum.text = "\((Int(self.userModel.fansNum ) ?? 0) + 1)"
                self.followingNum.text = "\((Int(self.userModel.fansNum) ?? 0) + 1)"
                //: self.stackView.removeArrangedSubview(sender)
                self.stackView.removeArrangedSubview(sender)
                //: sender.isHidden = true
                sender.isHidden = true
            }
        }
    }

    //: func req_followUser(uid: String, completion: ((_ succeed: Bool) -> Void)? = nil) {
    func sinceImage(uid: String, completion: ((_ succeed: Bool) -> Void)? = nil) {
        //: var dict = [String: Any]()
        var dict = [String: Any]()
        //: dict["attentionUid"] = uid
        dict[(String(kStr_viewText) + String(kStr_voiceDataNoneValue))] = uid
        //: dict["source"] = "1"
        dict[(kStr_replacementData.replacingOccurrences(of: "terms", with: "s"))] = "1"
        //: UpsetCountRequestTool.req_atationTool(isAttention: true, params: dict) { succeed, result, errorModel in
        UpsetCountRequestTool.busyIn(isAttention: true, params: dict) { succeed, _, _ in
            //: completion?(succeed)
            completion?(succeed)
        }
    }

    //: @objc private func iconBtnClick() {
    @objc private func moveClick() {
        //: EffectPushManager.share.func__pushToUserDetailVC(uid: self.userModel.uid)
        EffectPushManager.share.userAdd(uid: self.userModel.uid)
        //: self.dismiss()
        self.now()
    }
}

//: extension TalkingLiveUserCardView {
extension PageReactiveCompatible {
    //: @objc func moreBtnClick() {
    @objc func toAGreaterExtentClick() {
        //: var titleArray = ["Report".localized, "Block".localized]
        var titleArray = [(String(kStr_equalName)).localized, (String(kStr_indexShareName.prefix(5))).localized]
        /// 主播
        //: if liveUserId == LocationThen.share.loginUserMode.userID {
        if liveUserId == LocationThen.share.loginUserMode.userID {
            //: if self.userModel.isMute {
            if self.userModel.isMute {
                //: titleArray.append("Muted".localized)
                titleArray.append((String(kStr_colorValue.suffix(5))).localized)
                //: }else {
            } else {
                //: titleArray.append("Mute".localized)
                titleArray.append((String(kStr_arrayTitle)).localized)
            }
        }
        //: if self.userModel.inMyBlackList {
        if self.userModel.inMyBlackList {
            //: titleArray.remove(at: 1)
            titleArray.remove(at: 1)
        }
        //: Config.MenuCellConfig.menuCellHeight = 26
        Config.AddConfig.menuCellHeight = 26
        //: let dropMenu = DropDownMenuView.pullDropDrownMenu(anchorView: moreBtn, titleArray: titleArray, imageArray: [])
        let dropMenu = ShareDataSource.signalArray(anchorView: moreBtn, titleArray: titleArray, imageArray: [])
        //: dropMenu.menuBgColor = UIColor.init(hex: "#F6F6F6")!
        dropMenu.menuBgColor = UIColor(hex: (kStr_shareData.replacingOccurrences(of: "format", with: "#") + kStr_lineData.replacingOccurrences(of: "up", with: "F")))!
        //: dropMenu.menuDelegate = self
        dropMenu.menuDelegate = self
        //: dropMenu.menuStyle = .MenuCustStyle
        dropMenu.menuStyle = .MenuCustStyle
    }

    //: func show() {
    func editFirst() {
        //: popView = TalkingPopView.init(frame: UIScreen.main.bounds)
        popView = BackgroundThen(frame: UIScreen.main.bounds)
        //: self.frame = CGRect(x: 0, y: 0, width: ScreenWidth, height: ScreenHeight)
        self.frame = CGRect(x: 0, y: 0, width: kLet_halfData, height: kLet_noSeatName)
        //: popView?.initWithView(view: self)
        popView?.toViewText(view: self)
        //: popView?.showInView(view: self.currentViewController()?.view ?? TableMacroDefine.getWindow())
        popView?.beyondAllAdjust(view: self.giftFew()?.view ?? TableMacroDefine.oeilDeBoeufView())
        //: popView?.isRemoveTapGes = true
        popView?.isRemoveTapGes = true
    }

    //: @objc func dismiss() {
    @objc func now() {
        //: popView?.dismissView()
        popView?.placePushAside()
        //: popView = nil
        popView = nil
    }
}

//: extension TalkingLiveUserCardView: DropDownMenuViewDelegate {
extension PageReactiveCompatible: AliasViewDelegate {
    //: func didClickSelectedRow(index: Int, title: String) {
    func ofTime(index: Int, title _: String) {
        /// 举报
        //: if index == 0 {
        if index == 0 {
            //: let reportView = TalkingReportAlertView(frame: UIScreen.main.bounds, type: .reportUserType, rId: self.userModel.uid)
            let reportView = EquivalentReactiveCompatible(frame: UIScreen.main.bounds, type: .reportUserType, rId: self.userModel.uid)
            //: reportView.showReportViewIn(view: nil)
            reportView.showAppView(view: nil)

            /// 拉黑
            //: } else if index == 1 {
        } else if index == 1 {
            //: TalkingAlertShow.alert(title: nil, message: kMessage_blocking, leftBtnTitle: "Cancel".localized, rightBtnTitle: "OK".localized) {
            ClickReactiveCompatible.follow(title: nil, message: kLet_clickTitle, leftBtnTitle: (String(kStr_makeData.prefix(6))).localized, rightBtnTitle: "OK".localized) {
                //: TalkingAlertShow.hideAlert()
                ClickReactiveCompatible.closeHideRelease()
                //: } rightBlock: {
            } rightBlock: {
                //: TalkingAlertShow.hideAlert()
                ClickReactiveCompatible.closeHideRelease()
                //: TalkingUserRequestManager.func__pullBlackWithUserId(uid: self.userModel.uid, isBlack: true) { succeed, result, errorModel in
                SomeoneThen.viewUser(uid: self.userModel.uid, isBlack: true) { succeed, _, _ in
                    //: if succeed == true {
                    if succeed == true {
                        //: if self.liveUserId == LocationThen.share.loginUserMode.userID {
                        if self.liveUserId == LocationThen.share.loginUserMode.userID {
                            //: let toastStr = "Kicked out of the live room".localized
                            let toastStr = (String(kStr_scriptName.suffix(5)) + String(kStr_managerTitle) + String(kStr_kindMakeValue.prefix(4)) + " of t" + String(kStr_managerContent.suffix(6)) + "e room").localized
                            //: ProgressHUD.toast(toastStr)
                            TintProgressHUD.errorToast(toastStr)

                            //: NotificationCenter.default.post(name: LIVE_BLOCK_USER_NOTIFICATION,
                            NotificationCenter.default.post(name: kLet_agentData,
                                                            //: object: nil,
                                                            object: nil,
                                                            //: userInfo: ["uid": self.userModel.uid])
                                                            userInfo: [String(bytes: kStr_titleValue.map{visualImage(live: $0)}, encoding: .utf8)!: self.userModel.uid])

                            //: }else {
                        } else {
                            //: let toastStr = "Shielding Success".localized
                            let toastStr = (String(kStr_giftValue.prefix(6)) + "ing S" + String(kStr_keyData)).localized
                            //: ProgressHUD.toast(toastStr)
                            TintProgressHUD.errorToast(toastStr)
                        }
                        //: self.dismiss()
                        self.now()
                    }
                }
            }
            //: } else if index == 2 {
        } else if index == 2 {
            //: if self.userModel.isMute {
            if self.userModel.isMute {
                //: TalkingAlertShow.alert(title: nil, message: "Are you sure you want to cancel the mute?".localized, leftBtnTitle: "Cancel".localized, rightBtnTitle: "Confirm".localized) {
                ClickReactiveCompatible.follow(title: nil, message: String(bytes: kStr_centerTitle.map{imageSmall(word: $0)}, encoding: .utf8)!.localized, leftBtnTitle: (String(kStr_makeData.prefix(6))).localized, rightBtnTitle: (String(kStr_eventTitle.suffix(7))).localized) {
                    //: TalkingAlertShow.hideAlert()
                    ClickReactiveCompatible.closeHideRelease()
                    //: } rightBlock: {
                } rightBlock: {
                    //: TalkingAlertShow.hideAlert()
                    ClickReactiveCompatible.closeHideRelease()
                    //: ProgressHUD.show()
                    TintProgressHUD.weight()
                    //: TalkingAudienceManager().req_liveRoomUnmute(targetUid: self.userModel.uid, completion: { succeed, result, errorModel in
                    AudienceThen().makeButton(targetUid: self.userModel.uid, completion: { succeed, _, _ in
                        //: ProgressHUD.dismiss()
                        TintProgressHUD.inkingPadDismiss()
                        //: if succeed {
                        if succeed {
                            //: self.func__showStatusBarSuccessMsg(showMsg: "The mute has been lifted~".localized)
                            self.property(showMsg: (String(kStr_toText.prefix(6)) + "te ha" + String(kStr_pathAllName.prefix(5)) + "n lifte" + String(kStr_startValue.suffix(2))).localized)
                        }
                        //: self.dismiss()
                        self.now()
                        //: })
                    })
                }
                //: } else {
            } else {
                //: muteView.showView()
                muteView.theSub()
                //: muteView.targetUid = self.userModel.uid
                muteView.targetUid = self.userModel.uid
                //: self.dismiss()
                self.now()
            }
        }
    }
}

//: extension TalkingLiveUserCardView {
extension PageReactiveCompatible {
    // 添加视图
    //: private func setupSubviews() {
    private func picture() {
        //: self.addSubview(contentView)
        self.addSubview(contentView)
        //: contentView.addSubview(uidLb)
        contentView.addSubview(uidLb)
        //: contentView.addSubview(topIcon)
        contentView.addSubview(topIcon)
        //: contentView.addSubview(nameLb)
        contentView.addSubview(nameLb)
        //: contentView.addSubview(levelIcon)
        contentView.addSubview(levelIcon)
        //: contentView.addSubview(signLb)
        contentView.addSubview(signLb)
        //: contentView.addSubview(followersLab)
        contentView.addSubview(followersLab)
        //: contentView.addSubview(followersNum)
        contentView.addSubview(followersNum)
        //: contentView.addSubview(followingLab)
        contentView.addSubview(followingLab)
        //: contentView.addSubview(followingNum)
        contentView.addSubview(followingNum)

        //: contentView.layoutIfNeeded()
        contentView.layoutIfNeeded()

        //: if self.type == .user_other {
        if self.type == .user_other {
            //: contentView.addSubview(lineView)
            contentView.addSubview(lineView)
            //: contentView.addSubview(stackView)
            contentView.addSubview(stackView)
            //: contentView.addSubview(moreBtn)
            contentView.addSubview(moreBtn)
        }
    }

    // 添加约束
    //: private func setupSubViewsConstraint() {
    private func actionName() {
        //: contentView.snp.makeConstraints { make in
        contentView.snp.makeConstraints { make in
            //: make.bottom.equalToSuperview().offset(-44)
            make.bottom.equalToSuperview().offset(-44)
            //: make.leading.equalTo(10)
            make.leading.equalTo(10)
            //: make.trailing.equalTo(-10)
            make.trailing.equalTo(-10)
            //: if self.type == .user_me {
            if self.type == .user_me {
                //: make.height.equalTo(192)
                make.height.equalTo(192)
                //: }else {
            } else {
                //: make.height.equalTo(233)
                make.height.equalTo(233)
            }
        }
        //: topIcon.snp.makeConstraints { make in
        topIcon.snp.makeConstraints { make in
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.top.equalTo(-33)
            make.top.equalTo(-33)
            //: make.width.height.equalTo(80)
            make.width.height.equalTo(80)
        }
        //: uidLb.snp.makeConstraints { make in
        uidLb.snp.makeConstraints { make in
            //: make.leading.top.equalTo(12)
            make.leading.top.equalTo(12)
            //: make.trailing.equalTo(topIcon.snp.leading).offset(-10)
            make.trailing.equalTo(topIcon.snp.leading).offset(-10)
        }
        //: nameLb.snp.makeConstraints { make in
        nameLb.snp.makeConstraints { make in
            //: make.top.equalTo(topIcon.snp.bottom).offset(12)
            make.top.equalTo(topIcon.snp.bottom).offset(12)
            //: make.centerX.equalToSuperview().offset(-12)
            make.centerX.equalToSuperview().offset(-12)
            //: make.width.lessThanOrEqualTo(ScreenWidth/2)
            make.width.lessThanOrEqualTo(kLet_halfData / 2)
            //: make.height.equalTo(18)
            make.height.equalTo(18)
        }
        //: levelIcon.snp.makeConstraints { make in
        levelIcon.snp.makeConstraints { make in
            //: make.leading.equalTo(nameLb.snp.trailing).offset(5)
            make.leading.equalTo(nameLb.snp.trailing).offset(5)
            //: make.centerY.equalTo(nameLb)
            make.centerY.equalTo(nameLb)
            //: make.size.equalTo(CGSize(width: 32, height: 14))
            make.size.equalTo(CGSize(width: 32, height: 14))
        }
        //: signLb.snp.makeConstraints { make in
        signLb.snp.makeConstraints { make in
            //: make.top.equalTo(nameLb.snp.bottom).offset(12)
            make.top.equalTo(nameLb.snp.bottom).offset(12)
            //: make.leading.equalTo(30)
            make.leading.equalTo(30)
            //: make.trailing.equalTo(-30)
            make.trailing.equalTo(-30)
            //: make.height.equalTo(38)
            make.height.equalTo(38)
        }
        //: followersNum.snp.makeConstraints { make in
        followersNum.snp.makeConstraints { make in
            //: make.top.equalTo(signLb.snp.bottom).offset(12)
            make.top.equalTo(signLb.snp.bottom).offset(12)
            //: make.centerX.equalTo(contentView).offset(-ScreenWidth/4+10)
            make.centerX.equalTo(contentView).offset(-kLet_halfData / 4 + 10)
            //: make.height.equalTo(18)
            make.height.equalTo(18)
        }
        //: followingNum.snp.makeConstraints { make in
        followingNum.snp.makeConstraints { make in
            //: make.top.equalTo(signLb.snp.bottom).offset(12)
            make.top.equalTo(signLb.snp.bottom).offset(12)
            //: make.centerX.equalTo(contentView).offset(ScreenWidth/4-10)
            make.centerX.equalTo(contentView).offset(kLet_halfData / 4 - 10)
            //: make.height.equalTo(18)
            make.height.equalTo(18)
        }
        //: followersLab.snp.makeConstraints { make in
        followersLab.snp.makeConstraints { make in
            //: make.top.equalTo(followersNum.snp.bottom).offset(5)
            make.top.equalTo(followersNum.snp.bottom).offset(5)
            //: make.centerX.equalTo(followersNum)
            make.centerX.equalTo(followersNum)
            //: make.height.equalTo(14)
            make.height.equalTo(14)
        }
        //: followingLab.snp.makeConstraints { make in
        followingLab.snp.makeConstraints { make in
            //: make.top.equalTo(followingNum.snp.bottom).offset(5)
            make.top.equalTo(followingNum.snp.bottom).offset(5)
            //: make.centerX.equalTo(followingNum)
            make.centerX.equalTo(followingNum)
            //: make.height.equalTo(14)
            make.height.equalTo(14)
        }

        //: if self.type == .user_other {
        if self.type == .user_other {
            //: lineView.snp.makeConstraints { make in
            lineView.snp.makeConstraints { make in
                //: make.top.equalTo(followersLab.snp.bottom).offset(12)
                make.top.equalTo(followersLab.snp.bottom).offset(12)
                //: make.leading.equalTo(7)
                make.leading.equalTo(7)
                //: make.trailing.equalTo(-7)
                make.trailing.equalTo(-7)
                //: make.height.equalTo(1)
                make.height.equalTo(1)
            }
            //: stackView.snp.makeConstraints { make in
            stackView.snp.makeConstraints { make in
                //: make.top.equalTo(lineView)
                make.top.equalTo(lineView)
                //: make.leading.trailing.equalToSuperview()
                make.leading.trailing.equalToSuperview()
                //: make.height.equalTo(44)
                make.height.equalTo(44)
            }
            //: moreBtn.snp.makeConstraints { make in
            moreBtn.snp.makeConstraints { make in
                //: make.trailing.equalToSuperview()
                make.trailing.equalToSuperview()
                //: make.top.equalTo(12)
                make.top.equalTo(12)
                //: make.size.equalTo(CGSize(width: 44, height: 20))
                make.size.equalTo(CGSize(width: 44, height: 20))
            }
        }
    }

    //: override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
    override func touchesBegan(_ touches: Set<UITouch>, with _: UIEvent?) {
        //: let touch = touches.first!
        let touch = touches.first!
        //: var point = touch.location(in: self.currentViewController()?.view)
        var point = touch.location(in: self.giftFew()?.view)
        //: point = contentView.layer.convert(point, from: self.currentViewController()?.view.layer)
        point = contentView.layer.convert(point, from: self.giftFew()?.view.layer)
        //: if !contentView.layer.contains(point) {
        if !contentView.layer.contains(point) {
            //: self.dismiss()
            self.now()
        }
    }
}
