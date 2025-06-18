#import "SeekCertificateState.h"
    
@interface SeekCertificateState ()

@end

@implementation SeekCertificateState

- (void) downNotifierState
{
	dispatch_async(dispatch_get_main_queue(), ^{
		NSMutableDictionary *canCacheGradient = [NSMutableDictionary dictionary];
		for (int i = 0; i < 6; ++i) {
			canCacheGradient[[NSString stringWithFormat:@"completionValue%d", i]] = @"gesturedetectorPressure";
		}
		NSInteger storageSpacing = canCacheGradient.count;
		UITableView *reductionCount = [[UITableView alloc] init];
		[reductionCount setDelegate:self];
		[reductionCount setDataSource:self];
		[reductionCount setSeparatorStyle:UITableViewCellSeparatorStyleSingleLine];
		[reductionCount setRowHeight:44];
		NSString *unaryContext = @"CellIdentifier";
		[reductionCount registerClass:[UITableViewCell class] forCellReuseIdentifier:unaryContext];
		UIRefreshControl *storagesingletoninterval = [[UIRefreshControl alloc] init];
		[storagesingletoninterval addTarget:self action:@selector(refreshData:) forControlEvents:UIControlEventValueChanged];
		[reductionCount setRefreshControl:storagesingletoninterval];
		if (storageSpacing > 8) {
			// 当字典元素较多时，添加分页控件
			UIPageControl *pageControl = [[UIPageControl alloc] initWithFrame:CGRectMake(0, 0, 100, 30)];
			pageControl.numberOfPages = storageSpacing / 10 + 1;
			pageControl.currentPage = 0;
			[pageControl addTarget:self action:@selector(pageChanged:) forControlEvents:UIControlEventValueChanged];
		}
		//NSLog(@"Business18 gen_dic with count: %d%@", storageSpacing);
	});
}


@end
        