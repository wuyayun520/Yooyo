#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface BufferLoaderBase : NSObject


- (void) consumeNextMap;

- (void) locateElement;

- (void) bindExplicitActionPlatform;

- (void) transpileOldGesture: (NSMutableArray *)segmentShape and: (NSMutableSet *)positionTail;

@end

NS_ASSUME_NONNULL_END
        