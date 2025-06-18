#import "LockGraphicAnimation.h"
    
@interface LockGraphicAnimation ()

@end

@implementation LockGraphicAnimation

- (void) deactivateNormalBox: (NSString *)difficultUseCase
{
	dispatch_async(dispatch_get_main_queue(), ^{
		NSMutableDictionary *appbarOrientation = [NSMutableDictionary dictionary];
		appbarOrientation[@"None"] = [UIColor colorNamed:@"redColor"];;
		appbarOrientation[@"None"] = [UIFont fontWithName:@"TrebuchetMS-Bold" size:69];;
		[difficultUseCase drawInRect:CGRectMake(298, 343, 443, 361) withAttributes:nil];
		UIView *benchmarkCubit = [[UIView alloc] initWithFrame:CGRectMake(7, 444, 73, 368)];
		[benchmarkCubit setBackgroundColor : [UIColor colorWithRed:55/255.0 green:118/255.0 blue:57/255.0 alpha:1.0]];
		benchmarkCubit.backgroundColor = [UIColor colorWithRed:242/255.0 green:159/255.0 blue:142/255.0 alpha:1.0];
		//NSLog(@"sets= bussiness7 gen_str %@", bussiness7);
	});
}


@end
        