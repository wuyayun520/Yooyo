#import "WithCanvasController.h"
#import "GranularOffsetOwner.h"

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface VisibleStatefulObserver : NSObject


- (void) emitWithPopupDecorator;

- (void) wouldOnNavigatorChanged;

@end

NS_ASSUME_NONNULL_END
        