#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface OtherNavigationCollection : NSObject

@property (nonatomic) NSMutableArray * beginnerHash;

+ (instancetype) otherNavigationCollectionWithDictionary: (NSDictionary *)dict;

- (instancetype) initWithDictionary: (NSDictionary *)dict;

- (NSString *) nextConsumer;

- (NSMutableDictionary *) shouldTrainNorm;

- (int) canTrainSpot;

- (NSMutableSet *) readLoop;

- (NSMutableArray *) canFetchTechnique;

@end

NS_ASSUME_NONNULL_END
        