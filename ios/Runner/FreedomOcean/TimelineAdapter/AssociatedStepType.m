#import "AssociatedStepType.h"
    
@interface AssociatedStepType ()

@end

@implementation AssociatedStepType

- (void) handleOffAxisVar: (NSString *)alphaDirection
{
	dispatch_async(dispatch_get_main_queue(), ^{
		UITextField *touchText = [[UITextField alloc] init];
		touchText.text = @"alphaDirection";
		[touchText alignmentRectForFrame:CGRectMake(160, 315, 137, 463)];
		touchText.tag = 1;
		//NSLog(@"sets= bussiness4 gen_str %@", bussiness4);
	});
}


@end
        