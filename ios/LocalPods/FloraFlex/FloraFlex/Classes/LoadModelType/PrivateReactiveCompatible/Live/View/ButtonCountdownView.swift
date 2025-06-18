
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let kStr_channelSizePicValue:[UInt8] = [0xe2,0xe5,0xe2,0xff,0xa3,0xe8,0xe4,0xef,0xee,0xf9,0xb1,0xa2,0xab,0xe3,0xea,0xf8,0xab,0xe5,0xe4,0xff,0xab,0xe9,0xee,0xee,0xe5,0xab,0xe2,0xe6,0xfb,0xe7,0xee,0xe6,0xee,0xe5,0xff,0xee,0xef]

private func equalArrayObject(make num: UInt8) -> UInt8 {
    return num ^ 139
}

/*: "bg_live_countdown" :*/
fileprivate let kStr_viewValue:String = "path on lab pullbg_liv"
fileprivate let kStr_sourceStatusValue:[Character] = ["e","_","c","o"]
fileprivate let kStr_textData:String = "UNTDOWN"

/*: "Live will end soon" :*/
fileprivate let kStr_midData:[Character] = ["L","i","v","e"," ","w","i","l","l"]
fileprivate let kStr_searchText:[Character] = [" ","e","n","d"]
fileprivate let kStr_byTitle:String = "shadow name with origin soon"

/*: "Make sure your face is always in the frame" :*/
fileprivate let kStr_captureName:[UInt8] = [0x21,0xd,0x7,0x9,0x4c,0x1f,0x19,0x1e,0x9,0x4c,0x15,0x3,0x19,0x1e,0x4c,0xa,0xd,0xf,0x9,0x4c,0x5,0x1f,0x4c,0xd,0x0,0x1b,0xd,0x15,0x1f,0x4c,0x5,0x2,0x4c,0x18,0x4,0x9,0x4c,0xa,0x1e,0xd,0x1,0x9]

private func leadingListen(status num: UInt8) -> UInt8 {
    return num ^ 108
}

/*: "get json error" :*/
fileprivate let kStr_nameData:[Character] = ["g","e","t"," ","j","s","o"]
fileprivate let kStr_userName:[Character] = ["n"," ","e","r","r","o","r"]

/*: "#FF2348" :*/
fileprivate let kStr_todayValue:[Character] = ["#","F","F","2","3","4","8"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  ButtonCountdownView.swift
//  AbroadTalking
//
//  Created by young on 2023/9/26.
//

//: import UIKit
import UIKit

//: class TalkingLiveCountdownView: UIView {
class ButtonCountdownView: UIView {
    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: self.frame = UIScreen.main.bounds
        self.frame = UIScreen.main.bounds
        //: setupSubviews()
        targetSubviews()
        //: setupSubViewsConstraint()
        moreConstraint()
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: kStr_channelSizePicValue.map{equalArrayObject(make: $0)}, encoding: .utf8)!)
    }

    // MARK: - Lazy Load

    //: private lazy var contentView: UIView = {
    private lazy var contentView: UIView = {
        //: let view = UIView()
        let view = UIView()
        //: view.backgroundColor = UIColor.white
        view.backgroundColor = UIColor.white
        //: view.layer.cornerRadius = 15
        view.layer.cornerRadius = 15
        //: return view
        return view
        //: }()
    }()

    //: private lazy var topIcon: UIImageView = {
    private lazy var topIcon: UIImageView = {
        //: let iamg = UIImageView()
        let iamg = UIImageView()
        //: iamg.image = UIImage.bundleBy(name: "bg_live_countdown")
        iamg.image = UIImage.bundleBy(name: (String(kStr_viewValue.suffix(6)) + String(kStr_sourceStatusValue) + kStr_textData.lowercased()))
        //: iamg.contentMode = .scaleAspectFill
        iamg.contentMode = .scaleAspectFill
        //: return iamg
        return iamg
        //: }()
    }()

    //: private lazy var titleLab: UILabel = {
    private lazy var titleLab: UILabel = {
        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.textColor = .appTitleColor()
        lab.textColor = .dataFormat()
        //: lab.font = UIFont.dorsum(fontSize: 18)
        lab.font = UIFont.dorsum(fontSize: 18)
        //: lab.textAlignment = .center
        lab.textAlignment = .center
        //: lab.text = "Live will end soon".localized
        lab.text = (String(kStr_midData) + String(kStr_searchText) + String(kStr_byTitle.suffix(5))).localized
        //: return lab
        return lab
        //: }()
    }()

    //: private lazy var contentLab: UILabel = {
    private lazy var contentLab: UILabel = {
        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.textColor = .appTitleColor()
        lab.textColor = .dataFormat()
        //: lab.font = UIFont.messageDown(fontSize: 16)
        lab.font = UIFont.messageDown(fontSize: 16)
        //: lab.textAlignment = .center
        lab.textAlignment = .center
        //: lab.numberOfLines = 0
        lab.numberOfLines = 0
        //: lab.text = "Make sure your face is always in the frame".localized
        lab.text = String(bytes: kStr_captureName.map{leadingListen(status: $0)}, encoding: .utf8)!.localized
        //: return lab
        return lab
        //: }()
    }()

    //: private lazy var svgaPlayer: SVGAPlayer = {
    private lazy var svgaPlayer: SVGAPlayer = {
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

        //: let url = SVGAEffectTool.default.getZipEffectPath(type: .Live_countdown_bg)
        let url = LoadGrappleEffectTool.default.sunnahType(type: .Live_countdown_bg)
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
            pathLine(message: (String(kStr_nameData) + String(kStr_userName)))
        }
        //: return player
        return player
        //: }()
    }()

    //: private lazy var svgaNumLab: UILabel = {
    private lazy var svgaNumLab: UILabel = {
        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.font = UIFont.dorsum(fontSize: 29)
        lab.font = UIFont.dorsum(fontSize: 29)
        //: lab.textAlignment = .center
        lab.textAlignment = .center
        //: lab.textColor = UIColor(hex: "#FF2348")
        lab.textColor = UIColor(hex: (String(kStr_todayValue)))
        //: return lab
        return lab
        //: }()
    }()
}

