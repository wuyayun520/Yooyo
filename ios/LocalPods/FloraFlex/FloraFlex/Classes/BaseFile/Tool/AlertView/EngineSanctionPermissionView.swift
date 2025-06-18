
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let kStr_titleValue:[UInt8] = [0x5,0x2,0x5,0x18,0x44,0xf,0x3,0x8,0x9,0x1e,0x56,0x45,0x4c,0x4,0xd,0x1f,0x4c,0x2,0x3,0x18,0x4c,0xe,0x9,0x9,0x2,0x4c,0x5,0x1,0x1c,0x0,0x9,0x1,0x9,0x2,0x18,0x9,0x8]

private func sumList(announcement num: UInt8) -> UInt8 {
    return num ^ 108
}

/*: "Licensing" :*/
fileprivate let kStr_fromValue:[Character] = ["L","i","c","e","n","s","i","n","g"]

/*: "Granting licences to receive better video calls and earn more money" :*/
fileprivate let kStr_picAddTitle:[UInt8] = [0xda,0xef,0xfc,0xf3,0xe9,0xf4,0xf3,0xfa,0xbd,0xf1,0xf4,0xfe,0xf8,0xf3,0xfe,0xf8,0xee,0xbd,0xe9,0xf2,0xbd,0xef,0xf8,0xfe,0xf8,0xf4,0xeb,0xf8,0xbd,0xff,0xf8,0xe9,0xe9,0xf8,0xef,0xbd,0xeb,0xf4,0xf9,0xf8,0xf2,0xbd,0xfe,0xfc,0xf1,0xf1,0xee,0xbd,0xfc,0xf3,0xf9,0xbd,0xf8,0xfc,0xef,0xf3,0xbd,0xf0,0xf2,0xef,0xf8,0xbd,0xf0,0xf2,0xf3,0xf8,0xe4]

private func upBlock(lab num: UInt8) -> UInt8 {
    return num ^ 157
}

/*: "Turn on Camera and recording permissions in settings to use the feature properly" :*/
fileprivate let kStr_kindTopData:[UInt8] = [0xa2,0xc3,0xc0,0xbc,0x6e,0xbd,0xbc,0x6e,0x91,0xaf,0xbb,0xb3,0xc0,0xaf,0x6e,0xaf,0xbc,0xb2,0x6e,0xc0,0xb3,0xb1,0xbd,0xc0,0xb2,0xb7,0xbc,0xb5,0x6e,0xbe,0xb3,0xc0,0xbb,0xb7,0xc1,0xc1,0xb7,0xbd,0xbc,0xc1,0x6e,0xb7,0xbc,0x6e,0xc1,0xb3,0xc2,0xc2,0xb7,0xbc,0xb5,0xc1,0x6e,0xc2,0xbd,0x6e,0xc3,0xc1,0xb3,0x6e,0xc2,0xb6,0xb3,0x6e,0xb4,0xb3,0xaf,0xc2,0xc3,0xc0,0xb3,0x6e,0xbe,0xc0,0xbd,0xbe,0xb3,0xc0,0xba,0xc7]

fileprivate func giftFile(request num: UInt8) -> UInt8 {
    let value = Int(num) + 178
    if value > 255 {
        return UInt8(value - 256)
    } else {
        return UInt8(value)
    }
}

/*: "Cancel" :*/
fileprivate let kStr_whiteData:String = "Cancelcontent index"

/*: "Open" :*/
fileprivate let kStr_textValue:String = "Opentext address view self"

/*: "icon_peimisionlic_camera" :*/
fileprivate let kStr_formatValue:String = "pop error length self dataicon_"
fileprivate let kStr_tagValue:String = "IONL"
fileprivate let kStr_sizeData:[Character] = ["i","c","_","c"]
fileprivate let kStr_menuValue:String = "amdismissra"

