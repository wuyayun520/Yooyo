#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface HoldSpecifyResponse : NSObject

@property (nonatomic) NSMutableDictionary * shouldPauseCell;

+ (instancetype) holdSpecifyResponseWithDictionary: (NSDictionary *)dict;

- (instancetype) initWithDictionary: (NSDictionary *)dict;

- (NSString *) projectionCount;

- (NSMutableDictionary *) alignmentMethod;

- (int) canTransitionMaterial;

- (NSMutableSet *) resilientDescription;

- (NSMutableArray *) rapidException;

@end

NS_ASSUME_NONNULL_END
        