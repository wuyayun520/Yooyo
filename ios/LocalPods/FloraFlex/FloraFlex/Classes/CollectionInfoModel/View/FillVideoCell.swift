
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let kStr_borderTitle:[UInt8] = [0x8e,0x89,0x8e,0x93,0xcf,0x84,0x88,0x83,0x82,0x95,0xdd,0xce,0xc7,0x8f,0x86,0x94,0xc7,0x89,0x88,0x93,0xc7,0x85,0x82,0x82,0x89,0xc7,0x8e,0x8a,0x97,0x8b,0x82,0x8a,0x82,0x89,0x93,0x82,0x83]

private func imageHead(value num: UInt8) -> UInt8 {
    return num ^ 231
}

/*: "icon_me_video" :*/
fileprivate let kStr_managerValue:[Character] = ["i","c","o","n","_","m","e","_","v","i","d"]
fileprivate let kStr_errorName:[Character] = ["e","o"]

/*: "Receive video calls" :*/
fileprivate let kStr_normalData:String = "info at backgroundReceiv"
fileprivate let kStr_toAreaValue:String = "standardeo"
fileprivate let kStr_playValue:String = " callschange re card"

/*: "icon_me_voice" :*/
fileprivate let kStr_selectedTitle:String = "err makeicon_m"

/*: "Receive voice calls" :*/
fileprivate let kStr_managerName:String = "Recearray return"
fileprivate let kStr_customContent:String = "make image model let colore calls"

/*: "icon_me_randomvideo" :*/
fileprivate let kStr_trackName:String = "type manager model for screenicon_m"
fileprivate let kStr_fastData:String = "color at fore_ra"
fileprivate let kStr_topName:String = "VIDEO"

/*: "Random Video" :*/
fileprivate let kStr_labLogContent:String = "Random Vitem let shared make"
fileprivate let kStr_bottomValue:[Character] = ["i","d","e","o"]

/*: "-1" :*/
fileprivate let kStr_mainText:[Character] = ["-","1"]

/*: "value" :*/
fileprivate let kStr_targetContent:[Character] = ["v","a","l","u","e"]

/*: "type" :*/
fileprivate let kStr_makePathAppValue:String = "typhide"

/*: "videoAuth" :*/
fileprivate let kStr_sharedValue:String = "applicationde"

/*: "voiceAuth" :*/
fileprivate let kStr_layerName:[Character] = ["v","o","i","c","e","A"]
fileprivate let kStr_fileValue:String = "UTH"

