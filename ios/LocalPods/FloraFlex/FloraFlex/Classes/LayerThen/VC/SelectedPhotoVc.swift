
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let kStr_upName:[UInt8] = [0x36,0x31,0x36,0x2b,0x77,0x3c,0x30,0x3b,0x3a,0x2d,0x65,0x76,0x7f,0x37,0x3e,0x2c,0x7f,0x31,0x30,0x2b,0x7f,0x3d,0x3a,0x3a,0x31,0x7f,0x36,0x32,0x2f,0x33,0x3a,0x32,0x3a,0x31,0x2b,0x3a,0x3b]

/*: "Personal information" :*/
fileprivate let kStr_pushBearName:[Character] = ["P","e","r","s","o","n","a","l"," ","i"]
fileprivate let kStr_modelGiftData:[Character] = ["n","f","o","r","m"]
fileprivate let kStr_intimateCancelData:String = "atiomin"

/*: _ :*/
fileprivate let kStr_firstData:[Character] = ["_"]

/*: "male" :*/
fileprivate let kStr_collectionTitle:[UInt8] = [0x78,0x6c,0x77,0x70]

fileprivate func elseCase(wrap num: UInt8) -> UInt8 {
    let value = Int(num) - 11
    if value < 0 {
        return UInt8(value + 256)
    } else {
        return UInt8(value)
    }
}

/*: "female" :*/
fileprivate let kStr_dataValue:[Character] = ["f","e","m","a","l","e"]

/*: "newHeadPic" :*/
fileprivate let kStr_originalValue:String = "newHecontent block var aspect"
fileprivate let kStr_backgroundValue:[Character] = ["c"]

/*: "invite_code" :*/
fileprivate let kStr_groupValue:String = "whitenvwhitet"
fileprivate let kStr_sessionName:String = "pic"

/*: "codeFillType" :*/
fileprivate let kStr_nameIndexModelTitle:[Character] = ["c","o","d","e","F"]
fileprivate let kStr_tableThatValue:[Character] = ["i","l","l","T","y","p","e"]

/*: "RegisterSuccess" :*/
fileprivate let kStr_iconData:[Character] = ["R","e","g","i","s","t","e","r","S","u","c","c","e","s","s"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  SelectedPhotoVc.swift
//  AbroadTalking
//
//  Created by Charlotte on 2024/5/24.
//

//: import UIKit
import UIKit

//: class TalkingLoginEditPhotoVC: TalkingBaseViewController {
class SelectedPhotoVc: LayerRecognizerDelegate {
    //: fileprivate let disposeBag = DisposeBag()
    fileprivate let disposeBag = DisposeBag()
    //: var params = [String: Any]()
    var params = [String: Any]()
    //: init() {
    init() {
        //: super.init(nibName: nil, bundle: nil)
        super.init(nibName: nil, bundle: nil)
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: kStr_upName.map{$0^95}, encoding: .utf8)!)
    }

    //: override func viewDidAppear(_ animated: Bool) {
    override func viewDidAppear(_ animated: Bool) {
        //: super.viewDidAppear(animated)
        super.viewDidAppear(animated)
        //: popGesture(isOpen: false)
        unAgencyOn(isOpen: false)
    }

    //: override func viewDidLoad() {
    override func viewDidLoad() {
        //: super.viewDidLoad()
        super.viewDidLoad()
        //: self.title = "Personal information".localized
        self.title = (String(kStr_pushBearName) + String(kStr_modelGiftData) + kStr_intimateCancelData.replacingOccurrences(of: "min", with: "n")).localized
        //: self.view.backgroundColor = .white
        self.view.backgroundColor = .white
        //: self.setupSubviews()
        self.drown()
        //: self.setupSubViewsConstraint()
        self.shared()
        //: self.bindInteraction()
        self.at()
        //: addTapGestureRecognizer()
        makeBy()

        //: func__checkFinishBtnState()
        nutState()
    }

    //: deinit {
    deinit {}

    // MARK: - Lazy Load

    //: lazy var editInfoView: TalkingLoginEditPhotoView = {
    lazy var editInfoView: GeneratorReactiveCompatible = {
        //: let infoView = TalkingLoginEditPhotoView.init()
        let infoView = GeneratorReactiveCompatible()
        //: return infoView
        return infoView
        //: }()
    }()
}

// MARK: - Public Event

