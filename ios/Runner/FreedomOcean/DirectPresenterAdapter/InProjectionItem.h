#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface InProjectionItem : NSObject

@property (nonatomic) int canvasstyle;

+ (instancetype) inProjectionitemWithDictionary: (NSDictionary *)dict;

- (instancetype) initWithDictionary: (NSDictionary *)dict;

- (NSString *) dimensionstyle;

- (NSMutableDictionary *) mountedCollection;

- (int) showNavigator;

- (NSMutableSet *) convertersaturation;

- (NSMutableArray *) mendScale;

@end

NS_ASSUME_NONNULL_END
        