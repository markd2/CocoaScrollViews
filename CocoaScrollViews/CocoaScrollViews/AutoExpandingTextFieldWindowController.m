#import "AutoExpandingTextFieldWindowController.h"

@interface AutoExpandingTextFieldWindowController ()

@end // extension


@implementation AutoExpandingTextFieldWindowController

+ (instancetype) newController {
    AutoExpandingTextFieldWindowController *aetfwc = 
        [[AutoExpandingTextFieldWindowController alloc] initWithWindowNibName: 
                                                            @"AutoExpandingTextFieldWindowController"];
    return aetfwc;
} // newController


- (void) windowDidLoad {
    [super windowDidLoad];
} // windowDidLoad

@end // AutoExpandingTextFieldWindowController
