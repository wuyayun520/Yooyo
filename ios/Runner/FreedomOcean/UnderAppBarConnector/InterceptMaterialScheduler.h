#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface InterceptMaterialScheduler : NSObject

@property (nonatomic) int bindsprite;

+ (instancetype) interceptMaterialSchedulerWithDictionary: (NSDictionary *)dict;

- (instancetype) initWithDictionary: (NSDictionary *)dict;

- (NSString *) baselinePosition;

- (NSMutableDictionary *) canSerializeStream;

- (int) routeMaterial;

- (NSMutableSet *) asynchronousBinder;

- (NSMutableArray *) gramshade;

@end

NS_ASSUME_NONNULL_END
        