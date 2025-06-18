
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let kStr_blockTitle:[UInt8] = [0x6d,0x6a,0x6d,0x70,0x2c,0x67,0x6b,0x60,0x61,0x76,0x3e,0x2d,0x24,0x6c,0x65,0x77,0x24,0x6a,0x6b,0x70,0x24,0x66,0x61,0x61,0x6a,0x24,0x6d,0x69,0x74,0x68,0x61,0x69,0x61,0x6a,0x70,0x61,0x60]

/*: "bg_medals_podium" :*/
fileprivate let kStr_colorValue:String = "make show transform else truebg_me"
fileprivate let kStr_atTitle:String = "UM"

/*: "icon_rank_first_bg" :*/
fileprivate let kStr_upUserValue:[Character] = ["i","c","o","n","_","r","a","n","k","_","f","i","r","s"]
fileprivate let kStr_textValue:[Character] = ["t","_","b","g"]

/*: "icon_rank_first" :*/
fileprivate let kStr_clearValue:String = "icon_name make make observer self"
fileprivate let kStr_finishName:String = "rsback"

/*: "icon_ammount_points" :*/
fileprivate let kStr_objectTitle:String = "value icon return add makeicon_"
fileprivate let kStr_managerData:[Character] = ["n","t","_","p","o","i","n","t","s"]

/*: "icon_lounge" :*/
fileprivate let kStr_toPriceName:[Character] = ["i","c","o","n","_","l","o","u"]
fileprivate let kStr_tingTitle:String = "ndata"

/*: "icon_rank_coin" :*/
fileprivate let kStr_groupTitle:String = "icon_rtext stroke make female self"

/*: "icon_rank_coin2" :*/
fileprivate let kStr_userSizeTitleContent:[Character] = ["i","c","o","n","_","r","a","n","k","_","c","o","i","n","2"]

/*: "icon_rank_second" :*/
fileprivate let kStr_modeCellValue:String = "willcon"
fileprivate let kStr_photoColorValue:String = "k_secondimage else"

