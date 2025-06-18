#import "RectBridgeSpeed.h"
    
@interface RectBridgeSpeed ()

@end

@implementation RectBridgeSpeed

- (void) unbindSmallMember
{
	dispatch_async(dispatch_get_main_queue(), ^{
		NSMutableArray *independentSkin = [NSMutableArray array];
		for (int i = 6; i != 0; --i) {
			[independentSkin addObject:[NSString stringWithFormat:@"shouldStopDocument%d", i]];
		}
		NSString *substantialAppBar = [independentSkin objectAtIndex:0];
		UISegmentedControl *resumeClipper = [[UISegmentedControl alloc] init];
		[resumeClipper insertSegmentWithTitle:substantialAppBar atIndex:0 animated:YES];
		resumeClipper.enabled = YES;
		resumeClipper.selected = YES;
		//NSLog(@"sets= bussiness6 gen_arr %@", bussiness6);
	});
}


@end
        