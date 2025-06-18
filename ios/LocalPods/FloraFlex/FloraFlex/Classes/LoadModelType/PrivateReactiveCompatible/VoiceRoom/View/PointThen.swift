
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let kStr_norData:[UInt8] = [0x47,0x40,0x47,0x5a,0x6,0x4d,0x41,0x4a,0x4b,0x5c,0x14,0x7,0xe,0x46,0x4f,0x5d,0xe,0x40,0x41,0x5a,0xe,0x4c,0x4b,0x4b,0x40,0xe,0x47,0x43,0x5e,0x42,0x4b,0x43,0x4b,0x40,0x5a,0x4b,0x4a]

private func toLeading(color num: UInt8) -> UInt8 {
    return num ^ 46
}

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  PointThen.swift
//  FloraFlex
//
//  Created by DouXiu on 2024/9/23.
//

//: import UIKit
import UIKit

//: class TalkingVoiceRoomMikePositionView: UIView {
class PointThen: UIView {
    //: public var showUserCardBlock: ((_ uid: Int) -> Void)?
    public var showUserCardBlock: ((_ uid: Int) -> Void)?

    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: setupSubviews()
        modelAddSend()
    }

    //: @available(*, unavailable)
    @available(*, unavailable)
    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: kStr_norData.map{toLeading(color: $0)}, encoding: .utf8)!)
    }
}

// MARK: - Event

//: extension TalkingVoiceRoomMikePositionView {
extension PointThen {
    /// 刷新全部麦位视图
    //: func refreshAllMikeView() {
    func reloadUponViewPush() {
        //: let dict = TalkingVoiceRoomManager.shared().getAllMikePositions()
        let dict = SubCheckedReactiveCompatible.replyShared().magnitudePositions()
        //: dict.forEach { (key: Int, model: TalkingMikeListItemModel) in
        dict.forEach { (key: Int, model: SharedModelMeasurable) in
            //: let itemView = self.viewWithTag(100 + key) as? TalkingMikePositionItemView
            let itemView = self.viewWithTag(100 + key) as? FailureView
            //: itemView?.refreshMikeItemView(key, model: model)
            itemView?.toSharedModel(key, model: model)
        }
    }

    /// 刷新单个麦位视图
    /// - Parameter position: 麦位
    //: func refreshSingleMikeView(position: Int) {
    func placeFile(position: Int) {
        //: guard let model = TalkingVoiceRoomManager.shared().getMikePosition(key: position) else { return }
        guard let model = SubCheckedReactiveCompatible.replyShared().imageGet(key: position) else { return }
        //: let itemView = self.viewWithTag(100 + position) as? TalkingMikePositionItemView
        let itemView = self.viewWithTag(100 + position) as? FailureView
        //: itemView?.refreshMikeItemView(position, model: model)
        itemView?.toSharedModel(position, model: model)
    }

    /// 刷新声浪等级动效
    /// - Parameters:
    ///   - position: 麦位
    ///   - level: 声浪值
    //: func refreshSoundLevelAnimation(position: Int, level: NSNumber) {
    func outsideWhen(position: Int, level: NSNumber) {
        //: guard let model = TalkingVoiceRoomManager.shared().getMikePosition(key: position) else { return }
        guard let model = SubCheckedReactiveCompatible.replyShared().imageGet(key: position) else { return }
        //: guard model.mikeStatus == 2 else { return }
        guard model.mikeStatus == 2 else { return }
        //: let itemView = self.viewWithTag(100 + position) as? TalkingMikePositionItemView
        let itemView = self.viewWithTag(100 + position) as? FailureView
        //: itemView?.animateCircle(withAmplitude: CGFloat(truncating: level))
        itemView?.topTitle(withAmplitude: CGFloat(truncating: level))
    }
}

// MARK: - Layout

//: extension TalkingVoiceRoomMikePositionView {
extension PointThen {
    /// 添加视图
    //: private func setupSubviews() {
    private func modelAddSend() {
        //: for index in 0 ..< MIKE_SEAT_COUNT {
        for index in 0 ..< kLet_messageData {
            //: let row = index / 4
            let row = index / 4
            //: let column = index % 4
            let column = index % 4
            //: var startX = 17.5 + CGFloat(column) * MikePositionItemView_Size.width
            var startX = 17.5 + CGFloat(column) * kLet_formatVoiceValue.width
            //: if LanguageManager.shared.direction == .rightToLeft {
            if DeleteClientThen.shared.direction == .rightToLeft {
                //: startX = ScreenWidth - startX - MikePositionItemView_Size.width
                startX = kLet_halfData - startX - kLet_formatVoiceValue.width
            }
            //: let item = TalkingMikePositionItemView()
            let item = FailureView()
            //: item.origin = CGPoint(
            item.origin = CGPoint(
                //: x: startX,
                x: startX,
                //: y: CGFloat(row) * MikePositionItemView_Size.height
                y: CGFloat(row) * kLet_formatVoiceValue.height
            )
            //: item.size = MikePositionItemView_Size
            item.size = kLet_formatVoiceValue
            //: item.tag = index + 100
            item.tag = index + 100
            //: item.showUserCardBlock = { [weak self] uid in
            item.showUserCardBlock = { [weak self] uid in
                //: guard let self = self else { return }
                guard let self = self else { return }
                //: self.showUserCardBlock?(uid)
                self.showUserCardBlock?(uid)
            }
            //: self.addSubview(item)
            self.addSubview(item)
        }
    }
}
