#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface ProviderPopup : NSObject

@property (nonatomic) int singleDependency;

@property (nonatomic) NSMutableArray * rendererFlags;

+ (instancetype) providerpopupWithDictionary: (NSDictionary *)dict;

- (instancetype) initWithDictionary: (NSDictionary *)dict;

- (NSString *) eventDelay;

- (NSMutableDictionary *) extensionTheme;

- (int) wrapLayout;

- (NSMutableSet *) primaryGraphic;

- (NSMutableArray *) locateEntity;

@end

NS_ASSUME_NONNULL_END
        