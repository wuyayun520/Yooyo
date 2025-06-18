
//: Declare String Begin

/*: "#201E50" :*/
fileprivate let kStr_startFieldName:String = "#"
fileprivate let kStr_modelName:String = "next false extension201E50"

/*: "#1F1624" :*/
fileprivate let kStr_touchData:[Character] = ["#","1","F","1","6","2"]
fileprivate let kStr_frameKitText:String = "gift"

/*: "quick_video_topview" :*/
fileprivate let kStr_needValue:String = "collection importquick_"
fileprivate let kStr_showTitle:String = "textid"
fileprivate let kStr_successName:String = "eo_tmessage succeed"

/*: "nav_back_black_nor" :*/
fileprivate let kStr_leadingValue:String = "value label var videonav_"
fileprivate let kStr_markName:String = "_blacselect send"

/*: "Random Video" :*/
fileprivate let kStr_titleName:[Character] = ["R","a","n","d","o","m"," ","V","i","d","e","o"]

/*: "quick_video_explain" :*/
fileprivate let kStr_removeName:String = "quivalue"
fileprivate let kStr_rangeTitle:String = "name itemdeo_"
fileprivate let kStr_dismissContent:String = "explsalein"

/*: "get json error" :*/
fileprivate let kStr_sharedValue:[Character] = ["g"]
fileprivate let kStr_joinData:String = "et jsmake top frame auto"
fileprivate let kStr_selectedPlayerData:String = "RROR"

/*: "Searching for perfect matches. please be patient." :*/
fileprivate let kStr_directionTitle:[UInt8] = [0x9e,0xa8,0xac,0xbf,0xae,0xa5,0xa4,0xa3,0xaa,0xed,0xab,0xa2,0xbf,0xed,0xbd,0xa8,0xbf,0xab,0xa8,0xae,0xb9,0xed,0xa0,0xac,0xb9,0xae,0xa5,0xa8,0xbe,0xe3,0xed,0xbd,0xa1,0xa8,0xac,0xbe,0xa8,0xed,0xaf,0xa8,0xed,0xbd,0xac,0xb9,0xa4,0xa8,0xa3,0xb9,0xe3]

private func labelGroup(equal num: UInt8) -> UInt8 {
    return num ^ 205
}

/*: "Matching..." :*/
fileprivate let kStr_aspectName:String = "make"
fileprivate let kStr_requestText:String = "ATCHI"

/*: "matchId" :*/
fileprivate let kStr_listName:[Character] = ["m","a","t","c","h","I","d"]

/*: "Random Video helps locating your matches online quickly. Random Videos are priced at 40 gold coins per minute and are paid for by the party calling the video." :*/
fileprivate let kStr_inviteName:[UInt8] = [0x74,0x83,0x90,0x86,0x91,0x8f,0x42,0x78,0x8b,0x86,0x87,0x91,0x42,0x8a,0x87,0x8e,0x92,0x95,0x42,0x8e,0x91,0x85,0x83,0x96,0x8b,0x90,0x89,0x42,0x9b,0x91,0x97,0x94,0x42,0x8f,0x83,0x96,0x85,0x8a,0x87,0x95,0x42,0x91,0x90,0x8e,0x8b,0x90,0x87,0x42,0x93,0x97,0x8b,0x85,0x8d,0x8e,0x9b,0x50,0x42,0x74,0x83,0x90,0x86,0x91,0x8f,0x42,0x78,0x8b,0x86,0x87,0x91,0x95,0x42,0x83,0x94,0x87,0x42,0x92,0x94,0x8b,0x85,0x87,0x86,0x42,0x83,0x96,0x42,0x56,0x52,0x42,0x89,0x91,0x8e,0x86,0x42,0x85,0x91,0x8b,0x90,0x95,0x42,0x92,0x87,0x94,0x42,0x8f,0x8b,0x90,0x97,0x96,0x87,0x42,0x83,0x90,0x86,0x42,0x83,0x94,0x87,0x42,0x92,0x83,0x8b,0x86,0x42,0x88,0x91,0x94,0x42,0x84,0x9b,0x42,0x96,0x8a,0x87,0x42,0x92,0x83,0x94,0x96,0x9b,0x42,0x85,0x83,0x8e,0x8e,0x8b,0x90,0x89,0x42,0x96,0x8a,0x87,0x42,0x98,0x8b,0x86,0x87,0x91,0x50]

