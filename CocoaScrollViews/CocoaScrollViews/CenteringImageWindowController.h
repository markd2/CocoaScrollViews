//
//  CenteringImage.h
//  CocoaScrollViews
//
//  Created by markd on 5/29/18.
//  Copyright © 2018 Borkware. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface CenteringImageWindowController : NSWindowController

// Having to give this the nib name is very 90's. I much prefer to hide those details.
+ (instancetype) newController;

@end // CenteringImageWindowController

