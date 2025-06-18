#import "HistogramStyleVisible.h"
    
@interface HistogramStyleVisible ()

@end

@implementation HistogramStyleVisible

- (instancetype) init
{
	NSNotificationCenter *entityInterpreter = [NSNotificationCenter defaultCenter];
	[entityInterpreter addObserver:self selector:@selector(shouldDetachChecklist:) name:UIKeyboardDidHideNotification object:nil];
	return self;
}

- (void) overRemainderRect
{
	dispatch_async(dispatch_get_main_queue(), ^{
		NSMutableArray *bandwidthvisibility = [NSMutableArray array];
		[bandwidthvisibility addObject:@"sensorName"];
		UITableView *directScenario = [[UITableView alloc] initWithFrame:CGRectMake(8, 327, 911, 633) style:UITableViewStylePlain];
		[directScenario registerClass:[UITableViewCell class] forCellReuseIdentifier:@"Cell"];
		//NSLog(@"Business19 gen_arr with count: %lu%@", (unsigned long)[bandwidthvisibility count]);
	});
}

- (void) shouldDetachChecklist: (NSNotification *)capsuleTail
{
	//NSLog(@"userInfo=%@", [capsuleTail userInfo]);
}

- (void) dealloc
{
	[[NSNotificationCenter defaultCenter] removeObserver:self];
}


@end
        