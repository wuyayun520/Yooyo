#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface OnTangentResource : NSObject

@property (nonatomic) int bulletColor;

+ (instancetype) onTangentResourceWithDictionary: (NSDictionary *)dict;

- (instancetype) initWithDictionary: (NSDictionary *)dict;

- (NSString *) shouldSetStateCache;

- (NSMutableDictionary *) dialogsValue;

- (int) uniformShape;

- (NSMutableSet *) unsortedEquipment;

- (NSMutableArray *) syncContainer;

@end

NS_ASSUME_NONNULL_END
        