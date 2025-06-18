#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface CupertinoOffsetBase : NSObject

@property (nonatomic) NSMutableArray * scrollableTimer;

@property (nonatomic) int builderInset;

+ (instancetype) cupertinoOffsetBaseWithDictionary: (NSDictionary *)dict;

- (instancetype) initWithDictionary: (NSDictionary *)dict;

- (NSString *) inflatecupertino;

- (NSMutableDictionary *) deferredResource;

- (int) showCompleter;

- (NSMutableSet *) shouldCancelBinary;

- (NSMutableArray *) canStopStoryboard;

@end

NS_ASSUME_NONNULL_END
        