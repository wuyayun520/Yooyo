#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface BuilderProviderManager : NSObject


- (void) formatSignFromMaterializer: (NSMutableArray *)singleGraph and: (NSMutableArray *)dependencyPosition;

- (void) processBatchBeyondListener: (NSMutableDictionary *)synchronousLayer;

- (void) tryHardCycle;

@end

NS_ASSUME_NONNULL_END
        