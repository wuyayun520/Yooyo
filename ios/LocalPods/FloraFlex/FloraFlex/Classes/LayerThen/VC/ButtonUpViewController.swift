
//: Declare String Begin

/*: "Personal information" :*/
fileprivate let kStr_tapName:String = "let dataPer"
fileprivate let kStr_ownerTitle:String = "value voice image menusonal "
fileprivate let kStr_labTitle:String = "rmflowtion"

/*: _ :*/
fileprivate let kStr_dataName:String = "video"

/*: "male" :*/
fileprivate let kStr_eventValue:[UInt8] = [0x6c,0x60,0x6d,0x64]

private func toDate(action num: UInt8) -> UInt8 {
    return num ^ 1
}

/*: "female" :*/
fileprivate let kStr_factorValue:[Character] = ["f","e","m","a","l"]
fileprivate let kStr_allData:String = "text"

/*: "sex" :*/
fileprivate let kStr_whiteData:String = "haveex"

/*: "nickname" :*/
fileprivate let kStr_fatalTitle:String = "naspectkna"
fileprivate let kStr_detailValue:String = "year"

/*: "birthday" :*/
fileprivate let kStr_textCenterData:[Character] = ["b","i","r","t","h","d"]
fileprivate let kStr_sectionData:String = "ahidden"

/*: "%.2d" :*/
fileprivate let kStr_sceneName:String = "string text to%.2d"

/*: - :*/
fileprivate let kStr_viewPicTitle:String = "hide"

/*: "User :*/
fileprivate let kStr_labelText:[Character] = ["U","s","e","r"]

/*: "invite_code" :*/
fileprivate let kStr_equalTargetText:[UInt8] = [0x65,0x64,0x6f,0x63,0x5f,0x65,0x74,0x69,0x76,0x6e,0x69]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  ButtonUpViewController.swift
//  AbroadTalking
//
//  Created by Hemming on 2022/8/30.
//

//: import UIKit
import UIKit

//: class TalkingLoginEditInfoVC: TalkingBaseViewController {
class ButtonUpViewController: LayerRecognizerDelegate {
    //: fileprivate let disposeBag = DisposeBag()
    fileprivate let disposeBag = DisposeBag()

    //: override func viewDidAppear(_ animated: Bool) {
    override func viewDidAppear(_ animated: Bool) {
        //: super.viewDidAppear(animated)
        super.viewDidAppear(animated)
        //: popGesture(isOpen: false)
        unAgencyOn(isOpen: false)
    }

    //: override func viewWillAppear(_ animated: Bool) {
    override func viewWillAppear(_ animated: Bool) {
        //: super.viewWillAppear(animated)
        super.viewWillAppear(animated)
        // 返回到此页面时，重新赋值
        //: if editInfoView.nameInputView.text?.count ?? 0 > 0 {
        if editInfoView.nameInputView.text?.count ?? 0 > 0 {
            //: LocationThen.share.userFillInfoMode.nickName = editInfoView.nameInputView.text ?? ""
            LocationThen.share.userFillInfoMode.nickName = editInfoView.nameInputView.text ?? ""
        }
        //: if editInfoView.inviteCodeInputView.text?.count ?? 0 > 0 {
        if editInfoView.inviteCodeInputView.text?.count ?? 0 > 0 {
            //: LocationThen.share.userFillInfoMode.inviteCode = editInfoView.inviteCodeInputView.text ?? ""
            LocationThen.share.userFillInfoMode.inviteCode = editInfoView.inviteCodeInputView.text ?? ""
        }
    }

    //: override func viewDidLoad() {
    override func viewDidLoad() {
        //: super.viewDidLoad()
        super.viewDidLoad()
        //: title = "Personal information".localized
        title = (String(kStr_tapName.suffix(3)) + String(kStr_ownerTitle.suffix(6)) + "info" + kStr_labTitle.replacingOccurrences(of: "flow", with: "a")).localized
        //: view.backgroundColor = .white
        view.backgroundColor = .white
        //: setupSubviews()
        penalize()
        //: setupSubViewsConstraint()
        logAdd()
        //: bindInteraction()
        destroy()
        //: addTapGestureRecognizer()
        makeBy()
    }

