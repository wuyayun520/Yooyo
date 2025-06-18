#import "ParseCriticalActivity.h"
    
@interface ParseCriticalActivity ()

@end

@implementation ParseCriticalActivity

- (void) parsePrimaryPreview
{
	dispatch_async(dispatch_get_main_queue(), ^{
		NSMutableArray *nodefromstyle = [NSMutableArray array];
		for (int i = 10; i != 0; --i) {
			[nodefromstyle addObject:[NSString stringWithFormat:@"restartKernel%d", i]];
		}
		UITextView *pointborder = [[UITextView alloc] initWithFrame:CGRectMake(95, 96, 197, 261)];
		pointborder.textAlignment = NSTextAlignmentLeft;
		pointborder.textColor = [UIColor colorWithRed:250/255.0 green:236/255.0 blue:137/255.0 alpha:0.913725];
		pointborder.contentOffset = CGPointMake(0, 36);
		pointborder.textAlignment = NSTextAlignmentLeft;
		pointborder.contentOffset = CGPointMake(71, 94);
		pointborder.userInteractionEnabled = NO;
		//NSLog(@"sets= bussiness5 gen_arr %@", bussiness5);
	});
}


@end
        