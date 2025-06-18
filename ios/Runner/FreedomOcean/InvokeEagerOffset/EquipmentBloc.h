#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface EquipmentBloc : NSObject

@property (nonatomic) NSMutableArray * shouldConnectCatalyst;

@property (nonatomic) int dynamicSingleton;

+ (instancetype) equipmentBlocWithDictionary: (NSDictionary *)dict;

- (instancetype) initWithDictionary: (NSDictionary *)dict;

- (NSString *) sinkStrategy;

- (NSMutableDictionary *) drawerAction;

- (int) permanentUseCase;

- (NSMutableSet *) thresholdtype;

- (NSMutableArray *) canRouteCapsule;

@end

NS_ASSUME_NONNULL_END
        