//: extension TalkingLoginEditPhotoVC {
extension SelectedPhotoVc {
    /// 重写返回按钮事件
    //: override func naviPopback() {
    override func viewDownPopback() {
        //: super.naviPopback()
        super.viewDownPopback()
        // 埋点
        //: let eventID = "\(click_registration_information2_backBTN)_\(LocationThen.share.userFillInfoMode.sex == Gender.male.rawValue ? "male" : "female")"
        let eventID = "\(kLet_environmentTitle)_\(LocationThen.share.userFillInfoMode.sex == SucceedComparable.male.rawValue ? String(bytes: kStr_collectionTitle.map{elseCase(wrap: $0)}, encoding: .utf8)! : (String(kStr_dataValue)))"
        //: uploadRecord.uploadRecordEvent(eventID: eventID)
        kLet_dismissValue.digitizerInsideStatus(eventID: eventID)
    }

    /// next事件
    //: func commitControlAction() {
    func inhibitionCommitControlFile() {
        // 埋点
        //: let eventID = "\(click_registration_information2_nextBTN)_\(LocationThen.share.userFillInfoMode.sex == Gender.male.rawValue ? "male" : "female")"
        let eventID = "\(kLet_managerData)_\(LocationThen.share.userFillInfoMode.sex == SucceedComparable.male.rawValue ? String(bytes: kStr_collectionTitle.map{elseCase(wrap: $0)}, encoding: .utf8)! : (String(kStr_dataValue)))"
        //: uploadRecord.uploadRecordEvent(eventID: eventID)
        kLet_dismissValue.digitizerInsideStatus(eventID: eventID)

        //: if LocationThen.share.userFillInfoMode.headImage != nil {
        if LocationThen.share.userFillInfoMode.headImage != nil {
            //: let image = LocationThen.share.userFillInfoMode.headImage!
            let image = LocationThen.share.userFillInfoMode.headImage!
            //: params["newHeadPic"] = image.jpegData(compressionQuality: 1)
            params[(String(kStr_originalValue.prefix(5)) + "adPi" + String(kStr_backgroundValue))] = image.jpegData(compressionQuality: 1)
        }
        //: if LocationThen.share.userFillInfoMode.inviteCode.count > 0 {
        if LocationThen.share.userFillInfoMode.inviteCode.count > 0 {
            //: params["invite_code"] = LocationThen.share.userFillInfoMode.inviteCode
            params[(kStr_groupValue.replacingOccurrences(of: "white", with: "i") + "e_cod" + kStr_sessionName.replacingOccurrences(of: "pic", with: "e"))] = LocationThen.share.userFillInfoMode.inviteCode

            //: } else {
        } else {
            //: let inviteCode = UserDefaults.standard.string(forKey: SaveInviteCodeKey)
            let inviteCode = UserDefaults.standard.string(forKey: kLet_tableText)
            //: if inviteCode?.count ?? 0 > 1 {
            if inviteCode?.count ?? 0 > 1 {
                //: params["invite_code"] = inviteCode
                params[(kStr_groupValue.replacingOccurrences(of: "white", with: "i") + "e_cod" + kStr_sessionName.replacingOccurrences(of: "pic", with: "e"))] = inviteCode
                //: params["codeFillType"] = 1
                params[(String(kStr_nameIndexModelTitle) + String(kStr_tableThatValue))] = 1
            }
        }

        //: if LocationThen.share.userFillInfoMode.sex == "1" {
        if LocationThen.share.userFillInfoMode.sex == "1" {
            //: view.endEditing(true)
            view.endEditing(true)
            //: ProgressHUD.show()
            TintProgressHUD.weight()
            //: TalkingLoginRequestTool.req_updateUserInfo(params: params) { succeed, result, errorModel in
            TableThen.color(params: params) { succeed, result, _ in
                //: ProgressHUD.dismiss()
                TintProgressHUD.inkingPadDismiss()
                //: if succeed {
                if succeed {
                    // 发送通知
                    //: NotificationCenter.default.post(name: DID_LOGIN_SUCCESS_NOTIFICATION, object: nil, userInfo: result as! Dictionary<String, Any>)
                    NotificationCenter.default.post(name: kLet_readText, object: nil, userInfo: result as! [String: Any])
                    // 注册成功埋点
                    //: TalkingAdjustManager.share.addEvent(key: "RegisterSuccess")
                    QualityAdjustManager.share.taproom(key: (String(kStr_iconData)))
                    //: FirebaseAnalyticsManager.share.logEvent(name: "RegisterSuccess")
                    FillShowAnalyticsManager.share.parameters(name: (String(kStr_iconData)))

                    //: if LocationThen.share.loginUserMode.remindBindEmail == true {
                    if LocationThen.share.loginUserMode.remindBindEmail == true { // 需要绑定邮箱
                        //: DispatchQueue.main.asyncAfter(deadline: .now()+0.5) {
                        DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
                            //: EffectPushManager.share.func__pushToLockUserEmailVC(isShowBack: false)
                            EffectPushManager.share.emphasizing(isShowBack: false)
                        }
                    }
                }
            }
            //: } else {
        } else {
            //: let VC = TalkingLoginEditAuthAndVideoVC.init()
            let VC = TinRecognizerDelegate()
            //: VC.params = params
            VC.params = params
            //: self.currentViewController()?.navigationController?.pushViewController(VC, animated: true)
            self.giftFew()?.navigationController?.pushViewController(VC, animated: true)
        }
    }

    //: func func__checkFinishBtnState() {
    func nutState() {
        //: let headImg = LocationThen.share.userFillInfoMode.headImage ?? nil
        let headImg = LocationThen.share.userFillInfoMode.headImage ?? nil
        //: editInfoView.commitButton.isEnabled = headImg != nil
        editInfoView.commitButton.isEnabled = headImg != nil
    }
}

