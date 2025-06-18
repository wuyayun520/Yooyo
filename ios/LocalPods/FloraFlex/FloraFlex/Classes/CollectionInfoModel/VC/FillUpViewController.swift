
//: Declare String Begin

/*: "About me" :*/
fileprivate let kStr_adjustButtonTitle:String = "About meto return top hidden"

/*: "My interests" :*/
fileprivate let kStr_labelText:String = "My iyou size model do model"

/*: "Done" :*/
fileprivate let kStr_phoneContent:String = "Doneif self to deadline for"

/*: "InputTagThen" :*/
fileprivate let kStr_playContent:String = "Talkmake true party"
fileprivate let kStr_tapData:String = "aspect leading next raw leadingCell"

/*: "SnapView" :*/
fileprivate let kStr_viewName:String = "request push self tabTalk"
fileprivate let kStr_errorName:String = "Headerheight video"
fileprivate let kStr_coverValueData:[Character] = ["V","i","e","w"]

/*: "aboutMe" :*/
fileprivate let kStr_showName:String = "abofromt"
fileprivate let kStr_layerName:[Character] = ["M","e"]

/*: "interest" :*/
fileprivate let kStr_productData:String = "interebottom"

/*: "tagIds" :*/
fileprivate let kStr_createVideoValue:String = "tagIdssucceed equal line"

/*: "category" :*/
fileprivate let kStr_readToTitle:String = "catinfogory"

/*: "Save the change?" :*/
fileprivate let kStr_sizeValue:String = "Save var center"
fileprivate let kStr_imageText:String = "nge?host false equal string"

/*: "Cancel" :*/
fileprivate let kStr_viewContent:String = "Cancelback extension"

/*: "Save" :*/
fileprivate let kStr_valueData:[Character] = ["S","a","v","e"]

/*: "No more than 10 tags" :*/
fileprivate let kStr_equalLabelData:[Character] = ["N","o"," ","m","o","r","e"," ","t"]
fileprivate let kStr_collectionName:[Character] = ["h","a","n"," ","1"]
fileprivate let kStr_nowValue:String = "make add0 tags"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  FillUpViewController.swift
//  AbroadTalking
//
//  Created by Charlotte on 2022/8/31.
//

//: import UIKit
import UIKit

//: public protocol EditTagDelegate: NSObject {
public protocol ValueThen: NSObject {
    //: func freshSeleteTag()
    func outsideTag()
}

//: class TalkingEditTagVC: TalkingBaseViewController {
class FillUpViewController: LayerRecognizerDelegate {
    //: open weak var delegate: EditTagDelegate?
    open weak var delegate: ValueThen?
    //: var tagtype: TagType = .AboutMe
    var tagtype: VanguardTotal = .AboutMe
    //: var seleteCellArray: [UserSeleteTagModel] = []
    var seleteCellArray: [NameTagTransformable] = []
    //: var isChange = false
    var isChange = false
    //: var titles: Array<UserTagTypeModel> = Array()
    var titles: [LineTypeModel] = Array()

