#import <Cedar/Cedar.h>
#import <Blindside/Blindside.h>
#import "MeowActionProvider.h"
#import "TestBlindsideModule.h"

using namespace Cedar::Matchers;
using namespace Cedar::Doubles;

SPEC_BEGIN(MeowActionProviderSpec)

describe(@"MeowActionProvider", ^{
    __block MeowActionProvider *subject;

    beforeEach(^{
        id <BSInjector, BSBinder> injector = (id <BSInjector, BSBinder>)[Blindside injectorWithModule:[[TestBlindsideModule alloc] init]];
        subject = [injector getInstance:[MeowActionProvider class]];
    });
    
    it(@"should test", ^{
        [[subject actionForItem:@"keyboard"] isEqualToString:@"sleep"] should be_truthy;
    });
});

SPEC_END
