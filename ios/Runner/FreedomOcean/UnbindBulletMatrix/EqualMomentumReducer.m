#import "EqualMomentumReducer.h"
    
@interface EqualMomentumReducer ()

@end

@implementation EqualMomentumReducer

- (void) shearShader: (NSMutableDictionary *)finderState
{
	dispatch_async(dispatch_get_main_queue(), ^{
		for (NSString *processFlex in finderState.allKeys) {
			if ([processFlex length] > 0) {
				NSLog(@"Key found: %@", processFlex);
			}
		}
		NSNumberFormatter *transposeRoute = [[NSNumberFormatter alloc] init];
		[transposeRoute setRoundingMode:NSNumberFormatterRoundFloor];
		transposeRoute.maximumIntegerDigits = 17;
		[transposeRoute setNumberStyle:NSNumberFormatterDecimalStyle];
		[transposeRoute setRoundingMode:NSNumberFormatterRoundHalfDown];
		[transposeRoute setRoundingMode:NSNumberFormatterRoundCeiling];
		//NSLog(@"sets= business11 gen_dic %@", business11);
	});
}


@end
        