    //: override func viewDidLoad() {
    override func viewDidLoad() {
        //: super.viewDidLoad()
        super.viewDidLoad()

        //: self.view.backgroundColor = UIColor.white
        self.view.backgroundColor = UIColor.white
        //: switch tagtype {
        switch tagtype {
        //: case .AboutMe:
        case .AboutMe:
            //: self.title = "About me".localized
            self.title = (String(kStr_adjustButtonTitle.prefix(8))).localized
        //: break
        //: case .Interests:
        case .Interests:
            //: self.title = "My interests".localized
            self.title = (String(kStr_labelText.prefix(4)) + "nterests").localized
            //: break
        }

        //: let btn = UIButton(frame: CGRect(x: 0, y: 0, width: 40, height: 18))
        let btn = UIButton(frame: CGRect(x: 0, y: 0, width: 40, height: 18))
        //: btn.setTitle("Done".localized, for: .normal)
        btn.setTitle((String(kStr_phoneContent.prefix(4))).localized, for: .normal)
        //: btn.setTitleColor(UIColor.fromBuild(), for: .normal)
        btn.setTitleColor(UIColor.fromBuild(), for: .normal)
        //: btn.titleLabel?.font = UIFont.pingfangFont(type: .Medium, fontSize: 15)
        btn.titleLabel?.font = UIFont.groupSize(type: .Medium, fontSize: 15)
        //: btn.addTarget(self, action: #selector(doneBtnClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(hide), for: .touchUpInside)
        //: let item = UIBarButtonItem(customView: btn)
        let item = UIBarButtonItem(customView: btn)
        //: self.navigationItem.rightBarButtonItem = item
        self.navigationItem.rightBarButtonItem = item

        //: collectionView.register(TalkingTagCell.self, forCellWithReuseIdentifier: "TalkingTagCell")
        collectionView.register(InputTagThen.self, forCellWithReuseIdentifier: (String(kStr_playContent.prefix(4)) + "ingTag" + String(kStr_tapData.suffix(4))))
        //: collectionView.register(TalkingTagHeaderView.self, forSupplementaryViewOfKind: UICollectionView.elementKindSectionHeader, withReuseIdentifier: "TalkingTagHeaderView")
        collectionView.register(SnapView.self, forSupplementaryViewOfKind: UICollectionView.elementKindSectionHeader, withReuseIdentifier: (String(kStr_viewName.suffix(4)) + "ingTag" + String(kStr_errorName.prefix(6)) + String(kStr_coverValueData)))
        //: collectionView.dataSource = self
        collectionView.dataSource = self
        //: collectionView.delegate = self
        collectionView.delegate = self
        //: collectionView.backgroundColor = .clear
        collectionView.backgroundColor = .clear
        //: self.view.addSubview(collectionView)
        self.view.addSubview(collectionView)
        //: collectionView.snp.makeConstraints {
        collectionView.snp.makeConstraints {
            //: $0.edges.equalToSuperview().inset(UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0))
            $0.edges.equalToSuperview().inset(UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0))
        }

        //: reqdata()
        device()
    }

    // MARK: - Lazy load

    //: lazy var layout: TalkingTagLayout = {
    lazy var layout: BirdSEyeViewReactiveCompatible = {
        //: let temp = TalkingTagLayout()
        let temp = BirdSEyeViewReactiveCompatible()
        //: temp.delegate = self
        temp.delegate = self
        //: return temp
        return temp
        //: }()
    }()

    //: private(set) lazy var collectionView: UICollectionView = {
    private(set) lazy var collectionView: UICollectionView = {
        //: let layout = self.layout
        let layout = self.layout
        //: let temp = UICollectionView(frame: .zero, collectionViewLayout: layout)
        let temp = UICollectionView(frame: .zero, collectionViewLayout: layout)
        //: return temp
        return temp
        //: }()
    }()
}

// MARK: - Load data

//: extension TalkingEditTagVC {
extension FillUpViewController {
    //: func reqdata() {
    func device() {
        //: if LocationThen.share.func__loadUserTagCacheData() == nil {
        if LocationThen.share.removeReasonCompare() == nil {
            //: } else {
        } else {
            //: let tagModel: UserTagModel=LocationThen.share.func__loadUserTagCacheData() as! UserTagModel
            let tagModel: UpwardModelType = LocationThen.share.removeReasonCompare() as! UpwardModelType
            //: switch tagtype {
            switch tagtype {
            //: case .AboutMe:
            case .AboutMe:
                //: titles = tagModel.aboutMe
                titles = tagModel.aboutMe
                //: setLastSelete(type: 1)
                upObjectTo(type: 1)
            //: break
            //: case .Interests:
            case .Interests:
                //: titles = tagModel.interest
                titles = tagModel.interest
                //: setLastSelete(type: 2)
                upObjectTo(type: 2)
                //: break
            }
        }
    }

