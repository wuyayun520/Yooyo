#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface DiffableTransitionFilter : NSObject


- (void) syncPolyfill: (NSMutableArray *)firstContainer and: (NSMutableSet *)resizableMaster;

- (void) mightScrollableStack: (NSMutableArray *)textHead;

@end

NS_ASSUME_NONNULL_END
        