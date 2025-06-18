
//: Declare String Begin

/*: "nav_back_black_nor" :*/
fileprivate let kStr_textValue:String = "nav_bbottom collection edit view"
fileprivate let kStr_maxName:String = "LACK"

/*: "live_explain" :*/
fileprivate let kStr_postDownValue:[Character] = ["l","i","v","e","_","e","x","p","l","a","i","n"]

/*: "Live" :*/
fileprivate let kStr_clearName:String = "size data self selfLive"

/*: "#FAF6FF" :*/
fileprivate let kStr_reasonText:[Character] = ["#"]
fileprivate let kStr_styleName:[Character] = ["F","A","F","6","F","F"]

/*: "icon_live_certification" :*/
fileprivate let kStr_buildValue:String = "icorange"
fileprivate let kStr_modelLogName:String = "e_cesize var"
fileprivate let kStr_viewValue:String = "atiplay"
fileprivate let kStr_meValue:[Character] = ["n"]

/*: "Turn on live certification" :*/
fileprivate let kStr_valueData:String = "lab view varTurn "
fileprivate let kStr_placeValue:String = "cap end of bage ce"
fileprivate let kStr_kitData:String = "atiogift"

/*: "will increase the chances of receiving calls to earn more points." :*/
fileprivate let kStr_managerData:[UInt8] = [0x63,0x7d,0x78,0x78,0x34,0x7d,0x7a,0x77,0x66,0x71,0x75,0x67,0x71,0x34,0x60,0x7c,0x71,0x34,0x77,0x7c,0x75,0x7a,0x77,0x71,0x67,0x34,0x7b,0x72,0x34,0x66,0x71,0x77,0x71,0x7d,0x62,0x7d,0x7a,0x73,0x34,0x77,0x75,0x78,0x78,0x67,0x34,0x60,0x7b,0x34,0x71,0x75,0x66,0x7a,0x34,0x79,0x7b,0x66,0x71,0x34,0x64,0x7b,0x7d,0x7a,0x60,0x67,0x3a]

/*: "icon_live_publicly" :*/
fileprivate let kStr_equalValue:String = "i data to tableicon_l"
fileprivate let kStr_textTableStartValue:[Character] = ["i","v","e","_","p","u","b"]
fileprivate let kStr_nameText:[Character] = ["l","i","c","l","y"]

/*: "Your live will be publicly displayed to others" :*/
fileprivate let kStr_makeTitle:[UInt8] = [0x29,0x1f,0x5,0x2,0x50,0x1c,0x19,0x6,0x15,0x50,0x7,0x19,0x1c,0x1c,0x50,0x12,0x15,0x50,0x0,0x5,0x12,0x1c,0x19,0x13,0x1c,0x9,0x50,0x14,0x19,0x3,0x0,0x1c,0x11,0x9,0x15,0x14,0x50,0x4,0x1f,0x50,0x1f,0x4,0x18,0x15,0x2,0x3]

private func districtManager(send num: UInt8) -> UInt8 {
    return num ^ 112
}

/*: "its content must comply with current laws and regulations and platform requirements." :*/
fileprivate let kStr_aboveData:[UInt8] = [0x22,0x3f,0x38,0x6b,0x28,0x24,0x25,0x3f,0x2e,0x25,0x3f,0x6b,0x26,0x3e,0x38,0x3f,0x6b,0x28,0x24,0x26,0x3b,0x27,0x32,0x6b,0x3c,0x22,0x3f,0x23,0x6b,0x28,0x3e,0x39,0x39,0x2e,0x25,0x3f,0x6b,0x27,0x2a,0x3c,0x38,0x6b,0x2a,0x25,0x2f,0x6b,0x39,0x2e,0x2c,0x3e,0x27,0x2a,0x3f,0x22,0x24,0x25,0x38,0x6b,0x2a,0x25,0x2f,0x6b,0x3b,0x27,0x2a,0x3f,0x2d,0x24,0x39,0x26,0x6b,0x39,0x2e,0x3a,0x3e,0x22,0x39,0x2e,0x26,0x2e,0x25,0x3f,0x38,0x65]

/*: "icon_live_face" :*/
fileprivate let kStr_cityValue:String = "snap"
fileprivate let kStr_editTitle:[Character] = ["o","n","_","l","i","v","e","_","f","a","c","e"]

/*: "Please make sure" :*/
fileprivate let kStr_bottomBackData:String = "Pleasinteraction selected"
fileprivate let kStr_toData:String = "video camera bottom errorke sure"

