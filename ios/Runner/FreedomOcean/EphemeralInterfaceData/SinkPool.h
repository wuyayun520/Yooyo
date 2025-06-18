#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface SinkPool : NSObject

@property (nonatomic) NSString * textcyclestyle;

+ (instancetype) sinkPoolWithDictionary: (NSDictionary *)dict;

- (instancetype) initWithDictionary: (NSDictionary *)dict;

- (NSString *) shouldTrainVariant;

- (NSMutableDictionary *) commonVariant;

- (int) configureError;

- (NSMutableSet *) pauseBox;

- (NSMutableArray *) richtextDirection;

@end

NS_ASSUME_NONNULL_END
        