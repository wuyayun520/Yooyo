#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface DisabledDeliveryList : NSObject

@property (nonatomic) NSMutableArray * semanticSegment;

@property (nonatomic) NSMutableSet * sizeHue;

@property (nonatomic) NSMutableArray * shouldEmitAperture;

+ (instancetype) disableddeliveryListWithDictionary: (NSDictionary *)dict;

- (instancetype) initWithDictionary: (NSDictionary *)dict;

- (NSString *) overrideRoute;

- (NSMutableDictionary *) inheritedLocalization;

- (int) hasSlash;

- (NSMutableSet *) hardStamp;

- (NSMutableArray *) shouldbindmodal;

@end

NS_ASSUME_NONNULL_END
        