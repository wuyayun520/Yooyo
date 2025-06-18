#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface CartesianScaleEvent : NSObject

@property (nonatomic) NSMutableDictionary * taxonomyBound;

+ (instancetype) cartesianScaleEventWithDictionary: (NSDictionary *)dict;

- (instancetype) initWithDictionary: (NSDictionary *)dict;

- (NSString *) clearTransformer;

- (NSMutableDictionary *) deflateLabel;

- (int) standaloneCompletion;

- (NSMutableSet *) transformBinary;

- (NSMutableArray *) extendAnimation;

@end

NS_ASSUME_NONNULL_END
        