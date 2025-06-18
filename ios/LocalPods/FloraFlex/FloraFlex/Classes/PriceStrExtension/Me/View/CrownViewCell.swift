
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let kStr_observerVideoData:[UInt8] = [0xd9,0xde,0xd9,0xc4,0x98,0xd3,0xdf,0xd4,0xd5,0xc2,0x8a,0x99,0x90,0xd8,0xd1,0xc3,0x90,0xde,0xdf,0xc4,0x90,0xd2,0xd5,0xd5,0xde,0x90,0xd9,0xdd,0xc0,0xdc,0xd5,0xdd,0xd5,0xde,0xc4,0xd5,0xd4]

private func groupSize(frame num: UInt8) -> UInt8 {
    return num ^ 176
}

/*: "bg_message_top" :*/
fileprivate let kStr_textData:String = "equal voicebg_mes"
fileprivate let kStr_videoValue:[Character] = ["s","a","g","e","_","t","o","p"]

/*: "img_me_edit_photo_default" :*/
fileprivate let kStr_frameTitle:String = "img_mefalse cell"
fileprivate let kStr_viewTitle:String = "_ediindicator let after if"
fileprivate let kStr_cellUserValue:[Character] = ["t","o","_","d","e","f","a","u","l","t"]

/*: "icon_lounge" :*/
fileprivate let kStr_answerName:String = "icon_lmodel request kind sex"
fileprivate let kStr_managerName:[Character] = ["o","u","n","g","e"]

/*: "#777777" :*/
fileprivate let kStr_themeContent:String = "#777777"

/*: "btn_me_copy" :*/
fileprivate let kStr_colorValue:String = "thetn"
fileprivate let kStr_screenValue:[Character] = ["_","m","e","_","c","o","p","y"]

/*: "btn_me_verify" :*/
fileprivate let kStr_maleHiddenData:String = "as conversation gift voicebtn_me"
fileprivate let kStr_playerTitle:String = "let return_verify"

/*: "btn_me_new_edit" :*/
fileprivate let kStr_actionName:String = "let varbtn_m"
fileprivate let kStr_finishData:[Character] = ["d","i","t"]

/*: "Followers" :*/
fileprivate let kStr_dataName:String = "Follomake date"
fileprivate let kStr_imageValue:String = "wviewrs"

/*: "Following" :*/
fileprivate let kStr_shareValue:[Character] = ["F","o","l","l"]
fileprivate let kStr_sourceText:[Character] = ["o","w","i","n","g"]

/*: "#D8D8D8" :*/
fileprivate let kStr_clearTitle:String = "tool intimate#D8D8D8"

/*: "#FF506D" :*/
fileprivate let kStr_extraVideoRecordName:String = "#"
fileprivate let kStr_messageName:String = "FFphoto6D"

/*: "Reviewing" :*/
fileprivate let kStr_withValue:String = "Reviewishould to hidden size"
fileprivate let kStr_imageData:String = "nmake"

/*: "headPic" :*/
fileprivate let kStr_actionTitle:String = "headPiclet round view image self"

/*: "Modify the success" :*/
fileprivate let kStr_modeByData:String = "string sex frameModif"
fileprivate let kStr_viewName:[Character] = ["y"," ","t","h","e"," ","s","u","c","c","e","s","s"]

/*: "UID:" :*/
fileprivate let kStr_arrayToData:String = "seat build videoUID:"

/*: "btn_me_verifed" :*/
fileprivate let kStr_valueText:String = "btn_me_data guard height please"
fileprivate let kStr_sizeValue:String = "veriprogramed"

/*: "UID Copied" :*/
fileprivate let kStr_eachData:String = "count balanceUID "
fileprivate let kStr_name:String = "cell height lab lab anyCopied"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  CrownViewCell.swift
//  AbroadTalking
//
//  Created by young on 2023/4/25.
//

//: import UIKit
import UIKit

//: class TalkingMeTopCell: UITableViewCell {
class CrownViewCell: UITableViewCell {
    //: override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        //: super.init(style: style, reuseIdentifier: reuseIdentifier)
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        //: self.backgroundColor = .clear
        self.backgroundColor = .clear
        //: self.selectionStyle = .none
        self.selectionStyle = .none

