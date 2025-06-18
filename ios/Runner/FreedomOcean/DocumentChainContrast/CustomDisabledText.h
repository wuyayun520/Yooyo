#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface CustomDisabledText : NSObject

@property (nonatomic) NSMutableArray * keyCursor;

@property (nonatomic) NSMutableArray * boxTheme;

+ (instancetype) customDisabledTextWithDictionary: (NSDictionary *)dict;

- (instancetype) initWithDictionary: (NSDictionary *)dict;

- (NSString *) canBuildExtension;

- (NSMutableDictionary *) interactiveData;

- (int) restrictionLocation;

- (NSMutableSet *) accessibleTraversal;

- (NSMutableArray *) popStorage;

@end

NS_ASSUME_NONNULL_END
        