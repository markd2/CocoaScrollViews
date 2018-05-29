
#import "CenteringImageWindowController.h"

@interface CenteringImageWindowController ()

@property(strong) IBOutlet NSImageView *imageView;

@end // extension

@implementation CenteringImageWindowController

// In General:

// Constraints:
//   Center the document view horizontally and vertically in the clip view, >= 0
//   Add top and leading constraints from document view to the clip view
//   Add equal-width and height constraints from document view to the clip view,
//      lower priority (e.g. 400s)
//
// Reminder:
//   * document view is your big view that gets scrolled
//   * content view is the clip view, what's totally visible.

// This particular case:

// Hierarchy:
//   Window > View > Scroll View > Clip View > Document View > Image View

// 1) Attached scroll view to all sides of the window (fixed top/bottom/leading/trailing)
// 2) image view pinned to document view (0 all around)
// 3) Document view top/leading, equal width/height.  Change priority of w/h to 400
// 4) Document view centered in superview horizontally / vertically, change = to >=
// 5) Run and pray.


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
