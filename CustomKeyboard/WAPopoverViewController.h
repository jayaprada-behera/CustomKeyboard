//
//  WAPopoverViewController.h
//  CustomKeyboard
//
//  Created by Manoj Katragadda on 12/11/12.
//  Copyright (c) 2012 Manoj Katragadda. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface WAPopoverViewController : UIViewController

@property (weak, nonatomic) IBOutlet UIButton *digitButton;

@property(nonatomic,strong)void (^setText)(NSString *);
- (IBAction)buttonTouchUpInside:(id)sender;

@end