/*: "your face is always in the video frame." :*/
fileprivate let kStr_itemValue:[UInt8] = [0x5b,0x4d,0x57,0x50,0x2,0x44,0x43,0x41,0x47,0x2,0x4b,0x51,0x2,0x43,0x4e,0x55,0x43,0x5b,0x51,0x2,0x4b,0x4c,0x2,0x56,0x4a,0x47,0x2,0x54,0x4b,0x46,0x47,0x4d,0x2,0x44,0x50,0x43,0x4f,0x47,0xc]

/*: "Turn on" :*/
fileprivate let kStr_fromValue:String = "Turn oadd link make"
fileprivate let kStr_addContent:String = "view"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  EnumerateViewController.swift
//  AbroadTalking
//
//  Created by young on 2023/6/15.
//

//: import UIKit
import UIKit

//: class TalkingLiveExplainViewController: TalkingBaseViewController {
class EnumerateViewController: LayerRecognizerDelegate {
    //: override func viewDidLoad() {
    override func viewDidLoad() {
        //: super.viewDidLoad()
        super.viewDidLoad()
        //: hideNavi = true
        hideNavi = true

        //: setupSubviews()
        selectOpen()
        //: setupSubViewsConstraint()
        cellTable()
    }

    // MARK: - Lazy Load

