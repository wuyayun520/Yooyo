
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let kStr_shareLayerBackgroundData:[UInt8] = [0xc9,0xce,0xc9,0xd4,0x88,0xc3,0xcf,0xc4,0xc5,0xd2,0x9a,0x89,0x80,0xc8,0xc1,0xd3,0x80,0xce,0xcf,0xd4,0x80,0xc2,0xc5,0xc5,0xce,0x80,0xc9,0xcd,0xd0,0xcc,0xc5,0xcd,0xc5,0xce,0xd4,0xc5,0xc4]

private func appCollection(data num: UInt8) -> UInt8 {
    return num ^ 160
}

/*: "icon_ziliao_nandi_default" :*/
fileprivate let kStr_officialTitle:[Character] = ["i","c","o","n"]
fileprivate let kStr_labData:String = "_zilindex at fail gift"
fileprivate let kStr_downData:String = "sex main view imagenandi_"

/*: "iv_crush" :*/
fileprivate let kStr_makeTitle:String = "color productiv_crush"

/*: "Crush" :*/
fileprivate let kStr_videoModelGestureValue:[Character] = ["C","r","u","s","h"]

/*: "get json error" :*/
fileprivate let kStr_netEqualValue:String = "get jto stop any hidden and"
fileprivate let kStr_textData:[Character] = ["e","r","r","o","r"]

/*: "targetUid" :*/
fileprivate let kStr_fromName:[Character] = ["t","a","r","g","e","t","U"]
fileprivate let kStr_kitData:String = "ino"

/*: "The other party has received your crush" :*/
fileprivate let kStr_minimumData:[UInt8] = [0x42,0x7e,0x73,0x36,0x79,0x62,0x7e,0x73,0x64,0x36,0x66,0x77,0x64,0x62,0x6f,0x36,0x7e,0x77,0x65,0x36,0x64,0x73,0x75,0x73,0x7f,0x60,0x73,0x72,0x36,0x6f,0x79,0x63,0x64,0x36,0x75,0x64,0x63,0x65,0x7e]

private func releaseVoice(make num: UInt8) -> UInt8 {
    return num ^ 22
}

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  ShowCheckReactiveCompatible.swift
//  AbroadTalking
//
//  Created by Charlotte on 2022/9/21.
//

//: import UIKit
import UIKit