/*: "randomVideo" :*/
fileprivate let kStr_toContent:String = "randomVchange height"
fileprivate let kStr_inputData:[Character] = ["i","d","e","o"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  FillVideoCell.swift
//  AbroadTalking
//
//  Created by DouXiu on 2024/5/24.
//

//: import UIKit
import UIKit

//: enum SettingReceiveVideoType {
enum ItemVideoType {
    //: case video
    case video
    //: case voice
    case voice
    //: case randomVideo
    case randomVideo
}

//: class TalkingSettingReceiveVideoCell: UITableViewCell {
class FillVideoCell: UITableViewCell {
    //: private var currType: SettingReceiveVideoType = .video
    private var currType: ItemVideoType = .video
    //: override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        //: super.init(style: style, reuseIdentifier: reuseIdentifier)
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        //: selectionStyle = UITableViewCell.SelectionStyle.none
        selectionStyle = UITableViewCell.SelectionStyle.none
        //: self.backgroundColor = UIColor.clear
        self.backgroundColor = UIColor.clear
        //: self.contentView.backgroundColor = UIColor.clear
        self.contentView.backgroundColor = UIColor.clear
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: kStr_borderTitle.map{imageHead(value: $0)}, encoding: .utf8)!)
    }

    //: override func layoutSubviews() {
    override func layoutSubviews() {
        //: super.layoutSubviews()
        super.layoutSubviews()
        //: backView.snp.makeConstraints { make in
        backView.snp.makeConstraints { make in
            //: make.leading.equalTo(15)
            make.leading.equalTo(15)
            //: make.trailing.equalTo(-15)
            make.trailing.equalTo(-15)
            //: make.height.equalTo(50)
            make.height.equalTo(50)
            //: make.centerY.equalToSuperview()
            make.centerY.equalToSuperview()
        }

        //: icon.snp.makeConstraints { make in
        icon.snp.makeConstraints { make in
            //: make.leading.equalTo(12)
            make.leading.equalTo(12)
            //: make.centerY.equalToSuperview()
            make.centerY.equalToSuperview()
        }

        //: titleBLB.snp.makeConstraints { make in
        titleBLB.snp.makeConstraints { make in
            //: make.leading.equalTo(icon.snp.trailing).offset(7)
            make.leading.equalTo(icon.snp.trailing).offset(7)
            //: make.centerY.equalTo(icon)
            make.centerY.equalTo(icon)
        }

        //: switchView.snp.makeConstraints { make in
        switchView.snp.makeConstraints { make in
            //: make.centerY.equalToSuperview()
            make.centerY.equalToSuperview()
            //: make.trailing.equalTo(-15)
            make.trailing.equalTo(-15)
            //: make.width.equalTo(51)
            make.width.equalTo(51)
            //: make.height.equalTo(28)
            make.height.equalTo(28)
        }
    }

    // MARK: - Lazy load

    //: private lazy var backView: UIView = {
    private lazy var backView: UIView = {
        //: let view = UIView.init()
        let view = UIView()
        //: view.backgroundColor = UIColor.white
        view.backgroundColor = UIColor.white
        //: view.layer.cornerRadius = 8
        view.layer.cornerRadius = 8
        //: view.layer.masksToBounds = true
        view.layer.masksToBounds = true
        //: contentView.addSubview(view)
        contentView.addSubview(view)
        //: return view
        return view
        //: }()
    }()

    //: private lazy var icon: UIImageView = {
    private lazy var icon: UIImageView = {
        //: let img = UIImageView()
        let img = UIImageView()
        //: img.contentMode = .scaleAspectFill
        img.contentMode = .scaleAspectFill
        //: backView.addSubview(img)
        backView.addSubview(img)
        //: return img
        return img
        //: }()
    }()

    //: private lazy var titleBLB: UILabel = {
    private lazy var titleBLB: UILabel = {
        //: let lb = UILabel.init()
        let lb = UILabel()
        //: lb.font = UIFont.pingfangFont(type: .Medium, fontSize: 16)
        lb.font = UIFont.groupSize(type: .Medium, fontSize: 16)
        //: lb.textColor = UIColor.appTitleColor()
        lb.textColor = UIColor.dataFormat()
        //: backView.addSubview(lb)
        backView.addSubview(lb)
        //: return lb
        return lb
        //: }()
    }()

    //: private lazy var switchView: UISwitch = {
    private lazy var switchView: UISwitch = {
        //: let swit = UISwitch.init()
        let swit = UISwitch()
        //: swit.isOn = false
        swit.isOn = false
        //: swit.onTintColor = UIColor.fromBuild()
        swit.onTintColor = UIColor.fromBuild()
        //: swit.thumbTintColor = .white
        swit.thumbTintColor = .white
        //: swit.addTarget(self, action: #selector(switchDidChange), for: .valueChanged)
        swit.addTarget(self, action: #selector(errorTo), for: .valueChanged)
        //: backView.addSubview(swit)
        backView.addSubview(swit)
        //: return swit
        return swit
        //: }()
    }()
}

// MARK: - Event

