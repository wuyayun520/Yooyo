#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface PrevPopupTransformer : NSObject

@property (nonatomic) NSString * shouldFormatAlert;

@property (nonatomic) NSString * integrationName;

@property (nonatomic) NSMutableArray * resultFeedback;

+ (instancetype) prevpopupTransformerWithDictionary: (NSDictionary *)dict;

- (instancetype) initWithDictionary: (NSDictionary *)dict;

- (NSString *) associatedChart;

- (NSMutableDictionary *) sceneDecorator;

- (int) multiPermutation;

- (NSMutableSet *) customDetector;

- (NSMutableArray *) usagebesidelevel;

@end

NS_ASSUME_NONNULL_END
        