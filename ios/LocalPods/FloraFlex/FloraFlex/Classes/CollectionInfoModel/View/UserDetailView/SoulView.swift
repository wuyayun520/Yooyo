
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let kStr_effectTitleText:[UInt8] = [0x6,0xb,0x6,0x11,0xc5,0x0,0xc,0x1,0x2,0xf,0xd7,0xc6,0xbd,0x5,0xfe,0x10,0xbd,0xb,0xc,0x11,0xbd,0xff,0x2,0x2,0xb,0xbd,0x6,0xa,0xd,0x9,0x2,0xa,0x2,0xb,0x11,0x2,0x1]

fileprivate func addValue(render num: UInt8) -> UInt8 {
    let value = Int(num) - 157
    if value < 0 {
        return UInt8(value + 256)
    } else {
        return UInt8(value)
    }
}

/*: "About me" :*/
fileprivate let kStr_leadingTitle:String = "allow self customAbout "
fileprivate let kStr_equalData:String = "mgift"

/*: "My interests" :*/
fileprivate let kStr_sendName:[Character] = ["M","y"," ","i","n","t","e","r","e","s","t"]
fileprivate let kStr_serverName:[Character] = ["s"]

/*: "#7166F9" :*/
fileprivate let kStr_tapValue:String = "#7166"
fileprivate let kStr_indexData:String = "key"

/*: "#EAE8FE" :*/
fileprivate let kStr_listName:[Character] = ["#","E","A","E","8","F"]
fileprivate let kStr_makeData:String = "date"

/*: "#4D94FF" :*/
fileprivate let kStr_textData:[Character] = ["#","4","D","9","4"]
fileprivate let kStr_shareName:String = "interaction"

/*: "#DBEAFF" :*/
fileprivate let kStr_showValue:[Character] = ["#","D","B","E","A","F"]
fileprivate let kStr_modelTitleData:[Character] = ["F"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  SoulView.swift
//  AbroadTalking
//
//  Created by Bolo on 2022/9/8.
//

//: import UIKit
import UIKit

//: class TalkingUserDetailTagCell: UITableViewCell {
class SoulView: UITableViewCell {
    //: var titleArray: [String] = []
    var titleArray: [String] = []
    //: var tagAreaHeight: CGFloat = 0
    var tagAreaHeight: CGFloat = 0
    //: var cellType: TUserDetailCellType = TUserDetailCellType.aboutMeType
    var cellType: PointCaseIterable = .aboutMeType
    //: var collectionLayoutSubviewBlock: ((_ fitHeight: CGFloat) -> Void)?
    var collectionLayoutSubviewBlock: ((_ fitHeight: CGFloat) -> Void)?

    //: override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        //: super.init(style: style, reuseIdentifier: reuseIdentifier)
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        //: self.selectionStyle = .none
        self.selectionStyle = .none
        //: self.backgroundColor = .clear
        self.backgroundColor = .clear
        //: self.contentView.backgroundColor = .clear
        self.contentView.backgroundColor = .clear

        //: setupSubviews()
        pushModel()
        //: setupSubViewsConstraint()
        toBar()
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: kStr_effectTitleText.map{addValue(render: $0)}, encoding: .utf8)!)
    }

    // MARK: - Lazy load

    //: private lazy var titleLab: UILabel = {
    private lazy var titleLab: UILabel = {
        //: let lb = UILabel()
        let lb = UILabel()
        //: lb.font = .pingfangFont(type: .Medium, fontSize: 17)
        lb.font = .groupSize(type: .Medium, fontSize: 17)
        //: lb.textColor = .appTitleColor()
        lb.textColor = .dataFormat()
        //: return lb
        return lb
        //: }()
    }()

    //: private lazy var collectionView: UICollectionView = {
    private lazy var collectionView: UICollectionView = {
        //: let layout: TalkingTagCollectionFlowLayout = TalkingTagCollectionFlowLayout()
        let layout = TableFlowLayout()
        //: layout.delegate = self
        layout.delegate = self

        //: let collect = UICollectionView(frame: .zero, collectionViewLayout: layout)
        let collect = UICollectionView(frame: .zero, collectionViewLayout: layout)
        //: collect.backgroundColor = .clear
        collect.backgroundColor = .clear
        //: collect.delegate = self
        collect.delegate = self
        //: collect.dataSource = self
        collect.dataSource = self
        //: collect.isScrollEnabled = false
        collect.isScrollEnabled = false
        //: collect.register(TalkingUserDetailTagItemCell.self, forCellWithReuseIdentifier: TalkingUserDetailTagItemCell.className())
        collect.register(FromItemCell.self, forCellWithReuseIdentifier: FromItemCell.className())
        //: return collect
        return collect
        //: }()
    }()
}

// MARK: - update

//: extension TalkingUserDetailTagCell {
extension SoulView {
    //: func configTagCellWithDataModel(type: TUserDetailCellType, userModel: TalkingUserInfoModel) {
    func balance(type: PointCaseIterable, userModel: LoadMeasurable) {
        //: cellType = type
        cellType = type
        //: if type == .aboutMeType {
        if type == .aboutMeType {
            //: titleLab.text = "About me".localized
            titleLab.text = (String(kStr_leadingTitle.suffix(6)) + kStr_equalData.replacingOccurrences(of: "gift", with: "e")).localized
            //: titleArray = userModel.aboutMe
            titleArray = userModel.aboutMe

            //: } else if type == .intersetsType {
        } else if type == .intersetsType {
            //: titleLab.text = "My interests".localized
            titleLab.text = (String(kStr_sendName) + String(kStr_serverName)).localized
            //: titleArray = userModel.interest
            titleArray = userModel.interest
        }

        //: collectionView.reloadData()
        collectionView.reloadData()
    }
}

