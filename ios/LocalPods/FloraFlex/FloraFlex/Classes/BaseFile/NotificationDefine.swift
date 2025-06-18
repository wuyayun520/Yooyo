
//: Declare String Begin

/*: "DID_LOGIN_SUCCESS_NOTIFICATION" :*/
fileprivate let kStr_viewModelValue:[Character] = ["D","I","D","_","L","O","G"]
fileprivate let kStr_buttonName:[Character] = ["I","N","_","S","U","C","C","E","S","S","_","N","O","T","I","F","I","C","A","T","I","O","N"]

/*: "DID_LOGIN_OUT_SUCCESS_NOTIFICATION" :*/
fileprivate let kStr_exitValue:[UInt8] = [0x4e,0x4f,0x49,0x54,0x41,0x43,0x49,0x46,0x49,0x54,0x4f,0x4e,0x5f,0x53,0x53,0x45,0x43,0x43,0x55,0x53,0x5f,0x54,0x55,0x4f,0x5f,0x4e,0x49,0x47,0x4f,0x4c,0x5f,0x44,0x49,0x44]

/*: "UPDATE_APP_GETCONFIG_NOTIFICATION" :*/
fileprivate let kStr_blockSendData:[UInt8] = [0x2f,0x2a,0x3e,0x3b,0x2e,0x3f,0x25,0x3b,0x2a,0x2a,0x25,0x3d,0x3f,0x2e,0x39,0x35,0x34,0x3c,0x33,0x3d,0x25,0x34,0x35,0x2e,0x33,0x3c,0x33,0x39,0x3b,0x2e,0x33,0x35,0x34]

private func actionView(rank num: UInt8) -> UInt8 {
    return num ^ 122
}

/*: "REFRESH_INDEX_GETCONFIG_NOTIFICATION" :*/
fileprivate let kStr_resultValue:[UInt8] = [0x0,0x17,0x14,0x0,0x17,0x1,0x1a,0xd,0x1b,0x1c,0x16,0x17,0xa,0xd,0x15,0x17,0x6,0x11,0x1d,0x1c,0x14,0x1b,0x15,0xd,0x1c,0x1d,0x6,0x1b,0x14,0x1b,0x11,0x13,0x6,0x1b,0x1d,0x1c]

private func cropEqual(layer num: UInt8) -> UInt8 {
    return num ^ 82
}

/*: "UPDATE_INDEX_GETCONFIG_NOTIFICATION" :*/
fileprivate let kStr_userValue:[UInt8] = [0x45,0x40,0x34,0x31,0x44,0x35,0x4f,0x39,0x3e,0x34,0x35,0x48,0x4f,0x37,0x35,0x44,0x33,0x3f,0x3e,0x36,0x39,0x37,0x4f,0x3e,0x3f,0x44,0x39,0x36,0x39,0x33,0x31,0x44,0x39,0x3f,0x3e]

fileprivate func somebodyDetail(leading num: UInt8) -> UInt8 {
    let value = Int(num) - 240
    if value < 0 {
        return UInt8(value + 256)
    } else {
        return UInt8(value)
    }
}

/*: "UPDATE_USER_GETMYINFO_NOTIFICATION" :*/
fileprivate let kStr_disabledOfContent:[UInt8] = [0xb1,0xb4,0xa0,0xa5,0xb0,0xa1,0xbb,0xb1,0xb7,0xa1,0xb6,0xbb,0xa3,0xa1,0xb0,0xa9,0xbd,0xad,0xaa,0xa2,0xab,0xbb,0xaa,0xab,0xb0,0xad,0xa2,0xad,0xa7,0xa5,0xb0,0xad,0xab,0xaa]

private func modelSize(error num: UInt8) -> UInt8 {
    return num ^ 228
}

/*: "USER_GETMYINFO_SUCCEED_NOTIFICATION" :*/
fileprivate let kStr_hiddenValue:[UInt8] = [0x65,0x63,0x75,0x62,0x6f,0x77,0x75,0x64,0x7d,0x69,0x79,0x7e,0x76,0x7f,0x6f,0x63,0x65,0x73,0x73,0x75,0x75,0x74,0x6f,0x7e,0x7f,0x64,0x79,0x76,0x79,0x73,0x71,0x64,0x79,0x7f,0x7e]

/*: "USER_UPDATE_LOUNGEPLUSINFO_NOTIFICATION" :*/
fileprivate let kStr_resultTitle:[UInt8] = [0x2a,0x2c,0x3a,0x2d,0x20,0x2a,0x2f,0x3b,0x3e,0x2b,0x3a,0x20,0x33,0x30,0x2a,0x31,0x38,0x3a,0x2f,0x33,0x2a,0x2c,0x36,0x31,0x39,0x30,0x20,0x31,0x30,0x2b,0x36,0x39,0x36,0x3c,0x3e,0x2b,0x36,0x30,0x31]

private func errorTitle(file num: UInt8) -> UInt8 {
    return num ^ 127
}

/*: "UPDATE_USER_GETINFOCOLUMN_NOTIFICATION" :*/
fileprivate let kStr_whiteEventFrameName:[UInt8] = [0x6f,0x6a,0x7e,0x7b,0x6e,0x7f,0x65,0x6f,0x69,0x7f,0x68,0x65,0x7d,0x7f,0x6e,0x73,0x74,0x7c,0x75,0x79,0x75,0x76,0x6f,0x77,0x74,0x65,0x74,0x75,0x6e,0x73,0x7c,0x73,0x79,0x7b,0x6e,0x73,0x75,0x74]

private func profileToImage(icon num: UInt8) -> UInt8 {
    return num ^ 58
}

