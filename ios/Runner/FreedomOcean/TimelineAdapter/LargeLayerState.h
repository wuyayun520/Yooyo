#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface LargeLayerState : NSObject

@property (nonatomic) NSString * shouldSaveMonster;

@property (nonatomic) NSMutableSet * usedSubscription;

@property (nonatomic) NSMutableSet * localMember;

@property (nonatomic) NSString * onskinchanged;

@property (nonatomic) int signatureOffset;

+ (instancetype) largelayerStateWithDictionary: (NSDictionary *)dict;

- (instancetype) initWithDictionary: (NSDictionary *)dict;

- (NSString *) ascentFlags;

- (NSMutableDictionary *) unlockGroup;

- (int) scaleActivity;

- (NSMutableSet *) shouldSerializeAnimation;

- (NSMutableArray *) previewRight;

@end

NS_ASSUME_NONNULL_END
        