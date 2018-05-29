
#import "CenteringImageWindowController.h"

@interface CenteringImageWindowController ()

@property(strong) IBOutlet NSImageView *imageView;

@end // extension

@implementation CenteringImageWindowController

// Constraints:
//   Center the document view horizontally and vertically in the clip view, >= 0
//   
//   Add top and leading constraints from document view to the clip view
//   Add equal-width and height constraints from document view to the clip view,
//      lower priority (e.g. 400s)
// Reminder:
//   * document view is your big view that gets scrolled
//   * content view is the clip view, what's totally visible.

+ (instancetype) newController {
    CenteringImageWindowController *ciwc = 
        [[CenteringImageWindowController alloc] initWithWindowNibName: 
         @"CenteringImageWindowController"];
    return ciwc;
} // newController


- (void)windowDidLoad {
    [super windowDidLoad];

    NSImage *image = [NSImage imageNamed: @"cantina-band"];
    self.imageView.image = image;
} // windowDidLoad

- (IBAction) toggleBiggieSmalls: (NSButton *) sender {
    NSLog(@"OOGIE");
} // toggleBiggieSmalls

@end // CenteringImageWindowController
