
#import "CenteringImageWindowController.h"

@interface CenteringImageWindowController ()

@end // extension

@implementation CenteringImageWindowController

+ (instancetype) newController {
    CenteringImageWindowController *ciwc = 
        [[CenteringImageWindowController alloc] initWithWindowNibName: 
         @"CenteringImageWindowController"];
    return ciwc;
} // newController


- (void)windowDidLoad {
    [super windowDidLoad];
} // windowDidLoad

@end // CenteringImageWindowController
