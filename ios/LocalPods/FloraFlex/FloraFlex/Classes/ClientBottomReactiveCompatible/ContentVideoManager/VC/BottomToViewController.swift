
//: Declare String Begin

/*: "#33005B" :*/
fileprivate let kStr_sweepData:String = "#33005Bfor view not"

/*: "get json error" :*/
fileprivate let kStr_toName:String = "for add letget j"
fileprivate let kStr_name:String = "son errorfor display"

/*: "btn_live_mini_nor" :*/
fileprivate let kStr_afterTitle:String = "btn_text task"
fileprivate let kStr_backgroundData:[Character] = ["i","n","i","_","n","o","r"]

/*: "icon_views_number" :*/
fileprivate let kStr_makeData:String = "skip raw overicon_"
fileprivate let kStr_colorValue:[Character] = ["s","_","n","u","m","b","e","r"]

/*: "Random Video" :*/
fileprivate let kStr_textEqualValue:[Character] = ["R","a","n","d","o","m"," ","V","i","d","e","o"]

/*: "Accept Video Match Call" :*/
fileprivate let kStr_iconImageData:String = "gift voice load view colorAccep"
fileprivate let kStr_beatData:[Character] = ["a","t","c","h"," ","C","a","l","l"]

/*: "%@ chatting" :*/
fileprivate let kStr_statusText:[Character] = ["%","@"]
fileprivate let kStr_clearName:[Character] = [" ","c","h","a","t","t","i","n","g"]

/*: "chattingNum" :*/
fileprivate let kStr_indexValue:String = "chadomaini"
fileprivate let kStr_writeValue:[Character] = ["n","g","N","u","m"]

/*: "type" :*/
fileprivate let kStr_showValue:[UInt8] = [0x67,0x6a,0x63,0x76]

private func leadingData(size num: UInt8) -> UInt8 {
    return num ^ 19
}

/*: "randomVideo" :*/
fileprivate let kStr_parentTitle:[Character] = ["r","a","n","d","o","m","V","i","d","e","o"]

/*: "-1" :*/
fileprivate let kStr_groupName:String = "-1"