    //: func uploadTag() {
    func conference() {
        //: guard let customDelegate = self.delegate else {
        guard let customDelegate = self.delegate else {
            //: return
            return
        }
        //: var category = ""
        var category = ""
        //: if self.tagtype == .AboutMe {
        if self.tagtype == .AboutMe {
            //: category = "aboutMe"
            category = (kStr_showName.replacingOccurrences(of: "from", with: "u") + String(kStr_layerName))
            //: } else {
        } else {
            //: category = "interest"
            category = (kStr_productData.replacingOccurrences(of: "bottom", with: "st"))
        }
        //: var str = ""
        var str = ""
        //: for i in 0..<self.seleteCellArray.count {
        for i in 0 ..< self.seleteCellArray.count {
            //: let model = self.seleteCellArray[i]
            let model = self.seleteCellArray[i]
            //: str += model.tag_id!
            str += model.tag_id!
            //: if i<self.seleteCellArray.count-1 {
            if i < self.seleteCellArray.count - 1 {
                //: str += ","
                str += ","
            }
        }
        //: var dict = Dictionary<String, Any>()
        var dict = [String: Any]()
        //: dict["tagIds"] = str
        dict[(String(kStr_createVideoValue.prefix(6)))] = str
        //: dict["category"] = category
        dict[(kStr_readToTitle.replacingOccurrences(of: "info", with: "e"))] = category
        //: ProgressHUD.show()
        TintProgressHUD.weight()
        //: TalkingMeRequestTool.req_EditTag(params: dict) { [self] succeed, result, errorModel in
        LoadEqualRequestTool.source(params: dict) { [self] succeed, _, _ in
            //: ProgressHUD.dismiss()
            TintProgressHUD.inkingPadDismiss()
            //: if succeed {
            if succeed {
                //: if self.tagtype == .AboutMe {
                if self.tagtype == .AboutMe {
                    //: LocationThen.share.loginUserMode.aboutMe = self.seleteCellArray
                    LocationThen.share.loginUserMode.aboutMe = self.seleteCellArray
                    //: } else {
                } else {
                    //: LocationThen.share.loginUserMode.interest = self.seleteCellArray
                    LocationThen.share.loginUserMode.interest = self.seleteCellArray
                }
                //: customDelegate.freshSeleteTag()
                customDelegate.outsideTag()
                //: self.navigationController!.popViewController(animated: true)
                self.navigationController!.popViewController(animated: true)
            }
        }
    }
}

// MARK: - Event

//: extension TalkingEditTagVC {
extension FillUpViewController {
    //: override func naviPopback() {
    override func viewDownPopback() {
        //: var modelArray: Array<UserSeleteTagModel> = []
        var modelArray: [NameTagTransformable] = []
        //: switch tagtype {
        switch tagtype {
        //: case .AboutMe:
        case .AboutMe:
            //: modelArray = LocationThen.share.loginUserMode.aboutMe!
            modelArray = LocationThen.share.loginUserMode.aboutMe!
        //: break
        //: case .Interests:
        case .Interests:
            //: modelArray = LocationThen.share.loginUserMode.interest!
            modelArray = LocationThen.share.loginUserMode.interest!
            //: break
        }

        //: if !isChange {
        if !isChange {
            //: self.navigationController?.popViewController(animated: true)
            self.navigationController?.popViewController(animated: true)
            //: } else {
        } else {
            //: let config = ShowAlertConfig()
            let config = StreetwiseAlertConfig()
            //: config.alignment = .center
            config.alignment = .center
            //: TalkingAlertShow.customAlert(message: "Save the change?".localized, leftBtnTitle: "Cancel".localized, rightBtnTitle: "Save".localized, leftBlock: {
            ClickReactiveCompatible.anyAppearConfig(message: (String(kStr_sizeValue.prefix(5)) + "the cha" + String(kStr_imageText.prefix(4))).localized, leftBtnTitle: (String(kStr_viewContent.prefix(6))).localized, rightBtnTitle: (String(kStr_valueData)).localized, leftBlock: {
                //: TalkingAlertShow.hideAlert()
                ClickReactiveCompatible.closeHideRelease()
                //: self.navigationController?.popViewController(animated: true)
                self.navigationController?.popViewController(animated: true)
                //: }, rightBlock: {
            }, rightBlock: {
                //: TalkingAlertShow.hideAlert()
                ClickReactiveCompatible.closeHideRelease()
                //: self.uploadTag()
                self.conference()
                //: }, config: config)
            }, config: config)
        }
    }