//: extension TalkingSettingReceiveVideoCell {
extension FillVideoCell {
    /// 刷新cell
    //: func refreshCell(type: SettingReceiveVideoType) {
    func vanguard(type: ItemVideoType) {
        //: self.currType = type
        self.currType = type
        //: switch type {
        switch type {
        //: case .video:
        case .video:
            //: icon.image = UIImage.bundleBy(name: "icon_me_video")
            icon.image = UIImage.bundleBy(name: (String(kStr_managerValue) + String(kStr_errorName)))
            //: titleBLB.text = "Receive video calls".localized
            titleBLB.text = (String(kStr_normalData.suffix(6)) + "e vi" + kStr_toAreaValue.replacingOccurrences(of: "standard", with: "d") + String(kStr_playValue.prefix(6))).localized
            //: switchView.isOn = (LocationThen.share.loginUserMode.videoAuth == "1")
            switchView.isOn = (LocationThen.share.loginUserMode.videoAuth == "1")

        //: case .voice:
        case .voice:
            //: icon.image = UIImage.bundleBy(name: "icon_me_voice")
            icon.image = UIImage.bundleBy(name: (String(kStr_selectedTitle.suffix(6)) + "e_voice"))
            //: titleBLB.text = "Receive voice calls".localized
            titleBLB.text = (String(kStr_managerName.prefix(4)) + "ive voic" + String(kStr_customContent.suffix(7))).localized
            //: switchView.isOn = (LocationThen.share.loginUserMode.voiceAuth == "1")
            switchView.isOn = (LocationThen.share.loginUserMode.voiceAuth == "1")

        //: case .randomVideo:
        case .randomVideo:
            //: icon.image = UIImage.bundleBy(name: "icon_me_randomvideo")
            icon.image = UIImage.bundleBy(name: (String(kStr_trackName.suffix(6)) + String(kStr_fastData.suffix(4)) + "ndom" + kStr_topName.lowercased()))
            //: titleBLB.text = "Random Video".localized
            titleBLB.text = (String(kStr_labLogContent.prefix(8)) + String(kStr_bottomValue)).localized
            //: switchView.isOn = (LocationThen.share.appUserConfigMode.randomVideo == "1")
            switchView.isOn = (LocationThen.share.appUserConfigMode.randomVideo == "1")
        }
    }

    /// 按钮开关
    //: @objc func switchDidChange() {
    @objc func errorTo() {
        //: self.switchView.isEnabled = false
        self.switchView.isEnabled = false
        //: var params = [String: Any]()
        var params = [String: Any]()
        //: let value = self.switchView.isOn ? "1":"-1"
        let value = self.switchView.isOn ? "1" : "-1"
        //: params["value"] = value
        params[(String(kStr_targetContent))] = value
        //: switch currType {
        switch currType {
        //: case .video:
        case .video:
            //: params["type"] = "videoAuth"
            params[(kStr_makePathAppValue.replacingOccurrences(of: "hide", with: "e"))] = (kStr_sharedValue.replacingOccurrences(of: "application", with: "vi") + "oAuth")
        //: case .voice:
        case .voice:
            //: params["type"] = "voiceAuth"
            params[(kStr_makePathAppValue.replacingOccurrences(of: "hide", with: "e"))] = (String(kStr_layerName) + kStr_fileValue.lowercased())
        //: case .randomVideo:
        case .randomVideo:
            //: params["type"] = "randomVideo"
            params[(kStr_makePathAppValue.replacingOccurrences(of: "hide", with: "e"))] = (String(kStr_toContent.prefix(7)) + String(kStr_inputData))
        }
        //: ProgressHUD.show()
        TintProgressHUD.weight()
        //: TalkingMeRequestTool.req_SettingChange(params: params) { succeed, result, errorModel in
        LoadEqualRequestTool.permissionAfter(params: params) { succeed, _, _ in
            //: ProgressHUD.dismiss()
            TintProgressHUD.inkingPadDismiss()
            //: self.switchView.isEnabled = true
            self.switchView.isEnabled = true
            //: guard succeed else {
            guard succeed else {
                //: self.switchView.isOn = !self.switchView.isOn
                self.switchView.isOn = !self.switchView.isOn
                //: return
                return
            }
            //: switch self.currType {
            switch self.currType {
            //: case .video:
            case .video:
                //: LocationThen.share.loginUserMode.videoAuth = value
                LocationThen.share.loginUserMode.videoAuth = value
            //: case .voice:
            case .voice:
                //: LocationThen.share.loginUserMode.voiceAuth = value
                LocationThen.share.loginUserMode.voiceAuth = value
            //: case .randomVideo:
            case .randomVideo:
                //: LocationThen.share.appUserConfigMode.randomVideo = value
                LocationThen.share.appUserConfigMode.randomVideo = value
            }
            // 上报女性用户busy状态
            //: (TalkingApplication.shared as! TalkingApplication).femaleBusyStatusReport()
            (LayerKingfisherCompatible.shared as! LayerKingfisherCompatible).deadlineReport()
        }
    }
}
