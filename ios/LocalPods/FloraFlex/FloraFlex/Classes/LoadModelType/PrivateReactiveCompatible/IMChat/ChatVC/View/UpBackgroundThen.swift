
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let kStr_recordName:[UInt8] = [0xf5,0xfa,0xf5,0x0,0xb4,0xef,0xfb,0xf0,0xf1,0xfe,0xc6,0xb5,0xac,0xf4,0xed,0xff,0xac,0xfa,0xfb,0x0,0xac,0xee,0xf1,0xf1,0xfa,0xac,0xf5,0xf9,0xfc,0xf8,0xf1,0xf9,0xf1,0xfa,0x0,0xf1,0xf0]

fileprivate func showApp(user num: UInt8) -> UInt8 {
    let value = Int(num) - 140
    if value < 0 {
        return UInt8(value + 256)
    } else {
        return UInt8(value)
    }
}

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  UpBackgroundThen.swift
//  AbroadTalking
//
//  Created by DouXiu on 2024/8/26.
//

//: import UIKit
import UIKit

//: @available(iOS 13.2, *)
@available(iOS 13.2, *)
//: class MAScreenShieldView: UIView {
class UpBackgroundThen: UIView {
    //: class func create(_ frame: CGRect) -> UIView {
    class func imageTitle(_ frame: CGRect) -> UIView {
        //: return MAScreenShieldView(frame: frame)
        return UpBackgroundThen(frame: frame)
    }

    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: addSafeZoneView()
        blockOfMetal()
    }

    //: @available(*, unavailable)
    @available(*, unavailable)
    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: kStr_recordName.map{showApp(user: $0)}, encoding: .utf8)!)
    }

    // MARK: - Lazy Load

    //: private lazy var textField: UITextField = {
    private lazy var textField: UITextField = {
        //: let tf = UITextField()
        let tf = UITextField()
        //: tf.isSecureTextEntry = true
        tf.isSecureTextEntry = true
        //: tf.isEnabled = false
        tf.isEnabled = false
        //: return tf
        return tf
        //: }()
    }()

    //: private lazy var safeZone: UIView = {
    private lazy var safeZone: UIView = {
        //: let v = (textField.subviews.first != nil) ? self.textField.subviews.first : UIView()
        let v = (textField.subviews.first != nil) ? self.textField.subviews.first : UIView()
        //: v?.isUserInteractionEnabled = true
        v?.isUserInteractionEnabled = true
        //: for sub in v!.subviews {
        for sub in v!.subviews {
            //: sub.removeFromSuperview()
            sub.removeFromSuperview()
        }
        //: return v ?? UIView()
        return v ?? UIView()
        //: }()
    }()
}

// MARK: - Event

//: @available(iOS 13.2, *)
@available(iOS 13.2, *)
//: extension MAScreenShieldView {
extension UpBackgroundThen {
    //: func addSafeZoneView() {
    func blockOfMetal() {
        //: self.addSubview(self.safeZone)
        self.addSubview(self.safeZone)

        //: let lowPriority = UILayoutPriority.defaultLow - 1
        let lowPriority = UILayoutPriority.defaultLow - 1
        //: let heightPriority = UILayoutPriority.defaultHigh - 1
        let heightPriority = UILayoutPriority.defaultHigh - 1

        //: self.safeZone.translatesAutoresizingMaskIntoConstraints = false
        self.safeZone.translatesAutoresizingMaskIntoConstraints = false
        //: self.safeZone.setContentHuggingPriority(lowPriority, for: .vertical)
        self.safeZone.setContentHuggingPriority(lowPriority, for: .vertical)
        //: self.safeZone.setContentHuggingPriority(lowPriority, for: .horizontal)
        self.safeZone.setContentHuggingPriority(lowPriority, for: .horizontal)
        //: self.safeZone.setContentCompressionResistancePriority(heightPriority, for: .vertical)
        self.safeZone.setContentCompressionResistancePriority(heightPriority, for: .vertical)
        //: self.safeZone.setContentCompressionResistancePriority(heightPriority, for: .horizontal)
        self.safeZone.setContentCompressionResistancePriority(heightPriority, for: .horizontal)

        //: addConstraints([
        addConstraints([
            //: self.safeZone.topAnchor.constraint(equalTo: topAnchor),
            self.safeZone.topAnchor.constraint(equalTo: topAnchor),
            //: self.safeZone.bottomAnchor.constraint(equalTo: bottomAnchor),
            self.safeZone.bottomAnchor.constraint(equalTo: bottomAnchor),
            //: self.safeZone.leadingAnchor.constraint(equalTo: leadingAnchor),
            self.safeZone.leadingAnchor.constraint(equalTo: leadingAnchor),
            //: self.safeZone.trailingAnchor.constraint(equalTo: trailingAnchor)
            self.safeZone.trailingAnchor.constraint(equalTo: trailingAnchor),
            //: ])
        ])
    }

    //: override func addSubview(_ view: UIView) {
    override func addSubview(_ view: UIView) {
        //: if self.safeZone == view {
        if self.safeZone == view {
            //: super.addSubview(view)
            super.addSubview(view)
            //: } else {
        } else {
            //: self.safeZone.addSubview(view)
            self.safeZone.addSubview(view)
        }
    }

    //: override func insertSubview(_ view: UIView, at index: Int) {
    override func insertSubview(_ view: UIView, at index: Int) {
        //: if self.safeZone == view {
        if self.safeZone == view {
            //: super.insertSubview(view, at: index)
            super.insertSubview(view, at: index)
            //: } else {
        } else {
            //: self.safeZone.insertSubview(view, at: index)
            self.safeZone.insertSubview(view, at: index)
        }
    }

    //: override func insertSubview(_ view: UIView, aboveSubview siblingSubview: UIView) {
    override func insertSubview(_ view: UIView, aboveSubview siblingSubview: UIView) {
        //: if self.safeZone == view {
        if self.safeZone == view {
            //: super.insertSubview(view, aboveSubview: siblingSubview)
            super.insertSubview(view, aboveSubview: siblingSubview)
            //: } else {
        } else {
            //: self.safeZone.insertSubview(view, aboveSubview: siblingSubview)
            self.safeZone.insertSubview(view, aboveSubview: siblingSubview)
        }
    }

    //: override func insertSubview(_ view: UIView, belowSubview siblingSubview: UIView) {
    override func insertSubview(_ view: UIView, belowSubview siblingSubview: UIView) {
        //: if self.safeZone == view {
        if self.safeZone == view {
            //: super.insertSubview(view, belowSubview: siblingSubview)
            super.insertSubview(view, belowSubview: siblingSubview)
            //: } else {
        } else {
            //: self.safeZone.insertSubview(view, belowSubview: siblingSubview)
            self.safeZone.insertSubview(view, belowSubview: siblingSubview)
        }
    }
}
