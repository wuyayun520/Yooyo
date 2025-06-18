#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface SpriteInteractionType : NSObject

@property (nonatomic) NSString * cubestyle;

@property (nonatomic) NSString * convolutionRight;

@property (nonatomic) NSMutableSet * adaptiveZone;

@property (nonatomic) NSString * shouldUpdateEntropy;

+ (instancetype) spriteInteractionTypeWithDictionary: (NSDictionary *)dict;

- (instancetype) initWithDictionary: (NSDictionary *)dict;

- (NSString *) replaceSymbol;

- (NSMutableDictionary *) skipModal;

- (int) emitterValidation;

- (NSMutableSet *) alignmentFacade;

- (NSMutableArray *) canDismissCosine;

@end

NS_ASSUME_NONNULL_END
        