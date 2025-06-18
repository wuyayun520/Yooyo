#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface TransitionProvider : NSObject

@property (nonatomic) NSString * symmetricChannels;

@property (nonatomic) int providerfrequency;

+ (instancetype) transitionProviderWithDictionary: (NSDictionary *)dict;

- (instancetype) initWithDictionary: (NSDictionary *)dict;

- (NSString *) asynchronousRoute;

- (NSMutableDictionary *) shouldMountExpanded;

- (int) dismissAxis;

- (NSMutableSet *) performNavigator;

- (NSMutableArray *) interpolationVar;

@end

NS_ASSUME_NONNULL_END
        