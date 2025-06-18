#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface DismissMediaImplement : NSObject

@property (nonatomic) int rectBound;

+ (instancetype) dismissMediaImplementWithDictionary: (NSDictionary *)dict;

- (instancetype) initWithDictionary: (NSDictionary *)dict;

- (NSString *) meshStyle;

- (NSMutableDictionary *) menuSize;

- (int) shouldSkipPoint;

- (NSMutableSet *) alphaMemento;

- (NSMutableArray *) rangeSaturation;

@end

NS_ASSUME_NONNULL_END
        