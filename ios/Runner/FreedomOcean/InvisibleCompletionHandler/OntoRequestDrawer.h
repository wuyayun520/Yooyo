#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface OntoRequestDrawer : NSObject

@property (nonatomic) NSMutableDictionary * specifierinsystem;

+ (instancetype) ontoRequestDrawerWithDictionary: (NSDictionary *)dict;

- (instancetype) initWithDictionary: (NSDictionary *)dict;

- (NSString *) topicChain;

- (NSMutableDictionary *) viewRotation;

- (int) scrollableCharacteristic;

- (NSMutableSet *) delegateType;

- (NSMutableArray *) canRebuildCapacities;

@end

NS_ASSUME_NONNULL_END
        