/*: "value" :*/
fileprivate let kStr_infoData:[Character] = ["v","a","l","u","e"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  BottomToViewController.swift
//  FloraFlex
//
//  Created by DouXiu on 2024/8/16.
//

//: import UIKit
import UIKit

//: class TalkingFemaleStaticRandomVideoVC: TalkingBaseViewController {
class BottomToViewController: LayerRecognizerDelegate {
    //: override func viewDidLoad() {
    override func viewDidLoad() {
        //: super.viewDidLoad()
        super.viewDidLoad()
        //: hideNavi = true
        hideNavi = true
        //: setupSubviews()
        tapAppear()
        //: setupSubViewsConstraint()
        clew()
        //: req_videoMatchCheck()
        photoSelect()
    }

    // MARK: - Lazy Load

    //: private lazy var renderView: UIView = {
    private lazy var renderView: UIView = {
        //: let v = UIView()
        let v = UIView()
        //: v.backgroundColor = UIColor(hex: "#33005B")
        v.backgroundColor = UIColor(hex: (String(kStr_sweepData.prefix(7))))
        //: return v
        return v
        //: }()
    }()

    //: private lazy var svgaPlayer: SVGAPlayer = {
    private lazy var svgaPlayer: SVGAPlayer = {
        //: let player = SVGAPlayer()
        let player = SVGAPlayer()
        //: player.loops = 0
        player.loops = 0
        //: player.isUserInteractionEnabled = false
        player.isUserInteractionEnabled = false
        //: player.contentMode = .scaleAspectFill
        player.contentMode = .scaleAspectFill
        //: let url = SVGAEffectTool.default.getZipEffectPath(type: .Female_Randomvideo_Bg)
        let url = LoadGrappleEffectTool.default.sunnahType(type: .Female_Randomvideo_Bg)
        //: do {
        do {
            //: let data = try Data(contentsOf: url)
            let data = try Data(contentsOf: url)
            //: let parser = SVGAParser()
            let parser = SVGAParser()
            //: parser.parse(with: data, cacheKey: "") { [weak self] videoItem in
            parser.parse(with: data, cacheKey: "") { [weak self] videoItem in
                //: guard let self = self else { return }
                guard let self = self else { return }
                //: player.videoItem = videoItem
                player.videoItem = videoItem
                // 刷新放在此处目的：是为了进入页面时，保证加载完svga资源再刷新
                //: self.refreshUI()
                self.addForUi()
            }
            //: } catch {
        } catch {
            //: printLog(message: "get json error")
            pathLine(message: (String(kStr_toName.suffix(5)) + String(kStr_name.prefix(9))))
        }
        //: return player
        return player
        //: }()
    }()

    //: private lazy var closeBtn: UIButton = {
    private lazy var closeBtn: UIButton = {
        //: let btn = UIButton()
        let btn = UIButton()
        //: btn.setImage(UIImage.bundleBy(name: "btn_live_mini_nor"), for: .normal)
        btn.setImage(UIImage.bundleBy(name: (String(kStr_afterTitle.prefix(4)) + "live_m" + String(kStr_backgroundData))), for: .normal)
        //: btn.addTarget(self, action: #selector(closeButtonClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(upEnter), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var chattingNumBtn: TalkingButton = {
    private lazy var chattingNumBtn: OverdoTalkingButton = {
        //: let btn = TalkingButton()
        let btn = OverdoTalkingButton()
        //: btn.setImage(UIImage.bundleBy(name: "icon_views_number"), for: .normal)
        btn.setImage(UIImage.bundleBy(name: (String(kStr_makeData.suffix(5)) + "view" + String(kStr_colorValue))), for: .normal)
        //: btn.setImage(UIImage.bundleBy(name: "icon_views_number"), for: .disabled)
        btn.setImage(UIImage.bundleBy(name: (String(kStr_makeData.suffix(5)) + "view" + String(kStr_colorValue))), for: .disabled)
        //: btn.spaceBetweenTitleAndImage = 5
        btn.spaceBetweenTitleAndImage = 5
        //: btn.isEnabled = false
        btn.isEnabled = false
        //: btn.setTitleColor(UIColor.white, for: .normal)
        btn.setTitleColor(UIColor.white, for: .normal)
        //: btn.titleLabel?.font = UIFont.pingfangFont(type: .Regular, fontSize: 15)
        btn.titleLabel?.font = UIFont.groupSize(type: .Regular, fontSize: 15)
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var bottomView: UIView = {
    private lazy var bottomView: UIView = {
        //: let v = UIView()
        let v = UIView()
        //: v.backgroundColor = .white.withAlphaComponent(0.15)
        v.backgroundColor = .white.withAlphaComponent(0.15)
        //: v.layer.cornerRadius = 8
        v.layer.cornerRadius = 8
        //: v.layer.masksToBounds = true
        v.layer.masksToBounds = true
        //: let lab1 = UILabel()
        let lab1 = UILabel()
        //: lab1.text = "Random Video".localized
        lab1.text = (String(kStr_textEqualValue)).localized
        //: lab1.textColor = .white
        lab1.textColor = .white
        //: lab1.font = UIFont.dorsum(fontSize: 20)
        lab1.font = UIFont.dorsum(fontSize: 20)
        //: v.addSubview(lab1)
        v.addSubview(lab1)
        //: lab1.snp.makeConstraints { make in
        lab1.snp.makeConstraints { make in
            //: make.top.equalTo(17)
            make.top.equalTo(17)
            //: make.leading.equalTo(15)
            make.leading.equalTo(15)
        }
        //: let lab2 = UILabel()
        let lab2 = UILabel()
        //: lab2.text = "Accept Video Match Call".localized
        lab2.text = (String(kStr_iconImageData.suffix(5)) + "t Video M" + String(kStr_beatData)).localized
        //: lab2.textColor = .white
        lab2.textColor = .white
        //: lab2.numberOfLines = 0
        lab2.numberOfLines = 0
        //: lab2.font = UIFont.messageDown(fontSize: 15)
        lab2.font = UIFont.messageDown(fontSize: 15)
        //: v.addSubview(lab2)
        v.addSubview(lab2)
        //: lab2.snp.makeConstraints { make in
        lab2.snp.makeConstraints { make in
            //: make.top.equalTo(lab1.snp.bottom).offset(12)
            make.top.equalTo(lab1.snp.bottom).offset(12)
            //: make.leading.equalTo(lab1)
            make.leading.equalTo(lab1)
            //: make.trailing.equalTo(-90)
            make.trailing.equalTo(-90)
            //: make.bottom.equalTo(-17)
            make.bottom.equalTo(-17)
        }
        //: return v
        return v
        //: }()
    }()

    //: private lazy var switchBtn: UISwitch = {
    private lazy var switchBtn: UISwitch = {
        //: let swit = UISwitch()
        let swit = UISwitch()
        //: swit.isOn = false
        swit.isOn = false
        //: swit.onTintColor = UIColor.fromBuild()
        swit.onTintColor = UIColor.fromBuild()
        //: swit.thumbTintColor = .white
        swit.thumbTintColor = .white
        //: swit.addTarget(self, action: #selector(switchDidChange), for: .valueChanged)
        swit.addTarget(self, action: #selector(lesseningChange), for: .valueChanged)
        //: return swit
        return swit
        //: }()
    }()
}

// MARK: - Load Data

//: extension TalkingFemaleStaticRandomVideoVC {
extension BottomToViewController {
    /// 获取匹配人数
    //: private func req_videoMatchCheck() {
    private func photoSelect() {
        //: TalkingQuickVideoManager.req_videoMatchCheck { succeed, result, _ in
        ContentVideoManager.videoToCompletion { succeed, result, _ in
            //: guard succeed else { return }
            guard succeed else { return }
            //: let json = JSON(result ?? [String: Any]())
            let json = JSON(result ?? [String: Any]())
            //: self.chattingNumBtn.setTitle("%@ chatting".localizedArguments(json["chattingNum"].intValue), for: .normal)
            self.chattingNumBtn.setTitle((String(kStr_statusText) + String(kStr_clearName)).imageArguments(json[(kStr_indexValue.replacingOccurrences(of: "domain", with: "tt") + String(kStr_writeValue))].intValue), for: .normal)
        }
    }

    /// 随机视频开关请求
    //: private func req_SettingChange() {
    private func settingWithoutChange() {
        //: var params = ["type": "randomVideo"]
        var params = [String(bytes: kStr_showValue.map{leadingData(size: $0)}, encoding: .utf8)!: (String(kStr_parentTitle))]
        //: let value = switchBtn.isOn ? "1" : "-1"
        let value = switchBtn.isOn ? "1" : "-1"
        //: params["value"] = value
        params[(String(kStr_infoData))] = value
        //: ProgressHUD.show()
        TintProgressHUD.weight()
        //: TalkingMeRequestTool.req_SettingChange(params: params) { succeed, _, _ in
        LoadEqualRequestTool.permissionAfter(params: params) { succeed, _, _ in
            //: ProgressHUD.dismiss()
            TintProgressHUD.inkingPadDismiss()
            //: self.switchBtn.isEnabled = true
            self.switchBtn.isEnabled = true
            //: guard succeed else {
            guard succeed else {
                //: self.switchBtn.isOn = !self.switchBtn.isOn
                self.switchBtn.isOn = !self.switchBtn.isOn
                //: return
                return
            }
            //: LocationThen.share.appUserConfigMode.randomVideo = value
            LocationThen.share.appUserConfigMode.randomVideo = value
            //: self.refreshUI()
            self.addForUi()
        }
    }
}

// MARK: - Event

//: extension TalkingFemaleStaticRandomVideoVC {
extension BottomToViewController {
    /// 关闭页面按钮事件
    //: @objc private func closeButtonClick() {
    @objc private func upEnter() {
        //: getNavigationController()?.popViewController(animated: false)
        showBorder()?.popViewController(animated: false)
    }

    /// 随机视频开关事件
    //: @objc private func switchDidChange() {
    @objc private func lesseningChange() {
        //: switchBtn.isEnabled = false
        switchBtn.isEnabled = false
        //: req_SettingChange()
        settingWithoutChange()
    }
}

// MARK: - Layout

//: extension TalkingFemaleStaticRandomVideoVC {
extension BottomToViewController {
    /// 添加视图
    //: private func setupSubviews() {
    private func tapAppear() {
        //: view.addSubview(renderView)
        view.addSubview(renderView)
        //: view.addSubview(svgaPlayer)
        view.addSubview(svgaPlayer)
        //: view.addSubview(closeBtn)
        view.addSubview(closeBtn)
        //: view.addSubview(chattingNumBtn)
        view.addSubview(chattingNumBtn)
        //: view.addSubview(bottomView)
        view.addSubview(bottomView)
        //: bottomView.addSubview(switchBtn)
        bottomView.addSubview(switchBtn)
    }

    /// 添加约束
    //: private func setupSubViewsConstraint() {
    private func clew() {
        //: renderView.snp.makeConstraints { make in
        renderView.snp.makeConstraints { make in
            //: make.edges.equalToSuperview()
            make.edges.equalToSuperview()
        }
        //: svgaPlayer.snp.makeConstraints { make in
        svgaPlayer.snp.makeConstraints { make in
            //: make.center.equalToSuperview()
            make.center.equalToSuperview()
            //: make.width.height.equalTo(actualWidth(w: 435))
            make.width.height.equalTo(originalScene(w: 435))
        }
        //: closeBtn.snp.makeConstraints { make in
        closeBtn.snp.makeConstraints { make in
            //: make.top.equalTo(StatusBarHeight + 6)
            make.top.equalTo(kLet_postPartyValue + 6)
            //: make.trailing.equalTo(-10)
            make.trailing.equalTo(-10)
            //: make.width.height.equalTo(actualWidth(w: 32))
            make.width.height.equalTo(originalScene(w: 32))
        }
        //: chattingNumBtn.snp.makeConstraints { make in
        chattingNumBtn.snp.makeConstraints { make in
            //: make.top.equalTo(svgaPlayer.snp.bottom).offset(-35)
            make.top.equalTo(svgaPlayer.snp.bottom).offset(-35)
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
        }
        //: bottomView.snp.makeConstraints { make in
        bottomView.snp.makeConstraints { make in
            //: make.top.equalTo(chattingNumBtn.snp.bottom).offset(37)
            make.top.equalTo(chattingNumBtn.snp.bottom).offset(37)
            //: make.leading.equalTo(15)
            make.leading.equalTo(15)
            //: make.trailing.equalTo(-15)
            make.trailing.equalTo(-15)
        }
        //: switchBtn.snp.makeConstraints { make in
        switchBtn.snp.makeConstraints { make in
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

    /// 刷新UI
    //: private func refreshUI() {
    private func addForUi() {
        //: if LocationThen.share.appUserConfigMode.randomVideo == "1" {
        if LocationThen.share.appUserConfigMode.randomVideo == "1" {
            //: svgaPlayer.startAnimation()
            svgaPlayer.startAnimation()
            //: } else {
        } else {
            //: svgaPlayer.pauseAnimation()
            svgaPlayer.pauseAnimation()
        }
        //: switchBtn.isOn = (LocationThen.share.appUserConfigMode.randomVideo == "1")
        switchBtn.isOn = (LocationThen.share.appUserConfigMode.randomVideo == "1")
    }
}
