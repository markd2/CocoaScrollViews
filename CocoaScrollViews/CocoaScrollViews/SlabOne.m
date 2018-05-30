#import "SlabOne.h"

@interface SlabOne ()
@end // extension

@implementation SlabOne

+ (instancetype) gimmeANewOne {
    SlabOne *slabby = [[self alloc] initWithFrame: CGRectZero];
    NSBundle *bundle = NSBundle.mainBundle;

    NSArray *topLevelObjects;

    BOOL result = [bundle loadNibNamed: @"SlabOne"
                          owner: nil
                          topLevelObjects: &topLevelObjects];
    slabby = topLevelObjects.firstObject;

    if (result) {
        NSLog(@"YEY");
    } else {
        NSLog(@"BOO");
    }

    return slabby;

} // gimmeANewOne


- (NSColor *) pointerColor {
    NSColor *color = [NSColor colorWithDeviceRed: (((int)self >> 0) & 0xFF) / 255.0
                              green: (((int)self >> 8) & 0xFF) / 255.0
                              blue: (((int)self >> 16) & 0xFF) / 255.0
                              alpha: 1.0];
    return color;
} // pointerColor


- (void) drawRect: (CGRect) rect {
    [self.pointerColor set];

    NSRectFill(self.bounds);
} // drawRect

- (CGSize) intrinsicContentSize {
    
    return CGSizeMake(400, 300);
} // intrinsicContentSize

@end // SlabOne
