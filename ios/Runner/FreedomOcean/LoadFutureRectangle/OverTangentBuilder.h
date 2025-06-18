#import "ScrollablePositionCreator.h"
#import "SensorRepositoryHelper.h"
#import "EagerQueueMetrics.h"
#import "ProtocolAdapterPadding.h"
#import "LastVisibleBuilder.h"

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface OverTangentBuilder : NSObject


- (void) interpolateDisparateNode;

- (void) computeBehaviorFrame;

@end

NS_ASSUME_NONNULL_END
        