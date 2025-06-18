#import "DetachPlateBase.h"
#import "SubscribeContainerCoordinator.h"

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface MountInterpolationIsolate : NSObject


- (void) wrapStore;

- (void) restartBatchLikeSubscription;

@end

NS_ASSUME_NONNULL_END
        