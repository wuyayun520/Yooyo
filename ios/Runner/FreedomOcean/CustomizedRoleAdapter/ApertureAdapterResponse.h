#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface ApertureAdapterResponse : NSObject

@property (nonatomic) NSString * usedFlex;

+ (instancetype) apertureadapterResponseWithDictionary: (NSDictionary *)dict;

- (instancetype) initWithDictionary: (NSDictionary *)dict;

- (NSString *) secondMediaQuery;

- (NSMutableDictionary *) providerAlignment;

- (int) profiletheme;

- (NSMutableSet *) injectSprite;

- (NSMutableArray *) chapterLocation;

@end

NS_ASSUME_NONNULL_END
        