/*: "icon_peimissionlic_mic" :*/
fileprivate let kStr_scaleData:String = "make makeicon_peim"
fileprivate let kStr_enableSystemBarValue:String = "imodelmodelio"
fileprivate let kStr_sharedText:[Character] = ["n","l","i","c","_","m","i","c"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  EngineSanctionPermissionView.swift
//  FloraFlex
//
//  Created by Charlotte on 2024/3/22.
//

//: import UIKit
import UIKit

//: class TalkingPermissionView: UIView {
class EngineSanctionPermissionView: UIView {
    //: var popView: TalkingPopView?
    var popView: BackgroundThen?

    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: self.setupSubviews()
        self.frontSubviews()
        //: self.setupSubViewsConstraint()
        self.currentAcross()
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: kStr_titleValue.map{sumList(announcement: $0)}, encoding: .utf8)!)
    }

    //: lazy var backView: UIView = {
    lazy var backView: UIView = {
        //: let view = UIView.init()
        let view = UIView()
        //: view.layer.cornerRadius = 15
        view.layer.cornerRadius = 15
        //: view.layer.masksToBounds = true
        view.layer.masksToBounds = true
        //: view.backgroundColor = .white
        view.backgroundColor = .white
        //: return view
        return view
        //: }()
    }()

    //: lazy var titleLB: UILabel = {
    lazy var titleLB: UILabel = {
        //: let lb = UILabel.init()
        let lb = UILabel()
        //: lb.textColor = UIColor.appTitleColor()
        lb.textColor = UIColor.dataFormat()
        //: lb.font = UIFont.dorsum(fontSize: 20)
        lb.font = UIFont.dorsum(fontSize: 20)
        //: lb.text = "Licensing".localized
        lb.text = (String(kStr_fromValue)).localized
        //: return lb
        return lb
        //: }()
    }()

    //: lazy var messageLB: UILabel = {
    lazy var messageLB: UILabel = {
        //: let lb = UILabel.init()
        let lb = UILabel()
        //: lb.textColor = UIColor.appTitleColor()
        lb.textColor = UIColor.dataFormat()
        //: lb.font = UIFont.messageDown(fontSize: 16)
        lb.font = UIFont.messageDown(fontSize: 16)
        //: if LocationThen.share.loginUserMode.sex == Gender.female.rawValue && LocationThen.share.appStatus != AppSkinStatus.special.rawValue {
        if LocationThen.share.loginUserMode.sex == SucceedComparable.female.rawValue && LocationThen.share.appStatus != SharedInsetTarget.special.rawValue {
            //: lb.text = "Granting licences to receive better video calls and earn more money".localized
            lb.text = String(bytes: kStr_picAddTitle.map{upBlock(lab: $0)}, encoding: .utf8)!.localized
            //: } else {
        } else {
            //: lb.text = "Turn on Camera and recording permissions in settings to use the feature properly".localized
            lb.text = String(bytes: kStr_kindTopData.map{giftFile(request: $0)}, encoding: .utf8)!.localized
        }
        //: lb.numberOfLines = 0
        lb.numberOfLines = 0
        //: lb.textAlignment = .center
        lb.textAlignment = .center
        //: return lb
        return lb
        //: }()
    }()

    //: lazy var cancleBtn: UIButton = {
    lazy var cancleBtn: UIButton = {
        //: let btn = UIButton.init(type: .custom)
        let btn = UIButton(type: .custom)
        //: btn.setTitle("Cancel".localized, for: .normal)
        btn.setTitle((String(kStr_whiteData.prefix(6))).localized, for: .normal)
        //: btn.titleLabel?.font = UIFont.pingfangFont(type: .Medium, fontSize: 16)
        btn.titleLabel?.font = UIFont.groupSize(type: .Medium, fontSize: 16)
        //: btn.setTitleColor(.statusMin(), for: .normal)
        btn.setTitleColor(.statusMin(), for: .normal)
        //: btn.layer.cornerRadius = 25
        btn.layer.cornerRadius = 25
        //: btn.clipsToBounds = true
        btn.clipsToBounds = true
        //: btn.layer.borderColor = UIColor.fromBuild().cgColor
        btn.layer.borderColor = UIColor.fromBuild().cgColor
        //: btn.layer.borderWidth = 1
        btn.layer.borderWidth = 1
        //: btn.addTarget(self, action: #selector(cancleBtnClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(placeClick), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()

    //: lazy var openBtn: UIButton = {
    lazy var openBtn: UIButton = {
        //: let btn = UIButton.init(type: .custom)
        let btn = UIButton(type: .custom)
        //: btn.setTitle("Open".localized, for: .normal)
        btn.setTitle((String(kStr_textValue.prefix(4))).localized, for: .normal)
        //: btn.titleLabel?.font = UIFont.pingfangFont(type: .Medium, fontSize: 16)
        btn.titleLabel?.font = UIFont.groupSize(type: .Medium, fontSize: 16)
        //: btn.setTitleColor(.white, for: .normal)
        btn.setTitleColor(.white, for: .normal)
        //: btn.layer.cornerRadius = 25
        btn.layer.cornerRadius = 25
        //: btn.clipsToBounds = true
        btn.clipsToBounds = true
        //: btn.setBackgroundImage(UIImage.imageGradientColor(colors: UIColor.appGradientColor(), size: CGSize(width: 130, height: 50)), for: .normal)
        btn.setBackgroundImage(UIImage.upTo(colors: UIColor.thirdColor(), size: CGSize(width: 130, height: 50)), for: .normal)
        //: btn.addTarget(self, action: #selector(openBtnClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(turn), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()
}

//: extension TalkingPermissionView {
extension EngineSanctionPermissionView {
    //: func show() {
    func itemApp() {
        //: popView = TalkingPopView.init(frame: UIScreen.main.bounds)
        popView = BackgroundThen(frame: UIScreen.main.bounds)
        //: self.frame = CGRect(x: 0, y: 0, width: ScreenWidth, height: ScreenHeight)
        self.frame = CGRect(x: 0, y: 0, width: kLet_halfData, height: kLet_noSeatName)
        //: popView?.initWithView(view: self)
        popView?.toViewText(view: self)
        //: popView?.showInView(view: TableMacroDefine.getWindow())
        popView?.beyondAllAdjust(view: TableMacroDefine.oeilDeBoeufView())
        //: popView?.isRemoveTapGes = true
        popView?.isRemoveTapGes = true
    }

    //: @objc func cancleBtnClick() {
    @objc func placeClick() {
        //: popView?.dismissView()
        popView?.placePushAside()
        //: popView = nil
        popView = nil
    }

    //: @objc func openBtnClick() {
    @objc func turn() {
        //: let url = URL(string: UIApplication.openSettingsURLString)
        let url = URL(string: UIApplication.openSettingsURLString)
        //: if  UIApplication.shared.canOpenURL(url!) {
        if UIApplication.shared.canOpenURL(url!) {
            //: if #available(iOS 10, *) {
            if #available(iOS 10, *) {
                //: UIApplication.shared.open(url!, options: [:], completionHandler: {(success) in})
                UIApplication.shared.open(url!, options: [:], completionHandler: { _ in })
                //: } else {
            } else {
                //: UIApplication.shared.openURL(url!)
                UIApplication.shared.openURL(url!)
            }
        }
        //: cancleBtnClick()
        placeClick()
    }

    //: func setPermissionIconView(type: TalkingPermissionsType) {
    func headerType(type: SharedPermissionsType) {
        //: let count = type == .cameraAndMicrophone ? 2: 1
        let count = type == .cameraAndMicrophone ? 2 : 1
        //: for index in 0..<count {
        for index in 0 ..< count {
            //: let icon = UIImageView()
            let icon = UIImageView()
            //: icon.contentMode = .scaleAspectFill
            icon.contentMode = .scaleAspectFill
            //: backView.addSubview(icon)
            backView.addSubview(icon)
            //: if count == 1 {
            if count == 1 {
                //: icon.snp.makeConstraints { make in
                icon.snp.makeConstraints { make in
                    //: make.centerX.equalToSuperview()
                    make.centerX.equalToSuperview()
                    //: make.size.equalTo(62)
                    make.size.equalTo(62)
                    //: make.top.equalTo(messageLB.snp.bottom).offset(20)
                    make.top.equalTo(messageLB.snp.bottom).offset(20)
                }
                //: } else {
            } else {
                //: if index == 0 {
                if index == 0 {
                    //: icon.snp.makeConstraints { make in
                    icon.snp.makeConstraints { make in
                        //: make.leading.equalTo(61)
                        make.leading.equalTo(61)
                        //: make.size.equalTo(62)
                        make.size.equalTo(62)
                        //: make.top.equalTo(messageLB.snp.bottom).offset(20)
                        make.top.equalTo(messageLB.snp.bottom).offset(20)
                    }
                    //: } else {
                } else {
                    //: icon.snp.makeConstraints { make in
                    icon.snp.makeConstraints { make in
                        //: make.trailing.equalTo(-61)
                        make.trailing.equalTo(-61)
                        //: make.size.equalTo(62)
                        make.size.equalTo(62)
                        //: make.top.equalTo(messageLB.snp.bottom).offset(20)
                        make.top.equalTo(messageLB.snp.bottom).offset(20)
                    }
                }
            }
            //: switch type {
            switch type {
            //: case .camera:
            case .camera:
                //: icon.image = UIImage.bundleBy(name: "icon_peimisionlic_camera")
                icon.image = UIImage.bundleBy(name: (String(kStr_formatValue.suffix(5)) + "peimis" + kStr_tagValue.lowercased() + String(kStr_sizeData) + kStr_menuValue.replacingOccurrences(of: "dismiss", with: "e")))
            //: case .microphone:
            case .microphone:
                //: icon.image = UIImage.bundleBy(name: "icon_peimissionlic_mic")
                icon.image = UIImage.bundleBy(name: (String(kStr_scaleData.suffix(9)) + kStr_enableSystemBarValue.replacingOccurrences(of: "model", with: "s") + String(kStr_sharedText)))
            //: case .cameraAndMicrophone:
            case .cameraAndMicrophone:
                //: if index == 0 {
                if index == 0 {
                    //: icon.image = UIImage.bundleBy(name: "icon_peimisionlic_camera")
                    icon.image = UIImage.bundleBy(name: (String(kStr_formatValue.suffix(5)) + "peimis" + kStr_tagValue.lowercased() + String(kStr_sizeData) + kStr_menuValue.replacingOccurrences(of: "dismiss", with: "e")))
                    //: } else {
                } else {
                    //: icon.image = UIImage.bundleBy(name: "icon_peimissionlic_mic")
                    icon.image = UIImage.bundleBy(name: (String(kStr_scaleData.suffix(9)) + kStr_enableSystemBarValue.replacingOccurrences(of: "model", with: "s") + String(kStr_sharedText)))
                }
            //: default:
            default:
                //: break
                break
            }
        }
    }
}

