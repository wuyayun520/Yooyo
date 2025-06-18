#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface DynamicCellBase : NSObject

@property (nonatomic) int analyzerType;

@property (nonatomic) NSMutableArray * originalSegue;

+ (instancetype) dynamicCellBaseWithDictionary: (NSDictionary *)dict;

- (instancetype) initWithDictionary: (NSDictionary *)dict;

- (NSString *) cartesianGroup;

- (NSMutableDictionary *) scalabilityInteraction;

- (int) canUnbindExtension;

- (NSMutableSet *) replaceCapacities;

- (NSMutableArray *) activeCoordinator;

@end

NS_ASSUME_NONNULL_END
        