#import "ClearCubeTarget.h"
    
@interface ClearCubeTarget ()

@end

@implementation ClearCubeTarget

- (void) dispatchVideo: (NSString *)unactivatedStream
{
	dispatch_async(dispatch_get_main_queue(), ^{
		NSMutableDictionary *dynamicRole = [NSMutableDictionary dictionary];
		dynamicRole[@"None"] = [UIFont fontWithName:@"Courier-Oblique" size:51];;
		dynamicRole[@"None"] = [UIColor colorNamed:@"magentaColor"];;
		dynamicRole[@"None"] = @303;
		[unactivatedStream drawInRect:CGRectMake(414, 352, 807, 836) withAttributes:dynamicRole];
		//NSLog(@"Business17 gen_str executed%@", Business17);
	});
}


@end
        