/*: "USER_RECIEVED_GIFT_NOTIFICATION" :*/
fileprivate let kStr_capacityDefineData:[UInt8] = [0x70,0x76,0x60,0x77,0x7a,0x77,0x60,0x66,0x6c,0x60,0x73,0x60,0x61,0x7a,0x62,0x6c,0x63,0x71,0x7a,0x6b,0x6a,0x71,0x6c,0x63,0x6c,0x66,0x64,0x71,0x6c,0x6a,0x6b]

private func managerValue(key num: UInt8) -> UInt8 {
    return num ^ 37
}

/*: "USER_INFO_MSG_LIST_NOTIFICATION" :*/
fileprivate let kStr_locationTopLinkData:[UInt8] = [0x9d,0x9b,0x8d,0x9a,0xa7,0x91,0x96,0x8e,0x97,0xa7,0x95,0x9b,0x8f,0xa7,0x94,0x91,0x9b,0x9c,0xa7,0x96,0x97,0x9c,0x91,0x8e,0x91,0x8b,0x89,0x9c,0x91,0x97,0x96]

fileprivate func titleSelf(style num: UInt8) -> UInt8 {
    let value = Int(num) - 72
    if value < 0 {
        return UInt8(value + 256)
    } else {
        return UInt8(value)
    }
}

/*: "CHAT_TIPS_TEXT_NOTIFICATION" :*/
fileprivate let kStr_sizeData:String = "whiteHAT"
fileprivate let kStr_managerData:String = "gift pop image equalTEXT_N"
fileprivate let kStr_aspectContent:String = "Olicense"
fileprivate let kStr_fromName:String = "ific"

/*: "WHOLIKEME_BADGENUMBER_NOTIF" :*/
fileprivate let kStr_downValue:String = "WimageOLIKE"
fileprivate let kStr_sizeValue:[Character] = ["M","E","_","B","A","D","G","E","N","U","M","B","E","R","_"]
fileprivate let kStr_minData:String = "NOTchildF"

/*: "UPDATE_COMMENTNUMBER_NOTIFICATION" :*/
fileprivate let kStr_emptyName:[UInt8] = [0xd7,0xd2,0xc6,0xc3,0xd6,0xc7,0xdd,0xc1,0xcd,0xcf,0xcf,0xc7,0xcc,0xd6,0xcc,0xd7,0xcf,0xc0,0xc7,0xd0,0xdd,0xcc,0xcd,0xd6,0xcb,0xc4,0xcb,0xc1,0xc3,0xd6,0xcb,0xcd,0xcc]

private func fileRangeCenter(end num: UInt8) -> UInt8 {
    return num ^ 130
}

/*: "UPDATE_LIKE_NUMBER_NOTIFICATION" :*/
fileprivate let kStr_numberData:[UInt8] = [0x4e,0x4f,0x49,0x54,0x41,0x43,0x49,0x46,0x49,0x54,0x4f,0x4e,0x5f,0x52,0x45,0x42,0x4d,0x55,0x4e,0x5f,0x45,0x4b,0x49,0x4c,0x5f,0x45,0x54,0x41,0x44,0x50,0x55]

/*: "UPDATE_ATTION_NOTIFICATION" :*/
fileprivate let kStr_transitionAfterData:[Character] = ["U","P","D","A","T","E","_","A","T","T","I","O","N","_"]
fileprivate let kStr_popData:String = "not"
fileprivate let kStr_toValue:String = "timeFtimeCATtimeON"

/*: "DELETE_MINE_POST_NOTIFICATION" :*/
fileprivate let kStr_resultScreenValue:String = "DELEtransaction"
fileprivate let kStr_textData:String = "remove false color share anyNE_P"
fileprivate let kStr_showPushName:String = "NrawI"
fileprivate let kStr_groupFrameData:String = "Ilab"

/*: "FREEBTN_UPLOAD_POST_NOTIFICATION" :*/
fileprivate let kStr_toContent:[UInt8] = [0x9,0x15,0x8,0x8,0x5,0x17,0x11,0x22,0x18,0x13,0xf,0x12,0x4,0x7,0x22,0x13,0x12,0x16,0x17,0x22,0x11,0x12,0x17,0xc,0x9,0xc,0x6,0x4,0x17,0xc,0x12,0x11]

fileprivate func modeShared(clear num: UInt8) -> UInt8 {
    let value = Int(num) + 61
    if value > 255 {
        return UInt8(value - 256)
    } else {
        return UInt8(value)
    }
}

/*: "POST_EXPLORE_SUCCESS_NOTIFICATION" :*/
fileprivate let kStr_afterData:[UInt8] = [0x42,0x41,0x45,0x46,0x51,0x37,0x4a,0x42,0x3e,0x41,0x44,0x37,0x51,0x45,0x47,0x35,0x35,0x37,0x45,0x45,0x51,0x40,0x41,0x46,0x3b,0x38,0x3b,0x35,0x33,0x46,0x3b,0x41,0x40]

fileprivate func buttonImage(make num: UInt8) -> UInt8 {
    let value = Int(num) + 14
    if value > 255 {
        return UInt8(value - 256)
    } else {
        return UInt8(value)
    }
}

/*: "CHAT_NEW_MSG_NOTIFICATION" :*/
fileprivate let kStr_kindValue:[Character] = ["C","H","A","T","_","N","E","W","_","M","S","G","_","N","O","T"]
fileprivate let kStr_indexTitle:String = "app"
fileprivate let kStr_screenData:[Character] = ["F","I","C","A","T","I","O","N"]

