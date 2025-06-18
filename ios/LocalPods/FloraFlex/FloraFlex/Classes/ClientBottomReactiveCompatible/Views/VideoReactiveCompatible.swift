
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let kStr_finishData:[UInt8] = [0xd0,0xd7,0xd0,0xcd,0x91,0xda,0xd6,0xdd,0xdc,0xcb,0x83,0x90,0x99,0xd1,0xd8,0xca,0x99,0xd7,0xd6,0xcd,0x99,0xdb,0xdc,0xdc,0xd7,0x99,0xd0,0xd4,0xc9,0xd5,0xdc,0xd4,0xdc,0xd7,0xcd,0xdc,0xdd]

private func extensionUser(party num: UInt8) -> UInt8 {
    return num ^ 185
}

/*: "icon_livetc_warn" :*/
fileprivate let kStr_backName:[Character] = ["i","c","o","n","_","l","i","v","e"]
fileprivate let kStr_playerTitle:String = "task"
fileprivate let kStr_blockData:String = "c_warndata view var view self"

/*: "System notification" :*/
fileprivate let kStr_colorValue:[Character] = ["S","y","s","t","e","m"," ","n","o"]
fileprivate let kStr_screenName:[Character] = ["t","i","f","i","c","a","t","i","o","n"]

/*: "Upload Now" :*/
fileprivate let kStr_inputValue:[Character] = ["U","p","l","o","a","d"," ","N","o"]
fileprivate let kStr_fromValue:[Character] = ["w"]

/*: "btn_me_program_photo_delete" :*/
fileprivate let kStr_styleName:String = "var equal bottom viewbtn_"
fileprivate let kStr_sharedCellText:String = "ogme"
fileprivate let kStr_firstImageName:String = "front title letam_ph"
fileprivate let kStr_toValue:String = "debackte"

/*: "content" :*/
fileprivate let kStr_mName:String = "CONTE"
fileprivate let kStr_bottomText:[Character] = ["n","t"]

/*: "jumpKey" :*/
fileprivate let kStr_makeName:[Character] = ["j","u","m","p","K","e","y"]

/*: "uploadUserHeaderPic" :*/
fileprivate let kStr_topData:[Character] = ["u","p","l","o","a","d","U","s","e","r","H","e","a","d","e","r"]
fileprivate let kStr_birthdayTitle:String = "source up returnPic"

/*: "truePersonAuth" :*/
fileprivate let kStr_managerData:String = "collection"
fileprivate let kStr_sharedData:[Character] = ["r","u","e","P","e","r","s","o","n","A","u","t","h"]

/*: "headPic" :*/
fileprivate let kStr_contentValue:String = "headPivar line color"
fileprivate let kStr_finishModelTitle:String = "layer"

/*: "Modify the success" :*/
fileprivate let kStr_myValue:[Character] = ["M","o","d","i","f","y"," ","t","h","e"]
fileprivate let kStr_dataValue:String = "sex video temporary suc"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  VideoReactiveCompatible.swift
//  AbroadTalking
//
//  Created by Charlotte on 2024/5/23.
//

//: import UIKit
import UIKit

/// 真人认证被拒,头像审核提示弹窗

