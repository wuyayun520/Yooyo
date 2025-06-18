
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let kStr_countData:[UInt8] = [0x45,0x4a,0x45,0x50,0x4,0x3f,0x4b,0x40,0x41,0x4e,0x16,0x5,0xfc,0x44,0x3d,0x4f,0xfc,0x4a,0x4b,0x50,0xfc,0x3e,0x41,0x41,0x4a,0xfc,0x45,0x49,0x4c,0x48,0x41,0x49,0x41,0x4a,0x50,0x41,0x40]

fileprivate func moreMakeFemale(today num: UInt8) -> UInt8 {
    let value = Int(num) + 36
    if value > 255 {
        return UInt8(value - 256)
    } else {
        return UInt8(value)
    }
}

/*: "nav_back_black_nor" :*/
fileprivate let kStr_nameData:[Character] = ["n","a"]
fileprivate let kStr_instanceSessionData:[Character] = ["v","_","b","a","c","k","_","b","l","a","c","k","_","n","o","r"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  EngineViewController.swift
//  AbroadTalking
//
//  Created by Bolo on 2022/8/31.
//

//: import UIKit
import UIKit

//: class TalkingFaceVerificationVC: TalkingBaseViewController {
class EngineViewController: LayerRecognizerDelegate {
    //: var toastStr: String = ""
    var toastStr: String = ""

    //: init() {
    init() {
        //: super.init(nibName: nil, bundle: nil)
        super.init(nibName: nil, bundle: nil)
        //: hideNavi = true
        hideNavi = true
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: kStr_countData.map{moreMakeFemale(today: $0)}, encoding: .utf8)!)
    }

    //: override func viewDidLoad() {
    override func viewDidLoad() {
        //: super.viewDidLoad()
        super.viewDidLoad()
        //: self.createUI()
        self.observeUi()
        //: self.createUIConstraint()
        self.large()
        //: if toastStr.isEmptyString == false {
        if toastStr.isEmptyString == false {
            //: ProgressHUD.toast(toastStr)
            TintProgressHUD.errorToast(toastStr)
        }
    }

    // MARK: - Lazy load

    //: lazy var mainView: TalkingFaceVerificationView = {
    lazy var mainView: EngineView = {
        //: let view = TalkingFaceVerificationView()
        let view = EngineView()
        //: return view
        return view
        //: }()
    }()

    //: lazy var backBtn: UIButton = {
    lazy var backBtn: UIButton = {
        //: let btn = UIButton(type: .custom)
        let btn = UIButton(type: .custom)
        //: btn.setImage(UIImage.bundleBy(name: "nav_back_black_nor"), for: .normal)
        btn.setImage(UIImage.bundleBy(name: (String(kStr_nameData) + String(kStr_instanceSessionData))), for: .normal)
        //: return btn
        return btn
        //: }()
    }()
}

// MARK: - Event

//: extension TalkingFaceVerificationVC {
extension EngineViewController {
    //: @objc func backBtnClicked() {
    @objc func magnitudeerval() {
        //: self.naviPopback()
        self.viewDownPopback()
    }
}

// MARK: - UI

//: extension TalkingFaceVerificationVC {
extension EngineViewController {
    //: func createUI() {
    func observeUi() {
        //: view.addSubview(mainView)
        view.addSubview(mainView)
        //: view.addSubview(backBtn)
        view.addSubview(backBtn)
        //: backBtn.addTarget(self, action: #selector(backBtnClicked), for: .touchUpInside)
        backBtn.addTarget(self, action: #selector(magnitudeerval), for: .touchUpInside)
        //: mainView.btnClickBlock = { () -> Void in
        mainView.btnClickBlock = { () in
            //: let vc = TalkingVerificationExampleVC()
            let vc = FillThen()
            //: self.navigationController?.pushViewController(vc, animated: true)
            self.navigationController?.pushViewController(vc, animated: true)
            //: return
        }
    }

    //: func createUIConstraint() {
    func large() {
        //: mainView.snp.makeConstraints { make in
        mainView.snp.makeConstraints { make in
            //: make.leading.trailing.top.bottom.equalTo(0)
            make.leading.trailing.top.bottom.equalTo(0)
        }
        //: backBtn.snp.makeConstraints { make in
        backBtn.snp.makeConstraints { make in
            //: make.leading.equalTo(actualWidth(w: 15))
            make.leading.equalTo(originalScene(w: 15))
            //: make.top.equalTo(actualHeight(h: 12)+StatusBarHeight)
            make.top.equalTo(mediaBlock(h: 12) + kLet_postPartyValue)
            //: make.size.equalTo(CGSize(width: 24, height: 24))
            make.size.equalTo(CGSize(width: 24, height: 24))
        }
    }
}
