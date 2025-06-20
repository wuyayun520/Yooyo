
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let kStr_viewText:[UInt8] = [0x78,0x7f,0x78,0x65,0x39,0x72,0x7e,0x75,0x74,0x63,0x2b,0x38,0x31,0x79,0x70,0x62,0x31,0x7f,0x7e,0x65,0x31,0x73,0x74,0x74,0x7f,0x31,0x78,0x7c,0x61,0x7d,0x74,0x7c,0x74,0x7f,0x65,0x74,0x75]

/*: "icon_mini_voice_end" :*/
fileprivate let kStr_dataTitle:String = "location frame elseicon_"
fileprivate let kStr_afterData:[Character] = ["m","i","n","i","_"]
fileprivate let kStr_makeContent:String = "finishice"

/*: "#F95151" :*/
fileprivate let kStr_recordValue:[Character] = ["#","F","9","5","1","5"]
fileprivate let kStr_yourData:String = "1"

/*: "End of call" :*/
fileprivate let kStr_labelContent:String = "End height false"

/*: "img_home_shadow_icon" :*/
fileprivate let kStr_frontValue:String = "make stringimg_h"
fileprivate let kStr_postName:String = "ome_shcolor view layer"
fileprivate let kStr_dataName:String = "color model para let_icon"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  BlockView.swift
//  AbroadTalking
//
//  Created by young on 2023/6/1.
//

//: import UIKit
import UIKit