    // MARK: - Lazy Load

    //: private lazy var editInfoView: TalkingLoginEditInfoView = {
    private lazy var editInfoView: InfoInputReactiveCompatible = {
        //: let infoView = TalkingLoginEditInfoView()
        let infoView = InfoInputReactiveCompatible()
        //: return infoView
        return infoView
        //: }()
    }()
}

// MARK: - Public Event

//: extension TalkingLoginEditInfoVC {
extension ButtonUpViewController {
    /// 重写返回按钮事件
    //: override func naviPopback() {
    override func viewDownPopback() {
        //: super.naviPopback()
        super.viewDownPopback()
        // 埋点
        //: let eventID = "\(click_registration_information1_backBTN)_\(LocationThen.share.userFillInfoMode.sex == Gender.male.rawValue ? "male" : "female")"
        let eventID = "\(kLet_limitData)_\(LocationThen.share.userFillInfoMode.sex == SucceedComparable.male.rawValue ? String(bytes: kStr_eventValue.map{toDate(action: $0)}, encoding: .utf8)! : (String(kStr_factorValue) + kStr_allData.replacingOccurrences(of: "text", with: "e")))"
        //: uploadRecord.uploadRecordEvent(eventID: eventID)
        kLet_dismissValue.digitizerInsideStatus(eventID: eventID)
    }

    /// next事件
    //: private func commitControlAction() {
    private func someRandom() {
        //: if LocationThen.share.userFillInfoMode.nickName.count <= 0 {
        if LocationThen.share.userFillInfoMode.nickName.count <= 0 {
            //: getRandomNickname()
            record()
        }
        //: var params = [String: Any]()
        var params = [String: Any]()
        //: params["sex"] = LocationThen.share.userFillInfoMode.sex
        params[(kStr_whiteData.replacingOccurrences(of: "have", with: "s"))] = LocationThen.share.userFillInfoMode.sex
        //: params["nickname"] = LocationThen.share.userFillInfoMode.nickName
        params[(kStr_fatalTitle.replacingOccurrences(of: "aspect", with: "ic") + kStr_detailValue.replacingOccurrences(of: "year", with: "me"))] = LocationThen.share.userFillInfoMode.nickName
        //: params["birthday"] = "\(String(format: "%.2d", LocationThen.share.userFillInfoMode.birthMonth))-\(String(format: "%.2d", LocationThen.share.userFillInfoMode.birthDay))-\(LocationThen.share.userFillInfoMode.birthYear)"
        params[(String(kStr_textCenterData) + kStr_sectionData.replacingOccurrences(of: "hidden", with: "y"))] = "\(String(format: "%.2d", LocationThen.share.userFillInfoMode.birthMonth))-\(String(format: "%.2d", LocationThen.share.userFillInfoMode.birthDay))-\(LocationThen.share.userFillInfoMode.birthYear)"
        //: let VC = TalkingLoginEditPhotoVC()
        let VC = SelectedPhotoVc()
        //: VC.params = params
        VC.params = params
        //: currentViewController()?.navigationController?.pushViewController(VC, animated: true)
        giftFew()?.navigationController?.pushViewController(VC, animated: true)
    }

    /// skip事件
    //: private func func__skipBtnAction() {
    private func object() {
        //: getRandomNickname()
        record()
        //: LocationThen.share.userFillInfoMode.setBirth()
        LocationThen.share.userFillInfoMode.somebodySelected()
        //: LocationThen.share.userFillInfoMode.inviteCode = ""
        LocationThen.share.userFillInfoMode.inviteCode = ""
        //: commitControlAction()
        someRandom()
    }

