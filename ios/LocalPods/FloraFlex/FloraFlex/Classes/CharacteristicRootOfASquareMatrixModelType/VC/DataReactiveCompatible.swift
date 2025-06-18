
//: Declare String Begin

/*: "bg_shouye_misanguang_default" :*/
fileprivate let kStr_requestContent:String = "insert pad fill message afterbg_s"
fileprivate let kStr_modeName:String = "max let_misan"
fileprivate let kStr_statusSecondValue:String = "_defaultmodel succeed"

/*: "Popular" :*/
fileprivate let kStr_fileValue:[Character] = ["P","o","p","u","l","a","r"]

/*: "777777" :*/
fileprivate let kStr_birthTitle:[Character] = ["7","7","7","7","7","7"]

/*: "icon_moment_news_nor" :*/
fileprivate let kStr_partySendContent:String = "lab model count tempicon_"
fileprivate let kStr_domainData:String = "return total fragment titlent_n"

/*: "icon_free_pre" :*/
fileprivate let kStr_shareListData:String = "icon_frevar self succeed"
fileprivate let kStr_connectValue:[Character] = ["e","_","p","r","e"]

/*: "num" :*/
fileprivate let kStr_fromData:String = "nuresolution"

/*: "99+" :*/
fileprivate let kStr_defineName:[UInt8] = [0x6d,0x6d,0x5f]

fileprivate func tableCell(blade num: UInt8) -> UInt8 {
    let value = Int(num) + 204
    if value > 255 {
        return UInt8(value - 256)
    } else {
        return UInt8(value)
    }
}

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  DataReactiveCompatible.swift
//  AbroadTalking
//
//  Created by Hemming on 2022/1/20.
//

//: import UIKit
import UIKit

// MARK: - 属性声明 & 生命周期方法

//: class TalkingMomentViewController: TalkingBaseViewController {
class DataReactiveCompatible: LayerRecognizerDelegate {
    //: override func viewDidLoad() {
    override func viewDidLoad() {
        //: super.viewDidLoad()
        super.viewDidLoad()
        //: setupSubviews()
        shouldBy()
        //: setupSubViewsConstraint()
        apparelTurn()
        //: NotificationCenter.default.addObserver(self, selector: #selector(freeNotif), name: FREEBTN_UPLOAD_POST_NOTIFICATION, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(write), name: kLet_keyValue, object: nil)
    }

    //: override func viewWillAppear(_ animated: Bool) {
    override func viewWillAppear(_ animated: Bool) {
        //: super.viewWillAppear(animated)
        super.viewWillAppear(animated)
        //: load_remindNum()
        cellNum()
    }

    //: private lazy var bottomImgView: UIImageView = {
    private lazy var bottomImgView: UIImageView = {
        //: let imgV = UIImageView(image: UIImage.bundleBy(name: "bg_shouye_misanguang_default"))
        let imgV = UIImageView(image: UIImage.bundleBy(name: (String(kStr_requestContent.suffix(4)) + "houye" + String(kStr_modeName.suffix(6)) + "guang" + String(kStr_statusSecondValue.prefix(8)))))
        //: return imgV
        return imgV
        //: }()
    }()

    //: private lazy var slideVC: QYSlideNavigationViewController = {
    private lazy var slideVC: SubReactiveCompatible = {
        //: let vc = QYSlideNavigationViewController()
        let vc = SubReactiveCompatible()
        //: vc.topDistance = NavigationBarHeight
        vc.topDistance = kLet_senseFormatValue
        //: vc.controllerItems = [TalkingPopularMomentVC()]
        vc.controllerItems = [SeekDataSource()]
        //: vc.titleItems = ["Popular".localized]
        vc.titleItems = [(String(kStr_fileValue)).localized]
        //: vc.titleViewBackgroundColor = .clear
        vc.titleViewBackgroundColor = .clear
        //: vc.titleFont = .pingfangFont(type: .Medium, fontSize: 16)
        vc.titleFont = .groupSize(type: .Medium, fontSize: 16)
        //: vc.selectTitleFont = .pingfangFont(type: .Medium, fontSize: 18)
        vc.selectTitleFont = .groupSize(type: .Medium, fontSize: 18)
        //: vc.normalColor = UIColor(hex: "777777")!
        vc.normalColor = UIColor(hex: (String(kStr_birthTitle)))!
        //: vc.selectedColor = UIColor.appTitleColor()
        vc.selectedColor = UIColor.dataFormat()
        //: vc.hasBttomTabBar = true
        vc.hasBttomTabBar = true
        //: vc.delegate = self
        vc.delegate = self
        //: vc.scrollEnabled = false
        vc.scrollEnabled = false
        //: return vc
        return vc
        //: }()
    }()