    //: private lazy var backButton: UIButton = {
    private lazy var backButton: UIButton = {
        //: let btn = UIButton(type: .custom)
        let btn = UIButton(type: .custom)
        //: let img = UIImage.bundleBy(name: "nav_back_black_nor").withRenderingMode(.alwaysTemplate)
        let img = UIImage.bundleBy(name: (String(kStr_textValue.prefix(5)) + "ack_b" + kStr_maxName.lowercased() + "_nor")).withRenderingMode(.alwaysTemplate)
        //: btn.setImage(img, for: .normal)
        btn.setImage(img, for: .normal)
        //: btn.tintColor = .black
        btn.tintColor = .black
        //: btn.addTarget(self, action: #selector(clickBackButtonAction), for: .touchUpInside)
        btn.addTarget(self, action: #selector(hypocorism), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var liveImgView: UIImageView = {
    private lazy var liveImgView: UIImageView = {
        //: let v = UIImageView(image: UIImage.bundleBy(name: "live_explain"))
        let v = UIImageView(image: UIImage.bundleBy(name: (String(kStr_postDownValue))))
        //: v.contentMode = .scaleAspectFill
        v.contentMode = .scaleAspectFill
        //: return v
        return v
        //: }()
    }()

    //: private lazy var liveLab: UILabel = {
    private lazy var liveLab: UILabel = {
        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.text = "Live".localized
        lab.text = (String(kStr_clearName.suffix(4))).localized
        //: lab.textColor = .fromBuild()
        lab.textColor = .fromBuild()
        //: lab.font = UIFont.pingfangFont(type: .Semibold, fontSize: 18)
        lab.font = UIFont.groupSize(type: .Semibold, fontSize: 18)
        //: return lab
        return lab
        //: }()
    }()

    //: private lazy var contentView: UIView = {
    private lazy var contentView: UIView = {
        //: let v = UIView()
        let v = UIView()
        //: v.backgroundColor = UIColor(hex: "#FAF6FF")
        v.backgroundColor = UIColor(hex: (String(kStr_reasonText) + String(kStr_styleName)))
        //: v.layer.cornerRadius = 8
        v.layer.cornerRadius = 8
        //: v.layer.masksToBounds = true
        v.layer.masksToBounds = true
        //: return v
        return v
        //: }()
    }()

    //: private lazy var imgView1: UIImageView = {
    private lazy var imgView1: UIImageView = {
        //: let v = UIImageView()
        let v = UIImageView()
        //: v.image = UIImage.bundleBy(name: "icon_live_certification")
        v.image = UIImage.bundleBy(name: (kStr_buildValue.replacingOccurrences(of: "range", with: "n") + "_liv" + String(kStr_modelLogName.prefix(4)) + "rtific" + kStr_viewValue.replacingOccurrences(of: "play", with: "o") + String(kStr_meValue)))
        //: return v
        return v
        //: }()
    }()

    //: private lazy var titleLab1: UILabel = {
    private lazy var titleLab1: UILabel = {
        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.text = "Turn on live certification".localized
        lab.text = (String(kStr_valueData.suffix(5)) + "on liv" + String(kStr_placeValue.suffix(4)) + "rtific" + kStr_kitData.replacingOccurrences(of: "gift", with: "n")).localized
        //: lab.textColor = .appTitleColor()
        lab.textColor = .dataFormat()
        //: lab.font = UIFont.dorsum(fontSize: 16)
        lab.font = UIFont.dorsum(fontSize: 16)
        //: lab.numberOfLines = 0
        lab.numberOfLines = 0
        //: return lab
        return lab
        //: }()
    }()

    //: private lazy var desLab1: UILabel = {
    private lazy var desLab1: UILabel = {
        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.text = "will increase the chances of receiving calls to earn more points.".localized
        lab.text = String(bytes: kStr_managerData.map{$0^20}, encoding: .utf8)!.localized
        //: lab.textColor = .appValueColor()
        lab.textColor = .priority()
        //: lab.font = UIFont.messageDown(fontSize: 14)
        lab.font = UIFont.messageDown(fontSize: 14)
        //: lab.numberOfLines = 0
        lab.numberOfLines = 0
        //: return lab
        return lab
        //: }()
    }()

    //: private lazy var imgView2: UIImageView = {
    private lazy var imgView2: UIImageView = {
        //: let v = UIImageView()
        let v = UIImageView()
        //: v.image = UIImage.bundleBy(name: "icon_live_publicly")
        v.image = UIImage.bundleBy(name: (String(kStr_equalValue.suffix(6)) + String(kStr_textTableStartValue) + String(kStr_nameText)))
        //: return v
        return v
        //: }()
    }()

    //: private lazy var titleLab2: UILabel = {
    private lazy var titleLab2: UILabel = {
        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.text = "Your live will be publicly displayed to others".localized
        lab.text = String(bytes: kStr_makeTitle.map{districtManager(send: $0)}, encoding: .utf8)!.localized
        //: lab.textColor = .appTitleColor()
        lab.textColor = .dataFormat()
        //: lab.font = UIFont.dorsum(fontSize: 16)
        lab.font = UIFont.dorsum(fontSize: 16)
        //: lab.numberOfLines = 0
        lab.numberOfLines = 0
        //: return lab
        return lab
        //: }()
    }()

    //: private lazy var desLab2: UILabel = {
    private lazy var desLab2: UILabel = {
        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.text = "its content must comply with current laws and regulations and platform requirements.".localized
        lab.text = String(bytes: kStr_aboveData.map{$0^75}, encoding: .utf8)!.localized
        //: lab.textColor = .appValueColor()
        lab.textColor = .priority()
        //: lab.font = UIFont.messageDown(fontSize: 14)
        lab.font = UIFont.messageDown(fontSize: 14)
        //: lab.numberOfLines = 0
        lab.numberOfLines = 0
        //: return lab
        return lab
        //: }()
    }()

    //: private lazy var imgView3: UIImageView = {
    private lazy var imgView3: UIImageView = {
        //: let v = UIImageView()
        let v = UIImageView()
        //: v.image = UIImage.bundleBy(name: "icon_live_face")
        v.image = UIImage.bundleBy(name: (kStr_cityValue.replacingOccurrences(of: "snap", with: "ic") + String(kStr_editTitle)))
        //: return v
        return v
        //: }()
    }()

    //: private lazy var titleLab3: UILabel = {
    private lazy var titleLab3: UILabel = {
        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.text = "Please make sure".localized
        lab.text = (String(kStr_bottomBackData.prefix(5)) + "e ma" + String(kStr_toData.suffix(7))).localized
        //: lab.textColor = .appTitleColor()
        lab.textColor = .dataFormat()
        //: lab.font = UIFont.dorsum(fontSize: 16)
        lab.font = UIFont.dorsum(fontSize: 16)
        //: lab.numberOfLines = 0
        lab.numberOfLines = 0
        //: return lab
        return lab
        //: }()
    }()

    //: private lazy var desLab3: UILabel = {
    private lazy var desLab3: UILabel = {
        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.text = "your face is always in the video frame.".localized
        lab.text = String(bytes: kStr_itemValue.map{$0^34}, encoding: .utf8)!.localized
        //: lab.textColor = .appValueColor()
        lab.textColor = .priority()
        //: lab.font = UIFont.messageDown(fontSize: 14)
        lab.font = UIFont.messageDown(fontSize: 14)
        //: lab.numberOfLines = 0
        lab.numberOfLines = 0
        //: return lab
        return lab
        //: }()
    }()

    //: private lazy var turnOnBtn: UIButton = {
    private lazy var turnOnBtn: UIButton = {
        //: let btn = UIButton()
        let btn = UIButton()
        //: btn.titleLabel?.font = UIFont.dorsum(fontSize: 17)
        btn.titleLabel?.font = UIFont.dorsum(fontSize: 17)
        //: btn.setTitleColor(.white, for: .normal)
        btn.setTitleColor(.white, for: .normal)
        //: btn.setTitle("Turn on".localized, for: .normal)
        btn.setTitle((String(kStr_fromValue.prefix(6)) + kStr_addContent.replacingOccurrences(of: "view", with: "n")).localized, for: .normal)
        //: btn.setBackgroundImage(UIImage.imageGradientColor(colors: UIColor.appGradientColor(), size: CGSize(width: 240, height: 50)), for: .normal)
        btn.setBackgroundImage(UIImage.upTo(colors: UIColor.thirdColor(), size: CGSize(width: 240, height: 50)), for: .normal)
        //: btn.layer.cornerRadius = 25
        btn.layer.cornerRadius = 25
        //: btn.layer.masksToBounds = true
        btn.layer.masksToBounds = true
        //: btn.addTarget(self, action: #selector(turnOnButtonClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(pursuing), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()
}

// MARK: - Event

//: extension TalkingLiveExplainViewController {
extension EnumerateViewController {
    /// 返回按钮点击事件
    //: @objc private func clickBackButtonAction() {
    @objc private func hypocorism() {
        //: self.dismiss(animated: true)
        self.dismiss(animated: true)
    }

    /// turn on 按钮点击事件
    //: @objc private func turnOnButtonClick() {
    @objc private func pursuing() {
        //: self.dismiss(animated: true) {
        self.dismiss(animated: true) {
            //: TalkingLiveManager.shared().checkLiveAuthAndTurnOn()
            VideoPushListener.isGesture().nurseLogHandler()
        }
    }
}

// MARK: - Layout

//: extension TalkingLiveExplainViewController {
extension EnumerateViewController {
    /// 添加视图
    //: private func setupSubviews() {
    private func selectOpen() {
        //: view.backgroundColor = .white
        view.backgroundColor = .white
        //: view.addSubview(backButton)
        view.addSubview(backButton)
        //: view.addSubview(liveImgView)
        view.addSubview(liveImgView)
        //: view.addSubview(liveLab)
        view.addSubview(liveLab)
        //: view.addSubview(contentView)
        view.addSubview(contentView)
        //: contentView.addSubview(imgView1)
        contentView.addSubview(imgView1)
        //: contentView.addSubview(titleLab1)
        contentView.addSubview(titleLab1)
        //: contentView.addSubview(desLab1)
        contentView.addSubview(desLab1)
        //: contentView.addSubview(imgView2)
        contentView.addSubview(imgView2)
        //: contentView.addSubview(titleLab2)
        contentView.addSubview(titleLab2)
        //: contentView.addSubview(desLab2)
        contentView.addSubview(desLab2)
        //: contentView.addSubview(imgView3)
        contentView.addSubview(imgView3)
        //: contentView.addSubview(titleLab3)
        contentView.addSubview(titleLab3)
        //: contentView.addSubview(desLab3)
        contentView.addSubview(desLab3)
        //: view.addSubview(turnOnBtn)
        view.addSubview(turnOnBtn)
    }

    /// 添加约束
    //: private func setupSubViewsConstraint() {
    private func cellTable() {
        //: backButton.snp.makeConstraints { make in
        backButton.snp.makeConstraints { make in
            //: make.leading.equalTo(0)
            make.leading.equalTo(0)
            //: make.width.equalTo(40)
            make.width.equalTo(40)
            //: make.height.equalTo(NavigationBarHeight)
            make.height.equalTo(kLet_senseFormatValue)
            //: make.top.equalTo(StatusBarHeight)
            make.top.equalTo(kLet_postPartyValue)
        }

        //: liveImgView.snp.makeConstraints { make in
        liveImgView.snp.makeConstraints { make in
            //: make.top.equalTo(StatusBarHeight+actualWidth(w: 80))
            make.top.equalTo(kLet_postPartyValue + originalScene(w: 80))
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.width.height.equalTo(100)
            make.width.height.equalTo(100)
        }
        //: liveLab.snp.makeConstraints { make in
        liveLab.snp.makeConstraints { make in
            //: make.top.equalTo(liveImgView.snp.bottom)
            make.top.equalTo(liveImgView.snp.bottom)
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
        }

        //: contentView.snp.makeConstraints { make in
        contentView.snp.makeConstraints { make in
            //: make.top.equalTo(liveLab.snp.bottom).offset(20)
            make.top.equalTo(liveLab.snp.bottom).offset(20)
            //: make.leading.equalTo(30)
            make.leading.equalTo(30)
            //: make.trailing.equalTo(-30)
            make.trailing.equalTo(-30)
        }
        //: imgView1.snp.makeConstraints { make in
        imgView1.snp.makeConstraints { make in
            //: make.top.leading.equalTo(20)
            make.top.leading.equalTo(20)
            //: make.width.height.equalTo(30)
            make.width.height.equalTo(30)
        }
        //: titleLab1.snp.makeConstraints { make in
        titleLab1.snp.makeConstraints { make in
            //: make.top.equalTo(imgView1).offset(3)
            make.top.equalTo(imgView1).offset(3)
            //: make.leading.equalTo(imgView1.snp.trailing).offset(10)
            make.leading.equalTo(imgView1.snp.trailing).offset(10)
            //: make.trailing.equalTo(-20)
            make.trailing.equalTo(-20)
        }
        //: desLab1.snp.makeConstraints { make in
        desLab1.snp.makeConstraints { make in
            //: make.top.equalTo(titleLab1.snp.bottom).offset(4)
            make.top.equalTo(titleLab1.snp.bottom).offset(4)
            //: make.leading.trailing.equalTo(titleLab1)
            make.leading.trailing.equalTo(titleLab1)
        }
        //: imgView2.snp.makeConstraints { make in
        imgView2.snp.makeConstraints { make in
            //: make.top.equalTo(desLab1.snp.bottom).offset(24)
            make.top.equalTo(desLab1.snp.bottom).offset(24)
            //: make.leading.equalTo(imgView1)
            make.leading.equalTo(imgView1)
            //: make.width.height.equalTo(30)
            make.width.height.equalTo(30)
        }
        //: titleLab2.snp.makeConstraints { make in
        titleLab2.snp.makeConstraints { make in
            //: make.top.equalTo(imgView2).offset(3)
            make.top.equalTo(imgView2).offset(3)
            //: make.leading.equalTo(imgView2.snp.trailing).offset(10)
            make.leading.equalTo(imgView2.snp.trailing).offset(10)
            //: make.trailing.equalTo(-20)
            make.trailing.equalTo(-20)
        }
        //: desLab2.snp.makeConstraints { make in
        desLab2.snp.makeConstraints { make in
            //: make.top.equalTo(titleLab2.snp.bottom).offset(4)
            make.top.equalTo(titleLab2.snp.bottom).offset(4)
            //: make.leading.trailing.equalTo(titleLab2)
            make.leading.trailing.equalTo(titleLab2)
        }
        //: imgView3.snp.makeConstraints { make in
        imgView3.snp.makeConstraints { make in
            //: make.top.equalTo(desLab2.snp.bottom).offset(24)
            make.top.equalTo(desLab2.snp.bottom).offset(24)
            //: make.leading.equalTo(imgView1)
            make.leading.equalTo(imgView1)
            //: make.width.height.equalTo(30)
            make.width.height.equalTo(30)
        }
        //: titleLab3.snp.makeConstraints { make in
        titleLab3.snp.makeConstraints { make in
            //: make.top.equalTo(imgView3).offset(3)
            make.top.equalTo(imgView3).offset(3)
            //: make.leading.equalTo(imgView3.snp.trailing).offset(10)
            make.leading.equalTo(imgView3.snp.trailing).offset(10)
            //: make.trailing.equalTo(-20)
            make.trailing.equalTo(-20)
        }
        //: desLab3.snp.makeConstraints { make in
        desLab3.snp.makeConstraints { make in
            //: make.top.equalTo(titleLab3.snp.bottom).offset(4)
            make.top.equalTo(titleLab3.snp.bottom).offset(4)
            //: make.leading.trailing.equalTo(titleLab3)
            make.leading.trailing.equalTo(titleLab3)
            //: make.bottom.equalToSuperview().offset(-20)
            make.bottom.equalToSuperview().offset(-20)
        }

        //: turnOnBtn.snp.makeConstraints { make in
        turnOnBtn.snp.makeConstraints { make in
            //: make.top.equalTo(contentView.snp.bottom).offset(43)
            make.top.equalTo(contentView.snp.bottom).offset(43)
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.size.equalTo(CGSize(width: 240, height: 50))
            make.size.equalTo(CGSize(width: 240, height: 50))
            //: make.bottom.lessThanOrEqualTo(view).offset(0)
            make.bottom.lessThanOrEqualTo(view).offset(0)
        }
    }
}
