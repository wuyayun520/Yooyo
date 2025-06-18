#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface RenderTabBarAnalyzer : NSObject

@property (nonatomic) int shouldBindProtocol;

+ (instancetype) renderTabBarAnalyzerWithDictionary: (NSDictionary *)dict;

- (instancetype) initWithDictionary: (NSDictionary *)dict;

- (NSString *) advancedPolyfill;

- (NSMutableDictionary *) canCancelProfile;

- (int) lifecycleBehavior;

- (NSMutableSet *) graphLayer;

- (NSMutableArray *) symmetricRect;

@end

NS_ASSUME_NONNULL_END
        