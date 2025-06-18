#import "MultiControllerProtocol.h"
    
@interface MultiControllerProtocol ()

@end

@implementation MultiControllerProtocol

- (void) subscribeSensorPresenter: (NSString *)shouldpaintlog
{
	dispatch_async(dispatch_get_main_queue(), ^{
		UITextField *screenWork = [[UITextField alloc] init];
		screenWork.text = @"shouldpaintlog";
		screenWork.font = [UIFont fontWithName:@"Courier-Bold" size:80.000000];
		screenWork.textColor = UIColor.redColor;
		//NSLog(@"sets= bussiness4 gen_str %@", bussiness4);
	});
}


@end
        