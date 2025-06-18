#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface ContainerLoaderOwner : NSObject

@property (nonatomic) NSMutableArray * shouldDispatchBoxShadow;

@property (nonatomic) NSMutableSet * shouldPrepareSpot;

+ (instancetype) containerLoaderOwnerWithDictionary: (NSDictionary *)dict;

- (instancetype) initWithDictionary: (NSDictionary *)dict;

- (NSString *) canRebuildSwift;

- (NSMutableDictionary *) canPersistCaption;

- (int) temporaryFilter;

- (NSMutableSet *) shouldobservetable;

- (NSMutableArray *) tabbarAcceleration;

@end

NS_ASSUME_NONNULL_END
        