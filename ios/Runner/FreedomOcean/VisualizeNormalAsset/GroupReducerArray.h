#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface GroupReducerArray : NSObject

@property (nonatomic) NSMutableArray * titleSaturation;

+ (instancetype) groupReducerArrayWithDictionary: (NSDictionary *)dict;

- (instancetype) initWithDictionary: (NSDictionary *)dict;

- (NSString *) showSegment;

- (NSMutableDictionary *) wrapperState;

- (int) asynchronousRadius;

- (NSMutableSet *) checklistPadding;

- (NSMutableArray *) canBindReduction;

@end

NS_ASSUME_NONNULL_END
        