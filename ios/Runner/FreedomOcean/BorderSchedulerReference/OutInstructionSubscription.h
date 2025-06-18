#import "ReactiveRectReference.h"
#import "StartPlateIsolate.h"

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface OutInstructionSubscription : NSObject


- (void) detachGateState;

- (void) overrideFactory;

@end

NS_ASSUME_NONNULL_END
        