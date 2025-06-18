#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface BindChecklistRepository : NSObject

@property (nonatomic) int associatedScope;

@property (nonatomic) NSString * channelFormat;

@property (nonatomic) NSString * pointstate;

@property (nonatomic) NSMutableDictionary * normmanager;

+ (instancetype) bindChecklistRepositoryWithDictionary: (NSDictionary *)dict;

- (instancetype) initWithDictionary: (NSDictionary *)dict;

- (NSString *) informationType;

- (NSMutableDictionary *) graphFacade;

- (int) customEvaluation;

- (NSMutableSet *) directlyfragments;

- (NSMutableArray *) dynamicDelivery;

@end

NS_ASSUME_NONNULL_END
        