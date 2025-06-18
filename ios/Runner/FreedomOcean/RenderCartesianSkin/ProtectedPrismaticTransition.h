#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface ProtectedPrismaticTransition : NSObject

@property (nonatomic) NSMutableSet * featurepertype;

@property (nonatomic) int segmentOffset;

+ (instancetype) protectedprismaticTransitionWithDictionary: (NSDictionary *)dict;

- (instancetype) initWithDictionary: (NSDictionary *)dict;

- (NSString *) mountShader;

- (NSMutableDictionary *) staticComposition;

- (int) shouldKeepMedia;

- (NSMutableSet *) detachqueue;

- (NSMutableArray *) shouldConnectBorder;

@end

NS_ASSUME_NONNULL_END
        