/*: "CHAT_MSG_READ_RECEIPT_NOTIFICATION" :*/
fileprivate let kStr_pointMakeData:[UInt8] = [0x64,0x6f,0x66,0x73,0x78,0x6a,0x74,0x60,0x78,0x75,0x62,0x66,0x63,0x78,0x75,0x62,0x64,0x62,0x6e,0x77,0x73,0x78,0x69,0x68,0x73,0x6e,0x61,0x6e,0x64,0x66,0x73,0x6e,0x68,0x69]

/*: "MSGLIST_UPDATE_ONLINESTATUS_NOTIFICATION" :*/
fileprivate let kStr_resumeName:[UInt8] = [0x4e,0x4f,0x49,0x54,0x41,0x43,0x49,0x46,0x49,0x54,0x4f,0x4e,0x5f,0x53,0x55,0x54,0x41,0x54,0x53,0x45,0x4e,0x49,0x4c,0x4e,0x4f,0x5f,0x45,0x54,0x41,0x44,0x50,0x55,0x5f,0x54,0x53,0x49,0x4c,0x47,0x53,0x4d]

/*: "MSGLIST_UPDATE_INTIMATE_NOTIFICATION" :*/
fileprivate let kStr_backgroundText:[UInt8] = [0x4e,0x4f,0x49,0x54,0x41,0x43,0x49,0x46,0x49,0x54,0x4f,0x4e,0x5f,0x45,0x54,0x41,0x4d,0x49,0x54,0x4e,0x49,0x5f,0x45,0x54,0x41,0x44,0x50,0x55,0x5f,0x54,0x53,0x49,0x4c,0x47,0x53,0x4d]

/*: "CHAT_ADD_CALL_RECORD_MSG_NOTIFICATION" :*/
fileprivate let kStr_iconName:[UInt8] = [0xc8,0xc3,0xca,0xdf,0xd4,0xca,0xcf,0xcf,0xd4,0xc8,0xca,0xc7,0xc7,0xd4,0xd9,0xce,0xc8,0xc4,0xd9,0xcf,0xd4,0xc6,0xd8,0xcc,0xd4,0xc5,0xc4,0xdf,0xc2,0xcd,0xc2,0xc8,0xca,0xdf,0xc2,0xc4,0xc5]

/*: "VIDEO_CHAT_OTHER_CAMERA_AVAILABLE_NOTIFICATION" :*/
fileprivate let kStr_stopValue:[UInt8] = [0xc8,0xd7,0xda,0xdb,0xd1,0xc1,0xdd,0xd6,0xdf,0xca,0xc1,0xd1,0xca,0xd6,0xdb,0xcc,0xc1,0xdd,0xdf,0xd3,0xdb,0xcc,0xdf,0xc1,0xdf,0xc8,0xdf,0xd7,0xd2,0xdf,0xdc,0xd2,0xdb,0xc1,0xd0,0xd1,0xca,0xd7,0xd8,0xd7,0xdd,0xdf,0xca,0xd7,0xd1,0xd0]

private func allPrice(screen num: UInt8) -> UInt8 {
    return num ^ 158
}

/*: "SEARCH_DETAIL_HOMEREFRESH_NOTIFICATION" :*/
fileprivate let kStr_areaData:[UInt8] = [0xd7,0xc1,0xc5,0xd6,0xc7,0xcc,0xdb,0xc0,0xc1,0xd0,0xc5,0xcd,0xc8,0xdb,0xcc,0xcb,0xc9,0xc1,0xd6,0xc1,0xc2,0xd6,0xc1,0xd7,0xcc,0xdb,0xca,0xcb,0xd0,0xcd,0xc2,0xcd,0xc7,0xc5,0xd0,0xcd,0xcb,0xca]

private func valueM(frame num: UInt8) -> UInt8 {
    return num ^ 132
}

/*: "SWITCH_TABBAR_HOME_PARTY_NOTIFICATION" :*/
fileprivate let kStr_photoContent:[UInt8] = [0x77,0x73,0x6d,0x70,0x67,0x6c,0x7b,0x70,0x65,0x66,0x66,0x65,0x76,0x7b,0x6c,0x6b,0x69,0x61,0x7b,0x74,0x65,0x76,0x70,0x7d,0x7b,0x6a,0x6b,0x70,0x6d,0x62,0x6d,0x67,0x65,0x70,0x6d,0x6b,0x6a]

private func halfGender(model num: UInt8) -> UInt8 {
    return num ^ 36
}

/*: "PUSH_MEEDIT_NOTIFICATION" :*/
fileprivate let kStr_imageValue:String = "PUSH_Mname future model"
fileprivate let kStr_contentTableName:String = "add model contentT_NOTI"
fileprivate let kStr_voiceTitle:String = "tion"

/*: "LIVE_USER_POINT_CHANGE" :*/
fileprivate let kStr_pageName:[Character] = ["L","I","V","E","_","U","S","E","R","_","P","O","I","N","T","_","C","H","A","N","G","E"]

/*: "LIVE_HALF_VIEW_SHOW" :*/
fileprivate let kStr_sizeTitleValue:[Character] = ["L","I","V","E","_"]
fileprivate let kStr_failName:String = "interaction"
fileprivate let kStr_whiteValue:[Character] = ["L","F","_","V","I","E","W","_","S","H","O","W"]

/*: "LIVE_HALF_VIEW_DISMISS" :*/
fileprivate let kStr_listActionTitle:String = "live"
fileprivate let kStr_sizeContent:String = "_VIEW_return user"
fileprivate let kStr_objectName:String = "di"
fileprivate let kStr_frameName:[Character] = ["S","M","I","S","S"]

