
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let kStr_viewAddName:[UInt8] = [0x64,0x65,0x74,0x6e,0x65,0x6d,0x65,0x6c,0x70,0x6d,0x69,0x20,0x6e,0x65,0x65,0x62,0x20,0x74,0x6f,0x6e,0x20,0x73,0x61,0x68,0x20,0x29,0x3a,0x72,0x65,0x64,0x6f,0x63,0x28,0x74,0x69,0x6e,0x69]

/*: "btn_dynamic_stop_nor" :*/
fileprivate let kStr_sexName:[Character] = ["b","t","n","_","d","y","n","a","m","i","c","_","s","t","o","p","_"]
fileprivate let kStr_bagAllName:String = "notitle"

/*: "icon_Topping_bg" :*/
fileprivate let kStr_shadowListTitle:[Character] = ["i","c","o","n","_","T"]
fileprivate let kStr_imageContent:String = "model"
fileprivate let kStr_endValue:String = "lablabin"

/*: "#F5F5F5" :*/
fileprivate let kStr_iconName:String = "screen main#F5F5F5"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  MomentVideoCell.swift
//  AbroadTalking
//
//  Created by Charlotte on 2022/11/4.
//

//: import SwiftUI
import SwiftUI
//: import UIKit
import UIKit

//: class TalkingMomentVideoCell: UIView {
class MomentVideoCell: UIView {
    //: var isPlaying = false
    var isPlaying = false
    //: var videoUrl = ""
    var videoUrl = ""
    //: var isListTableCell = true
    var isListTableCell = true
    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: self.setupSubviews()
        self.date()
        //: self.setupSubViewsConstraint()
        self.inputBind()
        //: self.bindInteraction()
        self.tied()
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: kStr_viewAddName.reversed(), encoding: .utf8)!)
    }

    //: deinit {
    deinit {}

    // 懒加载初始化
    //: lazy var player: TalkingVideoPlayerManager = {
    lazy var player: TalkingSearchedPlayListener = {
        //: var  player: TalkingVideoPlayerManager
        var player: TalkingSearchedPlayListener
        //: if isListTableCell {
        if isListTableCell {
            //: player = TalkingVideoPlayerManager.shared
            player = TalkingSearchedPlayListener.shared
            //: }else {
        } else {
            //: player = TalkingVideoPlayerManager.init()
            player = TalkingSearchedPlayListener()
        }
        //: player.delegate = self
        player.delegate = self
        //: player.setMute(bEnable: true)
        player.eraseEnable(bEnable: true)
        //: return player
        return player
        //: }()
    }()

    //: lazy var coverView: UIImageView = {
    lazy var coverView: UIImageView = {
        //: let  imag = UIImageView.init()
        let imag = UIImageView()
        //: imag.backgroundColor = .black
        imag.backgroundColor = .black
        //: imag.contentMode = .scaleAspectFill
        imag.contentMode = .scaleAspectFill
        //: self.addSubview(imag)
        self.addSubview(imag)
        //: imag.snp.remakeConstraints { make in
        imag.snp.remakeConstraints { make in
            //: make.edges.equalTo(0)
            make.edges.equalTo(0)
        }
        //: return imag
        return imag
        //: }()
    }()

    //: lazy var playimageView: UIImageView = {
    lazy var playimageView: UIImageView = {
        //: let  imag = UIImageView.init(image: UIImage.bundleBy(name: "btn_dynamic_stop_nor"))
        let imag = UIImageView(image: UIImage.bundleBy(name: (String(kStr_sexName) + kStr_bagAllName.replacingOccurrences(of: "title", with: "r"))))
        //: coverView.addSubview(imag)
        coverView.addSubview(imag)
        //: return imag
        return imag
        //: }()
    }()

    //: lazy var topImage: UIImageView = {
    lazy var topImage: UIImageView = {
        //: let img = UIImageView.init()
        let img = UIImageView()
        //: img.contentMode = .scaleAspectFill
        img.contentMode = .scaleAspectFill
        //: img.image = UIImage.bundleBy(name: "icon_Topping_bg")
        img.image = UIImage.bundleBy(name: (String(kStr_shadowListTitle) + kStr_imageContent.replacingOccurrences(of: "model", with: "o") + kStr_endValue.replacingOccurrences(of: "lab", with: "p") + "g_bg"))
        //: coverView.addSubview(img)
        coverView.addSubview(img)
        //: return img
        return img
        //: }()
    }()
}

//: extension TalkingMomentVideoCell {
extension MomentVideoCell {
    //: @objc func enterBackgroundNotification() {
    @objc func notification() {
        //: if self.player.isPlaying {
        if self.player.isPlaying {
            //: self.player.pause()
            self.player.listView()
        }
    }

    //: @objc func enterForegroundNotification() {
    @objc func quickEqual() {
        //: if self.currentViewController()!.isKind(of: TalkingMomentViewController.self) {
        if self.giftFew()!.isKind(of: DataReactiveCompatible.self) {
            //: self.player.resume()
            self.player.commensurateWho()
        }
    }

