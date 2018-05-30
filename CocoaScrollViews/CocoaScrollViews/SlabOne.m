#import "SlabOne.h"

@interface SlabOne ()
@end // extension

@implementation SlabOne

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
