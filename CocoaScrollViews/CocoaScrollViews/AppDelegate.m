#import "AppDelegate.h"

#import "AutoExpandingTextFieldWindowController.h"

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

@end // AppDelegate
