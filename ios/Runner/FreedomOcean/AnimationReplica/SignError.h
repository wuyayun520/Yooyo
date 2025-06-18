#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface SignError : NSObject

@property (nonatomic) NSMutableDictionary * rendererPadding;

+ (instancetype) signErrorWithDictionary: (NSDictionary *)dict;

- (instancetype) initWithDictionary: (NSDictionary *)dict;

- (NSString *) parseListener;

- (NSMutableDictionary *) buffertype;

- (int) uniformStrength;

- (NSMutableSet *) shouldHandleEqualization;

- (NSMutableArray *) synchronousInterface;

@end

NS_ASSUME_NONNULL_END
        