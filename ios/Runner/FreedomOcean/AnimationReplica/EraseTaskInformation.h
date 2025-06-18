#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface EraseTaskInformation : NSObject

@property (nonatomic) NSMutableDictionary * shouldResumeIndicator;

@property (nonatomic) NSString * herotag;

+ (instancetype) eraseTaskInformationWithDictionary: (NSDictionary *)dict;

- (instancetype) initWithDictionary: (NSDictionary *)dict;

- (NSString *) requiredLifecycle;

- (NSMutableDictionary *) canUpdateAnimation;

- (int) canUpdateComposition;

- (NSMutableSet *) layerMemento;

- (NSMutableArray *) imperativetraversal;

@end

NS_ASSUME_NONNULL_END
        