//: class TalkingAttestationRefusePopUpView: UIView {
class VideoReactiveCompatible: UIView {
    //: var popView: TalkingPopView?
    var popView: BackgroundThen?
    //: var pushType = ""
    var pushType = ""

    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: self.setupSubviews()
        self.atReceiveSubviews()
        //: self.setupSubViewsConstraint()
        self.byConstraint()
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: kStr_finishData.map{extensionUser(party: $0)}, encoding: .utf8)!)
    }

    //: deinit {
    deinit {
        //: NotificationCenter.default.removeObserver(self)
        NotificationCenter.default.removeObserver(self)
    }

    // MARK: - Lazy

    //: private lazy var contentView: UIView = {
    private lazy var contentView: UIView = {
        //: let view = UIView.init()
        let view = UIView()
        //: view.backgroundColor = .white
        view.backgroundColor = .white
        //: view.isUserInteractionEnabled = true
        view.isUserInteractionEnabled = true
        //: view.layer.cornerRadius = 16
        view.layer.cornerRadius = 16
        //: return view
        return view
        //: }()
    }()

    //: private lazy var topIcon: UIImageView = {
    private lazy var topIcon: UIImageView = {
        //: let imag = UIImageView.init()
        let imag = UIImageView()
        //: imag.image = UIImage.bundleBy(name: "icon_livetc_warn")
        imag.image = UIImage.bundleBy(name: (String(kStr_backName) + kStr_playerTitle.replacingOccurrences(of: "task", with: "t") + String(kStr_blockData.prefix(6))))
        //: imag.contentMode = .scaleAspectFill
        imag.contentMode = .scaleAspectFill
        //: imag.isUserInteractionEnabled = true
        imag.isUserInteractionEnabled = true
        //: return imag
        return imag
        //: }()
    }()

    //: private lazy var title: UILabel = {
    private lazy var title: UILabel = {
        //: let lb = UILabel.init()
        let lb = UILabel()
        //: lb.textColor = UIColor.black
        lb.textColor = UIColor.black
        //: lb.font = UIFont.pingfangFont(type: .Medium, fontSize: 18)
        lb.font = UIFont.groupSize(type: .Medium, fontSize: 18)
        //: lb.text = "System notification".localized
        lb.text = (String(kStr_colorValue) + String(kStr_screenName)).localized
        //: lb.textAlignment = .center
        lb.textAlignment = .center
        //: return lb
        return lb
        //: }()
    }()

    //: private lazy var mesageLB: UILabel = {
    private lazy var mesageLB: UILabel = {
        //: let lb = UILabel.init()
        let lb = UILabel()
        //: lb.textColor = UIColor.black
        lb.textColor = UIColor.black
        //: lb.font = UIFont.pingfangFont(type: .Regular, fontSize: 16)
        lb.font = UIFont.groupSize(type: .Regular, fontSize: 16)
        //: lb.numberOfLines = 0
        lb.numberOfLines = 0
        //: lb.textAlignment = .center
        lb.textAlignment = .center
        //: return lb
        return lb
        //: }()
    }()

    //: private lazy var finishBtn: UIButton = {
    private lazy var finishBtn: UIButton = {
        //: let btn = UIButton.init(type: .custom)
        let btn = UIButton(type: .custom)
        //: btn.setBackgroundImage(UIImage.imageGradientColor(colors: UIColor.appGradientColor(), size: CGSize(width: actualWidth(w: 203), height: actualWidth(w: 50))), for: .normal)
        btn.setBackgroundImage(UIImage.upTo(colors: UIColor.thirdColor(), size: CGSize(width: originalScene(w: 203), height: originalScene(w: 50))), for: .normal)
        //: btn.setTitleColor(.white, for: .normal)
        btn.setTitleColor(.white, for: .normal)
        //: btn.setTitle("Upload Now".localized, for: .normal)
        btn.setTitle((String(kStr_inputValue) + String(kStr_fromValue)).localized, for: .normal)
        //: btn.titleLabel?.font = UIFont.dorsum(fontSize: 18)
        btn.titleLabel?.font = UIFont.dorsum(fontSize: 18)
        //: btn.layer.cornerRadius = 25
        btn.layer.cornerRadius = 25
        //: btn.clipsToBounds = true
        btn.clipsToBounds = true
        //: btn.addTarget(self, action: #selector(finishBtnClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(legalStatusOn), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var closeBtn: UIButton = {
    private lazy var closeBtn: UIButton = {
        //: let btn = UIButton.init(type: .custom)
        let btn = UIButton(type: .custom)
        //: btn.setImage(UIImage.bundleBy(name: "btn_me_program_photo_delete"), for: .normal)
        btn.setImage(UIImage.bundleBy(name: (String(kStr_styleName.suffix(4)) + "me_pr" + kStr_sharedCellText.replacingOccurrences(of: "me", with: "r") + String(kStr_firstImageName.suffix(5)) + "oto_" + kStr_toValue.replacingOccurrences(of: "back", with: "le"))), for: .normal)
        //: btn.addTarget(self, action: #selector(closeBtnClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(equivalent), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()
}

// MARK: - Event

//: extension TalkingAttestationRefusePopUpView {
extension VideoReactiveCompatible {
    //: func setViewData(dit: [String: String]) {
    func eventData(dit: [String: String]) {
        //: mesageLB.text = dit["content"]
        mesageLB.text = dit[(kStr_mName.lowercased() + String(kStr_bottomText))]
        //: pushType = dit["jumpKey"] ?? ""
        pushType = dit[(String(kStr_makeName))] ?? ""
    }

    //: @objc private func finishBtnClick() {
    @objc private func legalStatusOn() {
        //: if pushType == "uploadUserHeaderPic" {
        if pushType == (String(kStr_topData) + String(kStr_birthdayTitle.suffix(3))) {
            //: updatePhotoButtonClick()
            modifyActionSnap()
            //: } else if pushType == "truePersonAuth" {
        } else if pushType == (kStr_managerData.replacingOccurrences(of: "collection", with: "t") + String(kStr_sharedData)) {
            //: LocationThen.share.loginUserMode.isTPAuth = "3"
            LocationThen.share.loginUserMode.isTPAuth = "3"
            //: EffectPushManager.share.func__pushUserVerifyController(toast: nil)
            EffectPushManager.share.retirement(toast: nil)
            //: dismiss()
            isometrical()
        }
    }

    //: @objc private func closeBtnClick() {
    @objc private func equivalent() {
        //: dismiss()
        isometrical()
    }

    //: func show() {
    func keyShow() {
        //: popView = TalkingPopView.init(frame: UIScreen.main.bounds)
        popView = BackgroundThen(frame: UIScreen.main.bounds)
        //: popView?.initWithView(view: self)
        popView?.toViewText(view: self)
        //: popView?.showInView(view: TableMacroDefine.getWindow())
        popView?.beyondAllAdjust(view: TableMacroDefine.oeilDeBoeufView())
        //: popView?.isRemoveTapGes = true
        popView?.isRemoveTapGes = true
    }

    //: @objc func dismiss() {
    @objc func isometrical() {
        //: popView?.dismissView()
        popView?.placePushAside()
        //: popView = nil
        popView = nil
    }

    /// 更新photo
    //: private func updatePhotoButtonClick() {
    private func modifyActionSnap() {
        //: TalkingPermissionTool.func__openAlbumServiceWithBlock(true) { (isOpen: Bool) in
        PerspectiveThen.albumImage(true) { (isOpen: Bool) in
            //: if isOpen {
            if isOpen {
                //: let vc = TalkingImagePickTool.initImagePickerVc(allowImgCrop: true, maxCount: 1, allowPhoto: true, allowVideo: false)
                let vc = SmartPickTool.delay(allowImgCrop: true, maxCount: 1, allowPhoto: true, allowVideo: false)
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
                            self.inputPage(img: image)
                        }
                        //: return
                }
                //: vc.imagePickerControllerDidCancelHandle = { [weak self] in
                vc.imagePickerControllerDidCancelHandle = { [weak self] in
                    //: guard let self = self else {return}
                    guard let self = self else { return }
                    //: self.dismiss()
                    self.isometrical()
                }
                //: } else {
            } else {
                //: self.dismiss()
                self.isometrical()
            }
        }
    }

    //: private func req_updateInfo(img: UIImage) {
    private func inputPage(img: UIImage) {
        //: let resultData: NSData = img.compressedImageData()! as NSData
        let resultData: NSData = img.goaBean()! as NSData
        //: let dict = ["headPic": resultData]
        let dict = [(String(kStr_contentValue.prefix(6)) + kStr_finishModelTitle.replacingOccurrences(of: "layer", with: "c")): resultData]
        //: ProgressHUD.show()
        TintProgressHUD.weight()
        //: TalkingMeRequestTool.req_UpdateUserInfo(params: dict) { [weak self] succeed, result, errorModel in
        LoadEqualRequestTool.voiceCompletion(params: dict) { [weak self] succeed, result, errorModel in
            //: ProgressHUD.dismiss()
            TintProgressHUD.inkingPadDismiss()
            //: guard let self = self else {return}
            guard let self = self else { return }
            //: self.dismiss()
            self.isometrical()
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
            self.property(showMsg: (String(kStr_myValue) + String(kStr_dataValue.suffix(4)) + "cess").localized)
            //: let data: Dictionary = result as! Dictionary<String, Any>
            let data: Dictionary = result as! [String: Any]
            //: LocationThen.share.loginUserMode.headPic = data["headPic"] as? String
            LocationThen.share.loginUserMode.headPic = data[(String(kStr_contentValue.prefix(6)) + kStr_finishModelTitle.replacingOccurrences(of: "layer", with: "c"))] as? String
            //: LocationThen.share.loginUserMode.headPicStatus = 0
            LocationThen.share.loginUserMode.headPicStatus = 0
        }
    }
}

