@import Cocoa;

@interface WindowControllerBase: NSWindowController

// Having to give this the nib name is very 90's. I much prefer to hide those details.
+ (instancetype) newController;

@end // WindowControllerBase
