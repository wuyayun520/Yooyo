#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface ToChapterRange : NSObject

@property (nonatomic) NSMutableDictionary * fixedNode;

@property (nonatomic) NSMutableSet * chapterShape;

@property (nonatomic) NSMutableDictionary * directlyDelegate;

@property (nonatomic) int activatedNavigation;

@property (nonatomic) NSMutableDictionary * shouldSerializeCoordinator;

@property (nonatomic) NSMutableSet * shouldShowInterpolation;

@property (nonatomic) NSMutableSet * shouldSerializeRole;

+ (instancetype) toChapterRangeWithDictionary: (NSDictionary *)dict;

- (instancetype) initWithDictionary: (NSDictionary *)dict;

- (NSString *) menuMargin;

- (NSMutableDictionary *) navigateRouter;

- (int) iconPlatform;

- (NSMutableSet *) radiusStatus;

- (NSMutableArray *) saveModal;

@end

NS_ASSUME_NONNULL_END
        