#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface WriteStepStorage : NSObject

@property (nonatomic) int tasktype;

+ (instancetype) writeStepStorageWithDictionary: (NSDictionary *)dict;

- (instancetype) initWithDictionary: (NSDictionary *)dict;

- (NSString *) operationSpacing;

- (NSMutableDictionary *) shouldPrepareReduction;

- (int) localInteraction;

- (NSMutableSet *) reactiveUsage;

- (NSMutableArray *) constructNode;

@end

NS_ASSUME_NONNULL_END
        