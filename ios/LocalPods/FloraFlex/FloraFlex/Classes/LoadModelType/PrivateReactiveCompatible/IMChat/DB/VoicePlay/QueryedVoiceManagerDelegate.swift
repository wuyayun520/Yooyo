
//: Declare String Begin

/*: ".wav" :*/
fileprivate let kStr_failureTitle:String = "in view user let bag.wav"

/*: "Documents/User/voice/" :*/
fileprivate let kStr_collectionName:String = "Documenkit location length"
fileprivate let kStr_colorTitle:String = "ts/Usif front"

/*: "Documents/User/record/" :*/
fileprivate let kStr_toData:String = "size gold content typeDocum"
fileprivate let kStr_dataValue:String = "true else gesture keyser/"
fileprivate let kStr_tingValue:String = "return userrecord/"

/*: "voice dataTaskDownloadFinish" :*/
fileprivate let kStr_imageData:String = "vequalice"
fileprivate let kStr_colorToLabValue:String = " dattransform bottom error"
fileprivate let kStr_targetValue:String = "kDownlcell re"
fileprivate let kStr_succeedFillData:String = "nissocial"

/*: "voice dataTaskDownloadCancel" :*/
fileprivate let kStr_errorValue:String = "to letvoice "
fileprivate let kStr_ofValue:String = "askDoto medium data"
fileprivate let kStr_mediumAbsTitle:String = "equalncel"

/*: "voice dataTaskDownloadExpired" :*/
fileprivate let kStr_indexImageName:[Character] = ["v","o","i","c","e"," ","d","a","t","a","T","a","s","k","D","o","w","n","l","o"]
fileprivate let kStr_sharedText:String = "adExpnetwork search let succeed"

/*: "voice dataTaskDownloadErro" :*/
fileprivate let kStr_blockTitle:String = "voice view party handle close user"
fileprivate let kStr_sourceData:String = "skDoequal extension tip head target"
fileprivate let kStr_dataName:String = "cell self right self viewErro"

/*: "Play Error,File does not exist" :*/
fileprivate let kStr_deviceValue:String = "Play Erfile request equal object up"
fileprivate let kStr_equalName:String = "ror,Fimedia view status to if"
fileprivate let kStr_signatureValue:String = "kit view view statuss not"
fileprivate let kStr_moreName:String = " existstring true"

/*: "Play Error,File expired" :*/
fileprivate let kStr_lengthContent:[Character] = ["P","l","a","y"," ","E","r","r","o"]
fileprivate let kStr_imageValueName:[Character] = ["r",",","F","i","l","e"," ","e","x","p","i","r","e","d"]

/*: "Play Error，Net error" :*/
fileprivate let kStr_saveName:String = "Play Erreffect data"
fileprivate let kStr_makeRequestViewTitle:[Character] = ["o","r","，","N","e","t"," ","e","r","r","o","r"]

