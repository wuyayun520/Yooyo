
#import <Foundation/Foundation.h>

NSString *StringFromNameData(Byte *data);


//: text
Byte kStr_giftText[] = {60, 4, 90, 7, 28, 208, 205, 206, 191, 210, 206, 198};


//: audio
Byte kStr_thirdText[] = {57, 5, 33, 4, 130, 150, 133, 138, 144, 58};


//: gift
Byte kStr_positionIndexName[] = {75, 4, 72, 4, 175, 177, 174, 188, 223};


//: img
Byte kStr_addData[] = {54, 3, 27, 8, 44, 202, 248, 71, 132, 136, 130, 207};


//: Sent 
Byte kStr_teamName[] = {50, 5, 9, 9, 112, 88, 171, 156, 44, 92, 110, 119, 125, 41, 250};


//: video
Byte kStr_lengthRangeData[] = {40, 5, 41, 4, 159, 146, 141, 142, 152, 235};

// __DEBUG__
// __CLOSE_PRINT__
//
//  KeyModel.m
//  Talking
//
//   on 2021/9/3.
//  Copyright © 2021 
//

// __M_A_C_R_O__
//: #import "KeyModel.h"
#import "KeyModel.h"
//: #import "FloraFlex/FloraFlex-Swift.h"
#import "FloraFlex/FloraFlex-Swift.h"

//: @implementation KeyModel
@implementation KeyModel

//: @end
@end

//: @implementation LabelOffAimChromosphereJsonModel
@implementation LabelOffAimChromosphereJsonModel

//: @end
@end

//: @implementation AddModel
@implementation AddModel

//: + (void)saveIntimatePhoto:(AddModel *)photoModel forMsgID:(NSString *)msgID {
+ (void)image:(AddModel *)photoModel contiguous:(NSString *)msgID {
    //: NSMutableDictionary *dict = [self loadLocalIntimatePhotoDict].mutableCopy;
    NSMutableDictionary *dict = [self kind].mutableCopy;
    //: NSString *jsonString = [photoModel toJSONString];
    NSString *jsonString = [photoModel toJSONString];
    //: dict[msgID] = jsonString;
    dict[msgID] = jsonString;
    //: NSString *path = [CacheReactiveCompatible getIntimatePhotoPath];
    NSString *path = [CacheReactiveCompatible timeExposure];
    //: [NSKeyedArchiver archiveRootObject:dict toFile:path];
    [NSKeyedArchiver archiveRootObject:dict toFile:path];
}

//: + (NSMutableDictionary<NSString *, NSString *> *)loadLocalIntimatePhotoDict {
+ (NSMutableDictionary<NSString *, NSString *> *)kind {
    //: NSString *path = [CacheReactiveCompatible getIntimatePhotoPath];
    NSString *path = [CacheReactiveCompatible timeExposure];
    //: NSMutableDictionary *dict = [NSKeyedUnarchiver unarchiveObjectWithFile:path];
    NSMutableDictionary *dict = [NSKeyedUnarchiver unarchiveObjectWithFile:path];
    //: if (dict.allKeys.count > 0) {
    if (dict.allKeys.count > 0) {
        //: return dict;
        return dict;
    }
    //: return [NSMutableDictionary dictionary];
    return [NSMutableDictionary dictionary];
}

//: @end
@end

//: @implementation ViewJsonModel
@implementation ViewJsonModel

//: + (void)saveIntimateVideo:(ViewJsonModel *)videoModel forMsgID:(NSString *)msgID {
+ (void)image:(ViewJsonModel *)videoModel effect:(NSString *)msgID {
    //: NSMutableDictionary *dict = [self loadLocalIntimateVideoDict].mutableCopy;
    NSMutableDictionary *dict = [self number].mutableCopy;
    //: NSString *jsonString = [videoModel toJSONString];
    NSString *jsonString = [videoModel toJSONString];
    //: dict[msgID] = jsonString;
    dict[msgID] = jsonString;
    //: NSString *path = [CacheReactiveCompatible getIntimateVideoPath];
    NSString *path = [CacheReactiveCompatible displayApp];
    //: [NSKeyedArchiver archiveRootObject:dict toFile:path];
    [NSKeyedArchiver archiveRootObject:dict toFile:path];
}

//: + (NSMutableDictionary<NSString *, NSString *> *)loadLocalIntimateVideoDict {
+ (NSMutableDictionary<NSString *, NSString *> *)number {
    //: NSString *path = [CacheReactiveCompatible getIntimateVideoPath];
    NSString *path = [CacheReactiveCompatible displayApp];
    //: NSMutableDictionary *dict = [NSKeyedUnarchiver unarchiveObjectWithFile:path];
    NSMutableDictionary *dict = [NSKeyedUnarchiver unarchiveObjectWithFile:path];
    //: if (dict.allKeys.count > 0) {
    if (dict.allKeys.count > 0) {
        //: return dict;
        return dict;
    }
    //: return [NSMutableDictionary dictionary];
    return [NSMutableDictionary dictionary];
}

