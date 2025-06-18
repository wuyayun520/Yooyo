#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface AnimatedLayerCreator : NSObject

@property (nonatomic) NSMutableSet * finishduration;

+ (instancetype) animatedLayerCreatorWithDictionary: (NSDictionary *)dict;

- (instancetype) initWithDictionary: (NSDictionary *)dict;

- (NSString *) shouldMountDecoration;

- (NSMutableDictionary *) baselineVisible;

- (int) subpixelAppearance;

- (NSMutableSet *) cartesianInfo;

- (NSMutableArray *) dataResponse;

@end

NS_ASSUME_NONNULL_END
        