    //: func setLastSelete(type: Int) {
    func upObjectTo(type: Int) {
        //: var modelArray: Array<UserSeleteTagModel> = []
        var modelArray: [NameTagTransformable] = []
        //: if type == 1 {
        if type == 1 {
            //: modelArray = LocationThen.share.loginUserMode.aboutMe!
            modelArray = LocationThen.share.loginUserMode.aboutMe!
            //: } else {
        } else {
            //: modelArray = LocationThen.share.loginUserMode.interest!
            modelArray = LocationThen.share.loginUserMode.interest!
        }
        //: for i in 0..<modelArray.count {
        for i in 0 ..< modelArray.count {
            //: let modeli = modelArray[i]
            let modeli = modelArray[i]
            //: for j in 0..<titles.count {
            for j in 0 ..< titles.count {
                //: let modelj = titles[j]
                let modelj = titles[j]
                //: let list = modelj.list
                let list = modelj.list
                //: for z in 0..<list!.count {
                for z in 0 ..< list!.count {
                    //: var modelz = list?[z]
                    var modelz = list?[z]
                    //: if modeli.equals(compareTo: modelz!) {
                    if modeli.mistake(compareTo: modelz!) {
                        //: modelz?.isSelete = true
                        modelz?.isSelete = true
                        //: titles[j].list[z] = modelz!
                        titles[j].list[z] = modelz!
                        //: seleteCellArray.append(modelz!)
                        seleteCellArray.append(modelz!)
                    }
                }
            }
        }
    }

    //: @objc func doneBtnClick() {
    @objc func hide() {
        //: uploadTag()
        conference()
    }
}

// MARK: - UICollectionViewDelegate, UICollectionViewDataSource

//: extension TalkingEditTagVC: UICollectionViewDelegate, UICollectionViewDataSource {
extension FillUpViewController: UICollectionViewDelegate, UICollectionViewDataSource {
    //: func numberOfSections(in collectionView: UICollectionView) -> Int {
    func numberOfSections(in _: UICollectionView) -> Int {
        //: return titles.count
        return titles.count
    }

    //: func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
    func collectionView(_: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        //: let model = titles[section]
        let model = titles[section]
        //: return model.list.count
        return model.list.count
    }

