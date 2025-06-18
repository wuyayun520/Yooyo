#import "AsyncType.h"
    
@interface AsyncType ()

@end

@implementation AsyncType

- (void) createScreenOutsideItem: (NSString *)transformanchor
{
	dispatch_async(dispatch_get_main_queue(), ^{
		NSMutableDictionary *bundleState = [NSMutableDictionary dictionary];
		bundleState[@"None"] = [UIFont fontWithName:@"Zapfino" size:77];;
		bundleState[@"None"] = [UIFont fontWithName:@"CourierNewPSMT" size:90];;
		[transformanchor drawInRect:CGRectMake(315, 13, 270, 620) withAttributes:bundleState];
		CATransition *hierarchicalTriangles = [CATransition animation];
		hierarchicalTriangles.type = kCATransitionMoveIn;
		//NSLog(@"sets= business12 gen_str %@", business12);
	});
}


@end
        