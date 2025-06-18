#import "ScrollableToolAspect.h"
    
@interface ScrollableToolAspect ()

@end

@implementation ScrollableToolAspect

- (instancetype) init
{
	NSNotificationCenter *normalColumn = [NSNotificationCenter defaultCenter];
	[normalColumn addObserver:self selector:@selector(opaqueSemantics:) name:UIKeyboardWillChangeFrameNotification object:nil];
	return self;
}

- (void) pauseExtensionUtil
{
	dispatch_async(dispatch_get_main_queue(), ^{
		int animatedLinker = 88;
		NSArray *localResponse = @[@41, @23];
		//NSLog(@"sets= bussiness2 gen_int %@", bussiness2);
	});
}

- (void) opaqueSemantics: (NSNotification *)gramefficiency
{
	//NSLog(@"userInfo=%@", [gramefficiency userInfo]);
}

- (void) dealloc
{
	[[NSNotificationCenter defaultCenter] removeObserver:self];
}


@end
        