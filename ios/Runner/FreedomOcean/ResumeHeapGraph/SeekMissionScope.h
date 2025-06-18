#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface SeekMissionScope : NSObject

@property (nonatomic) NSMutableDictionary * prevMovement;

+ (instancetype) seekMissionscopeWithDictionary: (NSDictionary *)dict;

- (instancetype) initWithDictionary: (NSDictionary *)dict;

- (NSString *) operationCommand;

- (NSMutableDictionary *) shouldMountedReduction;

- (int) navigatorWork;

- (NSMutableSet *) explicitView;

- (NSMutableArray *) resourceActivity;

@end

NS_ASSUME_NONNULL_END
        