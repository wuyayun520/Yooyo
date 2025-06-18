#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface RenderLiteTransition : NSObject

@property (nonatomic) NSMutableSet * petInterval;

+ (instancetype) renderLiteTransitionWithDictionary: (NSDictionary *)dict;

- (instancetype) initWithDictionary: (NSDictionary *)dict;

- (NSString *) shouldDisconnectKernel;

- (NSMutableDictionary *) freeLoop;

- (int) scaffoldBehavior;

- (NSMutableSet *) restartLog;

- (NSMutableArray *) reusableanimation;

@end

NS_ASSUME_NONNULL_END
        