    /// 获取随机昵称
    //: private func getRandomNickname() {
    private func record() {
        //: let randCode = Int(arc4random_uniform(899999) + 100000)
        let randCode = Int(arc4random_uniform(899_999) + 100_000)
        //: LocationThen.share.userFillInfoMode.nickName = "User\(randCode)"
        LocationThen.share.userFillInfoMode.nickName = (String(kStr_labelText)) + "\(randCode)"
    }
}

// MARK: - Layout

//: extension TalkingLoginEditInfoVC {
extension ButtonUpViewController {
    // 添加视图
    //: private func setupSubviews() {
    private func penalize() {
        //: view.addSubview(editInfoView)
        view.addSubview(editInfoView)
    }

    // 添加约束
    //: private func setupSubViewsConstraint() {
    private func logAdd() {
        //: editInfoView.snp.makeConstraints { make in
        editInfoView.snp.makeConstraints { make in
            //: make.edges.equalToSuperview()
            make.edges.equalToSuperview()
        }
    }

    // 添加事件
    //: private func bindInteraction() {
    private func destroy() {
        //: editInfoView.btnBlock = { [weak self] (_ type: EditInfoType) in
        editInfoView.btnBlock = { [weak self] (_ type: ShowInfoType) in
            //: guard let self = self else { return }
            guard let self = self else { return }
            //: switch type {
            switch type {
            //: case .HeadPic: break
            case .HeadPic: break
            //: case .NickName: break
            case .NickName: break
            //: case .Birth: break
            case .Birth: break
            //: case .Finish:
            case .Finish:
                // 埋点
                //: let eventID = "\(click_registration_information1_nextBTN)_\(LocationThen.share.userFillInfoMode.sex == Gender.male.rawValue ? "male" : "female")"
                let eventID = "\(kLet_tableValue)_\(LocationThen.share.userFillInfoMode.sex == SucceedComparable.male.rawValue ? String(bytes: kStr_eventValue.map{toDate(action: $0)}, encoding: .utf8)! : (String(kStr_factorValue) + kStr_allData.replacingOccurrences(of: "text", with: "e")))"
                //: uploadRecord.uploadRecordEvent(eventID: eventID)
                kLet_dismissValue.digitizerInsideStatus(eventID: eventID)

                // 校验验证码
                //: if LocationThen.share.userFillInfoMode.inviteCode.count > 0 {
                if LocationThen.share.userFillInfoMode.inviteCode.count > 0 {
                    //: let params = ["invite_code": LocationThen.share.userFillInfoMode.inviteCode]
                    let params = [String(bytes: kStr_equalTargetText.reversed(), encoding: .utf8)!: LocationThen.share.userFillInfoMode.inviteCode]
                    //: TalkingLoginRequestTool.req_CheckCodeData(params: params) { succeed, _, _ in
                    TableThen.completionObject(params: params) { succeed, _, _ in
                        //: guard succeed else { return }
                        guard succeed else { return }
                        //: self.commitControlAction()
                        self.someRandom()
                    }

                    //: } else {
                } else {
                    //: self.commitControlAction()
                    self.someRandom()
                }

            //: case .Skip:
            case .Skip:
                // 埋点
                //: let eventID = "\(click_registration_information1_skipBTN)_\(LocationThen.share.userFillInfoMode.sex == Gender.male.rawValue ? "male" : "female")"
                let eventID = "\(kLet_barData)_\(LocationThen.share.userFillInfoMode.sex == SucceedComparable.male.rawValue ? String(bytes: kStr_eventValue.map{toDate(action: $0)}, encoding: .utf8)! : (String(kStr_factorValue) + kStr_allData.replacingOccurrences(of: "text", with: "e")))"
                //: uploadRecord.uploadRecordEvent(eventID: eventID)
                kLet_dismissValue.digitizerInsideStatus(eventID: eventID)
                //: self.func__skipBtnAction()
                self.object()
            }
        }
    }
}
