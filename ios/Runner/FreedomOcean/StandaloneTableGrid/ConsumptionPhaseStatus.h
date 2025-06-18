#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface ConsumptionPhaseStatus : NSObject

@property (nonatomic) NSMutableDictionary * transitiontop;

+ (instancetype) consumptionPhaseStatusWithDictionary: (NSDictionary *)dict;

- (instancetype) initWithDictionary: (NSDictionary *)dict;

- (NSString *) ephemeralExpanded;

- (NSMutableDictionary *) accessoryBuffer;

- (int) subpixelActivity;

- (NSMutableSet *) shouldYieldBullet;

- (NSMutableArray *) publicBullet;

@end

NS_ASSUME_NONNULL_END
        