//: class TalkingMomentPhotosBottomView: UIView {
class ShowCheckReactiveCompatible: UIView {
    //: var modelUid = ""
    var modelUid = ""
    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: self.backgroundColor = UIColor.white
        self.backgroundColor = UIColor.white
        //: customUI()
        dowerCell()
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: kStr_shareLayerBackgroundData.map{appCollection(data: $0)}, encoding: .utf8)!)
    }

    //: func customUI() {
    func dowerCell() {
        //: self.backgroundColor = UIColor.RGBA(51, 51, 51, 0.8)
        self.backgroundColor = UIColor.largesse(51, 51, 51, 0.8)

        //: guard LocationThen.share.appStatus == AppSkinStatus.normal.rawValue else {
        guard LocationThen.share.appStatus == SharedInsetTarget.normal.rawValue else {
            // 审核模式隐藏
            //: self.crushBtn.isHidden = true
            self.crushBtn.isHidden = true
            //: return
            return
        }

        //: crushBtn.snp.makeConstraints { make in
        crushBtn.snp.makeConstraints { make in
            //: make.centerX.equalTo(self)
            make.centerX.equalTo(self)
            //: make.top.equalTo(15)
            make.top.equalTo(15)
            //: make.size.equalTo(CGSize.init(width: 164, height: 40))
            make.size.equalTo(CGSize(width: 164, height: 40))
        }

        //: self.addSubview(crushPlayer)
        self.addSubview(crushPlayer)
        //: crushPlayer.snp.makeConstraints { make in
        crushPlayer.snp.makeConstraints { make in
            //: make.centerX.equalTo(crushBtn)
            make.centerX.equalTo(crushBtn)
            //: make.bottom.equalTo(crushBtn.snp.bottom)
            make.bottom.equalTo(crushBtn.snp.bottom)
            //: make.size.equalTo(CGSize(width: 70, height: 100))
            make.size.equalTo(CGSize(width: 70, height: 100))
        }
    }

    //: lazy var crushBtn: TalkingButton = {
    lazy var crushBtn: OverdoTalkingButton = {
        //: let btn = TalkingButton.init()
        let btn = OverdoTalkingButton()
        //: btn.setBackgroundImage(UIImage.bundleBy(name: "icon_ziliao_nandi_default"), for: .normal)
        btn.setBackgroundImage(UIImage.bundleBy(name: (String(kStr_officialTitle) + String(kStr_labData.prefix(4)) + "iao_" + String(kStr_downData.suffix(6)) + "default")), for: .normal)
        //: btn.setImage(UIImage.bundleBy(name: "iv_crush"), for: .normal)
        btn.setImage(UIImage.bundleBy(name: (String(kStr_makeTitle.suffix(8)))), for: .normal)
        //: btn.setTitle("Crush".localized, for: .normal)
        btn.setTitle((String(kStr_videoModelGestureValue)).localized, for: .normal)
        //: btn.setTitleColor(.white, for: .normal)
        btn.setTitleColor(.white, for: .normal)
        //: btn.titleLabel?.font = UIFont.dorsum(fontSize: 18)
        btn.titleLabel?.font = UIFont.dorsum(fontSize: 18)
        //: btn.addTarget(self, action: #selector(crushBtnClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(requestAdd), for: .touchUpInside)
        //: self.addSubview(btn)
        self.addSubview(btn)
        //: return btn
        return btn
        //: }()
    }()

    //: lazy var crushPlayer: SVGAPlayer = {
    lazy var crushPlayer: SVGAPlayer = {
        //: let player = SVGAPlayer.init()
        let player = SVGAPlayer()
        //: player.loops = 1
        player.loops = 1
        //: player.clearsAfterStop = true
        player.clearsAfterStop = true
        //: player.isUserInteractionEnabled = false
        player.isUserInteractionEnabled = false
        //: player.contentMode = .scaleAspectFill
        player.contentMode = .scaleAspectFill
        //: player.delegate = self
        player.delegate = self
        //: return player
        return player
        //: }()
    }()
}

//: extension TalkingMomentPhotosBottomView: SVGAPlayerDelegate {
extension ShowCheckReactiveCompatible: SVGAPlayerDelegate {
    //: @objc func crushBtnClick () {
    @objc func requestAdd() {
        //: let url = SVGAEffectTool.default.getZipEffectPath(type: .Crush)
        let url = LoadGrappleEffectTool.default.sunnahType(type: .Crush)
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
                //: self.crushPlayer.videoItem = videoItem
                self.crushPlayer.videoItem = videoItem
                //: self.crushPlayer.startAnimation()
                self.crushPlayer.startAnimation()
                //: self.crushBtn.isHidden = true
                self.crushBtn.isHidden = true
            }

            //: } catch _ as Error? {
        } catch _ as Error? {
            //: printLog(message: "get json error")
            pathLine(message: (String(kStr_netEqualValue.prefix(5)) + "son " + String(kStr_textData)))
        }

        //: var dict = Dictionary<String, Any>()
        var dict = [String: Any]()
        //: dict["targetUid"] = modelUid
        dict[(String(kStr_fromName) + kStr_kitData.replacingOccurrences(of: "no", with: "d"))] = modelUid

        //: TalkingMomentRequestTool.req_CrushSend(params: dict) { succeed, result, errorModel in
        FromThen.colorCompletion(params: dict) { succeed, _, errorModel in
            //: if succeed {
            if succeed {
                //: self.func__showStatusBarNormrlMsg(showMsg: "The other party has received your crush".localized)
                self.imageText(showMsg: String(bytes: kStr_minimumData.map{releaseVoice(make: $0)}, encoding: .utf8)!.localized)
                //: } else {
            } else {
                //: self.func__showStatusBarErrorMsg(showMsg: errorModel!.errorMsg)
                self.detailDownArray(showMsg: errorModel!.errorMsg)
            }
        }
    }

    //: func svgaPlayerDidFinishedAnimation(_ player: SVGAPlayer!) {
    func svgaPlayerDidFinishedAnimation(_: SVGAPlayer!) {
        //: self.crushPlayer.isHidden = true
        self.crushPlayer.isHidden = true
    }
}
