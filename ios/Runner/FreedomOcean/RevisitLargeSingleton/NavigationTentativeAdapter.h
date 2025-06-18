#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface NavigationTentativeAdapter : NSObject

@property (nonatomic) NSMutableSet * mapperName;

@property (nonatomic) NSMutableArray * disabledTimeline;

@property (nonatomic) NSMutableArray * associatedPromise;

+ (instancetype) navigationTentativeAdapterWithDictionary: (NSDictionary *)dict;

- (instancetype) initWithDictionary: (NSDictionary *)dict;

- (NSString *) buildgesture;

- (NSMutableDictionary *) computeSink;

- (int) shouldPopNavigator;

- (NSMutableSet *) shouldRenderController;

- (NSMutableArray *) canPersistClipper;

@end

NS_ASSUME_NONNULL_END
        