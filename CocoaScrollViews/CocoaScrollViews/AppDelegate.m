#import "AppDelegate.h"

#import "AutoExpandingTextFieldWindowController.h"
#import "CenteringImageWindowController.h"
#import "SimpleSlabsWindowController.h"

@interface AppDelegate ()
@property(weak) IBOutlet NSWindow *window;
@property(strong) NSMutableArray<WindowControllerBase*> *windowControllers;
@end // extension

@implementation AppDelegate

- (void) applicationDidFinishLaunching: (NSNotification *) aNotification {
    self.windowControllers = NSMutableArray.new;
} // applicationDidFinishLaunching


- (IBAction) autoexpandingTextField: (NSButton *) sender {
    AutoExpandingTextFieldWindowController *aetfwc =
        AutoExpandingTextFieldWindowController.newController;
    [aetfwc showWindow: self];
    [self.windowControllers addObject: aetfwc];
} // autoexpandingTextField


- (IBAction) centeringImage: (NSButton *) sender {
    CenteringImageWindowController *ciwc =
        CenteringImageWindowController.newController;
    [ciwc showWindow: self];
    [self.windowControllers addObject: ciwc];

} // centeringImage


- (IBAction) simpleSlabs: (NSButton *) sender {
    SimpleSlabsWindowController *sswc = SimpleSlabsWindowController.newController;
    [sswc showWindow: self];
    [self.windowControllers addObject: sswc];

} // centeringImage

@end // AppDelegate
