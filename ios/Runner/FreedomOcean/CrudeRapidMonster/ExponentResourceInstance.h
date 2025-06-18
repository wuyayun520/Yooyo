#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface ExponentResourceInstance : NSObject

@property (nonatomic) NSMutableSet * sliderShape;

@property (nonatomic) int hardNotation;

@property (nonatomic) int crudeStep;

@property (nonatomic) NSMutableSet * nibVisibility;

@property (nonatomic) NSMutableDictionary * decorationFeedback;

+ (instancetype) exponentResourceInstanceWithDictionary: (NSDictionary *)dict;

- (instancetype) initWithDictionary: (NSDictionary *)dict;

- (NSString *) shouldSerializeMap;

- (NSMutableDictionary *) renderIcon;

- (int) vectororlevel;

- (NSMutableSet *) validateborder;

- (NSMutableArray *) fetchCanvas;

@end

NS_ASSUME_NONNULL_END
        