
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let kStr_userData:[UInt8] = [0xb1,0xb6,0xb1,0xbc,0x70,0xab,0xb7,0xac,0xad,0xba,0x82,0x71,0x68,0xb0,0xa9,0xbb,0x68,0xb6,0xb7,0xbc,0x68,0xaa,0xad,0xad,0xb6,0x68,0xb1,0xb5,0xb8,0xb4,0xad,0xb5,0xad,0xb6,0xbc,0xad,0xac]

fileprivate func inFrame(mode num: UInt8) -> UInt8 {
    let value = Int(num) + 184
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
//  TimeToolView.swift
//  AbroadTalking
//
//  Created by Bolo on 2022/9/12.
//

//: import UIKit
import UIKit

//: class TPreviewBottomToolView: UIView {
class TimeToolView: UIView {
    //: var uid:String = ""
    var uid: String = ""
    //: var mid: String = ""
    var mid: String = ""
    //: var mType: String = ""
    var mType: String = ""
    //: var isLike = false
    var isLike = false
    //: let disposeBag = DisposeBag()
    let disposeBag = DisposeBag()
    //: var previewLikeBlock: (() -> Void)?
    var previewLikeBlock: (() -> Void)?
    //: var previewCommentBlock: (() -> Void)?
    var previewCommentBlock: (() -> Void)?
    //: var previewChatBlock: (() -> Void)?
    var previewChatBlock: (() -> Void)?
    //: var previewCrushBlock: (() -> Void)?
    var previewCrushBlock: (() -> Void)?

    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: self.setupSubviews()
        self.setupMention()
        //: self.setupSubViewsConstraint()
        self.missiveConstraint()
        //: self.bindInteraction()
        self.upwardly()
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: kStr_userData.map{inFrame(mode: $0)}, encoding: .utf8)!)
    }
}

// MARK: - Bind && Event

//: extension TPreviewBottomToolView {
extension TimeToolView {
    //: private func bindInteraction() {
    private func upwardly() {}

    //: @objc func registerLikeAction() {
    @objc func effectSize() {
        //: self.likeRequest()
        self.approve()
    }

    //: @objc func registerChatAction() {
    @objc func theme() {
        //: self.chatPush()
        self.upView()
    }

    //: @objc func registerCrushAction() {
    @objc func crush() {
        //: self.crushRequest()
        self.canulate()
    }

    //: @objc func registerCommentAction() {
    @objc func conversationTotal() {
        //: self.commentPush()
        self.addNow()
    }
}

// MARK: - update

//: extension TPreviewBottomToolView {
extension TimeToolView {
    //: func updateBottomView(model: TPreviewInfoModel) {
    func counteraction(model: CollectionInfoModel) {
        //: uid = model.uid
        uid = model.uid
        //: mid = model.mid
        mid = model.mid
        //: mType = model.mType
        mType = model.mType
    }

    //: private func chatPush() {
    private func upView() {}

    //: private func commentPush() {
    private func addNow() {}

    //: private func crushRequest() {
    private func canulate() {
        //: TalkingUserRequestManager.func__sendCrushWithUserId(targetUid: uid) { succeed, result, errorModel in
        SomeoneThen.belowMessage(targetUid: uid) { succeed, _, _ in
            //: if succeed == true {
            if succeed == true {
                // 播放动画
            }
        }
    }

    //: private func likeRequest() {
    private func approve() {
        //: TalkingUserRequestManager.func__likeMoment(mid: mid, type: mType) { succeed, result, errorModel in
        SomeoneThen.statusCompletion(mid: mid, type: mType) { succeed, _, _ in
            //: if succeed == true {
            if succeed == true {
                //: self.isLike = !self.isLike
                self.isLike = !self.isLike
            }
        }
    }
}

// MARK: Layout

//: extension TPreviewBottomToolView {
extension TimeToolView {
    //: private func setupSubviews() {
    private func setupMention() {}

    //: private func setupSubViewsConstraint() {
    private func missiveConstraint() {}
}
