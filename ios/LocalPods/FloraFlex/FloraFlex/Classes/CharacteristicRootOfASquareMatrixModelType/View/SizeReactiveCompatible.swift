
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let kStr_arrayValue:[UInt8] = [0x79,0x7e,0x79,0x64,0x38,0x73,0x7f,0x74,0x75,0x62,0x2a,0x39,0x30,0x78,0x71,0x63,0x30,0x7e,0x7f,0x64,0x30,0x72,0x75,0x75,0x7e,0x30,0x79,0x7d,0x60,0x7c,0x75,0x7d,0x75,0x7e,0x64,0x75,0x74]

private func willTrue(state num: UInt8) -> UInt8 {
    return num ^ 16
}

/*: "Video processing" :*/
fileprivate let kStr_whiteValue:[Character] = ["V","i","d"]
fileprivate let kStr_modeEqualData:String = "self equal locationeo pro"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  SizeReactiveCompatible.swift
//  AbroadTalking
//
//  Created by young on 2022/10/31.
//

//: import UIKit
import UIKit

//: class TalkingMomentCircleProgressView: UIView {
class SizeReactiveCompatible: UIView {
    //: var progress: CGFloat = 0.0 {
    var progress: CGFloat = 0.0 {
        //: willSet {
        willSet {
            //: self.progressView.updatePercent(percent: newValue)
            self.progressView.sizeMessagePercent(percent: newValue)
        }
    }

    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: self.backgroundColor = UIColor.RGBA(0, 0, 0, 0.5)
        self.backgroundColor = UIColor.largesse(0, 0, 0, 0.5)
        //: self.layer.cornerRadius = 12
        self.layer.cornerRadius = 12
        //: self.layer.masksToBounds = true
        self.layer.masksToBounds = true

        //: setupSubviews()
        countimateCreate()
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: kStr_arrayValue.map{willTrue(state: $0)}, encoding: .utf8)!)
    }

    //: deinit {
    deinit {}

    // MARK: - Lazy Load

    //: private lazy var label: UILabel = {
    private lazy var label: UILabel = {
        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.font = UIFont.messageDown(fontSize: 14)
        lab.font = UIFont.messageDown(fontSize: 14)
        //: lab.textColor = .white
        lab.textColor = .white
        //: lab.text = "Video processing".localized
        lab.text = (String(kStr_whiteValue) + String(kStr_modeEqualData.suffix(6)) + "cessing").localized
        //: return lab
        return lab
        //: }()
    }()

    //: private lazy var progressView: TalkingCircleProgressView = {
    private lazy var progressView: UpView = {
        //: let v = TalkingCircleProgressView()
        let v = UpView()
        //: v.backgroundColor = .clear
        v.backgroundColor = .clear
        //: v.strokeColor = UIColor.RGBA(255, 255, 255, 1.0)
        v.strokeColor = UIColor.largesse(255, 255, 255, 1.0)
        //: v.circleBgColor = UIColor.RGBA(255, 255, 255, 0.2)
        v.circleBgColor = UIColor.largesse(255, 255, 255, 0.2)
        //: v.strokeWidth = 4.0
        v.strokeWidth = 4.0
        //: return v
        return v
        //: }()
    }()
}

// MARK: - Event

//: extension TalkingMomentCircleProgressView {
extension SizeReactiveCompatible {
    /// 展示视图
    //: func show(superView: UIView?) {
    func writeName(superView: UIView?) {
        //: var view = superView
        var view = superView
        //: if view == nil {
        if view == nil {
            //: view = TableMacroDefine.getWindow()
            view = TableMacroDefine.oeilDeBoeufView()
        }
        //: guard view != nil else { return }
        guard view != nil else { return }
        //: self.center = view!.center
        self.center = view!.center
        //: view!.addSubview(self)
        view!.addSubview(self)
        //: setupSubViewsConstraint()
        container()
    }
}

// MARK: - Layout

//: extension TalkingMomentCircleProgressView {
extension SizeReactiveCompatible {
    /// 添加视图
    //: private func setupSubviews() {
    private func countimateCreate() {
        //: self.addSubview(label)
        self.addSubview(label)
        //: self.addSubview(progressView)
        self.addSubview(progressView)
    }

    /// 添加约束
    //: private func setupSubViewsConstraint() {
    private func container() {
        //: progressView.snp.makeConstraints { make in
        progressView.snp.makeConstraints { make in
            //: make.center.equalTo(self)
            make.center.equalTo(self)
            //: make.size.equalTo(CGSize(width: 40, height: 40))
            make.size.equalTo(CGSize(width: 40, height: 40))
        }

        //: label.snp.makeConstraints { make in
        label.snp.makeConstraints { make in
            //: make.centerX.equalTo(self)
            make.centerX.equalTo(self)
            //: make.height.equalTo(28)
            make.height.equalTo(28)
            //: make.bottom.equalTo(-6)
            make.bottom.equalTo(-6)
        }
    }
}