// MARK: - Layout

//: extension TalkingAttestationRefusePopUpView {
extension VideoReactiveCompatible {
    // 添加视图
    //: private func setupSubviews() {
    private func atReceiveSubviews() {
        //: self.addSubview(contentView)
        self.addSubview(contentView)
        //: contentView.addSubview(topIcon)
        contentView.addSubview(topIcon)
        //: contentView.addSubview(title)
        contentView.addSubview(title)
        //: contentView.addSubview(mesageLB)
        contentView.addSubview(mesageLB)
        //: contentView.addSubview(finishBtn)
        contentView.addSubview(finishBtn)
        //: self.addSubview(closeBtn)
        self.addSubview(closeBtn)
    }

    // 添加约束
    //: private func setupSubViewsConstraint() {
    private func byConstraint() {
        //: contentView.snp.makeConstraints { make in
        contentView.snp.makeConstraints { make in
            //: make.center.equalToSuperview()
            make.center.equalToSuperview()
            //: make.size.equalTo(CGSize.init(width: actualWidth(w: 297), height: actualWidth(w: 350)))
            make.size.equalTo(CGSize(width: originalScene(w: 297), height: originalScene(w: 350)))
        }
        //: topIcon.snp.makeConstraints { make in
        topIcon.snp.makeConstraints { make in
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.top.equalTo(30)
            make.top.equalTo(30)
            //: make.size.equalTo(actualWidth(w: 93))
            make.size.equalTo(originalScene(w: 93))
        }
        //: title.snp.makeConstraints { make in
        title.snp.makeConstraints { make in
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.top.equalTo(topIcon.snp.bottom).offset(21)
            make.top.equalTo(topIcon.snp.bottom).offset(21)
        }
        //: mesageLB.snp.makeConstraints { make in
        mesageLB.snp.makeConstraints { make in
            //: make.leading.equalTo(21)
            make.leading.equalTo(21)
            //: make.trailing.equalTo(-21)
            make.trailing.equalTo(-21)
            //: make.top.equalTo(title.snp.bottom).offset(10)
            make.top.equalTo(title.snp.bottom).offset(10)
        }

        //: finishBtn.snp.makeConstraints { make in
        finishBtn.snp.makeConstraints { make in
            //: make.bottom.equalTo(-20)
            make.bottom.equalTo(-20)
            //: make.height.equalTo(50)
            make.height.equalTo(50)
            //: make.width.equalTo(203)
            make.width.equalTo(203)
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
        }

        //: closeBtn.snp.makeConstraints { make in
        closeBtn.snp.makeConstraints { make in
            //: make.top.equalTo(contentView.snp.bottom).offset(30)
            make.top.equalTo(contentView.snp.bottom).offset(30)
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.size.equalTo(30)
            make.size.equalTo(30)
        }
    }
}