fileprivate func resentMake(lab num: UInt8) -> UInt8 {
    let value = Int(num) - 34
    if value < 0 {
        return UInt8(value + 256)
    } else {
        return UInt8(value)
    }
}

/*: "OK" :*/
fileprivate let kStr_publishTitle:[Character] = ["O","K"]

/*: "onVideoMatch" :*/
fileprivate let kStr_toNameMatchValue:[Character] = ["o","n","V","i","d","e","o","M","a","t","c","h"]

/*: "retryAfter" :*/
fileprivate let kStr_activeLiveTitle:String = "retryAfteflow tab self inside"
fileprivate let kStr_byData:[Character] = ["r"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  DigitizerObjectProtocol.swift
//  AbroadTalking
//
//  Created by young on 2022/11/4.
//

//: import UIKit
import UIKit

//: class TalkingQuickVideoMatchViewController: TalkingBaseViewController {
class DigitizerObjectProtocol: LayerRecognizerDelegate {
    //: private var headTimer: Timer?
    private var headTimer: Timer? // 头像展示定时器
    //: private var retryAfterTimer: Timer?
    private var retryAfterTimer: Timer? // 匹配失败重试定时器
    //: private var matchId: Int = 0
    private var matchId: Int = 0 // 速配批次Id

    //: override func viewWillAppear(_ animated: Bool) {
    override func viewWillAppear(_ animated: Bool) {
        //: super.viewWillAppear(animated)
        super.viewWillAppear(animated)
        //: req_videoMatchHeadPics()
        colorStatus()
        //: startVideoMatch()
        modelAcross()
    }

    //: override func viewWillDisappear(_ animated: Bool) {
    override func viewWillDisappear(_ animated: Bool) {
        //: super.viewWillDisappear(animated)
        super.viewWillDisappear(animated)
        //: stopVideoMatch()
        audile()
    }

    //: override func viewDidLoad() {
    override func viewDidLoad() {
        //: super.viewDidLoad()
        super.viewDidLoad()
        //: self.hideNavi = true
        self.hideNavi = true

        //: setupSubviews()
        nameBar()
        //: setupSubViewsConstraint()
        setupChange()
    }

    //: deinit {
    deinit {
        //: stopVideoMatch()
        audile()
    }

    // MARK: - Lazy Load

    //: private lazy var bgImgView: UIImageView = {
    private lazy var bgImgView: UIImageView = {
        //: let view = UIImageView.init()
        let view = UIImageView()
        //: view.image = UIImage.imageGradientTopToBottonColor(colors: [UIColor.init(hex: "#201E50")!.cgColor, UIColor.init(hex: "#1F1624")!.cgColor], size: CGSize(width: ScreenWidth, height: ScreenHeight))
        view.image = UIImage.gradient(colors: [UIColor(hex: (kStr_startFieldName.capitalized + String(kStr_modelName.suffix(6))))!.cgColor, UIColor(hex: (String(kStr_touchData) + kStr_frameKitText.replacingOccurrences(of: "gift", with: "4")))!.cgColor], size: CGSize(width: kLet_halfData, height: kLet_noSeatName))
        //: view.isUserInteractionEnabled = true
        view.isUserInteractionEnabled = true

        //: let topView = UIImageView.init()
        let topView = UIImageView()
        //: topView.image = UIImage.bundleBy(name: "quick_video_topview")
        topView.image = UIImage.bundleBy(name: (String(kStr_needValue.suffix(6)) + kStr_showTitle.replacingOccurrences(of: "text", with: "v") + String(kStr_successName.prefix(4)) + "opview"))
        //: topView.isUserInteractionEnabled = true
        topView.isUserInteractionEnabled = true
        //: view.addSubview(topView)
        view.addSubview(topView)
        //: topView.snp.makeConstraints { make in
        topView.snp.makeConstraints { make in
            //: make.leading.top.equalTo(0)
            make.leading.top.equalTo(0)
            //: make.width.height.equalTo(actualWidth(w: 218))
            make.width.height.equalTo(originalScene(w: 218))
        }
        //: return view
        return view
        //: }()
    }()

    //: private lazy var navView: UIView = {
    private lazy var navView: UIView = {
        //: let nav = UIView()
        let nav = UIView()
        //: nav.backgroundColor = .clear
        nav.backgroundColor = .clear
        // 返回
        //: let backBtn = UIButton(type: .custom)
        let backBtn = UIButton(type: .custom)
        //: let backBImg = UIImage.bundleBy(name: "nav_back_black_nor").withRenderingMode(.alwaysTemplate)
        let backBImg = UIImage.bundleBy(name: (String(kStr_leadingValue.suffix(4)) + "back" + String(kStr_markName.prefix(5)) + "k_nor")).withRenderingMode(.alwaysTemplate)
        //: backBtn.setImage(backBImg, for: .normal)
        backBtn.setImage(backBImg, for: .normal)
        //: backBtn.tintColor = .white
        backBtn.tintColor = .white
        //: backBtn.addTarget(self, action: #selector(clickBackButtonAction), for: .touchUpInside)
        backBtn.addTarget(self, action: #selector(statusAction), for: .touchUpInside)
        //: nav.addSubview(backBtn)
        nav.addSubview(backBtn)
        //: backBtn.snp.makeConstraints { make in
        backBtn.snp.makeConstraints { make in
            //: make.leading.equalTo(0)
            make.leading.equalTo(0)
            //: make.width.equalTo(40)
            make.width.equalTo(40)
            //: make.height.equalTo(NavigationBarHeight)
            make.height.equalTo(kLet_senseFormatValue)
            //: make.top.equalTo(StatusBarHeight)
            make.top.equalTo(kLet_postPartyValue)
        }
        // 标题
        //: let titleLab = UILabel()
        let titleLab = UILabel()
        //: titleLab.font = UIFont.dorsum(fontSize: 17)
        titleLab.font = UIFont.dorsum(fontSize: 17)
        //: titleLab.textColor = .white
        titleLab.textColor = .white
        //: titleLab.textAlignment = .center
        titleLab.textAlignment = .center
        //: titleLab.text = "Random Video".localized
        titleLab.text = (String(kStr_titleName)).localized
        //: nav.addSubview(titleLab)
        nav.addSubview(titleLab)
        //: titleLab.snp.makeConstraints { make in
        titleLab.snp.makeConstraints { make in
            //: make.centerY.equalTo(backBtn)
            make.centerY.equalTo(backBtn)
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
        }
        // 提示（审核模式隐藏）
        //: if LocationThen.share.appStatus == AppSkinStatus.normal.rawValue {
        if LocationThen.share.appStatus == SharedInsetTarget.normal.rawValue {
            //: let matchTipsBtn = UIButton(type: .custom)
            let matchTipsBtn = UIButton(type: .custom)
            //: let matchTipsImg = UIImage.bundleBy(name: "quick_video_explain").withRenderingMode(.alwaysTemplate)
            let matchTipsImg = UIImage.bundleBy(name: (kStr_removeName.replacingOccurrences(of: "value", with: "c") + "k_vi" + String(kStr_rangeTitle.suffix(4)) + kStr_dismissContent.replacingOccurrences(of: "sale", with: "a"))).withRenderingMode(.alwaysTemplate)
            //: matchTipsBtn.setImage(matchTipsImg, for: .normal)
            matchTipsBtn.setImage(matchTipsImg, for: .normal)
            //: matchTipsBtn.tintColor = .white
            matchTipsBtn.tintColor = .white
            //: matchTipsBtn.addTarget(self, action: #selector(matchTipsButtonClick), for: .touchUpInside)
            matchTipsBtn.addTarget(self, action: #selector(scoff), for: .touchUpInside)
            //: nav.addSubview(matchTipsBtn)
            nav.addSubview(matchTipsBtn)
            //: matchTipsBtn.snp.makeConstraints { make in
            matchTipsBtn.snp.makeConstraints { make in
                //: make.trailing.equalTo(0)
                make.trailing.equalTo(0)
                //: make.centerY.equalTo(backBtn)
                make.centerY.equalTo(backBtn)
                //: make.size.equalTo(CGSize(width: 45, height: NavigationBarHeight))
                make.size.equalTo(CGSize(width: 45, height: kLet_senseFormatValue))
            }
        }

        //: return nav
        return nav
        //: }()
    }()

    //: lazy var svgaPlayer: SVGAPlayer = {
    lazy var svgaPlayer: SVGAPlayer = {
        //: let player = SVGAPlayer.init()
        let player = SVGAPlayer()
        //: player.loops = 0
        player.loops = 0
        //: player.clearsAfterStop = false
        player.clearsAfterStop = false
        //: player.isUserInteractionEnabled = false
        player.isUserInteractionEnabled = false
        //: player.contentMode = .scaleAspectFill
        player.contentMode = .scaleAspectFill

        //: let url = SVGAEffectTool.default.getZipEffectPath(type: .Quick_Video_BG)
        let url = LoadGrappleEffectTool.default.sunnahType(type: .Quick_Video_BG)
        //: do {
        do {
            //: let data = try Data(contentsOf: url)
            let data = try Data(contentsOf: url)
            //: let parser = SVGAParser.init()
            let parser = SVGAParser()
            //: parser.parse(with: data, cacheKey: "") { [weak self] videoItem in
            parser.parse(with: data, cacheKey: "") { [weak self] videoItem in
                //: guard let self = self else {return}
                guard let self = self else { return }
                //: player.videoItem = videoItem
                player.videoItem = videoItem
                //: player.startAnimation()
                player.startAnimation()
            }
            //: } catch {
        } catch {
            //: printLog(message: "get json error")
            pathLine(message: (String(kStr_sharedValue) + String(kStr_joinData.prefix(5)) + "on e" + kStr_selectedPlayerData.lowercased()))
        }

        //: return player
        return player
        //: }()
    }()

    //: private lazy var tipsLab: UILabel = {
    private lazy var tipsLab: UILabel = {
        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.font = UIFont.messageDown(fontSize: 15)
        lab.font = UIFont.messageDown(fontSize: 15)
        //: lab.textColor = UIColor.init(white: 1, alpha: 0.7)
        lab.textColor = UIColor(white: 1, alpha: 0.7)
        //: lab.textAlignment = .center
        lab.textAlignment = .center
        //: lab.text = "Searching for perfect matches. please be patient.".localized
        lab.text = String(bytes: kStr_directionTitle.map{labelGroup(equal: $0)}, encoding: .utf8)!.localized
        //: lab.numberOfLines = 0
        lab.numberOfLines = 0
        //: return lab
        return lab
        //: }()
    }()

    //: private lazy var matchingLab: UILabel = {
    private lazy var matchingLab: UILabel = {
        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.font = UIFont.dorsum(fontSize: 18)
        lab.font = UIFont.dorsum(fontSize: 18)
        //: lab.textColor = .white
        lab.textColor = .white
        //: lab.textAlignment = .center
        lab.textAlignment = .center
        //: lab.text = "Matching...".localized
        lab.text = (kStr_aspectName.replacingOccurrences(of: "make", with: "M") + kStr_requestText.lowercased() + "ng...").localized
        //: return lab
        return lab
        //: }()
    }()

    //: private lazy var headImgView: UIImageView = {
    private lazy var headImgView: UIImageView = {
        //: let img = UIImageView()
        let img = UIImageView()
        //: img.contentMode = .scaleAspectFill
        img.contentMode = .scaleAspectFill
        //: img.layer.cornerRadius = actualWidth(w: 90)/2
        img.layer.cornerRadius = originalScene(w: 90) / 2
        //: img.image = UIImage.placeHolderImage(sex: Gender.female.rawValue)
        img.image = UIImage.deliver(sex: SucceedComparable.female.rawValue)
        //: img.layer.masksToBounds = true
        img.layer.masksToBounds = true
        //: return img
        return img
        //: }()
    }()

    //: private lazy var dataArr: [String] = {
    private lazy var dataArr: [String] = //: return Array<String>()
        .init()
    //: }()

    //: private lazy var resultDataArr: [TalkingMatchResultModel] = {
    private lazy var resultDataArr: [BottomResultModel] = //: return Array<BottomResultModel>()
        .init()
    //: }()
}

// MARK: - Request & 数据处理

//: extension TalkingQuickVideoMatchViewController {
extension DigitizerObjectProtocol {
    /// 速配头像列表（男）
    //: private func req_videoMatchHeadPics() {
    private func colorStatus() {
        //: TalkingQuickVideoManager.req_videoMatchHeadPics { [weak self] succeed, result, errorModel in
        ContentVideoManager.handleCompletion { [weak self] succeed, result, _ in
            //: guard let self = self else { return }
            guard let self = self else { return }
            //: guard succeed == true else { return }
            guard succeed == true else { return }

            //: self.dataArr.removeAll()
            self.dataArr.removeAll()
            //: self.dataArr = result as! [String]
            self.dataArr = result as! [String]

            //: var index = 0
            var index = 0
            //: self.headTimer = Timer.scheduledTimer(withTimeInterval: 5, block: { timer in
            self.headTimer = Timer.scheduledTimer(withTimeInterval: 5, block: { _ in
                // 实现无限循环
                //: if index >= self.dataArr.count { index = 0 }
                if index >= self.dataArr.count { index = 0 }
                // 网络加载图片，实现高斯模糊效果
                //: self.headImgView.setUrlImage(urlStr: self.dataArr[index]) { isSucceed in
                self.headImgView.timeFinish(urlStr: self.dataArr[index]) { _ in
                    //: guard let image = self.headImgView.image else { return }
                    guard let image = self.headImgView.image else { return }
                    //: self.headImgView.image = UIImage.blur(theImage: image, blurValue: 17)
                    self.headImgView.image = UIImage.sizeVisualizationFinish(theImage: image, blurValue: 17)
                }
                //: index += 1
                index += 1
                //: }, repeats: true)
            }, repeats: true)
            //: self.headTimer?.fire()
            self.headTimer?.fire()
        }
    }

    /// 开始视频速配（男）
    //: private func req_videoMatchToMatch() {
    private func noneWith() {
        //: TalkingQuickVideoManager.req_videoMatchToMatch(matchId: self.matchId) { succeed, result, errorModel in
        ContentVideoManager.equidistantUser(matchId: self.matchId) { succeed, result, _ in
            //: guard succeed == true else { return }
            guard succeed == true else { return }

            //: let json = JSON(result ?? [String: Any]())
            let json = JSON(result ?? [String: Any]())
            //: self.matchId = json["matchId"].intValue
            self.matchId = json[(String(kStr_listName))].intValue
        }
    }
}

// MARK: - Event

//: extension TalkingQuickVideoMatchViewController {
extension DigitizerObjectProtocol {
    /// 停止视频速配
    //: private func stopVideoMatch() {
    private func audile() {
        // 销毁定时器
        //: if self.headTimer != nil {
        if self.headTimer != nil {
            //: self.headTimer?.invalidate()
            self.headTimer?.invalidate()
            //: self.headTimer = nil
            self.headTimer = nil
        }

        //: if self.retryAfterTimer != nil {
        if self.retryAfterTimer != nil {
            //: self.retryAfterTimer?.invalidate()
            self.retryAfterTimer?.invalidate()
            //: self.retryAfterTimer = nil
            self.retryAfterTimer = nil
        }

        //: TalkingSocketManager.shared.videoMatchDelegate = nil
        ToSocketManager.shared.videoMatchDelegate = nil
        //: TalkingSocketManager.shared.errorDelegate = nil
        ToSocketManager.shared.errorDelegate = nil
    }

    /// 开始视频速配
    //: private func startVideoMatch() {
    private func modelAcross() {
        //: TalkingSocketManager.shared.videoMatchDelegate = self
        ToSocketManager.shared.videoMatchDelegate = self
        //: TalkingSocketManager.shared.errorDelegate = self
        ToSocketManager.shared.errorDelegate = self
        //: req_videoMatchToMatch()
        noneWith()
    }

    /// 返回按钮
    //: @objc private func clickBackButtonAction() {
    @objc private func statusAction() {
        //: self.navigationController?.popViewController(animated: true)
        self.navigationController?.popViewController(animated: true)
    }

    /// 打开视频速配说明
    //: @objc private func matchTipsButtonClick() {
    @objc private func scoff() {
        //: let message = "Random Video helps locating your matches online quickly. Random Videos are priced at 40 gold coins per minute and are paid for by the party calling the video.".localized
        let message = String(bytes: kStr_inviteName.map{resentMake(lab: $0)}, encoding: .utf8)!.localized
        //: TalkingAlertShow.alert(title: nil, message: message, rightBtnTitle: "OK".localized)
        ClickReactiveCompatible.follow(title: nil, message: message, rightBtnTitle: "OK".localized)
    }
}

// MARK: - TalkingSocketManagerDelegate

//: extension TalkingQuickVideoMatchViewController: SocketManagerVideoMatchDelegate {
extension DigitizerObjectProtocol: BackgroundMatchDelegate {
    /// 视频速配成功
    //: func socket_match_onVideoMatch(data: [String: Any]) {
    func tableData(data: [String: Any]) {
        // 停止速配，跳转速配结果界面
        //: stopVideoMatch()
        audile()
        //: DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 1) {
        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 1) {
            //: guard let topVC = self.navigationController?.topViewController else { return }
            guard let topVC = self.navigationController?.topViewController else { return }
            //: guard !topVC.isKind(of: TalkingMatchResultViewController.self) else { return }
            guard !topVC.isKind(of: BackgroundReactiveCompatible.self) else { return }
            //: guard let model = TalkingMatchResultModel.deserialize(from: data) else { return }
            guard let model = BottomResultModel.deserialize(from: data) else { return }

            // v1.0.6 订阅用户 当前视频速配成功的次数大于等于2，则在其匹配中页面额外展示回放按钮
            //: if LocationThen.share.loginUserMode.loungePlus == true || LocationThen.share.loginUserMode.videoPlayback == true {
            if LocationThen.share.loginUserMode.loungePlus == true || LocationThen.share.loginUserMode.videoPlayback == true {
                //: if self.resultDataArr.count >= 2 {
                if self.resultDataArr.count >= 2 {
                    //: self.resultDataArr.removeFirst()
                    self.resultDataArr.removeFirst()
                }
                //: self.resultDataArr.append(model)
                self.resultDataArr.append(model)

                //: } else {
            } else { // 非订阅用户只展示一条
                //: self.resultDataArr.removeAll()
                self.resultDataArr.removeAll()
                //: self.resultDataArr.append(model)
                self.resultDataArr.append(model)
            }

            //: let vc = TalkingMatchResultViewController()
            let vc = BackgroundReactiveCompatible()
            //: vc.showLastArr = self.resultDataArr
            vc.showLastArr = self.resultDataArr
            //: self.navigationController?.pushViewController(vc, animated: true)
            self.navigationController?.pushViewController(vc, animated: true)
        }
    }

    //: func socket_match_onRequestCall(data: [String: Any]) {}
    func socketSpringTask(data _: [String: Any]) {}
}

// MARK: - CanErrorDelegate

//: extension TalkingQuickVideoMatchViewController: TalkingSocketManagerErrorDelegate {
extension DigitizerObjectProtocol: CanErrorDelegate {
    //: func socket_didRecieveError(errorNo: Int, cmd: String, msg: String, data: [String: Any]) {
    func recieve(errorNo: Int, cmd: String, msg _: String, data: [String: Any]) {
        //: if cmd == "onVideoMatch" && errorNo == 449 { // 匹配池用完，延时重试
        if cmd == (String(kStr_toNameMatchValue)) && errorNo == 449 { // 匹配池用完，延时重试
            //: let json = JSON(data)
            let json = JSON(data)
            //: retryAfterTimer = Timer.scheduledTimer(withTimeInterval: TimeInterval(json["retryAfter"].intValue), block: { [weak self] timer in
            retryAfterTimer = Timer.scheduledTimer(withTimeInterval: TimeInterval(json[(String(kStr_activeLiveTitle.prefix(9)) + String(kStr_byData))].intValue), block: { [weak self] _ in
                //: guard let self = self else { return }
                guard let self = self else { return }

                //: self.matchId = json["matchId"].intValue
                self.matchId = json[(String(kStr_listName))].intValue
                //: self.startVideoMatch()
                self.modelAcross()
                //: }, repeats: false)
            }, repeats: false)
        }
    }
}

// MARK: - Layout

//: extension TalkingQuickVideoMatchViewController {
extension DigitizerObjectProtocol {
    /// 添加视图
    //: private func setupSubviews() {
    private func nameBar() {
        //: self.view.addSubview(bgImgView)
        self.view.addSubview(bgImgView)
        //: self.view.addSubview(navView)
        self.view.addSubview(navView)
        //: self.view.addSubview(svgaPlayer)
        self.view.addSubview(svgaPlayer)
        //: self.view.addSubview(tipsLab)
        self.view.addSubview(tipsLab)
        //: self.view.addSubview(matchingLab)
        self.view.addSubview(matchingLab)
        //: self.view.addSubview(headImgView)
        self.view.addSubview(headImgView)
    }

    /// 添加约束
    //: private func setupSubViewsConstraint() {
    private func setupChange() {
        //: bgImgView.snp.makeConstraints { make in
        bgImgView.snp.makeConstraints { make in
            //: make.edges.equalToSuperview()
            make.edges.equalToSuperview()
        }
        //: navView.snp.makeConstraints { make in
        navView.snp.makeConstraints { make in
            //: make.leading.top.width.equalToSuperview()
            make.leading.top.width.equalToSuperview()
            //: make.height.equalTo(StatusBarNavigationBarHeight)
            make.height.equalTo(kLet_netName)
        }
        //: svgaPlayer.snp.makeConstraints { make in
        svgaPlayer.snp.makeConstraints { make in
            //: make.top.equalTo(navView.snp.bottom).offset(actualWidth(w: 50))
            make.top.equalTo(navView.snp.bottom).offset(originalScene(w: 50))
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.size.equalTo(CGSize(width: ScreenWidth, height: ScreenWidth))
            make.size.equalTo(CGSize(width: kLet_halfData, height: kLet_halfData))
        }
        //: tipsLab.snp.makeConstraints { make in
        tipsLab.snp.makeConstraints { make in
            //: make.leading.equalTo(30)
            make.leading.equalTo(30)
            //: make.trailing.equalTo(-30)
            make.trailing.equalTo(-30)
            //: make.bottom.equalToSuperview().offset(-88-kDeviceSafeBottomHeight)
            make.bottom.equalToSuperview().offset(-88 - kLet_formatNetValue)
        }
        //: matchingLab.snp.makeConstraints { make in
        matchingLab.snp.makeConstraints { make in
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.bottom.equalTo(tipsLab.snp.top).offset(-20)
            make.bottom.equalTo(tipsLab.snp.top).offset(-20)
        }
        //: headImgView.snp.makeConstraints { make in
        headImgView.snp.makeConstraints { make in
            //: make.center.equalTo(svgaPlayer)
            make.center.equalTo(svgaPlayer)
            //: make.size.equalTo(CGSize(width: actualWidth(w: 90), height: actualWidth(w: 90)))
            make.size.equalTo(CGSize(width: originalScene(w: 90), height: originalScene(w: 90)))
        }
    }
}