//: @end
@end

//: @implementation AbTalkingChatMsgCustomSendModel
@implementation MethodModel

//: @end
@end

//: @implementation VideoJsonModel
@implementation VideoJsonModel

//: @end
@end

//: @implementation TargetModel
@implementation TargetModel

//: @end
@end

//: @implementation AbTalkingChatMsgGiftModel
@implementation RefreshJsonModel

//: @end
@end

//: @implementation ActualJsonModel
@implementation ActualJsonModel

//: @end
@end


//: @implementation AbTalkingChatMsgQuoteModel
@implementation DataModel

//: - (BOOL)isQuoteMsg{
- (BOOL)to{
    //: if (self && self.msgId && self.msgId.length > 0) {
    if (self && self.msgId && self.msgId.length > 0) {
        //: return YES;
        return YES;
    }
    //: return NO;
    return NO;
}
//: - (CGSize)quoteSize:(NSInteger)maxWidth{
- (CGSize)distanceSize:(NSInteger)maxWidth{
    //: NSInteger height = height;
    NSInteger height = height;

    //: NSDictionary* attributes = @{NSFontAttributeName: [UIFont pingfangRugularFontWithFontSize:12]};
    NSDictionary* attributes = @{NSFontAttributeName: [UIFont messageDownWithFontSize:12]};


    //: if ([self.renderType isEqualToString:@"video"] || [self.renderType isEqualToString:@"img"]) {
    if ([self.renderType isEqualToString:StringFromNameData(kStr_lengthRangeData)] || [self.renderType isEqualToString:StringFromNameData(kStr_addData)]) {
        //: NSString *str = [NSString stringWithFormat:@"%@: ",self.sendName];
        NSString *str = [NSString stringWithFormat:@"%@: ",self.sendName];
        //: CGSize nameSize = [str boundingRectWithSize:CGSizeMake(1.7976931348623157e+308, 14) options:(NSStringDrawingUsesLineFragmentOrigin|NSStringDrawingUsesFontLeading) attributes:attributes context:nil].size;
        CGSize nameSize = [str boundingRectWithSize:CGSizeMake(1.7976931348623157e+308, 14) options:(NSStringDrawingUsesLineFragmentOrigin|NSStringDrawingUsesFontLeading) attributes:attributes context:nil].size;

        //: return CGSizeMake(((5 + nameSize.width + 34) < (maxWidth) ? (5 + nameSize.width + 34) : (maxWidth)) , 31);
        return CGSizeMake(((5 + nameSize.width + 34) < (maxWidth) ? (5 + nameSize.width + 34) : (maxWidth)) , 31);

    }
    //: if ([self.renderType isEqualToString:@"text"]) {
    if ([self.renderType isEqualToString:StringFromNameData(kStr_giftText)]) {
        //: NSString *str = [NSString stringWithFormat:@"%@: %@",self.sendName,self.renderData.content];
        NSString *str = [NSString stringWithFormat:@"%@: %@",self.sendName,self.renderData.content];
        //: CGSize contentSize = [str boundingRectWithSize:CGSizeMake(1.7976931348623157e+308, 14) options:(NSStringDrawingUsesLineFragmentOrigin|NSStringDrawingUsesFontLeading) attributes:attributes context:nil].size;
        CGSize contentSize = [str boundingRectWithSize:CGSizeMake(1.7976931348623157e+308, 14) options:(NSStringDrawingUsesLineFragmentOrigin|NSStringDrawingUsesFontLeading) attributes:attributes context:nil].size;

        //: return CGSizeMake(((maxWidth) < (5 + contentSize.width) ? (maxWidth) : (5 + contentSize.width)) , 14);
        return CGSizeMake(((maxWidth) < (5 + contentSize.width) ? (maxWidth) : (5 + contentSize.width)) , 14);
    }

    //: if ([self.renderType isEqualToString:@"audio"]) {
    if ([self.renderType isEqualToString:StringFromNameData(kStr_thirdText)]) {
        //: NSString *str = [NSString stringWithFormat:@"%@: ",self.sendName];
        NSString *str = [NSString stringWithFormat:@"%@: ",self.sendName];
        //: CGSize nameSize = [str boundingRectWithSize:CGSizeMake(1.7976931348623157e+308, 14) options:(NSStringDrawingUsesLineFragmentOrigin|NSStringDrawingUsesFontLeading) attributes:attributes context:nil].size;
        CGSize nameSize = [str boundingRectWithSize:CGSizeMake(1.7976931348623157e+308, 14) options:(NSStringDrawingUsesLineFragmentOrigin|NSStringDrawingUsesFontLeading) attributes:attributes context:nil].size;

        //: return CGSizeMake(((5 + nameSize.width + 48) < (maxWidth) ? (5 + nameSize.width + 48) : (maxWidth)) , 22);
        return CGSizeMake(((5 + nameSize.width + 48) < (maxWidth) ? (5 + nameSize.width + 48) : (maxWidth)) , 22);
    }
    //: if ([self.renderType isEqualToString:@"gift"]) {
    if ([self.renderType isEqualToString:StringFromNameData(kStr_positionIndexName)]) {
        //: NSString *str = [NSString stringWithFormat:@"%@: %@%@ x%ld",self.sendName,@"Sent ".localized,self.renderData.giftNameLocal, (long)self.renderData.giftNum];
        NSString *str = [NSString stringWithFormat:@"%@: %@%@ x%ld",self.sendName,StringFromNameData(kStr_teamName).imageShow,self.renderData.price, (long)self.renderData.giftNum];
        //: CGSize contentSize = [str boundingRectWithSize:CGSizeMake(1.7976931348623157e+308, 14) options:(NSStringDrawingUsesLineFragmentOrigin|NSStringDrawingUsesFontLeading) attributes:attributes context:nil].size;
        CGSize contentSize = [str boundingRectWithSize:CGSizeMake(1.7976931348623157e+308, 14) options:(NSStringDrawingUsesLineFragmentOrigin|NSStringDrawingUsesFontLeading) attributes:attributes context:nil].size;
        //: return CGSizeMake(((maxWidth) < (5 + contentSize.width) ? (maxWidth) : (5 + contentSize.width)) , 14);
        return CGSizeMake(((maxWidth) < (5 + contentSize.width) ? (maxWidth) : (5 + contentSize.width)) , 14);
    }

    //: return CGSizeZero;
    return CGSizeZero;
}

