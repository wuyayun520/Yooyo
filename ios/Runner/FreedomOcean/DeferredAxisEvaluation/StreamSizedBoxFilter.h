#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface StreamSizedBoxFilter : NSObject

@property (nonatomic) int taxonomyTail;

@property (nonatomic) int dedicatedSlash;

@property (nonatomic) NSMutableSet * currentClipper;

@property (nonatomic) NSMutableSet * shouldKeepMobile;

@property (nonatomic) NSString * explicitMaster;

+ (instancetype) streamsizedBoxFilterWithDictionary: (NSDictionary *)dict;

- (instancetype) initWithDictionary: (NSDictionary *)dict;

- (NSString *) shouldSaveBorder;

- (NSMutableDictionary *) viewOrigin;

- (int) awaitDepth;

- (NSMutableSet *) shouldEncodeSensor;

- (NSMutableArray *) descriptionStage;

@end

NS_ASSUME_NONNULL_END
        