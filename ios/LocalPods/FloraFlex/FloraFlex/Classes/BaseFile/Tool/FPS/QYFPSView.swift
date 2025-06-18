
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let kStr_regularAfterTitle:[UInt8] = [0xbb,0xbc,0xbb,0xa6,0xfa,0xb1,0xbd,0xb6,0xb7,0xa0,0xe8,0xfb,0xf2,0xba,0xb3,0xa1,0xf2,0xbc,0xbd,0xa6,0xf2,0xb0,0xb7,0xb7,0xbc,0xf2,0xbb,0xbf,0xa2,0xbe,0xb7,0xbf,0xb7,0xbc,0xa6,0xb7,0xb6]

private func originColor(value num: UInt8) -> UInt8 {
    return num ^ 210
}

/*: FPS" :*/
fileprivate let kStr_resultName:String = "FPsource"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  QYFPSView.swift
//  Test
//
//  Created by young on 2023/6/13.
//

//: import UIKit
import UIKit

//: class FPSView: TalkingBaseMiniView {
class AdventureView: BaseReactiveCompatible {
    //: private var displayLink: CADisplayLink!
    private var displayLink: CADisplayLink!
    //: private var count: Int = 0
    private var count: Int = 0
    //: private var lastTime: TimeInterval = 0
    private var lastTime: TimeInterval = 0

    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: createUI()
        confinesLine()
        //: startDisplayLink()
        betweenBe()
        //: addTapAndPanGestures()
        outsidePost()
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: kStr_regularAfterTitle.map{originColor(value: $0)}, encoding: .utf8)!)
    }

    // MARK: - Lazy Load

    //: private lazy var fpsLab: UILabel = {
    private lazy var fpsLab: UILabel = {
        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.backgroundColor = UIColor.black.withAlphaComponent(0.5)
        lab.backgroundColor = UIColor.black.withAlphaComponent(0.5)
        //: lab.textColor = .green
        lab.textColor = .green
        //: lab.font = .systemFont(ofSize: 12)
        lab.font = .systemFont(ofSize: 12)
        //: lab.textAlignment = .center
        lab.textAlignment = .center
        //: lab.layer.cornerRadius = 5
        lab.layer.cornerRadius = 5
        //: lab.layer.masksToBounds = true
        lab.layer.masksToBounds = true
        //: return lab
        return lab
        //: }()
    }()
}

// MARK: - Event

//: extension FPSView {
extension AdventureView {
    /// 展示视图
    //: class func showFPS() {
    class func mobile() {
        //: let view = FPSView()
        let view = AdventureView()
        //: view.frame = CGRect(x: ScreenWidth-50, y: 100, width: 50, height: 20)
        view.frame = CGRect(x: kLet_halfData - 50, y: 100, width: 50, height: 20)
        //: TalkingSocketManager.shared.containerView?.addSubview(view)
        ToSocketManager.shared.containerView?.addSubview(view)
    }

    //: func startDisplayLink() {
    func betweenBe() {
        //: weak var weakSelf = self
        weak var weakSelf = self
        //: displayLink = CADisplayLink(target: weakSelf!, selector: #selector(updateFPS))
        displayLink = CADisplayLink(target: weakSelf!, selector: #selector(stochasticProcess))
        //: displayLink.add(to: .main, forMode: .common)
        displayLink.add(to: .main, forMode: .common)
    }

    //: @objc private func updateFPS() {
    @objc private func stochasticProcess() {
        //: guard lastTime > 0 else {
        guard lastTime > 0 else {
            //: lastTime = displayLink.timestamp
            lastTime = displayLink.timestamp
            //: return
            return
        }

        //: count += 1
        count += 1
        //: let delta = displayLink.timestamp - lastTime
        let delta = displayLink.timestamp - lastTime
        //: guard delta >= 1.0 else {
        guard delta >= 1.0 else {
            //: return
            return
        }

        //: lastTime = displayLink.timestamp
        lastTime = displayLink.timestamp
        //: let fps = Double(count) / delta
        let fps = Double(count) / delta
        //: count = 0
        count = 0

        //: fpsLab.text = "\(lround(fps))FPS"
        fpsLab.text = "\(lround(fps))" + (kStr_resultName.replacingOccurrences(of: "source", with: "S"))
    }
}

// MARK: - Layout

//: extension FPSView {
extension AdventureView {
    //: private func createUI() {
    private func confinesLine() {
        //: self.addSubview(fpsLab)
        self.addSubview(fpsLab)
        //: fpsLab.snp.makeConstraints { make in
        fpsLab.snp.makeConstraints { make in
            //: make.edges.equalToSuperview()
            make.edges.equalToSuperview()
        }
    }
}
