#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface EquipmentDelivery : NSObject

@property (nonatomic) NSMutableDictionary * grouprate;

@property (nonatomic) int tensorEntity;

@property (nonatomic) int consumptionInterval;

@property (nonatomic) NSMutableArray * shouldSkipNavigation;

+ (instancetype) equipmentDeliveryWithDictionary: (NSDictionary *)dict;

- (instancetype) initWithDictionary: (NSDictionary *)dict;

- (NSString *) remaindertaskresponse;

- (NSMutableDictionary *) directlyDuration;

- (int) renderlayout;

- (NSMutableSet *) usedPainter;

- (NSMutableArray *) canDetachCache;

@end

NS_ASSUME_NONNULL_END
        