    //: func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        //: let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "TalkingTagCell", for: indexPath) as! TalkingTagCell
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: (String(kStr_playContent.prefix(4)) + "ingTag" + String(kStr_tapData.suffix(4))), for: indexPath) as! InputTagThen
        //: let model = self.titles[indexPath.section]
        let model = self.titles[indexPath.section]
        //: let title: UserSeleteTagModel = model.list[indexPath.row]
        let title: NameTagTransformable = model.list[indexPath.row]
        //: var tag_name = ""
        var tag_name = ""
        //: if TalkingRequestAddrTool.share.interfaceLang == LangType.ar.rawValue {
        if ViewManagerAddrTool.share.interfaceLang == CountClusterLiteral.ar.rawValue {
            //: tag_name = title.tag_name_ar
            tag_name = title.tag_name_ar
            //: } else if TalkingRequestAddrTool.share.interfaceLang == LangType.es.rawValue {
        } else if ViewManagerAddrTool.share.interfaceLang == CountClusterLiteral.es.rawValue {
            //: tag_name = title.tag_name_es
            tag_name = title.tag_name_es
            //: } else if TalkingRequestAddrTool.share.interfaceLang == LangType.pt.rawValue {
        } else if ViewManagerAddrTool.share.interfaceLang == CountClusterLiteral.pt.rawValue {
            //: tag_name = title.tag_name_pt
            tag_name = title.tag_name_pt
        }
        //: if tag_name.count <= 0 {
        if tag_name.count <= 0 {
            //: tag_name = title.tag_name
            tag_name = title.tag_name
        }
        //: cell.fill(title: tag_name )
        cell.user(title: tag_name)
        //: cell.tagBtnClick(isSelete: title.isSelete)
        cell.randomSelete(isSelete: title.isSelete)
        //: return cell
        return cell
    }

    //: func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        //: let cell: TalkingTagCell = collectionView.cellForItem(at: indexPath)as! TalkingTagCell
        let cell: InputTagThen = collectionView.cellForItem(at: indexPath) as! InputTagThen

        //: var model = self.titles[indexPath.section]
        var model = self.titles[indexPath.section]
        //: var title = model.list[indexPath.row]
        var title = model.list[indexPath.row]
        //: if  seleteCellArray.contains(where: { $0.equals(compareTo: title)}) {
        if seleteCellArray.contains(where: { $0.mistake(compareTo: title) }) {
            //: seleteCellArray.removeAll(where: {$0.equals(compareTo: title)})
            seleteCellArray.removeAll(where: { $0.mistake(compareTo: title) })
            //: isChange = true
            isChange = true
            //: title.isSelete =  false
            title.isSelete = false
            //: } else {
        } else {
            //: if seleteCellArray.count>=10 {
            if seleteCellArray.count >= 10 {
                //: self.func__showStatusBarErrorMsg(showMsg: "No more than 10 tags".localized)
                self.detailDownArray(showMsg: (String(kStr_equalLabelData) + String(kStr_collectionName) + String(kStr_nowValue.suffix(6))).localized)
                //: return
                return
            }
            //: seleteCellArray.append(title)
            seleteCellArray.append(title)
            //: isChange = true
            isChange = true
            //: title.isSelete =  true
            title.isSelete = true
        }
        //: model.list[indexPath.row] = title
        model.list[indexPath.row] = title
        //: self.titles[indexPath.section] = model
        self.titles[indexPath.section] = model
        //: cell.tagBtnClick()
        cell.markPush()
        //: if self.titles.count>0 {
        if self.titles.count > 0 {
            //: self.navigationItem.rightBarButtonItem?.isEnabled = true
            self.navigationItem.rightBarButtonItem?.isEnabled = true
            //: } else {
        } else {
            //: self.navigationItem.rightBarButtonItem?.isEnabled = false
            self.navigationItem.rightBarButtonItem?.isEnabled = false
        }
    }

    //: func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
    func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
        //: switch kind {
        switch kind {
        //: case UICollectionView.elementKindSectionHeader:
        case UICollectionView.elementKindSectionHeader:
            //: let headView: TalkingTagHeaderView = collectionView.dequeueReusableSupplementaryView(ofKind: UICollectionView.elementKindSectionHeader, withReuseIdentifier: "TalkingTagHeaderView", for: indexPath) as! TalkingTagHeaderView
            let headView: SnapView = collectionView.dequeueReusableSupplementaryView(ofKind: UICollectionView.elementKindSectionHeader, withReuseIdentifier: (String(kStr_viewName.suffix(4)) + "ingTag" + String(kStr_errorName.prefix(6)) + String(kStr_coverValueData)), for: indexPath) as! SnapView
            //: headView.backgroundColor = UIColor.clear
            headView.backgroundColor = UIColor.clear
            //: let model = self.titles[indexPath.section]
            let model = self.titles[indexPath.section]
            //: var name = model.name
            var name = model.name
            //: if TalkingRequestAddrTool.share.interfaceLang == LangType.ar.rawValue {
            if ViewManagerAddrTool.share.interfaceLang == CountClusterLiteral.ar.rawValue {
                //: name = model.name_ar
                name = model.name_ar
                //: } else if TalkingRequestAddrTool.share.interfaceLang == LangType.es.rawValue {
            } else if ViewManagerAddrTool.share.interfaceLang == CountClusterLiteral.es.rawValue {
                //: name = model.name_es
                name = model.name_es
                //: } else if TalkingRequestAddrTool.share.interfaceLang == LangType.pt.rawValue {
            } else if ViewManagerAddrTool.share.interfaceLang == CountClusterLiteral.pt.rawValue {
                //: name = model.name_pt
                name = model.name_pt
            }
            //: headView.label.text = name
            headView.label.text = name
            //: return headView
            return headView
        //: default:
        default:
            //: return UICollectionReusableView()
            return UICollectionReusableView()
        }
    }
}

