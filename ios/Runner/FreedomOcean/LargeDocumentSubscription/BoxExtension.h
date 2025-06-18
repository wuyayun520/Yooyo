#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface BoxExtension : NSObject

@property (nonatomic) NSMutableSet * explicitResult;

+ (instancetype) boxExtensionWithDictionary: (NSDictionary *)dict;

- (instancetype) initWithDictionary: (NSDictionary *)dict;

- (NSString *) itemHead;

- (NSMutableDictionary *) routeGradient;

- (int) offsetStatus;

- (NSMutableSet *) emitBox;

- (NSMutableArray *) shouldSkipEntropy;

@end

NS_ASSUME_NONNULL_END
        