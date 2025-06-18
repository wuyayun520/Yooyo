#import "ObserveSensorHandler.h"
    
@interface ObserveSensorHandler ()

@end

@implementation ObserveSensorHandler

- (void) putSelectedCanvas: (int)directlyDependency
{
	dispatch_async(dispatch_get_main_queue(), ^{
		int otherresolver = 63;
		for (int i = 0; i < directlyDependency; i++) {
			otherresolver += i;
		}
		if (otherresolver > 407) {
			otherresolver ++;
		}
		CATransition *cursorLayer = [CATransition animation];
		cursorLayer.type = kCATransitionMoveIn;
		cursorLayer.timingFunction = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionLinear];
		cursorLayer.type = kCATransitionFade;
		//NSLog(@"sets= business12 gen_int %@", business12);
	});
}


@end
        