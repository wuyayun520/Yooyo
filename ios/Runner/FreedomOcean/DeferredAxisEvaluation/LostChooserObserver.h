#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface LostChooserObserver : NSObject

@property (nonatomic) NSString * missionSpacing;

@property (nonatomic) NSMutableArray * chartframe;

@property (nonatomic) NSString * hasExpanded;

+ (instancetype) lostChooserObserverWithDictionary: (NSDictionary *)dict;

- (instancetype) initWithDictionary: (NSDictionary *)dict;

- (NSString *) scopeOrientation;

- (NSMutableDictionary *) searchRow;

- (int) canHandleSample;

- (NSMutableSet *) sampleDensity;

- (NSMutableArray *) arithmeticScheduler;

@end

NS_ASSUME_NONNULL_END
        