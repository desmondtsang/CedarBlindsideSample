#import <Cedar/Cedar.h>
#import "MeowActionProvider.h"
#import "TestBlindsideModule.h"

using namespace Cedar::Matchers;
using namespace Cedar::Doubles;

SPEC_BEGIN(MeowActionProviderSpec)

describe(@"MeowActionProvider", ^{
    __block MeowActionProvider *subject;
    
    beforeEach(^{
        id <BSInjector, BSBinder> injector = [Blindside injectorWithModule:[[TestBlindsideModule alloc] init]];
       
    });

    it(@"should give the correct output", ^{
        YES should be_truthy;
    });
});

SPEC_END
