
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let kStr_designTitle:[UInt8] = [0xf4,0xf9,0xf4,0xff,0xb3,0xee,0xfa,0xef,0xf0,0xfd,0xc5,0xb4,0xab,0xf3,0xec,0xfe,0xab,0xf9,0xfa,0xff,0xab,0xed,0xf0,0xf0,0xf9,0xab,0xf4,0xf8,0xfb,0xf7,0xf0,0xf8,0xf0,0xf9,0xff,0xf0,0xef]

fileprivate func appearImage(layer num: UInt8) -> UInt8 {
    let value = Int(num) + 117
    if value > 255 {
        return UInt8(value - 256)
    } else {
        return UInt8(value)
    }
}

/*: "icon_chat_lock" :*/
fileprivate let kStr_fillTitle:[Character] = ["i","c","o","n","_","c","h","a","t","_","l","o","c","k"]

/*: "icon_chat_burned" :*/
fileprivate let kStr_tableData:[Character] = ["i","c","o","n","_","c","h","a","t","_","b","u","r","n","e","d"]

/*: "icon_chat_burned_shan" :*/
fileprivate let kStr_tempValue:[Character] = ["i","c","o","n","_","c","h","a","t","_","b"]
fileprivate let kStr_hiddenValue:String = "imagene"

/*: "Already burned" :*/
fileprivate let kStr_noName:[Character] = ["A","l","r","e","a","d","y"," ","b","u","r","n","e","d"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  CompartmentReactiveCompatible.swift
//  AbroadTalking
//
//  Created by Charlotte on 2023/2/28.
//

//: import FLAnimatedImage
import FLAnimatedImage
//: import UIKit
import UIKit

//: class TalkingChatImageMsgCell: TalkingChatBaseMsgCell {
class CompartmentReactiveCompatible: CollectionViewCell {
    //: override func awakeFromNib() {
    override func awakeFromNib() {
        //: super.awakeFromNib()
        super.awakeFromNib()
    }

    //: override func setSelected(_ selected: Bool, animated: Bool) {
    override func setSelected(_ selected: Bool, animated: Bool) {
        //: super.setSelected(selected, animated: animated)
        super.setSelected(selected, animated: animated)
    }

    //: override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        //: super.init(style: style, reuseIdentifier: reuseIdentifier)
        super.init(style: style, reuseIdentifier: reuseIdentifier)

        //: designView()
        toCustom()
    }

    //: required init?(coder aDecoder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: kStr_designTitle.map{appearImage(layer: $0)}, encoding: .utf8)!)
    }

    // MARK: - Lazy load

    //: lazy var photoView: FLAnimatedImageView = {
    lazy var photoView: FLAnimatedImageView = {
        //: let view = FLAnimatedImageView.init()
        let view = FLAnimatedImageView()
        //: view.layer.cornerRadius = 10.0
        view.layer.cornerRadius = 10.0
        //: view.layer.masksToBounds = true
        view.layer.masksToBounds = true
        //: view.contentMode = .scaleAspectFill
        view.contentMode = .scaleAspectFill
        //: view.backgroundColor = .white
        view.backgroundColor = .white
        //: return view
        return view
        //: }()
    }()

    /// 私密照片“锁”标识
    //: lazy var lockView: UIView = {
    lazy var lockView: UIView = {
        //: let view = UIView.init()
        let view = UIView()
        //: view.backgroundColor = UIColor.init(white: 0, alpha: 0.4)
        view.backgroundColor = UIColor(white: 0, alpha: 0.4)
        //: view.layer.cornerRadius = 10
        view.layer.cornerRadius = 10
        //: view.isHidden = true
        view.isHidden = true
        //: return view
        return view
        //: }()
    }()

    //: lazy var lockImagV: UIImageView = {
    lazy var lockImagV: UIImageView = {
        //: let imag = UIImageView.init()
        let imag = UIImageView()
        //: imag.alpha = 0.9
        imag.alpha = 0.9
        //: imag.image = UIImage.bundleBy(name: "icon_chat_lock")
        imag.image = UIImage.bundleBy(name: (String(kStr_fillTitle)))
        //: imag.contentMode = .scaleAspectFill
        imag.contentMode = .scaleAspectFill
        //: return imag
        return imag
        //: }()
    }()

    /// 已“阅后即焚”标识
    //: lazy var burnedImagV: TalkingButton = {
    lazy var burnedImagV: OverdoTalkingButton = {
        //: let imgV = TalkingButton.init()
        let imgV = OverdoTalkingButton()
        //: imgV.contentMode = .scaleAspectFill
        imgV.contentMode = .scaleAspectFill
        //: imgV.isHidden = true
        imgV.isHidden = true
        //: imgV.setBackgroundImage(UIImage.bundleBy(name: "icon_chat_burned"), for: .normal)
        imgV.setBackgroundImage(UIImage.bundleBy(name: (String(kStr_tableData))), for: .normal)
        //: imgV.setImage(UIImage.bundleBy(name: "icon_chat_burned_shan"), for: .normal)
        imgV.setImage(UIImage.bundleBy(name: (String(kStr_tempValue) + kStr_hiddenValue.replacingOccurrences(of: "image", with: "ur") + "d_shan")), for: .normal)
        //: imgV.imageAlignment = .top
        imgV.imageAlignment = .top
        //: imgV.setTitle("Already burned".localized, for: .normal)
        imgV.setTitle((String(kStr_noName)).localized, for: .normal)
        //: imgV.setTitleColor(.white, for: .normal)
        imgV.setTitleColor(.white, for: .normal)
        //: imgV.titleLabel?.font = UIFont.messageDown(fontSize: 16)
        imgV.titleLabel?.font = UIFont.messageDown(fontSize: 16)
        //: return imgV
        return imgV
        //: }()
    }()
}

