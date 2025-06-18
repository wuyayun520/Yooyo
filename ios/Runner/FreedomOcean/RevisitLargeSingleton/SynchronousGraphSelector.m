#import "SynchronousGraphSelector.h"
    
@interface SynchronousGraphSelector ()

@end

@implementation SynchronousGraphSelector

- (void) mapCurrentMultiplication: (NSMutableArray *)requiredeventborder
{
	dispatch_async(dispatch_get_main_queue(), ^{
		NSInteger resolverInterpreter = [requiredeventborder count];
		int maxMovement=0;
		for (int i = 0; i < resolverInterpreter; i++) {
			maxMovement += [[requiredeventborder objectAtIndex:i] intValue];
		}
		float interceptTicker = (float)maxMovement / resolverInterpreter;
		if (resolverInterpreter > 0) {
			NSLog(@"Average: %f", interceptTicker);
		} else {
			NSLog(@"Array is empty");
		}
		//NSLog(@"Business17 gen_arr executed%@", Business17);
	});
}


@end
        