#import "AppDelegate.h"

#import "AutoExpandingTextFieldWindowController.h"
#import "CenteringImageWindowController.h"

@interface AppDelegate ()
@property(weak) IBOutlet NSWindow *window;
@end // extension

@implementation AppDelegate

- (void) applicationDidFinishLaunching: (NSNotification *) aNotification {
} // applicationDidFinishLaunching


- (IBAction) autoexpandingTextField: (NSButton *) sender {
    AutoExpandingTextFieldWindowController *aetfwc =
        AutoExpandingTextFieldWindowController.newController;
    [aetfwc showWindow: self];
} // autoexpandingTextField


- (IBAction) centeringImage: (NSButton *) sender {
    CenteringImageWindowController *ciwc =
        CenteringImageWindowController.newController;
    [ciwc showWindow: self];

} // centeringImage

@end // AppDelegate