// MARK: - Event

//: extension TalkingChatImageMsgCell {
extension CompartmentReactiveCompatible {
    //: override func fill(with data: TCommonCellData) {
    override func fill(with data: TCommonCellData) {
        //: super.fill(with: data)
        super.fill(with: data)
        //: guard let imageCellData = data as? LayerCellData else { return }
        guard let imageCellData = data as? LayerCellData else { return }

        //: self.photoView.backgroundColor = .white
        self.photoView.backgroundColor = .white
        //: let intimatePhoto: AddModel? = imageCellData.msgModel.msgInfo.intimatePhoto
        let intimatePhoto: AddModel? = imageCellData.msgModel.msgInfo.intimatePhoto
        //: if intimatePhoto != nil || imageCellData.msgModel.msgInfo.customSend.isBurn == "1" || Int(imageCellData.msgModel.msgInfo.customSend.giftId) ?? 0 > 0 { // 私密照片
        if intimatePhoto != nil || imageCellData.msgModel.msgInfo.customSend.isBurn == "1" || Int(imageCellData.msgModel.msgInfo.customSend.giftId) ?? 0 > 0 { // 私密照片
            //: self.lockView.isHidden = true
            self.lockView.isHidden = true
            //: self.burnedImagV.isHidden = true
            self.burnedImagV.isHidden = true

            //: var imgUrlStr = intimatePhoto?.previewUrl
            var imgUrlStr = intimatePhoto?.previewUrl // 默认预览图
            //: var imgIsMosaic = true
            var imgIsMosaic = true // 是否需要马赛克

            //: if intimatePhoto?.lockStatus == 1 {
            if intimatePhoto?.lockStatus == 1 { // 锁定状态，添加"锁"标识
                //: self.lockView.isHidden = false
                self.lockView.isHidden = false
                //: } else if intimatePhoto?.burnStatus == 1 {
            } else if intimatePhoto?.burnStatus == 1 { // 已阅后即焚，销毁
                //: self.burnedImagV.isHidden = false
                self.burnedImagV.isHidden = false
                //: } else if intimatePhoto?.lockStatus != 1 && intimatePhoto?.burnStatus == -1 {
            } else if intimatePhoto?.lockStatus != 1, intimatePhoto?.burnStatus == -1 { // 已解锁的永久私密照片，展示原图
                //: imgUrlStr = intimatePhoto?.originUrl
                imgUrlStr = intimatePhoto?.originUrl
                //: imgIsMosaic = false
                imgIsMosaic = false
            }
            // 加载私密照片
            //: showImageView(data: imageCellData, urlStr: imgUrlStr, isMosaic: imgIsMosaic)
            menu(data: imageCellData, urlStr: imgUrlStr, isMosaic: imgIsMosaic)

            //: } else {
        } else { // 普通图片
            //: showImageView(data: imageCellData, urlStr: nil, isMosaic: false)
            menu(data: imageCellData, urlStr: nil, isMosaic: false)
        }
    }

