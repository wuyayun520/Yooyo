#import "BrushScenarioHelper.h"
#import "InteractorCollection.h"
#import "LocalDeliveryBase.h"
#import "PromisePopupCache.h"

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface IgnoredMovementCallback : NSObject


- (void) stopCollection;

- (void) resetViewOutsideModel;

@end

NS_ASSUME_NONNULL_END
        