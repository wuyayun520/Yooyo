#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface ExplicitNavigationMatrix : NSObject

@property (nonatomic) NSMutableDictionary * deferredLayout;

@property (nonatomic) NSString * shouldReplaceTask;

+ (instancetype) explicitNavigationMatrixWithDictionary: (NSDictionary *)dict;

- (instancetype) initWithDictionary: (NSDictionary *)dict;

- (NSString *) shouldStartSignature;

- (NSMutableDictionary *) newestTween;

- (int) requiredStep;

- (NSMutableSet *) advancedDependency;

- (NSMutableArray *) monsterBehavior;

@end

NS_ASSUME_NONNULL_END
        