/*: "LIVE_RECIVE_STARTLIVE_NOTIFICATION" :*/
fileprivate let kStr_firstEqualText:[UInt8] = [0xfd,0xf8,0xe7,0xf4,0xee,0xe3,0xf4,0xf2,0xf8,0xe7,0xf4,0xee,0xe2,0xe5,0xf0,0xe3,0xe5,0xfd,0xf8,0xe7,0xf4,0xee,0xff,0xfe,0xe5,0xf8,0xf7,0xf8,0xf2,0xf0,0xe5,0xf8,0xfe,0xff]

private func greetError(space num: UInt8) -> UInt8 {
    return num ^ 177
}

/*: "LIVE_RECIVE_FLOATSCREEN_NOTIFICATION" :*/
fileprivate let kStr_maxName:[UInt8] = [0x12,0xf,0x1c,0xb,0x25,0x18,0xb,0x9,0xf,0x1c,0xb,0x25,0xc,0x12,0x15,0x7,0x1a,0x19,0x9,0x18,0xb,0xb,0x14,0x25,0x14,0x15,0x1a,0xf,0xc,0xf,0x9,0x7,0x1a,0xf,0x15,0x14]

fileprivate func viewIf(to num: UInt8) -> UInt8 {
    let value = Int(num) - 198
    if value < 0 {
        return UInt8(value + 256)
    } else {
        return UInt8(value)
    }
}

/*: "LIVE_BLOCK_USER_NOTIFICATION" :*/
fileprivate let kStr_makeValue:[Character] = ["L","I","V","E","_","B","L","O","C","K","_","U","S","E","R","_","N","O","T"]
fileprivate let kStr_dateData:String = "constraintFconstraintC"

/*: "SOCKET_IS_OPEN_NOTIFICATION" :*/
fileprivate let kStr_equalValue:String = "SOclearKE"
fileprivate let kStr_frameMediaContent:String = "PEN_dismiss source guard"
fileprivate let kStr_itemValue:String = "NOobjectI"

/*: "GIFT_REFRESHPACKAGE_NOTIFICATION" :*/
fileprivate let kStr_showText:[UInt8] = [0x2c,0x22,0x2d,0x3f,0x34,0x39,0x2e,0x2d,0x39,0x2e,0x38,0x23,0x3b,0x2a,0x28,0x20,0x2a,0x2c,0x2e,0x34,0x25,0x24,0x3f,0x22,0x2d,0x22,0x28,0x2a,0x3f,0x22,0x24,0x25]

private func frameGesture(clear num: UInt8) -> UInt8 {
    return num ^ 107
}

/*: "VIDEOCALL_INITIV_NOTIFICATION" :*/
fileprivate let kStr_makeData:String = "vide"
fileprivate let kStr_addReleaseValue:String = "INITIV_Nuser tip list let error"
fileprivate let kStr_sourceValue:String = "appIFIC"
fileprivate let kStr_sceneErrorData:String = "ATIOraw"

/*: "VIDEOCALL_END_CLOSEDISCOUNTS_NOTIFICATION" :*/
fileprivate let kStr_textValue:[UInt8] = [0x5d,0x42,0x4f,0x4e,0x44,0x48,0x4a,0x47,0x47,0x54,0x4e,0x45,0x4f,0x54,0x48,0x47,0x44,0x58,0x4e,0x4f,0x42,0x58,0x48,0x44,0x5e,0x45,0x5f,0x58,0x54,0x45,0x44,0x5f,0x42,0x4d,0x42,0x48,0x4a,0x5f,0x42,0x44,0x45]

private func dateBack(to num: UInt8) -> UInt8 {
    return num ^ 11
}

/*: "RECHARGEHALFPAGE_END_CLOSE_NOTIFICATION" :*/
fileprivate let kStr_listData:[UInt8] = [0x8f,0x98,0x9e,0x95,0x9c,0x8f,0x9a,0x98,0x95,0x9c,0x91,0x9b,0x8d,0x9c,0x9a,0x98,0x82,0x98,0x93,0x99,0x82,0x9e,0x91,0x92,0x8e,0x98,0x82,0x93,0x92,0x89,0x94,0x9b,0x94,0x9e,0x9c,0x89,0x94,0x92,0x93]

/*: "Net Error, Try again later" :*/
fileprivate let kStr_nameData:String = "content if voiceNet E"
fileprivate let kStr_viewName:String = "button return blockTry a"
fileprivate let kStr_data:String = "fromter"

/*: "We want everyone to enjoy a healthy chatting environment and to use this feature you need to be " :*/
fileprivate let kStr_liveValueText:[UInt8] = [0xb4,0xc2,0x7d,0xd4,0xbe,0xcb,0xd1,0x7d,0xc2,0xd3,0xc2,0xcf,0xd6,0xcc,0xcb,0xc2,0x7d,0xd1,0xcc,0x7d,0xc2,0xcb,0xc7,0xcc,0xd6,0x7d,0xbe,0x7d,0xc5,0xc2,0xbe,0xc9,0xd1,0xc5,0xd6,0x7d,0xc0,0xc5,0xbe,0xd1,0xd1,0xc6,0xcb,0xc4,0x7d,0xc2,0xcb,0xd3,0xc6,0xcf,0xcc,0xcb,0xca,0xc2,0xcb,0xd1,0x7d,0xbe,0xcb,0xc1,0x7d,0xd1,0xcc,0x7d,0xd2,0xd0,0xc2,0x7d,0xd1,0xc5,0xc6,0xd0,0x7d,0xc3,0xc2,0xbe,0xd1,0xd2,0xcf,0xc2,0x7d,0xd6,0xcc,0xd2,0x7d,0xcb,0xc2,0xc2,0xc1,0x7d,0xd1,0xcc,0x7d,0xbf,0xc2,0x7d]

fileprivate func viewEqual(make num: UInt8) -> UInt8 {
    let value = Int(num) - 93
    if value < 0 {
        return UInt8(value + 256)
    } else {
        return UInt8(value)
    }
}