/*: "icon_rank_third" :*/
fileprivate let kStr_rawContent:[Character] = ["i","c","o","n","_","r","a","n","k","_","t","h","i","r","d"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  ImageView.swift
//  AbroadTalking
//
//  Created by Bolo on 2022/9/14.
//

//: import Then
import Then
//: import UIKit
import UIKit

//: class SocialRankHeaderView: UIView {
class ImageView: UIView {
    //: var  index = 0
    var index = 0

    // MARK: param

    //: var dataArray: [SocialRankItemModel] = [] {
    var dataArray: [PointButtonMeasurable] = [] {
        //: didSet {
        didSet {
            //: self.updateSubviewsWithData()
            self.modifyOrAggregationData()
        }
    }

    // MARK: Life

    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: self.setupSubviews()
        self.listInstance()
        //: self.setupSubViewsConstraint()
        self.osculatingCircleChange()
        //: self.bindInteraction()
        self.toiletBag()
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: kStr_blockTitle.map{$0^4}, encoding: .utf8)!)
    }

    // MARK: UI

    //: lazy var medalsView = UIImageView().then {
    lazy var medalsView = UIImageView().then {
        //: $0.image = UIImage.bundleBy(name: "bg_medals_podium")
        $0.image = UIImage.bundleBy(name: (String(kStr_colorValue.suffix(5)) + "dals_podi" + kStr_atTitle.lowercased()))
    }

    //: lazy var firstView = SocialRankHeaderItemView.init(frame: .zero, rankType: .firstRankType).then {
    lazy var firstView = InstanceView(frame: .zero, rankType: .firstRankType).then {
        //: $0.backgroundColor = .clear
        $0.backgroundColor = .clear
        //: $0.tag = 0
        $0.tag = 0
        //: let tap = UITapGestureRecognizer.init(target: self, action: #selector(registTapAction))
        let tap = UITapGestureRecognizer(target: self, action: #selector(markGesture))
        //: $0.addGestureRecognizer(tap)
        $0.addGestureRecognizer(tap)
    }

    //: lazy var secondView = SocialRankHeaderItemView.init(frame: .zero, rankType: .secondRankType).then {
    lazy var secondView = InstanceView(frame: .zero, rankType: .secondRankType).then {
        //: $0.backgroundColor = .clear
        $0.backgroundColor = .clear
        //: $0.tag = 1
        $0.tag = 1
        //: let tap = UITapGestureRecognizer.init(target: self, action: #selector(registTapAction))
        let tap = UITapGestureRecognizer(target: self, action: #selector(markGesture))
        //: $0.addGestureRecognizer(tap)
        $0.addGestureRecognizer(tap)
    }

    //: lazy var thirdView = SocialRankHeaderItemView.init(frame: .zero, rankType: .thirdRankType).then {
    lazy var thirdView = InstanceView(frame: .zero, rankType: .thirdRankType).then {
        //: $0.backgroundColor = .clear
        $0.backgroundColor = .clear
        //: $0.tag = 2
        $0.tag = 2
        //: let tap = UITapGestureRecognizer.init(target: self, action: #selector(registTapAction))
        let tap = UITapGestureRecognizer(target: self, action: #selector(markGesture))
        //: $0.addGestureRecognizer(tap)
        $0.addGestureRecognizer(tap)
    }
}

// MARK: - Bind && Event

//: extension SocialRankHeaderView {
extension ImageView {
    //: private func bindInteraction() {
    private func toiletBag() {}

    //: private func updateSubviewsWithData() {
    private func modifyOrAggregationData() {
        //: firstView.updateItemWithModel(model: dataArray[0], type: self.index)
        firstView.carryOffType(model: dataArray[0], type: self.index)
        //: secondView.updateItemWithModel(model: dataArray.count>1 ? dataArray[1]: nil, type: self.index)
        secondView.carryOffType(model: dataArray.count > 1 ? dataArray[1] : nil, type: self.index)
        //: thirdView.updateItemWithModel(model: dataArray.count>2 ? dataArray[2]: nil, type: self.index)
        thirdView.carryOffType(model: dataArray.count > 2 ? dataArray[2] : nil, type: self.index)
    }

    //: @objc func registTapAction(tapGesture: UITapGestureRecognizer) {
    @objc func markGesture(tapGesture: UITapGestureRecognizer) {
        //: let viewTag = tapGesture.view?.tag
        let viewTag = tapGesture.view?.tag
        //: let model = dataArray[viewTag ?? 0]
        let model = dataArray[viewTag ?? 0]
        //: guard model.uid != 0 else {
        guard model.uid != 0 else {
            //: return
            return
        }

        //: EffectPushManager.share.func__pushToUserDetailVC(uid: "\(model.uid)")
        EffectPushManager.share.userAdd(uid: "\(model.uid)")
    }
}

// MARK: Layout

//: extension SocialRankHeaderView {
extension ImageView {
    //: private func setupSubviews() {
    private func listInstance() {
        //: addSubview(medalsView)
        addSubview(medalsView)
        //: addSubview(firstView)
        addSubview(firstView)
        //: addSubview(secondView)
        addSubview(secondView)
        //: addSubview(thirdView)
        addSubview(thirdView)
    }

    //: private func setupSubViewsConstraint() {
    private func osculatingCircleChange() {
        //: let firstWidth = (ScreenWidth - actualWidth(w: 68)) / 3 + actualWidth(w: 10)
        let firstWidth = (kLet_halfData - originalScene(w: 68)) / 3 + originalScene(w: 10)
        //: let itemWidth = (ScreenWidth - actualWidth(w: 68)) / 3 - actualWidth(w: 10)
        let itemWidth = (kLet_halfData - originalScene(w: 68)) / 3 - originalScene(w: 10)
        //: let firstHeight = actualHeight(h: 140)
        let firstHeight = mediaBlock(h: 140)
        //: let itemHeight = actualHeight(h: 120)
        let itemHeight = mediaBlock(h: 120)

        //: secondView.snp.makeConstraints { make in
        secondView.snp.makeConstraints { make in
            //: make.leading.equalTo(actualWidth(w: 34+5))
            make.leading.equalTo(originalScene(w: 34 + 5))
            //: make.bottom.equalTo(medalsView.snp.bottom).offset(actualHeight(h: -60))
            make.bottom.equalTo(medalsView.snp.bottom).offset(mediaBlock(h: -60))
            //: make.size.equalTo(CGSize(width: itemWidth, height: itemHeight))
            make.size.equalTo(CGSize(width: itemWidth, height: itemHeight))
        }

        //: firstView.snp.makeConstraints { make in
        firstView.snp.makeConstraints { make in
            //: make.centerX.equalTo(medalsView.snp.centerX)
            make.centerX.equalTo(medalsView.snp.centerX)
            //: make.bottom.equalTo(medalsView.snp.bottom).offset(actualHeight(h: -94))
            make.bottom.equalTo(medalsView.snp.bottom).offset(mediaBlock(h: -94))
            //: make.size.equalTo(CGSize(width: firstWidth, height: firstHeight))
            make.size.equalTo(CGSize(width: firstWidth, height: firstHeight))
        }

        //: thirdView.snp.makeConstraints { make in
        thirdView.snp.makeConstraints { make in
            //: make.trailing.equalTo(actualWidth(w: -34-5))
            make.trailing.equalTo(originalScene(w: -34 - 5))
            //: make.bottom.equalTo(medalsView.snp.bottom).offset(actualHeight(h: -54))
            make.bottom.equalTo(medalsView.snp.bottom).offset(mediaBlock(h: -54))
            //: make.size.equalTo(CGSize(width: itemWidth, height: itemHeight))
            make.size.equalTo(CGSize(width: itemWidth, height: itemHeight))
        }

        //: medalsView.snp.makeConstraints { make in
        medalsView.snp.makeConstraints { make in
            //: make.leading.equalTo(actualWidth(w: 34))
            make.leading.equalTo(originalScene(w: 34))
            //: make.trailing.equalTo(actualWidth(w: -34))
            make.trailing.equalTo(originalScene(w: -34))
            //: make.top.equalTo(actualHeight(h: 20))
            make.top.equalTo(mediaBlock(h: 20))
            //: make.bottom.equalTo(0)
            make.bottom.equalTo(0)
        }
    }
}

// MARK: - InstanceView

//: class SocialRankHeaderItemView: UIView {
class InstanceView: UIView {
    //: enum SRankHeaderItemType: Int {
    enum NameButton: Int {
        //: case firstRankType
        case firstRankType
        //: case secondRankType
        case secondRankType
        //: case thirdRankType
        case thirdRankType
    }

    // MARK: Life

    //: public init(frame: CGRect, rankType: SRankHeaderItemType) {
    public init(frame: CGRect, rankType: NameButton) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: self.setupItemViews(type: rankType)
        self.itemReserve(type: rankType)
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: kStr_blockTitle.map{$0^4}, encoding: .utf8)!)
    }

    //: lazy var headPicBgView = UIImageView().then {
    lazy var headPicBgView = UIImageView().then {
        //: $0.image = UIImage.bundleBy(name: "icon_rank_first_bg")
        $0.image = UIImage.bundleBy(name: (String(kStr_upUserValue) + String(kStr_textValue)))
    }

    //: lazy var headPic = UIImageView().then {
    lazy var headPic = UIImageView().then {
        //: $0.contentMode = .scaleAspectFill
        $0.contentMode = .scaleAspectFill
        //: $0.layer.masksToBounds = true
        $0.layer.masksToBounds = true
        //: $0.layer.borderWidth = 3
        $0.layer.borderWidth = 3
    }

    //: lazy var crownImgView = UIImageView().then {
    lazy var crownImgView = UIImageView().then {
        //: $0.image = UIImage.bundleBy(name: "icon_rank_first")
        $0.image = UIImage.bundleBy(name: (String(kStr_clearValue.prefix(5)) + "rank_fi" + kStr_finishName.replacingOccurrences(of: "back", with: "t")))
    }

    //: lazy var nickLabel = UILabel().then {
    lazy var nickLabel = UILabel().then {
        //: $0.textColor = .white
        $0.textColor = .white
        //: $0.font = .pingfangFont(type: .Medium, fontSize: 18)
        $0.font = .groupSize(type: .Medium, fontSize: 18)
        //: $0.textAlignment = .center
        $0.textAlignment = .center
    }

    //: lazy var coinButton = TalkingButton().then {
    lazy var coinButton = OverdoTalkingButton().then {
        //: $0.isUserInteractionEnabled = false
        $0.isUserInteractionEnabled = false
        //: $0.setImage(UIImage.bundleBy(name: "icon_ammount_points"), for: .normal)
        $0.setImage(UIImage.bundleBy(name: (String(kStr_objectTitle.suffix(5)) + "ammou" + String(kStr_managerData))), for: .normal)
        //: $0.titleLabel?.font = .pingfangFont(type: .Regular, fontSize: 13)
        $0.titleLabel?.font = .groupSize(type: .Regular, fontSize: 13)
        //: $0.setTitle("0", for: .normal)
        $0.setTitle("0", for: .normal)
        //: $0.imageView?.contentMode = .scaleAspectFill
        $0.imageView?.contentMode = .scaleAspectFill
        //: $0.imageAlignment = .left
        $0.imageAlignment = .left
        //: $0.spaceBetweenTitleAndImage = 2
        $0.spaceBetweenTitleAndImage = 2
    }

    //: lazy var loungeImgV = UIImageView().then {
    lazy var loungeImgV = UIImageView().then {
        //: $0.image = UIImage.bundleBy(name: "icon_lounge")
        $0.image = UIImage.bundleBy(name: (String(kStr_toPriceName) + kStr_tingTitle.replacingOccurrences(of: "data", with: "ge")))
    }
}

