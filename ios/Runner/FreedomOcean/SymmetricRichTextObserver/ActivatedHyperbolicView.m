#import "ActivatedHyperbolicView.h"
    
@interface ActivatedHyperbolicView ()

@end

@implementation ActivatedHyperbolicView

- (void) beforeNibCubit: (NSString *)optionalignment
{
	dispatch_async(dispatch_get_main_queue(), ^{
		CALayer * unactivatedDrawer = [[CALayer alloc] init];
		unactivatedDrawer.name = optionalignment;
		unactivatedDrawer.bounds = CGRectMake(328, 366, 123, 278);
		unactivatedDrawer.borderWidth = 123;
		unactivatedDrawer.borderColor = [UIColor cyanColor].CGColor;
		unactivatedDrawer.backgroundColor = [UIColor darkGrayColor].CGColor;
		//NSLog(@"sets= bussiness8 gen_str %@", bussiness8);
	});
}


@end
        