        //: setupSubviews()
        subviewsSetupUp()
        //: setupSubViewsConstraint()
        mTheoryConstraint()
    }

    //: override func layoutSubviews() {
    override func layoutSubviews() {
        //: super.layoutSubviews()
        super.layoutSubviews()
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: kStr_observerVideoData.map{groupSize(frame: $0)}, encoding: .utf8)!)
    }

    // MARK: - Lazy Load

    //: private lazy var bgImgView: UIImageView = {
    private lazy var bgImgView: UIImageView = {
        //: let imag = UIImageView.init(image: UIImage.bundleBy(name: "bg_message_top"))
        let imag = UIImageView(image: UIImage.bundleBy(name: (String(kStr_textData.suffix(6)) + String(kStr_videoValue))))
        //: imag.isUserInteractionEnabled = true
        imag.isUserInteractionEnabled = true
        //: return imag
        return imag
        //: }()
    }()

    //: private lazy var whiteBgView: UIView = {
    private lazy var whiteBgView: UIView = {
        //: let v = UIView()
        let v = UIView()
        //: v.backgroundColor = .white
        v.backgroundColor = .white
        //: v.layer.cornerRadius = 10
        v.layer.cornerRadius = 10
        //: v.layer.masksToBounds = true
        v.layer.masksToBounds = true
        //: return v
        return v
        //: }()
    }()

    //: private lazy var iconImag: UIButton = {
    private lazy var iconImag: UIButton = {
        //: let btn = UIButton.init()
        let btn = UIButton()
        //: btn.setImage(UIImage.bundleBy(name: "img_me_edit_photo_default"), for: .normal)
        btn.setImage(UIImage.bundleBy(name: (String(kStr_frameTitle.prefix(6)) + String(kStr_viewTitle.prefix(4)) + "t_pho" + String(kStr_cellUserValue))), for: .normal)
        //: btn.imageView?.contentMode = .scaleAspectFill
        btn.imageView?.contentMode = .scaleAspectFill
        //: btn.layer.cornerRadius = 69/2
        btn.layer.cornerRadius = 69 / 2
        //: btn.layer.masksToBounds = true
        btn.layer.masksToBounds = true
        //: btn.addTarget(self, action: #selector(updatePhotoButtonClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(objectFrom), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var iconBorder: UIButton = {
    private lazy var iconBorder: UIButton = {
        //: let btn = UIButton.init()
        let btn = UIButton()
        //: btn.imageView?.contentMode = .scaleAspectFill
        btn.imageView?.contentMode = .scaleAspectFill
        //: btn.isUserInteractionEnabled = false
        btn.isUserInteractionEnabled = false
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var nameLB: UILabel = {
    private lazy var nameLB: UILabel = {
        //: let lb = UILabel.init()
        let lb = UILabel()
        //: lb.font = UIFont.pingfangFont(type: .Semibold, fontSize: 18)
        lb.font = UIFont.groupSize(type: .Semibold, fontSize: 18)
        //: lb.textColor = UIColor.appTitleColor()
        lb.textColor = UIColor.dataFormat()
        //: lb.text = ""
        lb.text = ""
        //: return lb
        return lb
        //: }()
    }()

    //: private lazy var loungeImgV: UIImageView = {
    private lazy var loungeImgV: UIImageView = {
        //: let img = UIImageView()
        let img = UIImageView()
        //: img.image = UIImage.bundleBy(name: "icon_lounge")
        img.image = UIImage.bundleBy(name: (String(kStr_answerName.prefix(6)) + String(kStr_managerName)))
        //: return img
        return img
        //: }()
    }()

    //: private lazy var idBtn: TalkingButton = {
    private lazy var idBtn: OverdoTalkingButton = {
        //: let btn = TalkingButton.init()
        let btn = OverdoTalkingButton()
        //: btn.imageAlignment = .right
        btn.imageAlignment = .right
        //: btn.spaceBetweenTitleAndImage = 4
        btn.spaceBetweenTitleAndImage = 4
        //: btn.setTitleColor(UIColor.init(hex: "#777777"), for: .normal)
        btn.setTitleColor(UIColor(hex: (kStr_themeContent.capitalized)), for: .normal)
        //: btn.titleLabel?.font = UIFont.pingfangFont(type: .Regular, fontSize: 14)
        btn.titleLabel?.font = UIFont.groupSize(type: .Regular, fontSize: 14)
        //: btn.setImage(UIImage.bundleBy(name: "btn_me_copy"), for: .normal)
        btn.setImage(UIImage.bundleBy(name: (kStr_colorValue.replacingOccurrences(of: "the", with: "b") + String(kStr_screenValue))), for: .normal)
        //: btn.addTarget(self, action: #selector(copyBtnClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(clickVideoSelection), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var verifyBtn: UIButton = {
    private lazy var verifyBtn: UIButton = {
        //: let btn = UIButton.init()
        let btn = UIButton()
        //: btn.setImage(UIImage.bundleBy(name: "btn_me_verify"), for: .normal)
        btn.setImage(UIImage.bundleBy(name: (String(kStr_maleHiddenData.suffix(6)) + String(kStr_playerTitle.suffix(7)))), for: .normal)
        //: btn.addTarget(self, action: #selector(verifyBtnClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(notClick), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var editImag: UIImageView = {
    private lazy var editImag: UIImageView = {
        //: let imag = UIImageView.init(image: UIImage.bundleBy(name: "btn_me_new_edit"))
        let imag = UIImageView(image: UIImage.bundleBy(name: (String(kStr_actionName.suffix(5)) + "e_new_e" + String(kStr_finishData))))
        //: return imag
        return imag
        //: }()
    }()

    //: private lazy var editPushBtn: UIButton = {
    private lazy var editPushBtn: UIButton = {
        //: let btn = UIButton.init()
        let btn = UIButton()
        //: btn.addTarget(self, action: #selector(editBtnClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(theClick), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var followersBtn: UIButton = {
    private lazy var followersBtn: UIButton = {
        //: let btn = UIButton.init()
        let btn = UIButton()
        //: btn.addTarget(self, action: #selector(followersBtnClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(exceptModel), for: .touchUpInside)
        //: return btn
        return btn
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
        lab.text = (String(kStr_dataName.prefix(5)) + kStr_imageValue.replacingOccurrences(of: "view", with: "e")).localized
        //: lab.font = UIFont.messageDown(fontSize: 14)
        lab.font = UIFont.messageDown(fontSize: 14)
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
        //: lab.font = UIFont.dorsum(fontSize: 15)
        lab.font = UIFont.dorsum(fontSize: 15)
        //: return lab
        return lab
        //: }()
    }()

    //: private lazy var followingBtn: UIButton = {
    private lazy var followingBtn: UIButton = {
        //: let btn = UIButton.init()
        let btn = UIButton()
        //: btn.addTarget(self, action: #selector(followingBtnClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(tapIn), for: .touchUpInside)
        //: return btn
        return btn
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
        lab.text = (String(kStr_shareValue) + String(kStr_sourceText)).localized
        //: lab.font = UIFont.messageDown(fontSize: 14)
        lab.font = UIFont.messageDown(fontSize: 14)
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
        //: lab.font = UIFont.dorsum(fontSize: 15)
        lab.font = UIFont.dorsum(fontSize: 15)
        //: return lab
        return lab
        //: }()
    }()

    //: private lazy var line: UIView = {
    private lazy var line: UIView = {
        //: let v = UIView()
        let v = UIView()
        //: v.backgroundColor = UIColor(hex: "#D8D8D8")
        v.backgroundColor = UIColor(hex: (String(kStr_clearTitle.suffix(7))))
        //: v.layer.cornerRadius = 1
        v.layer.cornerRadius = 1
        //: v.layer.masksToBounds = true
        v.layer.masksToBounds = true
        //: return v
        return v
        //: }()
    }()

    //: private lazy var statusLB: UILabel = {
    private lazy var statusLB: UILabel = {
        //: let lb = UILabel.init()
        let lb = UILabel()
        //: lb.font = UIFont.pingfangFont(type: .Medium, fontSize: 12)
        lb.font = UIFont.groupSize(type: .Medium, fontSize: 12)
        //: lb.textColor = .white
        lb.textColor = .white
        //: lb.backgroundColor = UIColor.init(hex: "#FF506D")
        lb.backgroundColor = UIColor(hex: (kStr_extraVideoRecordName.capitalized + kStr_messageName.replacingOccurrences(of: "photo", with: "50")))
        //: lb.text = "Reviewing".localized
        lb.text = (String(kStr_withValue.prefix(7)) + kStr_imageData.replacingOccurrences(of: "make", with: "g")).localized
        //: lb.textAlignment = .center
        lb.textAlignment = .center
        //: lb.layer.cornerRadius = 8
        lb.layer.cornerRadius = 8
        //: lb.layer.masksToBounds = true
        lb.layer.masksToBounds = true
        //: lb.isHidden = true
        lb.isHidden = true
        //: return lb
        return lb
        //: }()
    }()
}

// MARK: - Load Data

//: extension TalkingMeTopCell {
extension CrownViewCell {
    /// 更新个人资料
    //: private func req_updateInfo(img: UIImage) {
    private func readout(img: UIImage) {
        //: let resultData: NSData = img.compressedImageData()! as NSData
        let resultData: NSData = img.goaBean()! as NSData
        //: let dict = ["headPic": resultData]
        let dict = [(String(kStr_actionTitle.prefix(7))): resultData]
        //: ProgressHUD.show()
        TintProgressHUD.weight()
        //: TalkingMeRequestTool.req_UpdateUserInfo(params: dict) { [weak self] succeed, result, errorModel in
        LoadEqualRequestTool.voiceCompletion(params: dict) { [weak self] succeed, result, errorModel in
            //: ProgressHUD.dismiss()
            TintProgressHUD.inkingPadDismiss()
            //: guard let self = self else {return}
            guard let self = self else { return }
            //: guard succeed else {
            guard succeed else {
                //: if errorModel?.errorCode != 100 {
                if errorModel?.errorCode != 100 {
                    //: self.func__showStatusBarErrorMsg(showMsg: errorModel!.errorMsg)
                    self.detailDownArray(showMsg: errorModel!.errorMsg)
                }
                //: return
                return
            }

            //: self.func__showStatusBarSuccessMsg(showMsg: "Modify the success".localized)
            self.property(showMsg: (String(kStr_modeByData.suffix(5)) + String(kStr_viewName)).localized)
            //: let data: Dictionary = result as! Dictionary<String, Any>
            let data: Dictionary = result as! [String: Any]
            //: LocationThen.share.loginUserMode.headPic = data["headPic"] as? String
            LocationThen.share.loginUserMode.headPic = data[(String(kStr_actionTitle.prefix(7)))] as? String
            //: statusLB.isHidden = false
            statusLB.isHidden = false
            //: LocationThen.share.loginUserMode.headPicStatus = 0
            LocationThen.share.loginUserMode.headPicStatus = 0
            //: self.iconImag.setUrlImage(urlStr: LocationThen.share.loginUserMode.headPic ?? "img_me_edit_photo_default")
            self.iconImag.displayFinish(urlStr: LocationThen.share.loginUserMode.headPic ?? (String(kStr_frameTitle.prefix(6)) + String(kStr_viewTitle.prefix(4)) + "t_pho" + String(kStr_cellUserValue)))
        }
    }
}

// MARK: - Event

//: extension TalkingMeTopCell {
extension CrownViewCell {
    /// 更新数据
    //: func setViewData() {
    func stateFuturism() {
        //: iconImag.setUrlImage(urlStr: LocationThen.share.loginUserMode.headPic ?? "img_me_edit_photo_default")
        iconImag.displayFinish(urlStr: LocationThen.share.loginUserMode.headPic ?? (String(kStr_frameTitle.prefix(6)) + String(kStr_viewTitle.prefix(4)) + "t_pho" + String(kStr_cellUserValue)))
        //: iconBorder.setHeadFrameUrlImage(urlStr: LocationThen.share.loginUserMode.headPicFrame)
        iconBorder.dataFile(urlStr: LocationThen.share.loginUserMode.headPicFrame)
        //: nameLB.textColor = LocationThen.share.loginUserMode.loungePlus ? .userVipColor():.appTitleColor()
        nameLB.textColor = LocationThen.share.loginUserMode.loungePlus ? .makeColor() : .dataFormat()
        //: nameLB.text = LocationThen.share.loginUserMode.nickname
        nameLB.text = LocationThen.share.loginUserMode.nickname
        //: loungeImgV.isHidden = !LocationThen.share.loginUserMode.loungePlus
        loungeImgV.isHidden = !LocationThen.share.loginUserMode.loungePlus
        //: idBtn.setTitle("UID:" + LocationThen.share.loginUserMode.userID, for: .normal)
        idBtn.setTitle((String(kStr_arrayToData.suffix(4))) + LocationThen.share.loginUserMode.userID, for: .normal)
        //: if LocationThen.share.loginUserMode.isTPAuth == TPUserAuth.isSuccessed.rawValue {
        if LocationThen.share.loginUserMode.isTPAuth == FillContiguousBytes.isSuccessed.rawValue {
            //: verifyBtn.setImage(UIImage.bundleBy(name: "btn_me_verifed"), for: .normal)
            verifyBtn.setImage(UIImage.bundleBy(name: (String(kStr_valueText.prefix(7)) + kStr_sizeValue.replacingOccurrences(of: "program", with: "f"))), for: .normal)
            //: } else {
        } else {
            //: verifyBtn.setImage(UIImage.bundleBy(name: "btn_me_verify"), for: .normal)
            verifyBtn.setImage(UIImage.bundleBy(name: (String(kStr_maleHiddenData.suffix(6)) + String(kStr_playerTitle.suffix(7)))), for: .normal)
        }
        //: statusLB.isHidden = (LocationThen.share.loginUserMode.headPicStatus != HeadePicStatus.isOnGoing.rawValue)
        statusLB.isHidden = (LocationThen.share.loginUserMode.headPicStatus != PicDoingsetTarget.isOnGoing.rawValue)
        //: followersNum.text = LocationThen.share.loginUserMode.fansNum ?? "0"
        followersNum.text = LocationThen.share.loginUserMode.fansNum ?? "0"
        //: followingNum.text = LocationThen.share.loginUserMode.attentionNum ?? "0"
        followingNum.text = LocationThen.share.loginUserMode.attentionNum ?? "0"
    }

    /// copy Id
    //: @objc private func copyBtnClick() {
    @objc private func clickVideoSelection() {
        //: let paste = UIPasteboard.general
        let paste = UIPasteboard.general
        //: paste.string = LocationThen.share.loginUserMode.userID
        paste.string = LocationThen.share.loginUserMode.userID
        //: self.func__showStatusBarSuccessMsg(showMsg: "UID Copied".localized)
        self.property(showMsg: (String(kStr_eachData.suffix(4)) + String(kStr_name.suffix(6))).localized)
    }

    /// 更新photo
    //: @objc private func updatePhotoButtonClick() {
    @objc private func objectFrom() {
        //: TalkingPermissionTool.func__openAlbumServiceWithBlock(true) { (isOpen: Bool) in
        PerspectiveThen.albumImage(true) { (isOpen: Bool) in
            //: if isOpen {
            if isOpen {
                //: let vc = TalkingImagePickTool.initImagePickerVc(allowImgCrop: true, needCircleCrop: true, maxCount: 1, allowPhoto: true, allowVideo: false)
                let vc = SmartPickTool.delay(allowImgCrop: true, needCircleCrop: true, maxCount: 1, allowPhoto: true, allowVideo: false)
                //: vc.modalPresentationStyle = .fullScreen
                vc.modalPresentationStyle = .fullScreen
                //: self.currentViewController()?.present(vc, animated: true)
                self.giftFew()?.present(vc, animated: true)
                //: vc.didFinishPickingPhotosHandle = { [weak self] ( photos: Array<UIImage>?,
                vc.didFinishPickingPhotosHandle = { [weak self] (photos: [UIImage]?,
                                                                 //: assets: Array<Any>?,
                                                                 _: [Any]?,
                                                                 //: isSelectOriginalPhoto: Bool?)  in
                                                                 _: Bool?) in
                        //: guard let self = self else {return}
                        guard let self = self else { return }
                        //: if photos!.count > 0 {
                        if photos!.count > 0 {
                            //: let image: UIImage = photos?[0] ?? UIImage()
                            let image: UIImage = photos?[0] ?? UIImage()
                            // 上传头像
                            //: self.req_updateInfo(img: image)
                            self.readout(img: image)
                        }
                        //: return
                }
            }
        }
    }

    /// 真人认证
    //: @objc private func verifyBtnClick() {
    @objc private func notClick() {
        // 先判断上传的头像是否通过，再判断真人认证状态
//        if LocationThen.share.loginUserMode.headPicStatus == PicDoingsetTarget.unknown.rawValue {
//            self.func__showStatusBarErrorMsg(showMsg: "Please finish uploading your avatar first")
//        } else if LocationThen.share.loginUserMode.headPicStatus == PicDoingsetTarget.isOnGoing.rawValue {
//            self.func__showStatusBarErrorMsg(showMsg: "Avatar is under reviewing")
//        } else {
//            isTPAuthTool()
//        }
        //: isTPAuthTool()
        auth()
    }

    //: private func isTPAuthTool() {
    private func auth() {
        //: if LocationThen.share.loginUserMode.isTPAuth == TPUserAuth.isSuccessed.rawValue {
        if LocationThen.share.loginUserMode.isTPAuth == FillContiguousBytes.isSuccessed.rawValue {
            //: return
            return
                //: } else if LocationThen.share.loginUserMode.isTPAuth == TPUserAuth.unknown.rawValue {
        } else if LocationThen.share.loginUserMode.isTPAuth == FillContiguousBytes.unknown.rawValue {
            //: EffectPushManager.share.func__pushUserVerifyController(toast: nil)
            EffectPushManager.share.retirement(toast: nil)
            //: } else if LocationThen.share.loginUserMode.isTPAuth == TPUserAuth.isOnGoing.rawValue {
        } else if LocationThen.share.loginUserMode.isTPAuth == FillContiguousBytes.isOnGoing.rawValue {
            //: let vc = TalkingFinalVerificationVC()
            let vc = ClientPathViewController()
            //: EffectPushManager.share.func__getCurrentActivityVC()?.navigationController?.pushViewController(vc, animated: true)
            EffectPushManager.share.quantityimateTarget()?.navigationController?.pushViewController(vc, animated: true)
            //: } else {
        } else {
            //: EffectPushManager.share.func__pushUserVerifyController(toast: nil)
            EffectPushManager.share.retirement(toast: nil)
        }
    }

    /// 编辑个人资料
    //: @objc private func editBtnClick() {
    @objc private func theClick() {
        //: EffectPushManager.share.func__pushToUserDetailVC(uid: LocationThen.share.loginUid)
        EffectPushManager.share.userAdd(uid: LocationThen.share.loginUid)
    }

    /// followers
    //: @objc private func followersBtnClick() {
    @objc private func exceptModel() {
        //: let vc = TalkingFavouriteViewController()
        let vc = UpViewController()
        //: vc.currentIndex = 0
        vc.currentIndex = 0
        //: self.currentViewController()?.navigationController?.pushViewController(vc, animated: true)
        self.giftFew()?.navigationController?.pushViewController(vc, animated: true)
    }

    /// following
    //: @objc private func followingBtnClick() {
    @objc private func tapIn() {
        //: let vc = TalkingFavouriteViewController()
        let vc = UpViewController()
        //: vc.currentIndex = 1
        vc.currentIndex = 1
        //: self.currentViewController()?.navigationController?.pushViewController(vc, animated: true)
        self.giftFew()?.navigationController?.pushViewController(vc, animated: true)
    }
}

// MARK: - Layout

//: extension TalkingMeTopCell {
extension CrownViewCell {
    /// 添加视图
    //: private func setupSubviews() {
    private func subviewsSetupUp() {
        //: self.contentView.addSubview(bgImgView)
        self.contentView.addSubview(bgImgView)
        //: bgImgView.addSubview(whiteBgView)
        bgImgView.addSubview(whiteBgView)
        //: whiteBgView.addSubview(iconImag)
        whiteBgView.addSubview(iconImag)
        //: whiteBgView.addSubview(iconBorder)
        whiteBgView.addSubview(iconBorder)
        //: whiteBgView.addSubview(nameLB)
        whiteBgView.addSubview(nameLB)
        //: whiteBgView.addSubview(loungeImgV)
        whiteBgView.addSubview(loungeImgV)
        //: whiteBgView.addSubview(idBtn)
        whiteBgView.addSubview(idBtn)
        //: whiteBgView.addSubview(verifyBtn)
        whiteBgView.addSubview(verifyBtn)
        //: whiteBgView.addSubview(editImag)
        whiteBgView.addSubview(editImag)
        //: whiteBgView.addSubview(editPushBtn)
        whiteBgView.addSubview(editPushBtn)
        //: whiteBgView.addSubview(followersBtn)
        whiteBgView.addSubview(followersBtn)
        //: whiteBgView.addSubview(statusLB)
        whiteBgView.addSubview(statusLB)
        //: followersBtn.addSubview(followersLab)
        followersBtn.addSubview(followersLab)
        //: followersBtn.addSubview(followersNum)
        followersBtn.addSubview(followersNum)
        //: whiteBgView.addSubview(followingBtn)
        whiteBgView.addSubview(followingBtn)
        //: followingBtn.addSubview(followingLab)
        followingBtn.addSubview(followingLab)
        //: followingBtn.addSubview(followingNum)
        followingBtn.addSubview(followingNum)
        //: whiteBgView.addSubview(line)
        whiteBgView.addSubview(line)
    }

    /// 添加约束
    //: private func setupSubViewsConstraint() {
    private func mTheoryConstraint() {
        //: bgImgView.snp.makeConstraints { make in
        bgImgView.snp.makeConstraints { make in
            //: make.edges.equalToSuperview()
            make.edges.equalToSuperview()
            //: make.height.equalTo(StatusBarHeight+181)
            make.height.equalTo(kLet_postPartyValue + 181)
        }

        //: whiteBgView.snp.makeConstraints { make in
        whiteBgView.snp.makeConstraints { make in
            //: make.leading.equalTo(15)
            make.leading.equalTo(15)
            //: make.top.equalTo(StatusBarHeight+9)
            make.top.equalTo(kLet_postPartyValue + 9)
            //: make.trailing.equalTo(-15)
            make.trailing.equalTo(-15)
            //: make.height.equalTo(160)
            make.height.equalTo(160)
        }

        //: iconImag.snp.makeConstraints { make in
        iconImag.snp.makeConstraints { make in
            //: make.leading.top.equalToSuperview().offset(12)
            make.leading.top.equalToSuperview().offset(12)
            //: make.width.height.equalTo(69)
            make.width.height.equalTo(69)
        }
        //: iconBorder.snp.makeConstraints { make in
        iconBorder.snp.makeConstraints { make in
            //: make.leading.top.equalToSuperview().offset(7)
            make.leading.top.equalToSuperview().offset(7)
            //: make.width.height.equalTo(80)
            make.width.height.equalTo(80)
        }
        //: statusLB.snp.makeConstraints { make in
        statusLB.snp.makeConstraints { make in
            //: make.top.equalTo(iconImag.snp.top).offset(-7)
            make.top.equalTo(iconImag.snp.top).offset(-7)
            //: make.centerX.equalTo(iconImag)
            make.centerX.equalTo(iconImag)
            //: make.size.equalTo(CGSize.init(width: 65, height: 16))
            make.size.equalTo(CGSize(width: 65, height: 16))
        }

        //: nameLB.snp.makeConstraints { make in
        nameLB.snp.makeConstraints { make in
            //: make.leading.equalTo(iconImag.snp.trailing).offset(10)
            make.leading.equalTo(iconImag.snp.trailing).offset(10)
            //: make.top.equalTo(iconImag)
            make.top.equalTo(iconImag)
            //: make.height.equalTo(20)
            make.height.equalTo(20)
            //: make.width.lessThanOrEqualTo(ScreenWidth/2)
            make.width.lessThanOrEqualTo(kLet_halfData / 2)
        }

        //: loungeImgV.snp.makeConstraints { make in
        loungeImgV.snp.makeConstraints { make in
            //: make.leading.equalTo(nameLB.snp.trailing).offset(4)
            make.leading.equalTo(nameLB.snp.trailing).offset(4)
            //: make.centerY.equalTo(nameLB)
            make.centerY.equalTo(nameLB)
            //: make.size.equalTo(CGSize(width: 20, height: 20))
            make.size.equalTo(CGSize(width: 20, height: 20))
        }

        //: idBtn.snp.makeConstraints { make in
        idBtn.snp.makeConstraints { make in
            //: make.leading.equalTo(iconImag.snp.trailing).offset(12)
            make.leading.equalTo(iconImag.snp.trailing).offset(12)
            //: make.top.equalTo(nameLB.snp.bottom).offset(8)
            make.top.equalTo(nameLB.snp.bottom).offset(8)
            //: make.height.equalTo(16)
            make.height.equalTo(16)
        }

        //: verifyBtn.snp.makeConstraints { make in
        verifyBtn.snp.makeConstraints { make in
            //: make.leading.equalTo(nameLB)
            make.leading.equalTo(nameLB)
            //: make.top.equalTo(idBtn.snp.bottom).offset(8)
            make.top.equalTo(idBtn.snp.bottom).offset(8)
            //: make.height.equalTo(16)
            make.height.equalTo(16)
        }

        //: editImag.snp.makeConstraints { make in
        editImag.snp.makeConstraints { make in
            //: make.centerY.equalTo(iconImag)
            make.centerY.equalTo(iconImag)
            //: make.trailing.equalToSuperview().offset(-16)
            make.trailing.equalToSuperview().offset(-16)
            //: make.width.equalTo(6)
            make.width.equalTo(6)
            //: make.height.equalTo(11)
            make.height.equalTo(11)
        }
        //: editPushBtn.snp.makeConstraints { make in
        editPushBtn.snp.makeConstraints { make in
            //: make.centerY.equalTo(editImag)
            make.centerY.equalTo(editImag)
            //: make.trailing.equalToSuperview().offset(-10)
            make.trailing.equalToSuperview().offset(-10)
            //: make.width.height.equalTo(60)
            make.width.height.equalTo(60)
        }

        //: followersBtn.snp.makeConstraints { make in
        followersBtn.snp.makeConstraints { make in
            //: make.top.equalTo(iconImag.snp.bottom)
            make.top.equalTo(iconImag.snp.bottom)
            //: make.leading.bottom.equalToSuperview()
            make.leading.bottom.equalToSuperview()
            //: make.trailing.equalTo(whiteBgView.snp.centerX)
            make.trailing.equalTo(whiteBgView.snp.centerX)
        }
        //: followersLab.snp.makeConstraints { make in
        followersLab.snp.makeConstraints { make in
            //: make.top.equalToSuperview().offset(25)
            make.top.equalToSuperview().offset(25)
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
        }
        //: followersNum.snp.makeConstraints { make in
        followersNum.snp.makeConstraints { make in
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.bottom.equalToSuperview().offset(-12)
            make.bottom.equalToSuperview().offset(-12)
        }

        //: followingBtn.snp.makeConstraints { make in
        followingBtn.snp.makeConstraints { make in
            //: make.top.equalTo(followersBtn)
            make.top.equalTo(followersBtn)
            //: make.trailing.bottom.equalToSuperview()
            make.trailing.bottom.equalToSuperview()
            //: make.leading.equalTo(whiteBgView.snp.centerX)
            make.leading.equalTo(whiteBgView.snp.centerX)
        }
        //: followingLab.snp.makeConstraints { make in
        followingLab.snp.makeConstraints { make in
            //: make.top.equalToSuperview().offset(25)
            make.top.equalToSuperview().offset(25)
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
        }
        //: followingNum.snp.makeConstraints { make in
        followingNum.snp.makeConstraints { make in
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.bottom.equalToSuperview().offset(-12)
            make.bottom.equalToSuperview().offset(-12)
        }

        //: line.snp.makeConstraints { make in
        line.snp.makeConstraints { make in
            //: make.top.equalTo(iconImag.snp.bottom).offset(32)
            make.top.equalTo(iconImag.snp.bottom).offset(32)
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.size.equalTo(CGSize(width: 2, height: 27))
            make.size.equalTo(CGSize(width: 2, height: 27))
        }
    }
}
