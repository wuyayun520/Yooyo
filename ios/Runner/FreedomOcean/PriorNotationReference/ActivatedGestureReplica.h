#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface ActivatedGestureReplica : NSObject

@property (nonatomic) NSMutableArray * immutablesensor;

@property (nonatomic) NSMutableArray * unactivatedStack;

+ (instancetype) activatedGestureReplicaWithDictionary: (NSDictionary *)dict;

- (instancetype) initWithDictionary: (NSDictionary *)dict;

- (NSString *) canNavigateAccessory;

- (NSMutableDictionary *) subscriptionTag;

- (int) animatedConfidentiality;

- (NSMutableSet *) recursionLeft;

- (NSMutableArray *) pinchableObject;

@end

NS_ASSUME_NONNULL_END
        