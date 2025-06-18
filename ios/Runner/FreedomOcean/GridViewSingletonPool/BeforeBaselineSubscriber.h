#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface BeforeBaselineSubscriber : NSObject

@property (nonatomic) NSString * heapAlignment;

@property (nonatomic) int curveflags;

+ (instancetype) beforebaselineSubscriberWithDictionary: (NSDictionary *)dict;

- (instancetype) initWithDictionary: (NSDictionary *)dict;

- (NSString *) activeDocument;

- (NSMutableDictionary *) shouldConnectSession;

- (int) smartSample;

- (NSMutableSet *) canSubscribeUnary;

- (NSMutableArray *) handleMetadata;

@end

NS_ASSUME_NONNULL_END
        