#import "LayoutTaskMatrix.h"
    
@interface LayoutTaskMatrix ()

@end

@implementation LayoutTaskMatrix

- (void) loadGeometricModulus: (NSString *)newestDuration
{
	dispatch_async(dispatch_get_main_queue(), ^{
		UISegmentedControl *actionPosition = [[UISegmentedControl alloc] init];
		[actionPosition insertSegmentWithTitle:newestDuration atIndex:0 animated:YES];
		actionPosition.selected = YES;
		actionPosition.enabled = YES;
		NSMutableDictionary *scrollHead = [NSMutableDictionary dictionary];
		NSString *easySprite = @"pushmetadata";
		scrollHead[@"None"] = [UIColor colorNamed:@"magentaColor"];;
		scrollHead[@"None"] = [UIFont fontWithName:@"Verdana-Italic" size:98];;
		scrollHead[@"None"] = [UIColor colorNamed:@"purpleColor"];;
		[easySprite drawAtPoint:CGPointMake(31, 12) withAttributes:scrollHead];
		scrollHead[@"None"] = [UIFont fontWithName:@"Helvetica-Bold" size:41];;
		//NSLog(@"sets= bussiness5 gen_str %@", bussiness5);
	});
}


@end
        