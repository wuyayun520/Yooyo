
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let kStr_statusTitle:[UInt8] = [0xbd,0xc2,0xbd,0xc8,0x7c,0xb7,0xc3,0xb8,0xb9,0xc6,0x8e,0x7d,0x74,0xbc,0xb5,0xc7,0x74,0xc2,0xc3,0xc8,0x74,0xb6,0xb9,0xb9,0xc2,0x74,0xbd,0xc1,0xc4,0xc0,0xb9,0xc1,0xb9,0xc2,0xc8,0xb9,0xb8]

fileprivate func deleteKick(event num: UInt8) -> UInt8 {
    let value = Int(num) + 172
    if value > 255 {
        return UInt8(value - 256)
    } else {
        return UInt8(value)
    }
}

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  TableItemView.swift
//  AbroadTalking
//
//  Created by Charlotte on 2023/3/7.
//

//: import UIKit
import UIKit

//: protocol GiftAnimatItemViewDelegate: NSObject {
protocol BackReactiveCompatible: NSObject {
    // 资源下载成功，开始播放动效
    //: func giftEffectItemView(effectItemView: TalkingGiftAnimatItemView, success: Bool)
    func anagrammatise(effectItemView: TableItemView, success: Bool)

    // 资源下载失败 或 播放完成
    //: func didFinishAnimationOfGift(effectItemView: TalkingGiftAnimatItemView)
    func dismissStatus(effectItemView: TableItemView)
}

/// 礼物动画效果的加载类，基类，定义了基础的开始，停止，清除的方法；具体动效根据effectMsgModel信息加载对应子类
//: class TalkingGiftAnimatItemView: UIView {
class TableItemView: UIView {
    //: var effectMsgModel: TalkingAnimatMsgModel?
    var effectMsgModel: SucceedHandyJSON?
    //: var giftEffectModel: TalkingGiftAnimatModel?
    var giftEffectModel: LoadModelType?
    //: open weak var delegate: GiftAnimatItemViewDelegate?
    open weak var delegate: BackReactiveCompatible?

    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: kStr_statusTitle.map{deleteKick(event: $0)}, encoding: .utf8)!)
    }

    //: deinit {
    deinit {}

    //: func startAnimating() {
    func detailWith() {}

    //: func stopAnimating() {
    func figureAnimating() {}

    //: func cleanAnimating() {
    func toSelectedObserver() {}

    //: func pauseAnimation() {
    func animationShared() {}

    //: func resumeAnimation() ->Bool {
    func popOut() -> Bool {
        //: return false
        return false
    }

    //: func func__filePathOfName(fileName: String) ->String {
    func outCurrent(fileName: String) -> String {
        //: return TalkingGiftAnimatTool.shared.filePathOfNameWithAnimatMsgModel(fileName: fileName, model: self.effectMsgModel!)
        return TableAnimatTool.shared.clickRecord(fileName: fileName, model: self.effectMsgModel!)
    }
}
