#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface ProcessDimensionLabel : NSObject

@property (nonatomic) int splitterFlags;

+ (instancetype) processDimensionLabelWithDictionary: (NSDictionary *)dict;

- (instancetype) initWithDictionary: (NSDictionary *)dict;

- (NSString *) independentmetrics;

- (NSMutableDictionary *) invisibleSlash;

- (int) replaceBehavior;

- (NSMutableSet *) geometricClipper;

- (NSMutableArray *) widgetevent;

@end

NS_ASSUME_NONNULL_END
        