#import "InterceptGraphicStream.h"
#import "PointAnalyzer.h"
#import "AllocateActivityObserver.h"
#import "ListenerValueFeedback.h"

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface ObserveStatefulDelegate : NSObject


- (void) notifyData;

- (void) attachVariant;

@end

NS_ASSUME_NONNULL_END
        