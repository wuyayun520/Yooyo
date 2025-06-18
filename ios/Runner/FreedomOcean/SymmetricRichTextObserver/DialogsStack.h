#import "DeployControllerAsync.h"
#import "PriorAwaitTransformer.h"

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface DialogsStack : NSObject


- (void) interceptBeforeTransformerState;

- (void) addBoxViaFeature;

@end

NS_ASSUME_NONNULL_END
        