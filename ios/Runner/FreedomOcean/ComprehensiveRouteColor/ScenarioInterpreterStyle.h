#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface ScenarioInterpreterStyle : NSObject


- (void) copyBaselineOrInteraction;

- (void) prepareDiffableCustomPaint: (NSMutableArray *)assetState and: (NSMutableSet *)normalMediaQuery;

@end

NS_ASSUME_NONNULL_END
        