// MARK: - UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout

//: extension TalkingUserDetailTagCell: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
extension SoulView: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    //: func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
    func collectionView(_: UICollectionView, layout _: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        //: return CGSize(width: labelWidth(titleArray[indexPath.item], 20), height: 30)
        return CGSize(width: markClick(titleArray[indexPath.item], 20), height: 30)
    }

    //: func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
    func collectionView(_: UICollectionView, numberOfItemsInSection _: Int) -> Int {
        //: return self.titleArray.count
        return self.titleArray.count
    }

    //: func numberOfSections(in collectionView: UICollectionView) -> Int {
    func numberOfSections(in _: UICollectionView) -> Int {
        //: return 1
        return 1
    }

    //: func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        //: let cell: TalkingUserDetailTagItemCell = collectionView.dequeueReusableCell(withReuseIdentifier: TalkingUserDetailTagItemCell.className(), for: indexPath) as! TalkingUserDetailTagItemCell
        let cell: FromItemCell = collectionView.dequeueReusableCell(withReuseIdentifier: FromItemCell.className(), for: indexPath) as! FromItemCell
        //: cell.tagLabel.text = titleArray[indexPath.row]
        cell.tagLabel.text = titleArray[indexPath.row]
        //: if cellType == .aboutMeType {
        if cellType == .aboutMeType {
            //: cell.tagLabel.textColor = UIColor(hex: "#7166F9")
            cell.tagLabel.textColor = UIColor(hex: (kStr_tapValue.capitalized + kStr_indexData.replacingOccurrences(of: "key", with: "F9")))
            //: cell.bgView.backgroundColor = UIColor(hex: "#EAE8FE")
            cell.bgView.backgroundColor = UIColor(hex: (String(kStr_listName) + kStr_makeData.replacingOccurrences(of: "date", with: "E")))

            //: } else if cellType == .intersetsType  {
        } else if cellType == .intersetsType {
            //: cell.tagLabel.textColor = UIColor(hex: "#4D94FF")
            cell.tagLabel.textColor = UIColor(hex: (String(kStr_textData) + kStr_shareName.replacingOccurrences(of: "interaction", with: "FF")))
            //: cell.bgView.backgroundColor = UIColor(hex: "#DBEAFF")
            cell.bgView.backgroundColor = UIColor(hex: (String(kStr_showValue) + String(kStr_modelTitleData)))
        }
        //: return cell
        return cell
    }

    //: func labelWidth(_ text: String, _ height: CGFloat) -> CGFloat {
    func markClick(_ text: String, _ height: CGFloat) -> CGFloat {
        //: let size = CGSize(width: CGFloat(MAXFLOAT), height: height)
        let size = CGSize(width: CGFloat(MAXFLOAT), height: height)
        //: let font = UIFont.systemFont(ofSize: 15)
        let font = UIFont.systemFont(ofSize: 15)
        //: let attributes = [NSAttributedString.Key.font: font]
        let attributes = [NSAttributedString.Key.font: font]
        //: let labelSize = NSString(string: text).boundingRect(with: size, options: .usesLineFragmentOrigin, attributes: attributes, context: nil)
        let labelSize = NSString(string: text).boundingRect(with: size, options: .usesLineFragmentOrigin, attributes: attributes, context: nil)
        //: return labelSize.width + 20
        return labelSize.width + 20
    }
}

// MARK: - TicketLayoutDelegate

//: extension TalkingUserDetailTagCell: TalkingTagCollectionFlowLayoutDelegate {
extension SoulView: TicketLayoutDelegate {
    //: func getCollectuonViewHeight(layoutH: CGFloat) {
    func become(layoutH: CGFloat) {
        //: guard self.tagAreaHeight != layoutH else {
        guard self.tagAreaHeight != layoutH else {
            //: return
            return
        }
        //: self.tagAreaHeight = layoutH
        self.tagAreaHeight = layoutH
        //: if self.collectionLayoutSubviewBlock != nil {
        if self.collectionLayoutSubviewBlock != nil {
            //: self.collectionLayoutSubviewBlock!(layoutH)
            self.collectionLayoutSubviewBlock!(layoutH)
        }
    }
}

// MARK: Layout

//: extension TalkingUserDetailTagCell {
extension SoulView {
    //: private func setupSubviews() {
    private func pushModel() {
        //: contentView.addSubview(titleLab)
        contentView.addSubview(titleLab)
        //: contentView.addSubview(collectionView)
        contentView.addSubview(collectionView)
    }

    //: private func setupSubViewsConstraint() {
    private func toBar() {
        //: titleLab.snp.makeConstraints { make in
        titleLab.snp.makeConstraints { make in
            //: make.leading.equalTo(15)
            make.leading.equalTo(15)
            //: make.top.equalTo(0)
            make.top.equalTo(0)
            //: make.height.equalTo(20)
            make.height.equalTo(20)
        }

        //: collectionView.snp.makeConstraints { make in
        collectionView.snp.makeConstraints { make in
            //: make.top.equalTo(titleLab.snp.bottom).offset(15)
            make.top.equalTo(titleLab.snp.bottom).offset(15)
            //: make.leading.equalTo(12)
            make.leading.equalTo(12)
            //: make.trailing.equalTo(-12)
            make.trailing.equalTo(-12)
            //: make.bottom.equalToSuperview()
            make.bottom.equalToSuperview()
        }
    }
}