// MARK: - Event

//: extension TalkingLiveCountdownView {
extension ButtonCountdownView {
    /// 刷新视图
    /// - Parameter countdown: 倒计时
    //: func refreshView(countdown: String) {
    func inform(countdown: String) {
        //: self.svgaNumLab.text = countdown
        self.svgaNumLab.text = countdown
    }
}

// MARK: - Layout

//: extension TalkingLiveCountdownView {
extension ButtonCountdownView {
    // 添加视图
    //: private func setupSubviews() {
    private func targetSubviews() {
        //: self.addSubview(contentView)
        self.addSubview(contentView)
        //: contentView.addSubview(topIcon)
        contentView.addSubview(topIcon)
        //: topIcon.addSubview(svgaPlayer)
        topIcon.addSubview(svgaPlayer)
        //: topIcon.addSubview(svgaNumLab)
        topIcon.addSubview(svgaNumLab)
        //: contentView.addSubview(titleLab)
        contentView.addSubview(titleLab)
        //: contentView.addSubview(contentLab)
        contentView.addSubview(contentLab)
    }

    // 添加约束
    //: private func setupSubViewsConstraint() {
    private func moreConstraint() {
        //: contentView.snp.makeConstraints { make in
        contentView.snp.makeConstraints { make in
            //: make.center.equalToSuperview()
            make.center.equalToSuperview()
            //: make.size.equalTo(CGSize(width: actualWidth(w: 297), height: actualWidth(w: 250)))
            make.size.equalTo(CGSize(width: originalScene(w: 297), height: originalScene(w: 250)))
        }

        //: topIcon.snp.makeConstraints { make in
        topIcon.snp.makeConstraints { make in
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.top.equalTo(actualWidth(w: 20))
            make.top.equalTo(originalScene(w: 20))
            //: make.size.equalTo(CGSize(width: actualWidth(w: 148), height: actualWidth(w: 120)))
            make.size.equalTo(CGSize(width: originalScene(w: 148), height: originalScene(w: 120)))
        }
        //: svgaPlayer.snp.makeConstraints { make in
        svgaPlayer.snp.makeConstraints { make in
            //: make.center.equalToSuperview()
            make.center.equalToSuperview()
            //: make.width.height.equalTo(actualWidth(w: 60))
            make.width.height.equalTo(originalScene(w: 60))
        }
        //: svgaNumLab.snp.makeConstraints { make in
        svgaNumLab.snp.makeConstraints { make in
            //: make.center.width.height.equalTo(svgaPlayer)
            make.center.width.height.equalTo(svgaPlayer)
        }

        //: titleLab.snp.makeConstraints { make in
        titleLab.snp.makeConstraints { make in
            //: make.top.equalTo(topIcon.snp.bottom).offset(actualWidth(w: 17))
            make.top.equalTo(topIcon.snp.bottom).offset(originalScene(w: 17))
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.leading.equalTo(20)
            make.leading.equalTo(20)
            //: make.trailing.equalTo(-20)
            make.trailing.equalTo(-20)
        }

        //: contentLab.snp.makeConstraints { make in
        contentLab.snp.makeConstraints { make in
            //: make.top.equalTo(titleLab.snp.bottom).offset(actualWidth(w: 10))
            make.top.equalTo(titleLab.snp.bottom).offset(originalScene(w: 10))
            //: make.centerX.leading.trailing.equalTo(titleLab)
            make.centerX.leading.trailing.equalTo(titleLab)
        }
    }
}
