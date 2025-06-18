#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface AboveLayoutComponent : NSObject


- (void) dispatchHandleForCaption: (NSMutableArray *)layoutDepth and: (NSMutableDictionary *)liteSize;

- (void) calculateStampRect;

@end

NS_ASSUME_NONNULL_END
        