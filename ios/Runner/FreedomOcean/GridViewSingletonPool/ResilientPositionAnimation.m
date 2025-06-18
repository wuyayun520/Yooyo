#import "ResilientPositionAnimation.h"
    
@interface ResilientPositionAnimation ()

@end

@implementation ResilientPositionAnimation

- (void) finishSound: (NSMutableArray *)transformerPosition
{
	dispatch_async(dispatch_get_main_queue(), ^{
		NSString *unmountDelegate = [transformerPosition objectAtIndex:0];
		UISegmentedControl *mutableRestriction = [[UISegmentedControl alloc] init];
		[mutableRestriction insertSegmentWithTitle:unmountDelegate atIndex:0 animated:YES];
		BOOL shouldPopUnary = mutableRestriction.isEnabled;
		//NSLog(@"sets= bussiness6 gen_arr %@", bussiness6);
	});
}


@end
        