//: class TalkingVideoMiniView: TalkingBaseMiniView {
class BlockView: BaseReactiveCompatible {
    // 小窗口通话状态
    //: private var currStatus = MiniWindowStatus.end
    private var currStatus = TermsWindowStatus.end

    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: setupSubViewsConstraint()
        notSetup()
        //: addTapAndPanGestures()
        outsidePost()
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: kStr_viewText.map{$0^17}, encoding: .utf8)!)
    }

    /// 重写父类方法
    //: override func dismissWhenCallEnd() {
    override func withSection() {
        //: self.coverView.isHidden = false
        self.coverView.isHidden = false
        //: self.renderView.isHidden = true
        self.renderView.isHidden = true
        //: super.dismissWhenCallEnd()
        super.withSection()
    }

    // MARK: - Lazy Load

    //: private lazy var shadowView: UIView = {
    private lazy var shadowView: UIView = {
        //: let view = UIView()
        let view = UIView()
        //: view.backgroundColor = .clear
        view.backgroundColor = .clear
        //: view.layer.shadowPath = UIBezierPath(roundedRect: CGRect(x: 0, y: 0, width: 76, height: 115), cornerRadius: 10).cgPath
        view.layer.shadowPath = UIBezierPath(roundedRect: CGRect(x: 0, y: 0, width: 76, height: 115), cornerRadius: 10).cgPath
        //: view.layer.shadowColor = UIColor(red: 0.74, green: 0.74, blue: 0.74, alpha: 0.5).cgColor
        view.layer.shadowColor = UIColor(red: 0.74, green: 0.74, blue: 0.74, alpha: 0.5).cgColor
        //: view.layer.shadowOffset = CGSize(width: 0, height: 0)
        view.layer.shadowOffset = CGSize(width: 0, height: 0)
        //: view.layer.shadowOpacity = 1
        view.layer.shadowOpacity = 1
        //: view.layer.shadowRadius = 8
        view.layer.shadowRadius = 8
        //: self.addSubview(view)
        self.addSubview(view)
        //: return view
        return view
        //: }()
    }()

    //: private lazy var bgView: UIView = {
    private lazy var bgView: UIView = {
        //: let view = UIView()
        let view = UIView()
        //: view.backgroundColor = .white
        view.backgroundColor = .white
        //: view.layer.cornerRadius = 8
        view.layer.cornerRadius = 8
        //: view.layer.masksToBounds = true
        view.layer.masksToBounds = true
        //: self.addSubview(view)
        self.addSubview(view)
        //: return view
        return view
        //: }()
    }()

    //: lazy var renderView: UIView = {
    lazy var renderView: UIView = { // 视频渲染视图
        //: let view = UIView()
        let view = UIView()
        //: view.backgroundColor = .appTitleColor()
        view.backgroundColor = .dataFormat()
        //: view.layer.cornerRadius = 8
        view.layer.cornerRadius = 8
        //: view.layer.masksToBounds = true
        view.layer.masksToBounds = true
        //: view.isUserInteractionEnabled = false
        view.isUserInteractionEnabled = false
        //: self.addSubview(view)
        self.addSubview(view)
        //: return view
        return view
        //: }()
    }()

    //: private lazy var coverView: UIView = {
    private lazy var coverView: UIView = {
        //: let view = UIView()
        let view = UIView()
        //: view.backgroundColor = .clear
        view.backgroundColor = .clear
        //: view.layer.cornerRadius = 8
        view.layer.cornerRadius = 8
        //: view.layer.masksToBounds = true
        view.layer.masksToBounds = true
        //: self.addSubview(view)
        self.addSubview(view)
        //: view.isHidden = true
        view.isHidden = true
        //: return view
        return view
        //: }()
    }()

    //: private lazy var statusIcon: UIImageView = {
    private lazy var statusIcon: UIImageView = {
        //: let img = UIImageView()
        let img = UIImageView()
        //: img.image = UIImage.bundleBy(name: "icon_mini_voice_end")
        img.image = UIImage.bundleBy(name: (String(kStr_dataTitle.suffix(5)) + String(kStr_afterData) + kStr_makeContent.replacingOccurrences(of: "finish", with: "vo") + "_end"))
        //: coverView.addSubview(img)
        coverView.addSubview(img)
        //: return img
        return img
        //: }()
    }()

    //: private lazy var desLab: UILabel = {
    private lazy var desLab: UILabel = {
        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.textColor = UIColor(hex: "#F95151")
        lab.textColor = UIColor(hex: (String(kStr_recordValue) + kStr_yourData.capitalized))
        //: lab.font = .pingfangFont(type: .Medium, fontSize: 10)
        lab.font = .groupSize(type: .Medium, fontSize: 10)
        //: lab.textAlignment = .center
        lab.textAlignment = .center
        //: lab.text = "End of call".localized
        lab.text = (String(kStr_labelContent.prefix(4)) + "of call").localized
        //: coverView.addSubview(lab)
        coverView.addSubview(lab)
        //: return lab
        return lab
        //: }()
    }()

    //: private lazy var shadowImg: UIImageView = {
    private lazy var shadowImg: UIImageView = {
        //: let img = UIImageView()
        let img = UIImageView()
        //: img.image = UIImage.bundleBy(name: "img_home_shadow_icon")
        img.image = UIImage.bundleBy(name: (String(kStr_frontValue.suffix(5)) + String(kStr_postName.prefix(6)) + "adow" + String(kStr_dataName.suffix(5))))
        //: img.isUserInteractionEnabled = true
        img.isUserInteractionEnabled = true
        //: return img
        return img
        //: }()
    }()

    //: lazy var pointAnimView: TalkingPointAnimationView = {
    lazy var pointAnimView: WarpathNameViewReactiveCompatible = {
        //: let pointView = TalkingPointAnimationView.init()
        let pointView = WarpathNameViewReactiveCompatible()
        //: pointView.isUserInteractionEnabled = false
        pointView.isUserInteractionEnabled = false
        //: return pointView
        return pointView
        //: }()
    }()
}

// MARK: - Public Event

