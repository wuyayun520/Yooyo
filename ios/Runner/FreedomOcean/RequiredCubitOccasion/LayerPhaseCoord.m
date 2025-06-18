#import "LayerPhaseCoord.h"
    
@interface LayerPhaseCoord ()

@end

@implementation LayerPhaseCoord

- (instancetype) init
{
	NSNotificationCenter *canCancelGram = [NSNotificationCenter defaultCenter];
	[canCancelGram addObserver:self selector:@selector(factoryDepth:) name:UIKeyboardWillChangeFrameNotification object:nil];
	return self;
}

- (void) underPaddingProgressBar: (NSMutableArray *)instructionshape
{
	dispatch_async(dispatch_get_main_queue(), ^{
		NSInteger animatedPicker = [instructionshape count];
		int apertureMargin=0;
		for (int i = 0; i < animatedPicker; i++) {
			apertureMargin += [[instructionshape objectAtIndex:i] intValue];
		}
		float transformZone = (float)apertureMargin / animatedPicker;
		if (animatedPicker > 0) {
			NSLog(@"Average: %f", transformZone);
		} else {
			NSLog(@"Array is empty");
		}
		//NSLog(@"Business17 gen_arr executed%@", Business17);
	});
}

- (void) factoryDepth: (NSNotification *)captureAlignment
{
	//NSLog(@"userInfo=%@", [captureAlignment userInfo]);
}

- (void) dealloc
{
	[[NSNotificationCenter defaultCenter] removeObserver:self];
}


@end
        