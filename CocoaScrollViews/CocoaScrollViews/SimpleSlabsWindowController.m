#import "SimpleSlabsWindowController.h"

#import "SlabOne.h"

@interface SimpleSlabsWindowController ()
@property(strong) IBOutlet NSStackView *stackView;
@property(strong) IBOutlet NSButton *addSlabButton;
@end // extension

@implementation SimpleSlabsWindowController

// 1) Added button and scroll view. Attached to borders of the window
// 2) Added stack view to the view inside the clip view (couldn't replace it
//    as a stack view - Xcode barfs itself if I try changing a view to a more
//    specific subview.  Pinned to superview, zeros all around.
// 3) This is an inspector-style thingie, so connect the View to the clip view:
//    top/leading zero.  
//    Width equal to the clip view width. Height >= clip view height, 400 priority

- (void) dealloc {
    NSLog(@"HUH");
} // dealloc

- (void)windowDidLoad {
    [super windowDidLoad];
} // windowDidLoad


- (IBAction)addNewSlab:(NSButton *)sender {
    CGRect frame = CGRectMake(0, 0, 345, 123);
    NSView *slab = [[SlabOne alloc] initWithFrame: frame];
    slab.translatesAutoresizingMaskIntoConstraints = NO;

    [self.stackView addArrangedSubview: slab];

    NSLog(@"SNOOGLE");
} // addNewSlab


@end // SimpleSlabsWindowController
