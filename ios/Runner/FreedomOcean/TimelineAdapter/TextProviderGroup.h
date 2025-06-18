#import "LargeLayerState.h"
#import "AnimationInteractorGroup.h"
#import "InteractiveShapeBase.h"

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface TextProviderGroup : NSObject


- (void) trainSkinOffset;

- (void) concatenateNextPoint;

@end

NS_ASSUME_NONNULL_END
        