/*: "Face cerification" :*/
fileprivate let kStr_pickData:[Character] = ["F","a","c","e"," ","c","e","r","i"]
fileprivate let kStr_appData:String = "ficatitransaction"

/*: "By blocking a user, you will not receive his/her new messages and the message history will be removed too. Continue to block this user?" :*/
fileprivate let kStr_labelValue:[UInt8] = [0xe5,0xde,0x87,0xc5,0xcb,0xc8,0xc4,0xcc,0xce,0xc9,0xc0,0x87,0xc6,0x87,0xd2,0xd4,0xc2,0xd5,0x8b,0x87,0xde,0xc8,0xd2,0x87,0xd0,0xce,0xcb,0xcb,0x87,0xc9,0xc8,0xd3,0x87,0xd5,0xc2,0xc4,0xc2,0xce,0xd1,0xc2,0x87,0xcf,0xce,0xd4,0x88,0xcf,0xc2,0xd5,0x87,0xc9,0xc2,0xd0,0x87,0xca,0xc2,0xd4,0xd4,0xc6,0xc0,0xc2,0xd4,0x87,0xc6,0xc9,0xc3,0x87,0xd3,0xcf,0xc2,0x87,0xca,0xc2,0xd4,0xd4,0xc6,0xc0,0xc2,0x87,0xcf,0xce,0xd4,0xd3,0xc8,0xd5,0xde,0x87,0xd0,0xce,0xcb,0xcb,0x87,0xc5,0xc2,0x87,0xd5,0xc2,0xca,0xc8,0xd1,0xc2,0xc3,0x87,0xd3,0xc8,0xc8,0x89,0x87,0xe4,0xc8,0xc9,0xd3,0xce,0xc9,0xd2,0xc2,0x87,0xd3,0xc8,0x87,0xc5,0xcb,0xc8,0xc4,0xcc,0x87,0xd3,0xcf,0xce,0xd4,0x87,0xd2,0xd4,0xc2,0xd5,0x98]

private func centerMonth(status num: UInt8) -> UInt8 {
    return num ^ 167
}

/*: "Turn on permissions in settings before you can use the feature" :*/
fileprivate let kStr_popTitle:[UInt8] = [0x5,0x26,0x23,0x1f,0xd1,0x20,0x1f,0xd1,0x21,0x16,0x23,0x1e,0x1a,0x24,0x24,0x1a,0x20,0x1f,0x24,0xd1,0x1a,0x1f,0xd1,0x24,0x16,0x25,0x25,0x1a,0x1f,0x18,0x24,0xd1,0x13,0x16,0x17,0x20,0x23,0x16,0xd1,0x2a,0x20,0x26,0xd1,0x14,0x12,0x1f,0xd1,0x26,0x24,0x16,0xd1,0x25,0x19,0x16,0xd1,0x17,0x16,0x12,0x25,0x26,0x23,0x16]

fileprivate func computerSimulation(icon num: UInt8) -> UInt8 {
    let value = Int(num) - 177
    if value < 0 {
        return UInt8(value + 256)
    } else {
        return UInt8(value)
    }
}

/*: "Not available during a call" :*/
fileprivate let kStr_centerText:[Character] = ["N","o","t"," ","a","v","a","i"]
fileprivate let kStr_labelContent:String = "LABL"
fileprivate let kStr_toJumpName:String = "view lab path viewing "

/*: "You're on the live" :*/
fileprivate let kStr_finishContent:String = "You\'"
fileprivate let kStr_modelName:String = "the livehide line sex"

/*: "You are already in Party room" :*/
fileprivate let kStr_layerDataValue:[Character] = ["Y","o","u"," ","a","r","e"," ","a","l","r","e","a","d","y"," ","i","n"," ","P","a","r","t","y"," ","r"]
fileprivate let kStr_regularValue:String = "OOM"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  NotificationDefine.swift
//  AbroadTalking
//
//  Created by Hemming on 2022/3/29.
//

//: import Foundation
import Foundation

// MARK: - NSNotification

// 登录成功
//: public let DID_LOGIN_SUCCESS_NOTIFICATION = NSNotification.Name(rawValue: "DID_LOGIN_SUCCESS_NOTIFICATION")
public let kLet_readText = NSNotification.Name(rawValue: (String(kStr_viewModelValue) + String(kStr_buttonName)))
// 退出登录
//: public let DID_LOGIN_OUT_SUCCESS_NOTIFICATION = NSNotification.Name(rawValue: "DID_LOGIN_OUT_SUCCESS_NOTIFICATION")
public let kLet_statusFailData = NSNotification.Name(rawValue: String(bytes: kStr_exitValue.reversed(), encoding: .utf8)!)
// app配置信息
//: public let UPDATE_APP_GETCONFIG_NOTIFICATION = NSNotification.Name(rawValue: "UPDATE_APP_GETCONFIG_NOTIFICATION")
public let kLet_clickHalfTitle = NSNotification.Name(rawValue: String(bytes: kStr_blockSendData.map{actionView(rank: $0)}, encoding: .utf8)!)
// 刷新 mf/index/getConfig配置信息接口
//: public let REFRESH_INDEX_GETCONFIG_NOTIFICATION = NSNotification.Name(rawValue: "REFRESH_INDEX_GETCONFIG_NOTIFICATION")
public let kLet_maxTitle = NSNotification.Name(rawValue: String(bytes: kStr_resultValue.map{cropEqual(layer: $0)}, encoding: .utf8)!)
// mf/index/getConfig配置信息接口成功通知
//: public let UPDATE_INDEX_GETCONFIG_NOTIFICATION = NSNotification.Name(rawValue: "UPDATE_INDEX_GETCONFIG_NOTIFICATION")
public let kLet_sessionValue = NSNotification.Name(rawValue: String(bytes: kStr_userValue.map{somebodyDetail(leading: $0)}, encoding: .utf8)!)
// 请求app个人信息
//: public let UPDATE_USER_GETMYINFO_NOTIFICATION = NSNotification.Name(rawValue: "UPDATE_USER_GETMYINFO_NOTIFICATION")
public let kLet_successEnterValue = NSNotification.Name(rawValue: String(bytes: kStr_disabledOfContent.map{modelSize(error: $0)}, encoding: .utf8)!)
// app个人信息请求成功
//: public let USER_GETMYINFO_SUCCEED_NOTIFICATION = NSNotification.Name(rawValue: "USER_GETMYINFO_SUCCEED_NOTIFICATION")
public let kLet_endValue = NSNotification.Name(rawValue: String(bytes: kStr_hiddenValue.map{$0^48}, encoding: .utf8)!)
// 刷新218用户余额次数/会员状态
//: public let USER_UPDATE_LOUNGEPLUSINFO_NOTIFICATION = NSNotification.Name(rawValue: "USER_UPDATE_LOUNGEPLUSINFO_NOTIFICATION")
public let kLet_viewData = NSNotification.Name(rawValue: String(bytes: kStr_resultTitle.map{errorTitle(file: $0)}, encoding: .utf8)!)

