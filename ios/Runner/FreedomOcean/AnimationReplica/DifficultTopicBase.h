#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface DifficultTopicBase : NSObject

@property (nonatomic) NSMutableDictionary * draggableShader;

+ (instancetype) difficultTopicBaseWithDictionary: (NSDictionary *)dict;

- (instancetype) initWithDictionary: (NSDictionary *)dict;

- (NSString *) instructionChain;

- (NSMutableDictionary *) invisibleEffect;

- (int) sortedProvision;

- (NSMutableSet *) standaloneButton;

- (NSMutableArray *) splitterKind;

@end

NS_ASSUME_NONNULL_END
        