
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let kStr_formatValue:[UInt8] = [0x85,0x82,0x85,0x98,0xc4,0x8f,0x83,0x88,0x89,0x9e,0xd6,0xc5,0xcc,0x84,0x8d,0x9f,0xcc,0x82,0x83,0x98,0xcc,0x8e,0x89,0x89,0x82,0xcc,0x85,0x81,0x9c,0x80,0x89,0x81,0x89,0x82,0x98,0x89,0x88]

private func bottomColor(scale num: UInt8) -> UInt8 {
    return num ^ 236
}

/*: "MF:LiveChatWelMsg" :*/
fileprivate let kStr_cameraTurnData:String = "maximum if model letMF:L"
fileprivate let kStr_groupGestureFileName:String = "atWelMsgdata to remove frame view"

/*: "MF:LiveChatPrizeMsg" :*/
fileprivate let kStr_storageData:String = "let extension varMF:LiveC"
fileprivate let kStr_errorTitle:String = "selection"
fileprivate let kStr_serverSectionValue:String = "atPrizvar voice equal"

/*: "MF:LiveChatAttentionMsg" :*/
fileprivate let kStr_appValue:[Character] = ["M","F",":","L","i","v","e","C"]
fileprivate let kStr_textContent:[Character] = ["h","a","t","A","t"]
fileprivate let kStr_cellValue:String = "tentresult"

/*: "MF:PartyChatWelMsg" :*/
fileprivate let kStr_data:[Character] = ["M","F",":","P","a"]
fileprivate let kStr_sizeText:String = "type with selfrtyC"
fileprivate let kStr_rangeData:String = "elMsgmessage small case at self"

/*: "MF:PartyChatPrizeMsg" :*/
fileprivate let kStr_makeValue:[Character] = ["M","F",":","P","a"]
fileprivate let kStr_ofLastButtonName:String = "original equal less view sharertyCha"
fileprivate let kStr_modelName:[Character] = ["t","P","r","i","z","e","M","s","g"]

/*: "MF:PartyChatAttentionMsg" :*/
fileprivate let kStr_sizeContent:[Character] = ["M","F",":","P","a","r","t","y","C","h","a","t","A","t","t","e","n","t"]
fileprivate let kStr_succeedName:String = "app error model returnionMsg"

/*: _ :*/
fileprivate let kStr_equalName:String = "model"

/*: "UITableViewCell" :*/
fileprivate let kStr_textHalfData:String = "UITabelse load application"
fileprivate let kStr_viewColorName:String = "leViewfrom back voice"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  EraseBlockThen.swift
//  AbroadTalking
//
//  Created by Charlotte on 2023/7/10.
//

//: import UIKit
import UIKit

//: class TalkingDanmuMsgBassCell: UITableViewCell {
class EraseBlockThen: UITableViewCell {
    //: var msgModel = TalkingLiveRoomDanmuModel.init()
    var msgModel = BackgroundMeasurable()

    //: override func awakeFromNib() {
    override func awakeFromNib() {
        //: super.awakeFromNib()
        super.awakeFromNib()
        // Initialization code
    }

    //: override func setSelected(_ selected: Bool, animated: Bool) {
    override func setSelected(_ selected: Bool, animated: Bool) {
        //: super.setSelected(selected, animated: animated)
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

    //: override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        //: super.init(style: style, reuseIdentifier: reuseIdentifier)
        super.init(style: style, reuseIdentifier: reuseIdentifier)

        //: self.accessoryType = .none
        self.accessoryType = .none
        //: self.backgroundColor = .clear
        self.backgroundColor = .clear
        //: self.selectionStyle  = .none
        self.selectionStyle = .none

        //: self.contentView.addSubview(bgLb)
        self.contentView.addSubview(bgLb)
        //: self.contentView.addSubview(msgLabel)
        self.contentView.addSubview(msgLabel)

        //: self.msgLabel.snp.makeConstraints { make in
        self.msgLabel.snp.makeConstraints { make in
            //: make.leading.equalTo(8)
            make.leading.equalTo(8)
            //: make.top.equalTo(cellLineSpeing+2)
            make.top.equalTo(kLet_deviceValue + 2)
            //: make.bottom.equalTo(-2)
            make.bottom.equalTo(-2)
//            make.trailing.lessThanOrEqualTo(-6)
            //: make.width.equalTo(10)
            make.width.equalTo(10)
        }
        //: self.bgLb.snp.makeConstraints { make in
        self.bgLb.snp.makeConstraints { make in
            //: make.top.equalTo(cellLineSpeing)
            make.top.equalTo(kLet_deviceValue)
            //: make.leading.bottom.equalTo(0)
            make.leading.bottom.equalTo(0)
            //: make.trailing.equalTo(self.msgLabel.snp.trailing).offset(6)
            make.trailing.equalTo(self.msgLabel.snp.trailing).offset(6)
        }
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: kStr_formatValue.map{bottomColor(scale: $0)}, encoding: .utf8)!)
    }

    //: lazy var bgLb: UIImageView = {
    lazy var bgLb: UIImageView = {
        //: let view = UIImageView.init()
        let view = UIImageView()
        //: view.layer.cornerRadius = 13
        view.layer.cornerRadius = 13
        //: view.layer.masksToBounds = true
        view.layer.masksToBounds = true
        //: view.isUserInteractionEnabled = true
        view.isUserInteractionEnabled = true
        //: return view
        return view
        //: }()
    }()

    //: lazy var msgLabel: YYLabel = {
    lazy var msgLabel: YYLabel = {
        //: let lb = YYLabel.init()
        let lb = YYLabel()
        //: lb.numberOfLines = 0
        lb.numberOfLines = 0
        //: lb.backgroundColor = .clear
        lb.backgroundColor = .clear
        //: lb.clipsToBounds = true
        lb.clipsToBounds = true
        //: lb.textVerticalAlignment = .center
        lb.textVerticalAlignment = .center
        //: lb.isUserInteractionEnabled = true
        lb.isUserInteractionEnabled = true
        //: lb.semanticContentAttribute = .forceLeftToRight
        lb.semanticContentAttribute = .forceLeftToRight
        //: if LanguageManager.shared.direction == .rightToLeft {
        if DeleteClientThen.shared.direction == .rightToLeft {
            //: lb.semanticContentAttribute = .forceRightToLeft
            lb.semanticContentAttribute = .forceRightToLeft
        }
        //: return lb
        return lb
        //: }()
    }()
}