// 刷新金币
//: public let UPDATE_USER_GETINFOCOLUMN_NOTIFICATION = NSNotification.Name(rawValue: "UPDATE_USER_GETINFOCOLUMN_NOTIFICATION")
public let kLet_lineValue = NSNotification.Name(rawValue: String(bytes: kStr_whiteEventFrameName.map{profileToImage(icon: $0)}, encoding: .utf8)!)
// 首页礼物
//: public let USER_RECIEVED_GIFT_NOTIFICATION = NSNotification.Name(rawValue: "USER_RECIEVED_GIFT_NOTIFICATION")
public let kLet_statusOfName = NSNotification.Name(rawValue: String(bytes: kStr_capacityDefineData.map{managerValue(key: $0)}, encoding: .utf8)!)
// 获取聊天列表数据成功
//: public let USER_INFO_MSG_LIST_NOTIFICATION = NSNotification.Name(rawValue: "USER_INFO_MSG_LIST_NOTIFICATION")
public let kLet_packageDetailValue = NSNotification.Name(rawValue: String(bytes: kStr_locationTopLinkData.map{titleSelf(style: $0)}, encoding: .utf8)!)

// 插入聊天提示消息
//: public let CHAT_TIPS_TEXT_NOTIFICATION = NSNotification.Name(rawValue: "CHAT_TIPS_TEXT_NOTIFICATION")
public let kLet_pingTitle = NSNotification.Name(rawValue: (kStr_sizeData.replacingOccurrences(of: "white", with: "C") + "_TIPS_" + String(kStr_managerData.suffix(6)) + kStr_aspectContent.replacingOccurrences(of: "license", with: "T") + kStr_fromName.uppercased() + "ATION"))

// 获取谁喜欢我数量消息
//: public let WHOLIKEME_BADGENUMBER_NOTIF = NSNotification.Name(rawValue: "WHOLIKEME_BADGENUMBER_NOTIF")
public let kLet_statusName = NSNotification.Name(rawValue: (kStr_downValue.replacingOccurrences(of: "image", with: "H") + String(kStr_sizeValue) + kStr_minData.replacingOccurrences(of: "child", with: "I")))

// 更新评论数量
//: public let UPDATE_COMMENTNUMBER_NOTIFICATION = NSNotification.Name(rawValue: "UPDATE_COMMENTNUMBER_NOTIFICATION")
public let kLet_screenDeviceName = NSNotification.Name(rawValue: String(bytes: kStr_emptyName.map{fileRangeCenter(end: $0)}, encoding: .utf8)!)
// 动态更新点赞数量
//: public let UPDATE_LIKE_NUMBER_NOTIFICATION = NSNotification.Name(rawValue: "UPDATE_LIKE_NUMBER_NOTIFICATION")
public let kLet_barTitle = NSNotification.Name(rawValue: String(bytes: kStr_numberData.reversed(), encoding: .utf8)!)
// 动态关注
//: public let UPDATE_ATTION_NOTIFICATION = NSNotification.Name(rawValue: "UPDATE_ATTION_NOTIFICATION")
public let kLet_limitName = NSNotification.Name(rawValue: (String(kStr_transitionAfterData) + kStr_popData.uppercased() + kStr_toValue.replacingOccurrences(of: "time", with: "I")))
// 删除个人动态，动态列表更新
//: public let DELETE_MINE_POST_NOTIFICATION = NSNotification.Name(rawValue: "DELETE_MINE_POST_NOTIFICATION")
public let kLet_replaceContent = NSNotification.Name(rawValue: (kStr_resultScreenValue.replacingOccurrences(of: "transaction", with: "T") + "E_MI" + String(kStr_textData.suffix(4)) + "OST_" + kStr_showPushName.replacingOccurrences(of: "raw", with: "OT") + "FICAT" + kStr_groupFrameData.replacingOccurrences(of: "lab", with: "ON")))
// 打开发布动态
//: public let FREEBTN_UPLOAD_POST_NOTIFICATION = NSNotification.Name(rawValue: "FREEBTN_UPLOAD_POST_NOTIFICATION")
public let kLet_keyValue = NSNotification.Name(rawValue: String(bytes: kStr_toContent.map{modeShared(clear: $0)}, encoding: .utf8)!)

