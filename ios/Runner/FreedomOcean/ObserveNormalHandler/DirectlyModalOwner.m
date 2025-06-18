#import "DirectlyModalOwner.h"
    
@interface DirectlyModalOwner ()

@end

@implementation DirectlyModalOwner

- (void) dispatchTextFieldInsideMenu: (NSString *)normalSprite
{
	dispatch_async(dispatch_get_main_queue(), ^{
		CALayer * listeneruntilscope = [[CALayer alloc] init];
		listeneruntilscope.name = normalSprite;
		listeneruntilscope.bounds = CGRectMake(366, 312, 390, 782);
		listeneruntilscope.backgroundColor = [UIColor cyanColor].CGColor;
		listeneruntilscope.position = CGPointZero;
		listeneruntilscope.borderColor = [UIColor redColor].CGColor;
		listeneruntilscope.borderWidth = 390;
		listeneruntilscope.masksToBounds = NO;
		UIStackView *stackLayer = [[UIStackView alloc] init];
		stackLayer.spacing = 79;
		stackLayer.frame = CGRectMake(65, 26, 39, 40);
		stackLayer.spacing = 99;
		//NSLog(@"sets= business16 gen_str %@", business16);
	});
}


@end
        