    //: private lazy var newsBtn: UIButton = {
    private lazy var newsBtn: UIButton = {
        //: let btn = UIButton()
        let btn = UIButton()
        //: btn.setImage(UIImage.bundleBy(name: "icon_moment_news_nor"), for: .normal)
        btn.setImage(UIImage.bundleBy(name: (String(kStr_partySendContent.suffix(5)) + "mome" + String(kStr_domainData.suffix(4)) + "ews_nor")), for: .normal)
        //: btn.addTarget(self, action: #selector(newsBtnClickEvent), for: .touchUpInside)
        btn.addTarget(self, action: #selector(eventSize), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var newsBadgeLab: BadgeLab = {
    private lazy var newsBadgeLab: PageBadgeLab = {
        //: let label = BadgeLab()
        let label = PageBadgeLab()
        //: label.isHidden = true
        label.isHidden = true
        //: return label
        return label
        //: }()
    }()

    //: private lazy var freeBtn: UIButton = {
    private lazy var freeBtn: UIButton = {
        //: let btn = UIButton()
        let btn = UIButton()
        //: btn.setBackgroundImage(UIImage.bundleBy(name: "icon_free_pre"), for: .normal)
        btn.setBackgroundImage(UIImage.bundleBy(name: (String(kStr_shareListData.prefix(8)) + String(kStr_connectValue))), for: .normal)
        //: btn.addTarget(self, action: #selector(freeBtnClickEvent), for: .touchUpInside)
        btn.addTarget(self, action: #selector(asUnconfined), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()
}

// MARK: - Load Data

//: extension TalkingMomentViewController {
extension DataReactiveCompatible {
    /// 获取用户当前未读动态数量
    //: private func load_remindNum() {
    private func cellNum() {
        //: TalkingMomentRequestTool.req_getRemindNum { succeed, result, errorModel in
        FromThen.comeBy { succeed, result, _ in
            //: guard succeed else { return }
            guard succeed else { return }
            //: let json = JSON(result ?? [])
            let json = JSON(result ?? [])
            //: self.refreshNewsbadge(num: json["num"].intValue)
            self.statusWith(num: json[(kStr_fromData.replacingOccurrences(of: "resolution", with: "m"))].intValue)
        }
    }
}

// MARK: - Event

//: extension TalkingMomentViewController {
extension DataReactiveCompatible {
    /// 跳转到动态通知列表
    //: @objc private func newsBtnClickEvent() {
    @objc private func eventSize() {
        //: refreshNewsbadge(num: 0)
        statusWith(num: 0)
        //: let vc = TalkingMomentNewsFeedViewController()
        let vc = PageViewDelegate()
        //: self.navigationController?.pushViewController(vc, animated: true)
        self.navigationController?.pushViewController(vc, animated: true)
    }

    /// 发布通知
    //: @objc func freeNotif() {
    @objc func write() {
        //: freeBtnClickEvent()
        asUnconfined()
    }

    /// 发布
    //: @objc func freeBtnClickEvent() {
    @objc func asUnconfined() {
        //: if LocationThen.share.loginUserMode.isTPAuth != TPUserAuth.isSuccessed.rawValue, LocationThen.share.loginUserMode.sex == Gender.female.rawValue, LocationThen.share.appStatus == AppSkinStatus.normal.rawValue {
        if LocationThen.share.loginUserMode.isTPAuth != FillContiguousBytes.isSuccessed.rawValue, LocationThen.share.loginUserMode.sex == SucceedComparable.female.rawValue, LocationThen.share.appStatus == SharedInsetTarget.normal.rawValue {
            //: AppManagerRequest.func__requestUserInfo { _, _, _ in
            SubThen.channel { _, _, _ in
                //: if !LocationThen.share.loginUserMode.isNaUser,
                if !LocationThen.share.loginUserMode.isNaUser,
                   //: LocationThen.share.loginUserMode.isTPAuth != TPUserAuth.isSuccessed.rawValue
                   LocationThen.share.loginUserMode.isTPAuth != FillContiguousBytes.isSuccessed.rawValue
                {
                    /// 真人认证提示弹窗
                    //: TalkingPopupWindowManager.shared.faceVerificationPopUpWindow()
                    ClientBottomReactiveCompatible.shared.destabilisation()
                    //: return
                    return
                        //: } else {
                } else {
                    //: self.pushFreeVC()
                    self.subSend()
                }
            }
            //: } else {
        } else {
            //: pushFreeVC()
            subSend()
        }
    }

    //: private func pushFreeVC() {
    private func subSend() {
        //: let isShow = Defaults.bool(forKey: TalkingFreeTipsViewIsShow)
        let isShow = kLet_managerValue.bool(forKey: kLet_timeKeyValue)
        //: let freeVC = TalkingFreeViewController()
        let freeVC = TableGiftViewDelegate()
        //: freeVC.delegate = slideVC.controllerItems.first as? any TalkingFreeViewControllerDelegate
        freeVC.delegate = slideVC.controllerItems.first as? any ClientObjectProtocol
        //: guard isShow == false else {
        guard isShow == false else { // 已展示过
            //: navigationController?.pushViewController(freeVC, animated: true)
            navigationController?.pushViewController(freeVC, animated: true)
            //: return
            return
        }
        //: TalkingFreeTipsView().showView {
        ImageReactiveCompatible().viewHandler {
            //: self.navigationController?.pushViewController(freeVC, animated: true)
            self.navigationController?.pushViewController(freeVC, animated: true)
        }
    }
}

// MARK: - NavigationDelegate

//: extension TalkingMomentViewController: QYSlideNavigationDelegate {
extension DataReactiveCompatible: NavigationDelegate {
    //: func selectedViewController(_ viewController: UIViewController, index: Int) {}
    func invisible(_: UIViewController, index _: Int) {}
}

// MARK: - Layout

//: extension TalkingMomentViewController {
extension DataReactiveCompatible {
    /// 刷新动态通知角标
    //: func refreshNewsbadge(num: Int) {
    func statusWith(num: Int) {
        //: newsBadgeLab.isHidden = num > 0 ? false:true
        newsBadgeLab.isHidden = num > 0 ? false : true
        //: newsBadgeLab.text = num > 99 ? "99+":String(num)
        newsBadgeLab.text = num > 99 ? "99+" : String(num)
    }

    /// 添加视图
    //: private func setupSubviews() {
    private func shouldBy() {
        //: hideNavi = true
        hideNavi = true
        //: view.backgroundColor = UIColor.white
        view.backgroundColor = UIColor.white
        // 导航底部渐变背景
        //: view.addSubview(bottomImgView)
        view.addSubview(bottomImgView)
        //: addChild(slideVC)
        addChild(slideVC)
        //: view.addSubview(slideVC.view)
        view.addSubview(slideVC.view)
        //: view.addSubview(newsBtn)
        view.addSubview(newsBtn)
        //: view.addSubview(newsBadgeLab)
        view.addSubview(newsBadgeLab)
        //: view.addSubview(freeBtn)
        view.addSubview(freeBtn)
    }

    /// 添加约束
    //: private func setupSubViewsConstraint() {
    private func apparelTurn() {
        //: bottomImgView.snp.makeConstraints { make in
        bottomImgView.snp.makeConstraints { make in
            //: make.leading.top.width.equalToSuperview()
            make.leading.top.width.equalToSuperview()
            //: make.height.equalTo(145+StatusBarHeight)
            make.height.equalTo(145 + kLet_postPartyValue)
        }
        //: newsBtn.snp.makeConstraints { make in
        newsBtn.snp.makeConstraints { make in
            //: make.top.equalTo(StatusBarHeight)
            make.top.equalTo(kLet_postPartyValue)
            //: make.trailing.equalTo(-10)
            make.trailing.equalTo(-10)
            //: make.size.equalTo(CGSize(width: 40, height: 40))
            make.size.equalTo(CGSize(width: 40, height: 40))
        }
        //: newsBadgeLab.snp.makeConstraints { make in
        newsBadgeLab.snp.makeConstraints { make in
            //: make.leading.equalTo(newsBtn.snp.trailing).offset(-20)
            make.leading.equalTo(newsBtn.snp.trailing).offset(-20)
            //: make.top.equalTo(newsBtn).offset(2)
            make.top.equalTo(newsBtn).offset(2)
            //: make.height.equalTo(16)
            make.height.equalTo(16)
            //: make.width.greaterThanOrEqualTo(16)
            make.width.greaterThanOrEqualTo(16)
        }
        //: freeBtn.snp.makeConstraints { make in
        freeBtn.snp.makeConstraints { make in
            //: make.trailing.equalTo(-10)
            make.trailing.equalTo(-10)
            //: make.bottom.equalTo(-115)
            make.bottom.equalTo(-115)
            //: make.size.equalTo(CGSize(width: 55, height: 55))
            make.size.equalTo(CGSize(width: 55, height: 55))
        }
    }
}