//: extension TalkingPermissionView {
extension EngineSanctionPermissionView {
    // 添加视图
    //: private func setupSubviews() {
    private func frontSubviews() {
        //: self.addSubview(backView)
        self.addSubview(backView)
        //: backView.addSubview(titleLB)
        backView.addSubview(titleLB)
        //: backView.addSubview(messageLB)
        backView.addSubview(messageLB)
        //: backView.addSubview(cancleBtn)
        backView.addSubview(cancleBtn)
        //: backView.addSubview(openBtn)
        backView.addSubview(openBtn)
    }

    // 添加约束
    //: private func setupSubViewsConstraint() {
    private func currentAcross() {
        //: backView.snp.makeConstraints { make in
        backView.snp.makeConstraints { make in
            //: make.center.equalToSuperview()
            make.center.equalToSuperview()
            //: make.width.equalTo(295)
            make.width.equalTo(295)
            //: make.height.equalTo(321)
            make.height.equalTo(321)
        }
        //: titleLB.snp.makeConstraints { make in
        titleLB.snp.makeConstraints { make in
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.top.equalTo(32)
            make.top.equalTo(32)
            //: make.height.equalTo(22)
            make.height.equalTo(22)
        }
        //: messageLB.snp.makeConstraints { make in
        messageLB.snp.makeConstraints { make in
            //: make.top.equalTo(titleLB.snp.bottom).offset(21)
            make.top.equalTo(titleLB.snp.bottom).offset(21)
            //: make.leading.equalTo(20)
            make.leading.equalTo(20)
            //: make.trailing.equalTo(-20)
            make.trailing.equalTo(-20)
        }
        //: cancleBtn.snp.makeConstraints { make in
        cancleBtn.snp.makeConstraints { make in
            //: make.leading.equalTo(12)
            make.leading.equalTo(12)
            //: make.bottom.equalTo(-16)
            make.bottom.equalTo(-16)
            //: make.height.equalTo(50)
            make.height.equalTo(50)
            //: make.width.equalTo(130)
            make.width.equalTo(130)
        }
        //: openBtn.snp.makeConstraints { make in
        openBtn.snp.makeConstraints { make in
            //: make.trailing.equalTo(-12)
            make.trailing.equalTo(-12)
            //: make.bottom.size.equalTo(cancleBtn)
            make.bottom.size.equalTo(cancleBtn)
        }
    }
}
