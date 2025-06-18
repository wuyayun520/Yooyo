#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface ScrollableResultOperation : NSObject

@property (nonatomic) NSString * shouldHandlePageView;

+ (instancetype) scrollableResultOperationWithDictionary: (NSDictionary *)dict;

- (instancetype) initWithDictionary: (NSDictionary *)dict;

- (NSString *) intuitiveContrast;

- (NSMutableDictionary *) backwardVolume;

- (int) mountDimension;

- (NSMutableSet *) autoThreshold;

- (NSMutableArray *) sceneSkewY;

@end

NS_ASSUME_NONNULL_END
        