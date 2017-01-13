#import <Cedar/Cedar.h>
#import <Blindside/Blindside.h>
#import "TestBlindsideModule.h"
#import "MeowManager.h"
#import "MeowModel.h"

using namespace Cedar::Matchers;
using namespace Cedar::Doubles;

SPEC_BEGIN(MeowManagerSpec)

describe(@"MeowManager", ^{
    __block MeowManager *subject;
    
    beforeEach(^{
        id <BSInjector, BSBinder> injector = (id <BSInjector, BSBinder>)[Blindside injectorWithModule:[[TestBlindsideModule alloc] init]];
        MeowManager *manager = nice_fake_for([MeowManager class]);
        manager stub_method(@selector(getMeows)).and_return(@[]);
        subject = [injector getInstance:[MeowManager class]];
    });
    
    describe(@"Adding and fetching cats", ^{
        __block NSArray *cats;
        beforeEach(^{
            cats = [subject getMeows];
            spy_on(subject);
        });
        
        it(@"should return an empty array", ^{
            cats should be_empty();
        });
        
        context(@"When adding a single cat", ^{
            __block MeowModel *cat1;
            beforeEach(^{
                cat1 = [[MeowModel alloc] initWithName:@"Garfield" breed:@"Orange"];
                [subject addMeow:cat1];
                cats = [subject getMeows];
            });
            
            it(@"should be able to retrieve our cat", ^{
                cats.count should equal(1);
                cats[0] should be_same_instance_as(cat1);
            });
        });
    });

    
});

SPEC_END
