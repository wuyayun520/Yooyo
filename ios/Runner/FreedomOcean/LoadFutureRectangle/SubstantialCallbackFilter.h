#import "AttachHistogramEfficiency.h"
#import "UniformImmutableTransition.h"
#import "InteractiveEfficiencyAdapter.h"
#import "StandaloneSinkResponder.h"
#import "FactoryIntegrationObserver.h"

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface SubstantialCallbackFilter : NSObject


- (void) compareDuration;

- (void) unbindPublisher;

@end

NS_ASSUME_NONNULL_END
        