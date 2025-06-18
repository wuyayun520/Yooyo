#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface MaterializerDelegate : NSObject

@property (nonatomic) NSString * shouldRouteStamp;

@property (nonatomic) int shouldSaveTabBar;

@property (nonatomic) NSMutableDictionary * subpixelSize;

@property (nonatomic) NSMutableDictionary * capsuleHead;

+ (instancetype) materializerDelegateWithDictionary: (NSDictionary *)dict;

- (instancetype) initWithDictionary: (NSDictionary *)dict;

- (NSString *) rectifyUseCase;

- (NSMutableDictionary *) markDescription;

- (int) chapterDuration;

- (NSMutableSet *) canNotifyAnimation;

- (NSMutableArray *) materialUnary;

@end

NS_ASSUME_NONNULL_END
        