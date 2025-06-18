#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface NodeEventList : NSObject

@property (nonatomic) int spriteSpacing;

+ (instancetype) nodeEventListWithDictionary: (NSDictionary *)dict;

- (instancetype) initWithDictionary: (NSDictionary *)dict;

- (NSString *) shouldShowInteger;

- (NSMutableDictionary *) transformGroup;

- (int) ephemeralMobile;

- (NSMutableSet *) connectScreen;

- (NSMutableArray *) shouldProcessUsage;

@end

NS_ASSUME_NONNULL_END
        