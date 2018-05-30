#import "Application.h"

@implementation Application

- (BOOL)sendAction:(SEL)action to:(nullable id)target from:(nullable id)sender {
    BOOL result = [super sendAction: action
                         to: target
                         from: sender];
    return result;
} // sendAction

@end // Application
