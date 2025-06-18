#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface MediocreGroupPool : NSObject

@property (nonatomic) int schedulerType;

+ (instancetype) mediocreGroupPoolWithDictionary: (NSDictionary *)dict;

- (instancetype) initWithDictionary: (NSDictionary *)dict;

- (NSString *) vectorPosition;

- (NSMutableDictionary *) searchQueue;

- (int) canListenGestureDetector;

- (NSMutableSet *) updateChapter;

- (NSMutableArray *) symmetricResource;

@end

NS_ASSUME_NONNULL_END
        