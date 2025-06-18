#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface OverRouteImpression : NSObject

@property (nonatomic) NSMutableDictionary * shouldPopInstruction;

+ (instancetype) overRouteImpressionWithDictionary: (NSDictionary *)dict;

- (instancetype) initWithDictionary: (NSDictionary *)dict;

- (NSString *) shouldDispatchBorder;

- (NSMutableDictionary *) globalHash;

- (int) customController;

- (NSMutableSet *) resumeSignature;

- (NSMutableArray *) shouldSaveHistogram;

@end

NS_ASSUME_NONNULL_END
        