//: extension TalkingDanmuMsgBassCell {
extension EraseBlockThen {
    //: class func initTableView(tableView: UITableView, msg: TalkingLiveRoomDanmuModel, indexPath: IndexPath ) -> TalkingDanmuMsgBassCell {
    class func marginOfError(tableView: UITableView, msg: BackgroundMeasurable, indexPath _: IndexPath) -> EraseBlockThen {
        //: var cell: TalkingDanmuMsgBassCell?
        var cell: EraseBlockThen?

        //: if msg.msgInfo?.messageType == 1 ||
        if msg.msgInfo?.messageType == 1 ||
            //: msg.msgInfo?.messageType == 2 ||
            msg.msgInfo?.messageType == 2 ||
            //: msg.msgInfo?.messageType == 3 ||
            msg.msgInfo?.messageType == 3 ||
            //: msg.MsgExtension == "MF:LiveChatWelMsg" ||
            msg.MsgExtension == (String(kStr_cameraTurnData.suffix(4)) + "iveCh" + String(kStr_groupGestureFileName.prefix(8))) ||
            //: msg.MsgExtension == "MF:LiveChatPrizeMsg" ||
            msg.MsgExtension == (String(kStr_storageData.suffix(8)) + kStr_errorTitle.replacingOccurrences(of: "selection", with: "h") + String(kStr_serverSectionValue.prefix(6)) + "eMsg") ||
            //: msg.MsgExtension == "MF:LiveChatAttentionMsg" ||
            msg.MsgExtension == (String(kStr_appValue) + String(kStr_textContent) + kStr_cellValue.replacingOccurrences(of: "result", with: "io") + "nMsg") ||
            //: msg.MsgExtension == "MF:PartyChatWelMsg" ||
            msg.MsgExtension == (String(kStr_data) + String(kStr_sizeText.suffix(4)) + "hatW" + String(kStr_rangeData.prefix(5))) ||
            //: msg.MsgExtension == "MF:PartyChatPrizeMsg" ||
            msg.MsgExtension == (String(kStr_makeValue) + String(kStr_ofLastButtonName.suffix(6)) + String(kStr_modelName)) ||
            //: msg.MsgExtension == "MF:PartyChatAttentionMsg" {
            msg.MsgExtension == (String(kStr_sizeContent) + String(kStr_succeedName.suffix(6)))
        {
            //: let identifier = "\(TalkingDanmuMsgTextCell.className())_\(msg.msgInfo?.messageType ?? 0)"
            let identifier = "\(DataBassCell.className())_\(msg.msgInfo?.messageType ?? 0)"
            //: tableView.register(TalkingDanmuMsgTextCell.self, forCellReuseIdentifier: identifier)
            tableView.register(DataBassCell.self, forCellReuseIdentifier: identifier)
            //: cell = tableView.dequeueReusableCell(withIdentifier: identifier) as? TalkingDanmuMsgTextCell
            cell = tableView.dequeueReusableCell(withIdentifier: identifier) as? DataBassCell
            //: if cell == nil {
            if cell == nil {
                //: cell = TalkingDanmuMsgTextCell(style: .default, reuseIdentifier: identifier)
                cell = DataBassCell(style: .default, reuseIdentifier: identifier)
            }
            //: }else {
        } else {
            //: let identifier = "UITableViewCell"
            let identifier = (String(kStr_textHalfData.prefix(5)) + String(kStr_viewColorName.prefix(6)) + "Cell")
            //: var cell = tableView.dequeueReusableCell(withIdentifier: identifier)
            var cell = tableView.dequeueReusableCell(withIdentifier: identifier)
            //: if cell == nil {
            if cell == nil {
                //: cell = TalkingDanmuMsgBassCell(style: .default, reuseIdentifier: identifier)
                cell = EraseBlockThen(style: .default, reuseIdentifier: identifier)
            }
            //: return cell as! TalkingDanmuMsgBassCell
            return cell as! EraseBlockThen
        }

        //: cell?.msgModel = msg
        cell?.msgModel = msg

        //: return cell!
        return cell!
    }
}
