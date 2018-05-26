#import "AppDelegate.h"

@interface AppDelegate ()
@property(weak) IBOutlet NSWindow *window;
@end // extension

@implementation AppDelegate

- (void) applicationDidFinishLaunching: (NSNotification *) aNotification {
} // applicationDidFinishLaunching


- (IBAction) autoexpandingTextField: (NSButton *) sender {
    NSLog(@"SNORK");
} // autoexpandingTextField

@end // AppDelegate