/*: "Currently in mute mode" :*/
fileprivate let kStr_groupData:[Character] = ["C","u","r","r","e","n","t","l","y"," ","i","n"," ","m","u","t","e"," ","m","o"]
fileprivate let kStr_lockName:[Character] = ["d","e"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  QueryedVoiceManagerDelegate.swift
//  AbroadTalking
//
//  Created by Hemming on 2023/3/10.
//

//: import UIKit
import UIKit

/// 播放器状态
//: enum AudioMsgPlayStatus {
enum AudioPlayStatus {
    //: case Unknown
    case Unknown // 未开始
    //: case Waiting
    case Waiting // 等待中
    //: case Playing
    case Playing // 播放中
}

//: enum AudioPlayingErrorStatus: Int {
enum ShareKeyRepresentable: Int {
    //: case AudioPlayerNil = 0
    case AudioPlayerNil = 0 // audioPlayer初始化失败，多半是路径下文件的问题
    //: case FileExpired = 1
    case FileExpired = 1 // 文件过期
    //: case TaskError = 2
    case TaskError = 2 // 下载报错
    //: case NotFileAtPath = 3
    case NotFileAtPath = 3 // 路径下文件不存在
    //: case FirstMuteTip = 100
    case FirstMuteTip = 100 // 静音提醒
}

//: class TalkingVoiceMsgPlayManager: NSObject {
class QueryedVoiceManagerDelegate: NSObject {
    //: static let shared = TalkingVoiceMsgPlayManager()
    static let shared = QueryedVoiceManagerDelegate()

    //: var  voiceDataList: [TalkingVoiceMsgPlayModel] = []
    var voiceDataList: [VocalizationThen] = []

    //: var playItemDic: Dictionary<String, TalkingVoiceMsgPlayModel> = [:]
    var playItemDic: [String: VocalizationThen] = [:]

    //: var audioPlayer: AVAudioPlayer?
    var audioPlayer: AVAudioPlayer?
    //: var playStatus: AudioMsgPlayStatus = .Unknown
    var playStatus: AudioPlayStatus = .Unknown
    //: var playIndex = 0
    var playIndex = 0 // 当前播放的下标
    //: var waitPlayID = ""   // 将要播放的主键id
    var waitPlayID = "" // 将要播放的主键id
    //: var clickCellId = ""   // 记录点击的
    var clickCellId = "" // 记录点击的
    //: var isMute = false
    var isMute = false // 是否静音，默认否

    //: private let multiDelegate: NSHashTable<AnyObject> = NSHashTable.weakObjects()
    private let multiDelegate: NSHashTable<AnyObject> = NSHashTable.weakObjects()

    //: private override init() {
    override private init() {
        //: super.init()
        super.init()
        //: initialization()
        pushApp()
    }

    //: override func copy() -> Any { return self }
    override func copy() -> Any { return self }
    //: override func mutableCopy() -> Any { return self }
    override func mutableCopy() -> Any { return self }

    //: func initialization() {
    func pushApp() {
        //: self.voiceDataList.removeAll()
        self.voiceDataList.removeAll()
        //: self.playItemDic.removeAll()
        self.playItemDic.removeAll()
        //: self.playIndex = 0
        self.playIndex = 0
    }
}

//: extension TalkingVoiceMsgPlayManager {
extension QueryedVoiceManagerDelegate {
    //: func stopAudioPlayer() {
    func selectLikePlayer() {
        //: if playStatus != .Unknown {
        if playStatus != .Unknown {
            //: for  model in voiceDataList {
            for model in voiceDataList {
                //: model.isPlayingStatus = 2
                model.isPlayingStatus = 2
                //: model.activityShowStatus = 2
                model.activityShowStatus = 2
            }
        }
        //: if self.audioPlayer != nil {
        if self.audioPlayer != nil {
            //: self.audioPlayer?.stop()
            self.audioPlayer?.stop()
            //: self.audioPlayer = nil
            self.audioPlayer = nil
        }
    }

    /// 播放引用消息
    //: func starPlayReplyMsg(playModel: TalkingVoiceMsgPlayModel) {
    func circumference(playModel: VocalizationThen) {
        //: stopAudioPlayer()
        selectLikePlayer()
        //: initialization()
        pushApp()
        //: voiceDataList.append(playModel)
        voiceDataList.append(playModel)
        //: let status = Int(playModel.db_voiceCacheWrap.downloadStatus)
        let status = Int(playModel.db_voiceCacheWrap.downloadStatus)
        //: waitPlayID = playModel.db_voiceCacheWrap.msgId
        waitPlayID = playModel.db_voiceCacheWrap.msgId
        //: self.playItemDic[playModel.db_voiceCacheWrap.msgId] = playModel
        self.playItemDic[playModel.db_voiceCacheWrap.msgId] = playModel
        //: let dbFilePath = playModel.db_voiceCacheWrap.db_filePath
        let dbFilePath = playModel.db_voiceCacheWrap.db_filePath
        //: if status == DownloadTaskStatus.finish.rawValue ||
        if status == GiftWithOnsetTarget.finish.rawValue ||
            //: !dbFilePath.isEmpty && dbFilePath.hasSuffix(".wav")  {
            !dbFilePath.isEmpty && dbFilePath.hasSuffix((String(kStr_failureTitle.suffix(4))))
        {
            //: starPlayVoiceMsg(filePath: playModel.db_voiceCacheWrap.db_filePath, msgID: playModel.db_voiceCacheWrap.msgId)
            heading(filePath: playModel.db_voiceCacheWrap.db_filePath, msgID: playModel.db_voiceCacheWrap.msgId)
            //: } else {
        } else {
            //: let taskModel = VoiceDownloadTaskModel.getVoiceModel(playModel.db_voiceCacheWrap)
            let taskModel = EqualTaskModel.accountPossibility(playModel.db_voiceCacheWrap)
            //: VoiceDownloadTaskManager.shared.addDownloadTasks([taskModel])
            EngineDataDelegate.shared.nearAdd([taskModel])
        }
    }

    //: func starPlayMsg(msgArr: [TalkingVoiceMsgPlayModel]) {
    func addArr(msgArr: [VocalizationThen]) {
        //: if msgArr.count == 0 {
        if msgArr.count == 0 {
            //: return
            return
        }
        //: stopAudioPlayer()
        selectLikePlayer()
        //: initialization()
        pushApp()
        //: voiceDataList += msgArr
        voiceDataList += msgArr
        //: var index = 0
        var index = 0
        //: var tempArray: [VoiceDownloadTaskModel] = []
        var tempArray: [EqualTaskModel] = []
        //: var firstModel: TalkingVoiceMsgPlayModel?
        var firstModel: VocalizationThen?
        //: for model in msgArr {
        for model in msgArr {
            //: let bindWrap = GoFarReactiveCompatible.db_getVoiceMsg(with: model.db_voiceCacheWrap.msgId)
            let bindWrap = GoFarReactiveCompatible.pressOut(with: model.db_voiceCacheWrap.msgId)
            //: if bindWrap != nil {
            if bindWrap != nil {
                //: model.db_voiceCacheWrap = bindWrap!
                model.db_voiceCacheWrap = bindWrap!
            }
            //: let isMySend = (model.db_voiceCacheWrap.db_senduid == LocationThen.share.loginUserMode.userID)
            let isMySend = (model.db_voiceCacheWrap.db_senduid == LocationThen.share.loginUserMode.userID)
            //: self.playItemDic[model.db_voiceCacheWrap.msgId] = model
            self.playItemDic[model.db_voiceCacheWrap.msgId] = model
            //: let status = Int(model.db_voiceCacheWrap.downloadStatus)
            let status = Int(model.db_voiceCacheWrap.downloadStatus)
            //: if index == 0 {
            if index == 0 {
                //: waitPlayID = model.db_voiceCacheWrap.msgId
                waitPlayID = model.db_voiceCacheWrap.msgId
                //: if status == DownloadTaskStatus.finish.rawValue || isMySend {
                if status == GiftWithOnsetTarget.finish.rawValue || isMySend {
                    //: firstModel = model
                    firstModel = model
                }
                //: if (status != DownloadTaskStatus.finish.rawValue) {
                if status != GiftWithOnsetTarget.finish.rawValue {
                    //: if playStatus != .Unknown {
                    if playStatus != .Unknown {
                        //: model.activityShowStatus = 1
                        model.activityShowStatus = 1
                    }
                }
            }
            //: if status != DownloadTaskStatus.finish.rawValue && !isMySend {
            if status != GiftWithOnsetTarget.finish.rawValue, !isMySend {
                //: let taskModel = VoiceDownloadTaskModel.getVoiceModel(model.db_voiceCacheWrap)
                let taskModel = EqualTaskModel.accountPossibility(model.db_voiceCacheWrap)
                //: tempArray.append(taskModel)
                tempArray.append(taskModel)
            }
            //: index += 1
            index += 1
        }

        //: if firstModel != nil {
        if firstModel != nil {
            //: firstModel?.isPlayingStatus = 1
            firstModel?.isPlayingStatus = 1
            //: starPlayVoiceMsg(filePath: (firstModel?.db_voiceCacheWrap.db_filePath)!, msgID: (firstModel?.db_voiceCacheWrap.msgId)!)
            heading(filePath: (firstModel?.db_voiceCacheWrap.db_filePath)!, msgID: (firstModel?.db_voiceCacheWrap.msgId)!)
        }
        //: VoiceDownloadTaskManager.shared.addDownloadTasks(tempArray)
        EngineDataDelegate.shared.nearAdd(tempArray)
    }

    //: func starPlayVoiceMsg(filePath: String, msgID: String) {
    func heading(filePath: String, msgID: String) {
        //: if self.audioPlayer != nil {
        if self.audioPlayer != nil {
            //: self.audioPlayer?.stop()
            self.audioPlayer?.stop()
            //: self.audioPlayer = nil
            self.audioPlayer = nil
        }
        //: let model = self.playItemDic[msgID]
        let model = self.playItemDic[msgID]
        //: if model == nil {
        if model == nil {
            //: return
            return
        }
        //: var temfilePath = filePath
        var temfilePath = filePath
        //: let theFileName = (temfilePath as NSString).lastPathComponent
        let theFileName = (temfilePath as NSString).lastPathComponent

        // 重编译，相对路径会变
        //: if filePath.contains("Documents/User/voice/") {
        if filePath.contains((String(kStr_collectionName.prefix(7)) + String(kStr_colorTitle.prefix(5)) + "er/voice/")) {
            //: temfilePath = Talking_Chat_voice_SandboxPath + theFileName
            temfilePath = kLet_timeViewContent + theFileName
        }
        //: if filePath.contains("Documents/User/record/") {
        if filePath.contains((String(kStr_toData.suffix(5)) + "ents/U" + String(kStr_dataValue.suffix(4)) + String(kStr_tingValue.suffix(7)))) {
            //: temfilePath = Talking_Chat_record_SandboxPath + theFileName
            temfilePath = kLet_homeBottomName + theFileName
        }
        //: if !FileManager.fileManager.fileExists(atPath: temfilePath) {
        if !FileManager.fileManager.fileExists(atPath: temfilePath) {
            //: model?.isPlayingStatus = 2
            model?.isPlayingStatus = 2
            //: showToast(status: .NotFileAtPath)
            evidence(status: .NotFileAtPath)
            //: return
            return
        }
        //: model?.db_voiceCacheWrap.db_isRead = "1"
        model?.db_voiceCacheWrap.db_isRead = "1"
        //: GoFarReactiveCompatible.db_updateVoiceMsg(model!.db_voiceCacheWrap)
        GoFarReactiveCompatible.gestureModelHandle(model!.db_voiceCacheWrap)
        //: let session = AVAudioSession.sharedInstance()
        let session = AVAudioSession.sharedInstance()
        //: do {
        do {
            //: try session.setCategory(AVAudioSession.Category.ambient)
            try session.setCategory(AVAudioSession.Category.ambient)
            //: } catch {
        } catch {}
        //: let url = URL.init(fileURLWithPath: temfilePath)
        let url = URL(fileURLWithPath: temfilePath)
        //: do {
        do {
            //: try audioPlayer = AVAudioPlayer.init(contentsOf: url)
            try audioPlayer = AVAudioPlayer(contentsOf: url)
            //: } catch {
        } catch {}
        //: audioPlayer?.delegate = self
        audioPlayer?.delegate = self
        //: audioPlayer?.prepareToPlay()
        audioPlayer?.prepareToPlay()
        //: audioPlayer?.play()
        audioPlayer?.play()
        //: self.playStatus = .Playing
        self.playStatus = .Playing
        //: setMutedDetection()
        pushDetection()
    }

    //: func addDaskManagerDelegate() {
    func appSend() {
        //: stopAudioPlayer()
        selectLikePlayer()
        //: VoiceDownloadTaskManager.shared.delegate = self
        EngineDataDelegate.shared.delegate = self
    }

    //: func removeDaskManagerDelegate() {
    func imageDownDelegate() {
        //: stopAudioPlayer()
        selectLikePlayer()
        //: VoiceDownloadTaskManager.shared.delegate = nil
        EngineDataDelegate.shared.delegate = nil
    }
}

//: extension TalkingVoiceMsgPlayManager: AVAudioPlayerDelegate {
extension QueryedVoiceManagerDelegate: AVAudioPlayerDelegate {
    //: func audioPlayerDidFinishPlaying(_ player: AVAudioPlayer, successfully flag: Bool) {
    func audioPlayerDidFinishPlaying(_: AVAudioPlayer, successfully flag: Bool) {
        //: let lastModel = voiceDataList[playIndex]
        let lastModel = voiceDataList[playIndex]
        //: lastModel.isPlayingStatus = 2
        lastModel.isPlayingStatus = 2
        //: if flag {
        if flag {
            //: if playIndex < voiceDataList.count - 1 {
            if playIndex < voiceDataList.count - 1 {
                //: playIndex += 1
                playIndex += 1
                //: let model = voiceDataList[playIndex]
                let model = voiceDataList[playIndex]
                //: let bindWrap = GoFarReactiveCompatible.db_getVoiceMsg(with: model.db_voiceCacheWrap.msgId)
                let bindWrap = GoFarReactiveCompatible.pressOut(with: model.db_voiceCacheWrap.msgId)
                //: if bindWrap != nil {
                if bindWrap != nil {
                    //: model.db_voiceCacheWrap = bindWrap!
                    model.db_voiceCacheWrap = bindWrap!
                    //: self.waitPlayID = bindWrap!.msgId
                    self.waitPlayID = bindWrap!.msgId
                }
                //: voiceDataList[playIndex] = model
                voiceDataList[playIndex] = model
                //: self.playItemDic[model.db_voiceCacheWrap.msgId] = model
                self.playItemDic[model.db_voiceCacheWrap.msgId] = model

                //: let status = Int(model.db_voiceCacheWrap.downloadStatus)
                let status = Int(model.db_voiceCacheWrap.downloadStatus)
                //: if status == DownloadTaskStatus.finish.rawValue {
                if status == GiftWithOnsetTarget.finish.rawValue {
                    //: model.isPlayingStatus = 1
                    model.isPlayingStatus = 1
                    //: starPlayVoiceMsg(filePath: model.db_voiceCacheWrap.db_filePath, msgID: model.db_voiceCacheWrap.msgId)
                    heading(filePath: model.db_voiceCacheWrap.db_filePath, msgID: model.db_voiceCacheWrap.msgId)
                    //: playStatus = .Waiting
                    playStatus = .Waiting
                    //: } else if (status == DownloadTaskStatus.error.rawValue) {
                } else if status == GiftWithOnsetTarget.error.rawValue {
                    //: self.showToast(status: .TaskError)
                    self.evidence(status: .TaskError)
                    //: playStatus = .Unknown
                    playStatus = .Unknown
                    //: } else if (status == DownloadTaskStatus.expired.rawValue) {
                } else if status == GiftWithOnsetTarget.expired.rawValue {
                    //: self.showToast(status: .FileExpired)
                    self.evidence(status: .FileExpired)
                    //: playStatus = .Unknown
                    playStatus = .Unknown
                    //: } else if (status == DownloadTaskStatus.cancel.rawValue) {
                } else if status == GiftWithOnsetTarget.cancel.rawValue {
                    //: playStatus = .Unknown
                    playStatus = .Unknown
                }

                //: } else {
            } else {
                //: playStatus = .Unknown
                playStatus = .Unknown
                //: stopAudioPlayer()
                selectLikePlayer()
            }
        }
    }

    //: func audioPlayerDecodeErrorDidOccur(_ player: AVAudioPlayer, error: Error?) {
    func audioPlayerDecodeErrorDidOccur(_: AVAudioPlayer, error: Error?) {
        //: printLog(message: error)
        pathLine(message: error)
    }
}

// MARK: - SubManagerDelegate

//: extension TalkingVoiceMsgPlayManager: VoiceDownloadTaskManagerDelegate {
extension QueryedVoiceManagerDelegate: SubManagerDelegate {
    //: func voiceDownloadFinish(model: VoiceDownloadTaskModel) {
    func creature(model: EqualTaskModel) {
        //: printLog(message: "voice dataTaskDownloadFinish")
        pathLine(message: (kStr_imageData.replacingOccurrences(of: "equal", with: "o") + String(kStr_colorToLabValue.prefix(4)) + "aTas" + String(kStr_targetValue.prefix(6)) + "oadFi" + kStr_succeedFillData.replacingOccurrences(of: "social", with: "h")))
        //: handleDataTaskDownloadDelegate(taskModel: model)
        notText(taskModel: model)
    }

    //: func voiceDownloadCancel(model: VoiceDownloadTaskModel) {
    func waitModel(model: EqualTaskModel) {
        //: printLog(message: "voice dataTaskDownloadCancel")
        pathLine(message: (String(kStr_errorValue.suffix(6)) + "dataT" + String(kStr_ofValue.prefix(5)) + "wnloadC" + kStr_mediumAbsTitle.replacingOccurrences(of: "equal", with: "a")))
        //: handleDataTaskDownloadDelegate(taskModel: model)
        notText(taskModel: model)
    }

    //: func voiceDownloadExpired(model: VoiceDownloadTaskModel) {
    func equalCommunicationExpiredMTheory(model: EqualTaskModel) {
        //: printLog(message: "voice dataTaskDownloadExpired")
        pathLine(message: (String(kStr_indexImageName) + String(kStr_sharedText.prefix(5)) + "ired"))
        //: handleDataTaskDownloadDelegate(taskModel: model)
        notText(taskModel: model)
    }

    //: func voiceDownloading(model: VoiceDownloadTaskModel) {
    func highlight(model _: EqualTaskModel) {}

    //: func voiceDownloadError(model: VoiceDownloadTaskModel) {
    func tip(model: EqualTaskModel) {
        //: printLog(message: "voice dataTaskDownloadErro")
        pathLine(message: (String(kStr_blockTitle.prefix(6)) + "dataTa" + String(kStr_sourceData.prefix(4)) + "wnload" + String(kStr_dataName.suffix(4))))
        //: handleDataTaskDownloadDelegate(taskModel: model)
        notText(taskModel: model)
    }

    //: func handleDataTaskDownloadDelegate(taskModel: VoiceDownloadTaskModel) {
    func notText(taskModel: EqualTaskModel) {
        //: if voiceDataList.count  == 0 {
        if voiceDataList.count == 0 {
            //: return
            return
        }

        //: if self.waitPlayID == taskModel.taskId {
        if self.waitPlayID == taskModel.taskId {
            //: let model = self.voiceDataList[playIndex]
            let model = self.voiceDataList[playIndex]
            //: let warp = GoFarReactiveCompatible.db_getVoiceMsg(with: model.db_voiceCacheWrap.msgId)
            let warp = GoFarReactiveCompatible.pressOut(with: model.db_voiceCacheWrap.msgId)
            //: if warp != nil {
            if warp != nil {
                //: model.db_voiceCacheWrap = warp!
                model.db_voiceCacheWrap = warp!
            }
            //: let status = Int(model.db_voiceCacheWrap.downloadStatus)
            let status = Int(model.db_voiceCacheWrap.downloadStatus)
            //: if status == DownloadTaskStatus.finish.rawValue {
            if status == GiftWithOnsetTarget.finish.rawValue {
                //: model.isPlayingStatus = 1
                model.isPlayingStatus = 1
                //: starPlayVoiceMsg(filePath: taskModel.unZipFilePath, msgID: model.db_voiceCacheWrap.msgId)
                heading(filePath: taskModel.unZipFilePath, msgID: model.db_voiceCacheWrap.msgId)

                //: } else if status == DownloadTaskStatus.error.rawValue ||
            } else if status == GiftWithOnsetTarget.error.rawValue ||
                //: status == DownloadTaskStatus.expired.rawValue ||
                status == GiftWithOnsetTarget.expired.rawValue ||
                //: status == DownloadTaskStatus.cancel.rawValue {
                status == GiftWithOnsetTarget.cancel.rawValue
            {
                //: playStatus = .Unknown
                playStatus = .Unknown
                //: model.isPlayingStatus = 2
                model.isPlayingStatus = 2
                //: model.activityShowStatus = 2
                model.activityShowStatus = 2
                //: if status == DownloadTaskStatus.expired.rawValue {
                if status == GiftWithOnsetTarget.expired.rawValue {
                    //: self.showToast(status: .FileExpired)
                    self.evidence(status: .FileExpired)
                    //: } else {
                } else {
                    //: self.showToast(status: .TaskError)
                    self.evidence(status: .TaskError)
                }
            }
            //: } else {
        } else {
            //: let warp = GoFarReactiveCompatible.db_getVoiceMsg(with: taskModel.taskId)
            let warp = GoFarReactiveCompatible.pressOut(with: taskModel.taskId)
            //: let model = self.playItemDic[taskModel.taskId]
            let model = self.playItemDic[taskModel.taskId]
            //: if warp != nil {
            if warp != nil {
                //: model?.db_voiceCacheWrap = warp!
                model?.db_voiceCacheWrap = warp!
            }
        }
    }

    //: func showToast(status: AudioPlayingErrorStatus) {
    func evidence(status: ShareKeyRepresentable) {
        //: var toastStr = ""
        var toastStr = ""
        //: switch status {
        switch status {
        //: case .NotFileAtPath, .AudioPlayerNil:
        case .NotFileAtPath, .AudioPlayerNil:
            //: toastStr = "Play Error,File does not exist".localized
            toastStr = (String(kStr_deviceValue.prefix(7)) + String(kStr_equalName.prefix(6)) + "le doe" + String(kStr_signatureValue.suffix(5)) + String(kStr_moreName.prefix(6))).localized
        //: break
        //: case .FileExpired:
        case .FileExpired:
            //: toastStr = "Play Error,File expired".localized
            toastStr = (String(kStr_lengthContent) + String(kStr_imageValueName)).localized
        //: break
        //: case .TaskError:
        case .TaskError:
            //: toastStr = "Play Error，Net error".localized
            toastStr = (String(kStr_saveName.prefix(8)) + String(kStr_makeRequestViewTitle)).localized
        //: break
        //: case .FirstMuteTip:
        case .FirstMuteTip:
            //: toastStr = "Currently in mute mode".localized
            toastStr = (String(kStr_groupData) + String(kStr_lockName)).localized
            //: break
        }

        //: if toastStr.isEmptyString == false {
        if toastStr.isEmptyString == false {
            //: self.func__showStatusBarErrorMsg(showMsg: toastStr)
            self.detailDownArray(showMsg: toastStr)
        }
        //: if status.rawValue < 100 {
        if status.rawValue < 100 {
            //: stopAudioPlayer()
            selectLikePlayer()
        }
    }
}

//: extension TalkingVoiceMsgPlayManager {
extension QueryedVoiceManagerDelegate {
    //: func setMutedDetection() {
    func pushDetection() {
        //: RBDMuteSwitch.shared.detectMuteSwitch()
        MakeReactiveCompatible.shared.actionMake()
        //: RBDMuteSwitch.shared.isMutedBlock = { [weak self] mute in
        MakeReactiveCompatible.shared.isMutedBlock = { [weak self] mute in
            //: guard let self = self else { return }
            guard let self = self else { return }
            //: self.isMute = mute
            self.isMute = mute
            //: if self.isMute {
            if self.isMute {
                //: self.showToast(status: .FirstMuteTip)
                self.evidence(status: .FirstMuteTip)
            }
        }
    }
}