// MARK: - Event

//: extension SocialRankHeaderItemView {
extension InstanceView {
    //: func updateItemWithModel(model: SocialRankItemModel?, type: Int) {
    func carryOffType(model: PointButtonMeasurable?, type: Int) {
        //: guard model != nil && model?.isEmpty == false else {
        guard model != nil, model?.isEmpty == false else {
            //: self.isHidden = true
            self.isHidden = true
            //: return
            return
        }
        //: headPic.setUrlImage(urlStr: model!.headPic, placeImg: UIImage.placeHolderImage(sex: model!.sex))
        headPic.failureFinish(urlStr: model!.headPic, placeImg: UIImage.deliver(sex: model!.sex))
        //: nickLabel.text = model!.nickname
        nickLabel.text = model!.nickname
        //: coinButton.setTitle("\(model!.value)", for: .normal)
        coinButton.setTitle("\(model!.value)", for: .normal)

        //: loungeImgV.isHidden = !model!.loungePlus
        loungeImgV.isHidden = !model!.loungePlus
        //: if loungeImgV.isHidden == false {
        if loungeImgV.isHidden == false {
            //: nickLabel.snp.remakeConstraints({ make in
            nickLabel.snp.remakeConstraints { make in
                //: make.top.equalTo(headPic.snp.bottom).offset(actualHeight(h: 6))
                make.top.equalTo(headPic.snp.bottom).offset(mediaBlock(h: 6))
                //: make.height.equalTo(actualHeight(h: 18))
                make.height.equalTo(mediaBlock(h: 18))
                //: make.centerX.equalToSuperview()
                make.centerX.equalToSuperview()
                //: })
            }
            //: loungeImgV.snp.remakeConstraints { make in
            loungeImgV.snp.remakeConstraints { make in
                //: make.leading.equalTo(nickLabel.snp.trailing).offset(2)
                make.leading.equalTo(nickLabel.snp.trailing).offset(2)
                //: make.centerY.equalTo(nickLabel)
                make.centerY.equalTo(nickLabel)
                //: make.size.equalTo(CGSize(width: 20, height: 20))
                make.size.equalTo(CGSize(width: 20, height: 20))
                //: make.trailing.lessThanOrEqualToSuperview().offset(-2)
                make.trailing.lessThanOrEqualToSuperview().offset(-2)
            }
            //: } else {
        } else {
            //: nickLabel.snp.remakeConstraints { make in
            nickLabel.snp.remakeConstraints { make in
                //: make.leading.equalTo(2)
                make.leading.equalTo(2)
                //: make.trailing.equalTo(-2)
                make.trailing.equalTo(-2)
                //: make.top.equalTo(headPic.snp.bottom).offset(actualHeight(h: 6))
                make.top.equalTo(headPic.snp.bottom).offset(mediaBlock(h: 6))
                //: make.height.equalTo(actualHeight(h: 18))
                make.height.equalTo(mediaBlock(h: 18))
            }
        }

        //: if type == 0 {
        if type == 0 {
            //: coinButton.setImage(UIImage.bundleBy(name: "icon_rank_coin"), for: .normal)
            coinButton.setImage(UIImage.bundleBy(name: (String(kStr_groupTitle.prefix(6)) + "ank_coin")), for: .normal)
            //: } else {
        } else {
            //: coinButton.setImage(UIImage.bundleBy(name: "icon_rank_coin2"), for: .normal)
            coinButton.setImage(UIImage.bundleBy(name: (String(kStr_userSizeTitleContent))), for: .normal)
        }
    }
}