// MARK: - NameTagEngineReactiveCompatible

//: extension TalkingEditTagVC: TagLayoutDelegate {
extension FillUpViewController: NameTagEngineReactiveCompatible {
    /// 标签内边距
    //: func tagLayout(_ layout: TalkingTagLayout, collectionView: UICollectionView, tagInnerMarginForItemAt indexPath: IndexPath) -> CGFloat {
    func layoutCell(_: BirdSEyeViewReactiveCompatible, collectionView _: UICollectionView, tagInnerMarginForItemAt _: IndexPath) -> CGFloat {
        //: return CGFloat(25)
        return CGFloat(25)
    }

    //: func tagLayout(_ layout: TalkingTagLayout, collectionView: UICollectionView, sizeForSupplementaryElementOfKind kind: String, at section: Int) -> CGSize {
    func conName(_: BirdSEyeViewReactiveCompatible, collectionView _: UICollectionView, sizeForSupplementaryElementOfKind kind: String, at _: Int) -> CGSize {
        //: switch kind {
        switch kind {
        //: case UICollectionView.elementKindSectionHeader:
        case UICollectionView.elementKindSectionHeader:
            //: return CGSize(width: 250, height: 32)
            return CGSize(width: 250, height: 32)
        //: case UICollectionView.elementKindSectionFooter:
        case UICollectionView.elementKindSectionFooter:
            //: return CGSize(width: 250, height: 40)
            return CGSize(width: 250, height: 40)
        //: default:
        default:
            //: return CGSize(width: 250, height: 40)
            return CGSize(width: 250, height: 40)
        }
    }

    //: func tagLayout(_ layout: TalkingTagLayout, collectionView: UICollectionView, textForItemAt indexPath: IndexPath) -> String {
    func center(_: BirdSEyeViewReactiveCompatible, collectionView _: UICollectionView, textForItemAt indexPath: IndexPath) -> String {
        //: let model = self.titles[indexPath.section]
        let model = self.titles[indexPath.section]
        //: let title = model.list[indexPath.row]
        let title = model.list[indexPath.row]
        //: var tag_name = ""
        var tag_name = ""
        //: if TalkingRequestAddrTool.share.interfaceLang == LangType.ar.rawValue {
        if ViewManagerAddrTool.share.interfaceLang == CountClusterLiteral.ar.rawValue {
            //: tag_name = title.tag_name_ar
            tag_name = title.tag_name_ar
            //: } else if TalkingRequestAddrTool.share.interfaceLang == LangType.es.rawValue {
        } else if ViewManagerAddrTool.share.interfaceLang == CountClusterLiteral.es.rawValue {
            //: tag_name = title.tag_name_es
            tag_name = title.tag_name_es
            //: } else if TalkingRequestAddrTool.share.interfaceLang == LangType.pt.rawValue {
        } else if ViewManagerAddrTool.share.interfaceLang == CountClusterLiteral.pt.rawValue {
            //: tag_name = title.tag_name_pt
            tag_name = title.tag_name_pt
        }
        //: if tag_name.count <= 0 {
        if tag_name.count <= 0 {
            //: tag_name = title.tag_name
            tag_name = title.tag_name
        }
        //: return tag_name
        return tag_name
    }

    //: func tagLayout(_ layout: TalkingTagLayout, collectionView: UICollectionView, heightBottomAt section: Int) -> CGFloat {
    func heightErrorSize(_: BirdSEyeViewReactiveCompatible, collectionView _: UICollectionView, heightBottomAt _: Int) -> CGFloat {
        //: return 24
        return 24
    }

    //: func tagLayout(_ layout: TalkingTagLayout, collectionView: UICollectionView, leftSapceAt section: Int) -> CGFloat {
    func circleEqual(_: BirdSEyeViewReactiveCompatible, collectionView _: UICollectionView, leftSapceAt _: Int) -> CGFloat {
        //: return 15
        return 15
    }
}
