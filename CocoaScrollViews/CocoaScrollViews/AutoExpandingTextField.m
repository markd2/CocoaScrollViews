#import "AutoExpandingTextField.h"

@implementation AutoExpandingTextField

- (NSSize) intrinsicContentSize {
    NSRect frame = [self frame];
    CGFloat width = frame.size.width;
    frame.size.height = CGFLOAT_MAX;
//    frame.size.height = 750.0; // may be floating point issues with FLT_MAX?

    (void)self.stringValue;

    CGFloat height = [self.cell cellSizeForBounds: frame].height;
    NSLog(@"SNORK %@ -> %f", NSStringFromRect(frame), height);
    return NSMakeSize(width, height);

} // intrinsicContentSize


- (void) textDidChange: (NSNotification *) notification {
    [super textDidChange: notification];
    [self invalidateIntrinsicContentSize];
} // textDidChange

@end // AutoExpandingTextField
