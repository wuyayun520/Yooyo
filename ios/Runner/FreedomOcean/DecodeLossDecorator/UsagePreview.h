#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UsagePreview : NSObject

@property (nonatomic) NSMutableArray * entityShade;

+ (instancetype) usagePreviewWithDictionary: (NSDictionary *)dict;

- (instancetype) initWithDictionary: (NSDictionary *)dict;

- (NSString *) converterKind;

- (NSMutableDictionary *) paintGridView;

- (int) serializeCache;

- (NSMutableSet *) fragmentCycle;

- (NSMutableArray *) addRow;

@end

NS_ASSUME_NONNULL_END
        