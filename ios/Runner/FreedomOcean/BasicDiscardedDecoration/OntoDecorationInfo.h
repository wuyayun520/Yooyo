#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface OntoDecorationInfo : NSObject

@property (nonatomic) NSMutableArray * shouldNavigateStamp;

@property (nonatomic) int fusedMediaQuery;

@property (nonatomic) int concreteScenario;

@property (nonatomic) int shouldUpdateOperation;

@property (nonatomic) NSMutableSet * shouldPresentChallenge;

+ (instancetype) ontoDecorationInfoWithDictionary: (NSDictionary *)dict;

- (instancetype) initWithDictionary: (NSDictionary *)dict;

- (NSString *) segueHead;

- (NSMutableDictionary *) deserializeRect;

- (int) shouldPopTabBar;

- (NSMutableSet *) decorationFlags;

- (NSMutableArray *) significantGrid;

@end

NS_ASSUME_NONNULL_END
        