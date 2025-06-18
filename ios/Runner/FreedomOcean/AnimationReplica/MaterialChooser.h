#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface MaterialChooser : NSObject

@property (nonatomic) NSMutableDictionary * unsortedTrigger;

@property (nonatomic) int lastcombiner;

@property (nonatomic) int factorymodel;

@property (nonatomic) NSString * tappableDuration;

@property (nonatomic) int chaptertrigger;

@property (nonatomic) NSString * multiBox;

+ (instancetype) materialChooserWithDictionary: (NSDictionary *)dict;

- (instancetype) initWithDictionary: (NSDictionary *)dict;

- (NSString *) animationDecorator;

- (NSMutableDictionary *) transitionRight;

- (int) missionStage;

- (NSMutableSet *) disabledAxis;

- (NSMutableArray *) effectquaternion;

@end

NS_ASSUME_NONNULL_END
        