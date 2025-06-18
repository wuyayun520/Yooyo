#import "AutoCompositionalGraph.h"
#import "MaterializeRowMechanism.h"
#import "DurationVarFeedback.h"
#import "SmartDecorationAspect.h"
#import "BeforeMarginDecoration.h"

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface KeepStatefulAnimatedContainer : NSObject


- (void) disconnectAssociatedCompleter;

- (void) keepRange;

@end

NS_ASSUME_NONNULL_END
        