//: extension SocialRankHeaderItemView {
extension InstanceView {
    //: func setupItemViews(type: SRankHeaderItemType) {
    func itemReserve(type: NameButton) {
        //: addSubview(headPicBgView)
        addSubview(headPicBgView)
        //: addSubview(crownImgView)
        addSubview(crownImgView)
        //: addSubview(headPic)
        addSubview(headPic)
        //: addSubview(nickLabel)
        addSubview(nickLabel)
        //: addSubview(coinButton)
        addSubview(coinButton)
        //: addSubview(loungeImgV)
        addSubview(loungeImgV)

        //: var size = CGSize(width: actualWidth(w: 35), height: actualWidth(w: 29))
        var size = CGSize(width: originalScene(w: 35), height: originalScene(w: 29))
        //: var headWidth = actualWidth(w: 62)
        var headWidth = originalScene(w: 62)
        //: var topMargin = actualHeight(h: 6)
        var topMargin = mediaBlock(h: 6)
//        var topCrownMargin = actualHeight(h: 4)

        //: switch type {
        switch type {
        //: case .firstRankType:
        case .firstRankType:
            //: headPicBgView.isHidden = false
            headPicBgView.isHidden = false
            //: crownImgView.image = UIImage.bundleBy(name: "icon_rank_first")
            crownImgView.image = UIImage.bundleBy(name: (String(kStr_clearValue.prefix(5)) + "rank_fi" + kStr_finishName.replacingOccurrences(of: "back", with: "t")))
            //: headPic.layer.borderColor = UIColor.RGBA(255, 224, 58, 1).cgColor
            headPic.layer.borderColor = UIColor.largesse(255, 224, 58, 1).cgColor
            //: headPic.layer.cornerRadius = actualWidth(w: 40)
            headPic.layer.cornerRadius = originalScene(w: 40)
            //: size = CGSize(width: actualWidth(w: 43), height: actualWidth(w: 36))
            size = CGSize(width: originalScene(w: 43), height: originalScene(w: 36))
            //: headWidth = actualWidth(w: 80)
            headWidth = originalScene(w: 80)
            //: topMargin = actualHeight(h: 6)
            topMargin = mediaBlock(h: 6)
//            topCrownMargin = actualHeight(h: 10)
        //: break
        //: case .secondRankType:
        case .secondRankType:
            //: headPicBgView.isHidden = true
            headPicBgView.isHidden = true
            //: crownImgView.image = UIImage.bundleBy(name: "icon_rank_second")
            crownImgView.image = UIImage.bundleBy(name: (kStr_modeCellValue.replacingOccurrences(of: "will", with: "i") + "_ran" + String(kStr_photoColorValue.prefix(8))))
            //: headPic.layer.borderColor = UIColor.RGBA(182, 199, 254, 1).cgColor
            headPic.layer.borderColor = UIColor.largesse(182, 199, 254, 1).cgColor
            //: headPic.layer.cornerRadius = actualWidth(w: 31)
            headPic.layer.cornerRadius = originalScene(w: 31)
        //: break
        //: case .thirdRankType:
        case .thirdRankType:
            //: headPicBgView.isHidden = true
            headPicBgView.isHidden = true
            //: crownImgView.image = UIImage.bundleBy(name: "icon_rank_third")
            crownImgView.image = UIImage.bundleBy(name: (String(kStr_rawContent)))
            //: headPic.layer.borderColor = UIColor.RGBA(251, 166, 109, 1).cgColor
            headPic.layer.borderColor = UIColor.largesse(251, 166, 109, 1).cgColor
            //: headPic.layer.cornerRadius = actualWidth(w: 31)
            headPic.layer.cornerRadius = originalScene(w: 31)
            //: break
        }

        //: headPicBgView.snp.makeConstraints { make in
        headPicBgView.snp.makeConstraints { make in
            //: make.centerX.equalTo(self.snp.centerX)
            make.centerX.equalTo(self.snp.centerX)
            //: make.centerY.equalTo(headPic.snp.centerY).offset(7)
            make.centerY.equalTo(headPic.snp.centerY).offset(7)
            //: make.width.height.equalTo(headWidth+28)
            make.width.height.equalTo(headWidth + 28)
        }
        //: headPic.snp.makeConstraints { make in
        headPic.snp.makeConstraints { make in
            //: make.centerX.equalTo(self.snp.centerX)
            make.centerX.equalTo(self.snp.centerX)
            //: make.top.equalTo(size.height*0.8)
            make.top.equalTo(size.height * 0.8)
            //: make.width.height.equalTo(headWidth)
            make.width.height.equalTo(headWidth)
        }
        //: crownImgView.snp.makeConstraints { make in
        crownImgView.snp.makeConstraints { make in
            //: make.leading.equalTo(headPic.snp.leading).offset(1)
            make.leading.equalTo(headPic.snp.leading).offset(1)
            //: make.top.equalTo(0)
            make.top.equalTo(0)
            //: make.size.equalTo(size)
            make.size.equalTo(size)
        }
        //: nickLabel.snp.makeConstraints { make in
        nickLabel.snp.makeConstraints { make in
            //: make.leading.equalTo(2)
            make.leading.equalTo(2)
            //: make.trailing.equalTo(-2)
            make.trailing.equalTo(-2)
            //: make.top.equalTo(headPic.snp.bottom).offset(topMargin)
            make.top.equalTo(headPic.snp.bottom).offset(topMargin)
            //: make.height.equalTo(actualHeight(h: 18))
            make.height.equalTo(mediaBlock(h: 18))
        }
        //: coinButton.snp.makeConstraints { make in
        coinButton.snp.makeConstraints { make in
            //: make.leading.equalTo(2)
            make.leading.equalTo(2)
            //: make.trailing.equalTo(-2)
            make.trailing.equalTo(-2)
            //: make.top.equalTo(nickLabel.snp.bottom).offset(2)
            make.top.equalTo(nickLabel.snp.bottom).offset(2)
            //: make.height.equalTo(actualHeight(h: 21))
            make.height.equalTo(mediaBlock(h: 21))
        }
    }
}