//: extension TalkingVideoMiniView {
extension BlockView {
    /// 构建视频小窗口
    //: static func buildVideoMiniView() -> TalkingVideoMiniView {
    static func sizeIcon() -> BlockView {
        //: let view = TalkingVideoMiniView(frame: .zero)
        let view = BlockView(frame: .zero)
        //: let position = TalkingSocketManager.shared.videoMiniPosition
        let position = ToSocketManager.shared.videoMiniPosition
        //: let x = (position.x == 0) ? position.x:position.x-view.bounds.size.width
        let x = (position.x == 0) ? position.x : position.x - view.bounds.size.width
        //: var y = position.y
        var y = position.y
        //: y = max(0, y)
        y = max(0, y)
        //: y = min(ScreenHeight-view.bounds.size.height, y)
        y = min(kLet_noSeatName - view.bounds.size.height, y)
        //: view.frame = CGRect(x: x, y: y, width: view.width, height: view.height)
        view.frame = CGRect(x: x, y: y, width: view.width, height: view.height)
        //: TalkingSocketManager.shared.containerView?.addSubview(view)
        ToSocketManager.shared.containerView?.addSubview(view)
        //: return view
        return view
    }

    //: func showPointAnimaData(point: String) {
    func modelTableTo(point: String) {
        //: self.addSubview(shadowImg)
        self.addSubview(shadowImg)
        //: self.addSubview(pointAnimView)
        self.addSubview(pointAnimView)
        //: pointAnimView.snp.remakeConstraints { make in
        pointAnimView.snp.remakeConstraints { make in
            //: make.leading.equalTo(5)
            make.leading.equalTo(5)
            //: make.trailing.equalTo(-5)
            make.trailing.equalTo(-5)
            //: make.bottom.equalTo(-5)
            make.bottom.equalTo(-5)
            //: make.height.equalTo(50)
            make.height.equalTo(50)
        }
        //: shadowImg.snp.remakeConstraints { make in
        shadowImg.snp.remakeConstraints { make in
            //: make.leading.equalTo(5)
            make.leading.equalTo(5)
            //: make.trailing.equalTo(-5)
            make.trailing.equalTo(-5)
            //: make.bottom.equalTo(-5)
            make.bottom.equalTo(-5)
            //: make.height.equalTo(50)
            make.height.equalTo(50)
        }
        //: pointAnimView.setPointData(point: point, isminiStr: true)
        pointAnimView.languageStr(point: point, isminiStr: true)
        //: DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 2.1) {
        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 2.1) {
            //: self.shadowImg.removeFromSuperview()
            self.shadowImg.removeFromSuperview()
        }
    }
}

// MARK: - Layout

//: extension TalkingVideoMiniView {
extension BlockView {
    //: private func setupSubViewsConstraint() {
    private func notSetup() {
        //: self.bounds = CGRect(x: 0, y: 0, width: 88, height: 127)
        self.bounds = CGRect(x: 0, y: 0, width: 88, height: 127)

        //: shadowView.snp.makeConstraints { make in
        shadowView.snp.makeConstraints { make in
            //: make.edges.equalTo(UIEdgeInsets(top: 6, left: 6, bottom: 6, right: 6))
            make.edges.equalTo(UIEdgeInsets(top: 6, left: 6, bottom: 6, right: 6))
        }

        //: bgView.snp.makeConstraints { make in
        bgView.snp.makeConstraints { make in
            //: make.edges.equalTo(shadowView)
            make.edges.equalTo(shadowView)
        }

        //: renderView.snp.makeConstraints { make in
        renderView.snp.makeConstraints { make in
            //: make.edges.equalTo(shadowView)
            make.edges.equalTo(shadowView)
        }

        //: coverView.snp.makeConstraints { make in
        coverView.snp.makeConstraints { make in
            //: make.edges.equalTo(shadowView)
            make.edges.equalTo(shadowView)
        }

        //: statusIcon.snp.makeConstraints { make in
        statusIcon.snp.makeConstraints { make in
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.width.height.equalTo(30)
            make.width.height.equalTo(30)
            //: make.bottom.equalTo(self.snp.centerY)
            make.bottom.equalTo(self.snp.centerY)
        }

        //: desLab.snp.makeConstraints { make in
        desLab.snp.makeConstraints { make in
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.top.equalTo(self.snp.centerY).offset(5)
            make.top.equalTo(self.snp.centerY).offset(5)
        }
    }
}
