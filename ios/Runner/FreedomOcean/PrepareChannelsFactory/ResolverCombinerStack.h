#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface ResolverCombinerStack : NSObject

@property (nonatomic) NSMutableArray * shouldRebuildDecoration;

@property (nonatomic) int shouldCacheMaterial;

@property (nonatomic) NSMutableSet * ignoredScale;

@property (nonatomic) NSMutableDictionary * newestSink;

+ (instancetype) resolverCombinerStackWithDictionary: (NSDictionary *)dict;

- (instancetype) initWithDictionary: (NSDictionary *)dict;

- (NSString *) exponentVariable;

- (NSMutableDictionary *) sequentialEvolution;

- (int) cupertinoAnimatedContainer;

- (NSMutableSet *) consultativeBuilder;

- (NSMutableArray *) sortedCard;

@end

NS_ASSUME_NONNULL_END
        