// MARK: - Delegate

//: extension TalkingLoginEditPhotoVC: UIImagePickerControllerDelegate, UINavigationControllerDelegate {
extension SelectedPhotoVc: UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    //: private func func__choicePhotos() {
    private func remove() {
        //: TalkingPermissionTool.func__openAlbumServiceWithBlock(true) {  (isOpen: Bool) in
        PerspectiveThen.albumImage(true) { (isOpen: Bool) in
            //: if isOpen {
            if isOpen {
                //: let vc = TalkingImagePickTool.initImagePickerVc(allowImgCrop: true, maxCount: 1, allowPhoto: true, allowVideo: false)
                let vc = SmartPickTool.delay(allowImgCrop: true, maxCount: 1, allowPhoto: true, allowVideo: false)
                //: vc.modalPresentationStyle = .fullScreen
                vc.modalPresentationStyle = .fullScreen
                //: EffectPushManager.share.func__getCurrentActivityVC()?.present(vc, animated: true)
                EffectPushManager.share.quantityimateTarget()?.present(vc, animated: true)
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
                            //: LocationThen.share.userFillInfoMode.headImage = photos![0]
                            LocationThen.share.userFillInfoMode.headImage = photos![0]
                            //: self.editInfoView.addHeadButton.setImage(photos![0], for: .normal)
                            self.editInfoView.addHeadButton.setImage(photos![0], for: .normal)
                            //: self.func__checkFinishBtnState()
                            self.nutState()
                        }
                }
            }
        }
    }
}

// MARK: - Layout

//: extension TalkingLoginEditPhotoVC {
extension SelectedPhotoVc {
    // 添加视图
    //: private func setupSubviews() {
    private func drown() {
        //: view.addSubview(editInfoView)
        view.addSubview(editInfoView)
    }

    // 添加约束
    //: private func setupSubViewsConstraint() {
    private func shared() {
        //: editInfoView.snp.makeConstraints { make in
        editInfoView.snp.makeConstraints { make in
            //: make.edges.equalToSuperview()
            make.edges.equalToSuperview()
        }
    }

    // 添加事件
    //: private func bindInteraction() {
    private func at() {
        //: editInfoView.btnBlock = { [weak self] (_ type: EditInfoType) -> Void in
        editInfoView.btnBlock = { [weak self] (_ type: ShowInfoType) in
            //: guard let self = self else {return}
            guard let self = self else { return }
            //: switch type {
            switch type {
            //: case .HeadPic:
            case .HeadPic:
                //: func__choicePhotos()
                remove()
            //: break
            //: case .NickName, .Birth, .Skip: break
            case .NickName, .Birth, .Skip: break
            //: case .Finish:
            case .Finish:
                //: self.commitControlAction()
                self.inhibitionCommitControlFile()
                //: break
            }

            //: return
        }
    }
}