    //: func configModel(model: TalkingMomentVideoModel, isTop: Bool = false) {
    func configTop(model: MomentVideoModel, isTop: Bool = false) {
        //: videoUrl = model.videoUrl
        videoUrl = model.videoUrl
        //: self.coverView.backgroundColor = .white
        self.coverView.backgroundColor = .white
        //: self.coverView.setUrlImage(urlStr: model.imgUrl, placeImg: nil)
        self.coverView.timeFinish(urlStr: model.imgUrl, placeImg: nil)
        //: topImage.isHidden = !isTop
        topImage.isHidden = !isTop
    }

    //: func setupPlayer() {
    func square() {
        //: self.coverView.isHidden = true
        self.coverView.isHidden = true
        //: self.player.playerWithUrlAndVideoView(url: videoUrl, view: self)
        self.player.cardView(url: videoUrl, view: self)
        //: self.player.setMute(bEnable: true)
        self.player.eraseEnable(bEnable: true)
        //: self.isPlaying = true
        self.isPlaying = true
        //: self.player.delegate = self
        self.player.delegate = self
        //: self.player.setRenderMode(renderMode: .FILL_SCREEN)
        self.player.map(renderMode: .FILL_SCREEN)
    }

    //: func stopPlay() {
    func toAGreaterExtentPlay() {
        //: self.coverView.isHidden = false
        self.coverView.isHidden = false
        //: self.player.stopPlay()
        self.player.alongCounterval()
        //: self.isPlaying = false
        self.isPlaying = false
        //: self.playimageView.isHidden = false
        self.playimageView.isHidden = false
        //: self.player.setMute(bEnable: true)
        self.player.eraseEnable(bEnable: true)
    }

    //: func pausePlay() {
    func cricket() {
        //: if self.player.isPlaying {
        if self.player.isPlaying {
            //: self.player.pause()
            self.player.listView()
        }
    }

    //: func resume() {
    func constraintTool() {
        //: self.coverView.isHidden = true
        self.coverView.isHidden = true
        // 进入详情会改变播放模式会有声音
        //: self.player.setMute(bEnable: true)
        self.player.eraseEnable(bEnable: true)
        //: self.player.resume()
        self.player.commensurateWho()
    }
}

//: extension TalkingMomentVideoCell: TalkingVideoPlayerDelegate {
extension MomentVideoCell: LoadPlayerDelegate {
    //: func func__playerStatus(player: TalkingVideoPlayerManager, status: VideoPlayerStatus) {
    func statusMessage(player _: TalkingSearchedPlayListener, status: ButtonPlayerStatus) {
        //: if (status == .Playing) {
        if status == .Playing {
            //: if self.player.isMute == false {
            if self.player.isMute == false {
                //: self.player.setMute(bEnable: true)
                self.player.eraseEnable(bEnable: true)
            }
            //: self.playimageView.isHidden = true
            self.playimageView.isHidden = true
            //: self.player.setRenderMode(renderMode: .FILL_SCREEN)
            self.player.map(renderMode: .FILL_SCREEN)
            //: }else if (status == .Pausing) {
        } else if status == .Pausing {
            //: self.playimageView.isHidden = false
            self.playimageView.isHidden = false
        }
    }

    //: func func__playerDuration(player: TalkingVideoPlayerManager, duration: Int, currentTime: Int) {
    func publicTransport(player _: TalkingSearchedPlayListener, duration _: Int, currentTime _: Int) {}

    //: func func__playerProgress(player: TalkingVideoPlayerManager, progress: CGFloat) {
    func showWrite(player _: TalkingSearchedPlayListener, progress _: CGFloat) {}
}

//: extension TalkingMomentVideoCell {
extension MomentVideoCell {
    // 添加视图
    //: private func setupSubviews() {
    private func date() {
        //: self.backgroundColor = UIColor.init(hex: "#F5F5F5" )
        self.backgroundColor = UIColor(hex: (String(kStr_iconName.suffix(7))))
        //: self.layer.cornerRadius = 4
        self.layer.cornerRadius = 4
        //: self.layer.masksToBounds = true
        self.layer.masksToBounds = true
    }

    // 添加约束
    //: private func setupSubViewsConstraint() {
    private func inputBind() {
        //: playimageView.snp.remakeConstraints { make in
        playimageView.snp.remakeConstraints { make in
            //: make.center.equalToSuperview()
            make.center.equalToSuperview()
            //: make.size.equalTo(CGSize.init(width: 40, height: 40))
            make.size.equalTo(CGSize(width: 40, height: 40))
        }
        //: topImage.snp.remakeConstraints { make in
        topImage.snp.remakeConstraints { make in
            //: make.top.equalTo(0)
            make.top.equalTo(0)
            //: make.trailing.equalTo(0)
            make.trailing.equalTo(0)
            //: make.size.equalTo(CGSize.init(width: 50, height: 20))
            make.size.equalTo(CGSize(width: 50, height: 20))
        }
    }

    // 添加事件
    //: private func bindInteraction() {
    private func tied() {
        //: NotificationCenter.default.addObserver(self, selector: #selector(enterBackgroundNotification), name: UIApplication.willResignActiveNotification, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(notification), name: UIApplication.willResignActiveNotification, object: nil)

        //: NotificationCenter.default.addObserver(self, selector: #selector(enterForegroundNotification), name: UIApplication.didBecomeActiveNotification, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(quickEqual), name: UIApplication.didBecomeActiveNotification, object: nil)
    }
}
