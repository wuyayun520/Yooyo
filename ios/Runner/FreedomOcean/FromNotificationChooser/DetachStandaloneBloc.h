#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface DetachStandaloneBloc : NSObject


- (void) withExpandedSplitter: (int)scaleSkewY;

- (void) annotateLargeEvent: (NSMutableArray *)currentMerger;

@end

NS_ASSUME_NONNULL_END
        