// 发布动态成功，列表更新
//: public let POST_EXPLORE_SUCCESS_NOTIFICATION = NSNotification.Name(rawValue: "POST_EXPLORE_SUCCESS_NOTIFICATION")
public let kLet_systemValue = NSNotification.Name(rawValue: String(bytes: kStr_afterData.map{buttonImage(make: $0)}, encoding: .utf8)!)

// 收到新消息
//: public let CHAT_NEW_MSG_NOTIFICATION = NSNotification.Name(rawValue: "CHAT_NEW_MSG_NOTIFICATION")
public let kLet_endFinishName = NSNotification.Name(rawValue: (String(kStr_kindValue) + kStr_indexTitle.replacingOccurrences(of: "app", with: "I") + String(kStr_screenData)))

// 消息已读回执通知
//: public let CHAT_MSG_READ_RECEIPT_NOTIFICATION = NSNotification.Name(rawValue: "CHAT_MSG_READ_RECEIPT_NOTIFICATION")
public let kLet_ageValue = NSNotification.Name(rawValue: String(bytes: kStr_pointMakeData.map{$0^39}, encoding: .utf8)!)

// 消息列表更新在线状态
//: public let MSGLIST_UPDATE_ONLINESTATUS_NOTIFICATION = NSNotification.Name(rawValue: "MSGLIST_UPDATE_ONLINESTATUS_NOTIFICATION")
public let kLet_screenStatusData = NSNotification.Name(rawValue: String(bytes: kStr_resumeName.reversed(), encoding: .utf8)!)

// 消息列表更新亲密度
//: public let MSGLIST_UPDATE_INTIMATE_NOTIFICATION = NSNotification.Name(rawValue: "MSGLIST_UPDATE_INTIMATE_NOTIFICATION")
public let kLet_firstMatchValue = NSNotification.Name(rawValue: String(bytes: kStr_backgroundText.reversed(), encoding: .utf8)!)

// 本地插入通话送礼的消息
//: public let CHAT_ADD_CALL_RECORD_MSG_NOTIFICATION = NSNotification.Name(rawValue: "CHAT_ADD_CALL_RECORD_MSG_NOTIFICATION")
public let kLet_showValue = NSNotification.Name(rawValue: String(bytes: kStr_iconName.map{$0^139}, encoding: .utf8)!)

// 视频通话对方摄像头是否可用通知
//: public let VIDEO_CHAT_OTHER_CAMERA_AVAILABLE_NOTIFICATION = NSNotification.Name(rawValue: "VIDEO_CHAT_OTHER_CAMERA_AVAILABLE_NOTIFICATION")
public let kLet_errSuccessText = NSNotification.Name(rawValue: String(bytes: kStr_stopValue.map{allPrice(screen: $0)}, encoding: .utf8)!)

// 搜索筛选页触发首页刷新
//: public let SEARCH_DETAIL_HOMEREFRESH_NOTIFICATION = NSNotification.Name(rawValue: "SEARCH_DETAIL_HOMEREFRESH_NOTIFICATION")
public let kLet_changeTransformName = NSNotification.Name(rawValue: String(bytes: kStr_areaData.map{valueM(frame: $0)}, encoding: .utf8)!)

// 切换底部tabbar到home-party
//: public let SWITCH_TABBAR_HOME_PARTY_NOTIFICATION = NSNotification.Name(rawValue: "SWITCH_TABBAR_HOME_PARTY_NOTIFICATION")
public let kLet_packageTitle = NSNotification.Name(rawValue: String(bytes: kStr_photoContent.map{halfGender(model: $0)}, encoding: .utf8)!)

// 打开个人资料编辑页
//: public let PUSH_MEEDIT_NOTIFICATION = NSNotification.Name(rawValue: "PUSH_MEEDIT_NOTIFICATION")
public let kLet_barDisplayFinishData = NSNotification.Name(rawValue: (String(kStr_imageValue.prefix(6)) + "EEDI" + String(kStr_contentTableName.suffix(6)) + "FICA" + kStr_voiceTitle.uppercased()))

// 积分收益变更
//: public let LIVE_USER_POINT_CHANGE = NSNotification.Name(rawValue: "LIVE_USER_POINT_CHANGE")
public let kLet_countData = NSNotification.Name(rawValue: (String(kStr_pageName)))

// 直播中半屏页面显示
//: public let LIVE_HALF_VIEW_SHOW = NSNotification.Name(rawValue: "LIVE_HALF_VIEW_SHOW")
public let kLet_pathName = NSNotification.Name(rawValue: (String(kStr_sizeTitleValue) + kStr_failName.replacingOccurrences(of: "interaction", with: "HA") + String(kStr_whiteValue)))

// 直播中半屏页面消失
//: public let LIVE_HALF_VIEW_DISMISS = NSNotification.Name(rawValue: "LIVE_HALF_VIEW_DISMISS")
public let kLet_clickData = NSNotification.Name(rawValue: (kStr_listActionTitle.uppercased() + "_HALF" + String(kStr_sizeContent.prefix(6)) + kStr_objectName.uppercased() + String(kStr_frameName)))

// 接收到主播开播通知
//: public let LIVE_RECIVE_STARTLIVE_NOTIFICATION = NSNotification.Name(rawValue: "LIVE_RECIVE_STARTLIVE_NOTIFICATION")
public let kLet_nameValue = NSNotification.Name(rawValue: String(bytes: kStr_firstEqualText.map{greetError(space: $0)}, encoding: .utf8)!)

// 飘屏
//: public let LIVE_RECIVE_FLOATSCREEN_NOTIFICATION = NSNotification.Name(rawValue: "LIVE_RECIVE_FLOATSCREEN_NOTIFICATION")
public let kLet_viewText = NSNotification.Name(rawValue: String(bytes: kStr_maxName.map{viewIf(to: $0)}, encoding: .utf8)!)

