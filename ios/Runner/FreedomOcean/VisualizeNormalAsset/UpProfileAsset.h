#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UpProfileAsset : NSObject

@property (nonatomic) int publicstroke;

+ (instancetype) upProfileAssetWithDictionary: (NSDictionary *)dict;

- (instancetype) initWithDictionary: (NSDictionary *)dict;

- (NSString *) shouldPrepareView;

- (NSMutableDictionary *) responsiveRichText;

- (int) spineindex;

- (NSMutableSet *) mountedLayout;

- (NSMutableArray *) musicFormat;

@end

NS_ASSUME_NONNULL_END
        