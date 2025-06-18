
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let kStr_headText:[UInt8] = [0x5a,0x5d,0x5a,0x47,0x1b,0x50,0x5c,0x57,0x56,0x41,0x9,0x1a,0x13,0x5b,0x52,0x40,0x13,0x5d,0x5c,0x47,0x13,0x51,0x56,0x56,0x5d,0x13,0x5a,0x5e,0x43,0x5f,0x56,0x5e,0x56,0x5d,0x47,0x56,0x57]

private func drunkTo(center num: UInt8) -> UInt8 {
    return num ^ 51
}

/*: "icon_Topping_bg" :*/
fileprivate let kStr_soundImageValue:String = "icprogressn"
fileprivate let kStr_succeedText:String = "self accept model videoing_"
fileprivate let kStr_subText:String = "title"

/*: "btn_dynamic_stop_nor" :*/
fileprivate let kStr_timeCardValue:String = "btn_dyburn view lock capture"
fileprivate let kStr_netValue:String = "handle"
fileprivate let kStr_hiddenTitle:String = "position view position data if_stop_nor"

/*: "Reviewing" :*/
fileprivate let kStr_defineWrapName:String = "height gift self viewRe"
fileprivate let kStr_addText:[Character] = ["v","i","e","w","i","n","g"]

/*: "#FF506D" :*/
fileprivate let kStr_endValue:String = "#FF506in match to"
fileprivate let kStr_buttonData:String = "show"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  SeekWithItemCell.swift
//  AbroadTalking
//
//  Created by young on 2023/5/23.
//

//: import UIKit
import UIKit

//: class TalkingPostItemCell: UICollectionViewCell {
class SeekWithItemCell: UICollectionViewCell {
    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: kStr_headText.map{drunkTo(center: $0)}, encoding: .utf8)!)
    }

    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: self.backgroundColor = .clear
        self.backgroundColor = .clear

        //: setupSubviews()
        itemShow()
        //: setupSubViewsConstraint()
        spendCurrent()
    }

    // MARK: - Lazy Laod

    //: private lazy var icon: UIImageView = {
    private lazy var icon: UIImageView = {
        //: let icon = UIImageView()
        let icon = UIImageView()
        //: icon.contentMode = .scaleAspectFill
        icon.contentMode = .scaleAspectFill
        //: icon.layer.cornerRadius = 6
        icon.layer.cornerRadius = 6
        //: icon.layer.masksToBounds = true
        icon.layer.masksToBounds = true
        //: return icon
        return icon
        //: }()
    }()

    //: private lazy var topImage: UIImageView = {
    private lazy var topImage: UIImageView = {
        //: let img = UIImageView()
        let img = UIImageView()
        //: img.contentMode = .scaleAspectFill
        img.contentMode = .scaleAspectFill
        //: img.image = UIImage.bundleBy(name: "icon_Topping_bg")
        img.image = UIImage.bundleBy(name: (kStr_soundImageValue.replacingOccurrences(of: "progress", with: "o") + "_Topp" + String(kStr_succeedText.suffix(4)) + kStr_subText.replacingOccurrences(of: "title", with: "bg")))
        //: return img
        return img
        //: }()
    }()

    //: private lazy var playimageView: UIImageView = {
    private lazy var playimageView: UIImageView = {
        //: let img = UIImageView()
        let img = UIImageView()
        //: img.contentMode = .scaleAspectFill
        img.contentMode = .scaleAspectFill
        //: img.image = UIImage.bundleBy(name: "btn_dynamic_stop_nor")
        img.image = UIImage.bundleBy(name: (String(kStr_timeCardValue.prefix(6)) + "nami" + kStr_netValue.replacingOccurrences(of: "handle", with: "c") + String(kStr_hiddenTitle.suffix(9))))
        //: return img
        return img
        //: }()
    }()

    //: private lazy var reViewingLB: UILabel = {
    private lazy var reViewingLB: UILabel = {
        //: let lb = UILabel()
        let lb = UILabel()
        //: lb.text = "Reviewing".localized
        lb.text = (String(kStr_defineWrapName.suffix(2)) + String(kStr_addText)).localized
        //: lb.textColor = .white
        lb.textColor = .white
        //: lb.backgroundColor = UIColor.init(hex: "#FF506D")
        lb.backgroundColor = UIColor(hex: (String(kStr_endValue.prefix(6)) + kStr_buttonData.replacingOccurrences(of: "show", with: "D")))
        //: lb.textAlignment = .center
        lb.textAlignment = .center
        //: lb.font = UIFont.dorsum(fontSize: 12)
        lb.font = UIFont.dorsum(fontSize: 12)
        //: lb.layer.cornerRadius = 8
        lb.layer.cornerRadius = 8
        //: lb.layer.masksToBounds = true
        lb.layer.masksToBounds = true
        //: lb.isHidden = true
        lb.isHidden = true
        //: return lb
        return lb
        //: }()
    }()
}

// MARK: - Event

//: extension TalkingPostItemCell {
extension SeekWithItemCell {
    /// 刷新
    //: func refreshItem(_ model: TalkingUserInfoMomentItemModel) {
    func fromItem(_ model: PageHandyJSON) {
        //: icon.setUrlImage(urlStr: model.thumb_url)
        icon.timeFinish(urlStr: model.thumb_url)
        //: topImage.isHidden = !model.pinStatus
        topImage.isHidden = !model.pinStatus
        //: reViewingLB.isHidden = !model.reviewing
        reViewingLB.isHidden = !model.reviewing
        //: playimageView.isHidden = model.videoUrl.count > 0 ? false:true
        playimageView.isHidden = model.videoUrl.count > 0 ? false : true
    }
}

// MARK: - Layout

//: extension TalkingPostItemCell {
extension SeekWithItemCell {
    /// 添加视图
    //: private func setupSubviews() {
    private func itemShow() {
        //: contentView.addSubview(icon)
        contentView.addSubview(icon)
        //: contentView.addSubview(topImage)
        contentView.addSubview(topImage)
        //: contentView.addSubview(playimageView)
        contentView.addSubview(playimageView)
        //: contentView.addSubview(reViewingLB)
        contentView.addSubview(reViewingLB)
    }

    /// 添加约束
    //: private func setupSubViewsConstraint() {
    private func spendCurrent() {
        //: icon.snp.makeConstraints { make in
        icon.snp.makeConstraints { make in
            //: make.leading.top.equalToSuperview()
            make.leading.top.equalToSuperview()
            //: make.height.width.equalTo(actualWidth(w: 113))
            make.height.width.equalTo(originalScene(w: 113))
        }

        //: topImage.snp.makeConstraints { make in
        topImage.snp.makeConstraints { make in
            //: make.leading.top.equalTo(5)
            make.leading.top.equalTo(5)
            //: make.size.equalTo(CGSize(width: 50, height: 20))
            make.size.equalTo(CGSize(width: 50, height: 20))
        }

        //: playimageView.snp.makeConstraints { make in
        playimageView.snp.makeConstraints { make in
            //: make.center.equalTo(icon)
            make.center.equalTo(icon)
            //: make.size.equalTo(CGSize(width: 40, height: 40))
            make.size.equalTo(CGSize(width: 40, height: 40))
        }
        //: reViewingLB.snp.makeConstraints { make in
        reViewingLB.snp.makeConstraints { make in
            //: make.leading.top.equalTo(5)
            make.leading.top.equalTo(5)
            //: make.size.equalTo(CGSize(width: 65, height: 16))
            make.size.equalTo(CGSize(width: 65, height: 16))
        }
    }
}
