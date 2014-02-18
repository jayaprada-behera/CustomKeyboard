//
//  WAAppDelegate.h
//  CustomKeyboard
//
//  Created by Manoj Katragadda on 12/11/12.
//  Copyright (c) 2012 Manoj Katragadda. All rights reserved.
//

#import <UIKit/UIKit.h>
//#import "WAPopoverViewController.h"

@class WAViewController;

@interface WAAppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (strong, nonatomic) WAViewController *viewController;

@end
