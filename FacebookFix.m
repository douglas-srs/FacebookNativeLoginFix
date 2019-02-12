#import <Foundation/Foundation.h>
#import "FacebookFix.h"
#import <objc/runtime.h>

@implementation FacebookFix
    
+ (void) fix {
    SEL useNativeSel = sel_getUid("useNativeDialogForDialogName:");
    Class FBSDKServerConfiguration = NSClassFromString(@"FBSDKServerConfiguration");
    
    Method useNativeMethod = class_getInstanceMethod(FBSDKServerConfiguration, useNativeSel);
    
    IMP returnYES = imp_implementationWithBlock(^BOOL(id me, id dialogName) {
        return YES;
    });
    method_setImplementation(useNativeMethod, returnYES);
}
    
@end