//: @end
@end

//: @implementation AbTalkingChatMsgQuoteDataModel
@implementation BuildModel

//: - (NSString *)giftNameLocal{
- (NSString *)price{
    //: NSString *locName;
    NSString *locName;
    //: NSString *sysLangCode = [TableMacroDefine getSystemLangCode];
    NSString *sysLangCode = [TableMacroDefine repossessBeginBushido];
    //: if ([sysLangCode isEqualToString:@"ar"]) {
    if ([sysLangCode isEqualToString:@"ar"]) {
        //: locName = self.giftNameI18n[@"ar"];
        locName = self.giftNameI18n[@"ar"];
    //: }else if ([sysLangCode isEqualToString:@"es"]) {
    }else if ([sysLangCode isEqualToString:@"es"]) {
        //: locName = self.giftNameI18n[@"es"];
        locName = self.giftNameI18n[@"es"];
    //: }else if ([sysLangCode isEqualToString:@"pt"]) {
    }else if ([sysLangCode isEqualToString:@"pt"]) {
        //: locName = self.giftNameI18n[@"pt"];
        locName = self.giftNameI18n[@"pt"];
    //: }else{
    }else{
        //: locName = self.giftNameI18n[@"en"];
        locName = self.giftNameI18n[@"en"];
    }
    //: if (locName == nil || locName.length > 0 ) {
    if (locName == nil || locName.length > 0 ) {
        //: locName = self.giftName;
        locName = self.giftName;
    }
    //: return locName;
    return locName;
}

//: @end
@end

//: @implementation EmptyContentModel
@implementation EmptyContentModel

//: + (void)saveAskForGiftWithMsgID:(NSString *)msgID {
+ (void)rescueCreate:(NSString *)msgID {
    //: @synchronized (self) {
    @synchronized (self) {
        //: NSMutableArray *arr = [self loadAskForGiftArr];
        NSMutableArray *arr = [self video];
        //: [arr addObject:msgID];
        [arr addObject:msgID];
        //: NSString *path = [CacheReactiveCompatible getAskForGiftPath];
        NSString *path = [CacheReactiveCompatible refuse];
        //: [NSKeyedArchiver archiveRootObject:arr toFile:path];
        [NSKeyedArchiver archiveRootObject:arr toFile:path];
    }
}

//: + (NSMutableArray *)loadAskForGiftArr {
+ (NSMutableArray *)video {
    //: NSString *path = [CacheReactiveCompatible getAskForGiftPath];
    NSString *path = [CacheReactiveCompatible refuse];
    //: NSMutableArray *arr = [NSKeyedUnarchiver unarchiveObjectWithFile:path];
    NSMutableArray *arr = [NSKeyedUnarchiver unarchiveObjectWithFile:path];
    //: if (arr.count > 0) {
    if (arr.count > 0) {
        //: return arr;
        return arr;
    }
    //: return [@[] mutableCopy];
    return [@[] mutableCopy];
}

//: @end
@end

Byte * NameDataToCache(Byte *data) {
    int extra = data[0];
    int extent = data[1];
    Byte express = data[2];
    int outset = data[3];
    if (!extra) return data + outset;
    for (int i = outset; i < outset + extent; i++) {
        int value = data[i] - express;
        if (value < 0) {
            value += 256;
        }
        data[i] = value;
    }
    data[0] = 0;
    data[outset + extent] = 0;
    return data + outset;
}

NSString *StringFromNameData(Byte *data) {
    return [NSString stringWithUTF8String:(char *)NameDataToCache(data)];
}
