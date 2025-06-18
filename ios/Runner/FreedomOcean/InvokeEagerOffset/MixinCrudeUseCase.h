#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface MixinCrudeUseCase : NSObject


- (void) serializeStaticGift: (NSMutableSet *)concreteUseCase;

@end

NS_ASSUME_NONNULL_END
        