// 直播中拉黑用户提出房间
//: public let LIVE_BLOCK_USER_NOTIFICATION = NSNotification.Name(rawValue: "LIVE_BLOCK_USER_NOTIFICATION")
public let kLet_agentData = NSNotification.Name(rawValue: (String(kStr_makeValue) + kStr_dateData.replacingOccurrences(of: "constraint", with: "I") + "ATION"))

// 长连接建立成功
//: public let SOCKET_IS_OPEN_NOTIFICATION = NSNotification.Name(rawValue: "SOCKET_IS_OPEN_NOTIFICATION")
public let kLet_noData = NSNotification.Name(rawValue: (kStr_equalValue.replacingOccurrences(of: "clear", with: "C") + "T_IS_O" + String(kStr_frameMediaContent.prefix(4)) + kStr_itemValue.replacingOccurrences(of: "object", with: "T") + "FICATION"))

// 刷新礼物背包
//: public let GIFT_REFRESHPACKAGE_NOTIFICATION = NSNotification.Name(rawValue: "GIFT_REFRESHPACKAGE_NOTIFICATION")
public let kLet_limitTitle = NSNotification.Name(rawValue: String(bytes: kStr_showText.map{frameGesture(clear: $0)}, encoding: .utf8)!)

// 显示主动拨打视频弹窗
//: public let VIDEOCALL_INITIV_NOTIFICATION = NSNotification.Name(rawValue: "VIDEOCALL_INITIV_NOTIFICATION")
public let kLet_appErrorText = NSNotification.Name(rawValue: (kStr_makeData.uppercased() + "OCALL_" + String(kStr_addReleaseValue.prefix(8)) + kStr_sourceValue.replacingOccurrences(of: "app", with: "OT") + kStr_sceneErrorData.replacingOccurrences(of: "raw", with: "N")))

// 通话结束，关闭弹窗
//: public let VIDEOCALL_END_CLOSEDISCOUNTS_NOTIFICATION = NSNotification.Name(rawValue: "VIDEOCALL_END_CLOSEDISCOUNTS_NOTIFICATION")
public let kLet_detailContent = NSNotification.Name(rawValue: String(bytes: kStr_textValue.map{dateBack(to: $0)}, encoding: .utf8)!)

// 半屏充值页关闭
//: public let RECHARGEHALFPAGE_END_CLOSE_NOTIFICATION = NSNotification.Name(rawValue: "RECHARGEHALFPAGE_END_CLOSE_NOTIFICATION")
public let kLet_positionValue = NSNotification.Name(rawValue: String(bytes: kStr_listData.map{$0^221}, encoding: .utf8)!)

// MARK: - LoadNotificationTool

//: @objcMembers public class NSNotificationTool: NSObject {
@objcMembers public class LoadNotificationTool: NSObject {
    //: class public func getLoginOutNoti() -> String {
    public class func login() -> String {
        //: return DID_LOGIN_OUT_SUCCESS_NOTIFICATION.rawValue
        return kLet_statusFailData.rawValue
    }

    //: class public func getUserIngoListNoti() -> String {
    public class func inherit() -> String {
        //: return USER_INFO_MSG_LIST_NOTIFICATION.rawValue
        return kLet_packageDetailValue.rawValue
    }

    //: class public func getChatNewMsgNoti() -> String {
    public class func outpostNoti() -> String {
        //: return CHAT_NEW_MSG_NOTIFICATION.rawValue
        return kLet_endFinishName.rawValue
    }
}

// MARK: - 宏文本

// 网络失败toast
//: public let kNetErrorMsg = "Net Error, Try again later".localized
public let kLet_accuracyContent = (String(kStr_nameData.suffix(5)) + "rror, " + String(kStr_viewName.suffix(5)) + "gain l" + kStr_data.replacingOccurrences(of: "from", with: "a")).localized
// 真人认证
//: public let kMessage_FaceCerification = "We want everyone to enjoy a healthy chatting environment and to use this feature you need to be \"Face cerification\".".localized
public let kLet_userContent = String(bytes: kStr_liveValueText.map{viewEqual(make: $0)}, encoding: .utf8)! + "\"" + (String(kStr_pickData) + kStr_appData.replacingOccurrences(of: "transaction", with: "on")) + "\"" + ".".localized

// 拉黑
//: public let kMessage_blocking = "By blocking a user, you will not receive his/her new messages and the message history will be removed too. Continue to block this user?".localized
public let kLet_clickTitle = String(bytes: kStr_labelValue.map{centerMonth(status: $0)}, encoding: .utf8)!.localized
// 音视频/直播 手机权限提醒
//: public let kMessage_permissions_error = "Turn on permissions in settings before you can use the feature".localized
public let kLet_viewValue = String(bytes: kStr_popTitle.map{computerSimulation(icon: $0)}, encoding: .utf8)!.localized
// 视频通话中部分功能限制使用
//: public let kMessage_videoTalking_limit = "Not available during a call".localized
public let kLet_tableEndValue = (String(kStr_centerText) + kStr_labelContent.lowercased() + "e dur" + String(kStr_toJumpName.suffix(4)) + "a call").localized
// 直播中部分功能限制使用
//: public let kMessage_live_limit = "You're on the live".localized
public let kLet_serverValue = (kStr_finishContent + "re on " + String(kStr_modelName.prefix(8))).localized
// 语聊房部分功能限制使用
//: public let kMessage_party_limit = "You are already in Party room".localized
public let kLet_videoValue = (String(kStr_layerDataValue) + kStr_regularValue.lowercased()).localized
