#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface NotifyLogAlignment : NSObject

@property (nonatomic) int primaryBitrate;

+ (instancetype) notifyLogAlignmentWithDictionary: (NSDictionary *)dict;

- (instancetype) initWithDictionary: (NSDictionary *)dict;

- (NSString *) validateWidget;

- (NSMutableDictionary *) crudeSpecifier;

- (int) enabledNotification;

- (NSMutableSet *) shouldTransformStack;

- (NSMutableArray *) elasticScope;

@end

NS_ASSUME_NONNULL_END
        