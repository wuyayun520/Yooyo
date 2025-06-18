#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface TappableRemainderLoader : NSObject

@property (nonatomic) NSMutableArray * priorProfile;

+ (instancetype) tappableRemainderLoaderWithDictionary: (NSDictionary *)dict;

- (instancetype) initWithDictionary: (NSDictionary *)dict;

- (NSString *) shouldObserveAxis;

- (NSMutableDictionary *) shouldEmitMultiplication;

- (int) liteEfficiency;

- (NSMutableSet *) shouldLoadCharacter;

- (NSMutableArray *) canProcessUsage;

@end

NS_ASSUME_NONNULL_END
        