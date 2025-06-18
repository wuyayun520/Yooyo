#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface SeekCycleRect : NSObject

@property (nonatomic) NSString * momentumRight;

@property (nonatomic) NSMutableDictionary * originalPageView;

+ (instancetype) seekCycleRectWithDictionary: (NSDictionary *)dict;

- (instancetype) initWithDictionary: (NSDictionary *)dict;

- (NSString *) reduceAnimation;

- (NSMutableDictionary *) shouldObserveBaseline;

- (int) localRectangle;

- (NSMutableSet *) canListenEntropy;

- (NSMutableArray *) providerBuffer;

@end

NS_ASSUME_NONNULL_END
        