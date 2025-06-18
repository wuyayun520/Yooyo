#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface SingletonLinker : NSObject

@property (nonatomic) NSMutableDictionary * effectrow;

+ (instancetype) singletonLinkerWithDictionary: (NSDictionary *)dict;

- (instancetype) initWithDictionary: (NSDictionary *)dict;

- (NSString *) shouldNotifyAnimation;

- (NSMutableDictionary *) sanitizeMenu;

- (int) skipMedia;

- (NSMutableSet *) ischeckbox;

- (NSMutableArray *) webTrigger;

@end

NS_ASSUME_NONNULL_END
        