#import "WindowControllerBase.h" // are belong to us

@implementation WindowControllerBase

+ (instancetype) newController {
    WindowControllerBase *ab2u = [[self alloc] initWithWindowNibName: self.className];
    return ab2u;

} // newController

@end // WindowControllerBase