    /// 加载图片【本地没有再加载网络】
    /// - Parameters:
    ///   - data: cellData
    ///   - urlStr: 图片网络地址
    ///   - isMosaic: 是否需要马赛克
    //: func showImageView(data: LayerCellData, urlStr: String?, isMosaic: Bool) {
    func menu(data: LayerCellData, urlStr: String?, isMosaic: Bool) {
        //: var filePath = NSSearchPathForDirectoriesInDomains(.cachesDirectory, .userDomainMask, true).first!
        var filePath = NSSearchPathForDirectoriesInDomains(.cachesDirectory, .userDomainMask, true).first!
        //: filePath = (filePath as NSString).appendingPathComponent(imageFileName)
        filePath = (filePath as NSString).appendingPathComponent(kLet_deviceLikeSucceedData)
        //: filePath = (filePath as NSString).appendingPathComponent((data.imageUrl! as NSString).lastPathComponent)
        filePath = (filePath as NSString).appendingPathComponent((data.imageUrl! as NSString).lastPathComponent)
        //: let isExists = FileManager.default.fileExists(atPath: filePath)
        let isExists = FileManager.default.fileExists(atPath: filePath)

        //: if data.imageUrl!.count > 0 && isExists {
        if data.imageUrl!.count > 0, isExists {
            //: DispatchQueue.global().async {
            DispatchQueue.global().async {
                //: let imageData = NSData.init(contentsOfFile: filePath)
                let imageData = NSData(contentsOfFile: filePath)
                //: DispatchQueue.main.async {
                DispatchQueue.main.async {
                    //: guard imageData != nil else {
                    guard imageData != nil else {
                        //: return
                        return
                    }
                    //: let image = UIImage.init(data: imageData! as Data)
                    let image = UIImage(data: imageData! as Data)
                    //: if isMosaic {
                    if isMosaic {
                        //: self.photoView.image = UIImage.primaryLevel(image, withFile: 90)
                        self.photoView.image = UIImage.primaryLevel(image, withFile: 90)
                        //: } else {
                    } else {
                        //: self.photoView.image = image
                        self.photoView.image = image
                    }
                }
            }
            //: } else if urlStr != nil && urlStr?.count ?? 0 > 0 {
        } else if urlStr != nil, urlStr?.count ?? 0 > 0 { // 私密照片请求网络
            //: showIntimatePhoto(urlStr: urlStr ?? "", isMosaic: isMosaic)
            thread(urlStr: urlStr ?? "", isMosaic: isMosaic)
            //: } else {
        } else { // 本地图片请求网络
            //: if data.imageData != nil {
            if data.imageData != nil {
                //: self.photoView.image = data.imageData
                self.photoView.image = data.imageData
                //: } else {
            } else {
                //: self.photoView.setUrlImage(urlStr: data.imageUrl!)
                self.photoView.timeFinish(urlStr: data.imageUrl!)
            }
        }
    }

    /// 加载私密照片是否需要马赛克
    /// - Parameters:
    ///   - urlStr: 图片地址
    ///   - isMosaic: 是否需要马赛克
    //: func showIntimatePhoto(urlStr: String, isMosaic: Bool) {
    func thread(urlStr: String, isMosaic: Bool) {
        //: self.photoView.setCookieToUrlImage(urlStr: urlStr) {[weak self] image in
        self.photoView.playingCard(urlStr: urlStr) { [weak self] image in
            //: guard let self = self else { return }
            guard let self = self else { return }
            //: if image != nil && isMosaic {
            if image != nil, isMosaic {
                //: self.photoView.image = UIImage.primaryLevel(image, withFile: 90)
                self.photoView.image = UIImage.primaryLevel(image, withFile: 90)
            }
        }
    }
}

// MARK: - Event

//: extension TalkingChatImageMsgCell {
extension CompartmentReactiveCompatible {
    //: func designView() {
    func toCustom() {
        //: self.container.addSubview(photoView)
        self.container.addSubview(photoView)
        //: self.container.addSubview(lockView)
        self.container.addSubview(lockView)
        //: lockView.addSubview(lockImagV)
        lockView.addSubview(lockImagV)
        //: photoView.addSubview(burnedImagV)
        photoView.addSubview(burnedImagV)
        //: photoView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        photoView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
    }

    //: override public func updateConstraints() {
    override public func updateConstraints() {
        //: super.updateConstraints()
        super.updateConstraints()
        //: self.photoView.snp.remakeConstraints { make in
        self.photoView.snp.remakeConstraints { make in
            //: make.leading.top.equalToSuperview()
            make.leading.top.equalToSuperview()
            //: make.width.height.equalTo(120)
            make.width.height.equalTo(120)
        }
        //: self.lockView.snp.remakeConstraints { make in
        self.lockView.snp.remakeConstraints { make in
            //: make.edges.equalTo(photoView)
            make.edges.equalTo(photoView)
        }

        //: self.lockImagV.snp.remakeConstraints { make in
        self.lockImagV.snp.remakeConstraints { make in
            //: make.center.equalToSuperview()
            make.center.equalToSuperview()
            //: make.width.equalTo(35)
            make.width.equalTo(35)
            //: make.height.equalTo(45)
            make.height.equalTo(45)
        }

        //: self.burnedImagV.snp.remakeConstraints { make in
        self.burnedImagV.snp.remakeConstraints { make in
            //: make.edges.equalToSuperview()
            make.edges.equalToSuperview()
        }
    }
}
