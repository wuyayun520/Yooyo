#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface AlignmentEmitterDelegate : NSObject

@property (nonatomic) int activeBitrate;

+ (instancetype) alignmentEmitterDelegateWithDictionary: (NSDictionary *)dict;

- (instancetype) initWithDictionary: (NSDictionary *)dict;

- (NSString *) continueSkirt;

- (NSMutableDictionary *) accordionPriority;

- (int) threadVisibility;

- (NSMutableSet *) currentNotifier;

- (NSMutableArray *) canParseMaster;

@end

NS_ASSUME_NONNULL_END
        