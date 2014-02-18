//
//  WAViewController.m
//  CustomKeyboard
//
//  Created by Manoj Katragadda on 12/11/12.
//  Copyright (c) 2012 Manoj Katragadda. All rights reserved.
//

#import "WAViewController.h"
#import "WAPopoverViewController.h"

@interface WAViewController ()
{
    UIPopoverController *settingsPopoverVC;
    WAPopoverViewController *vc;

}
@end

@implementation WAViewController
@synthesize textField;

- (void)viewDidLoad
{
    [super viewDidLoad];
    textField.delegate = self;
	// Do any additional setup after loading the view, typically from a nib.
}
-(BOOL)textFieldShouldReturn:(UITextField *)textField{

    return NO;
}
-(void)textFieldDidBeginEditing:(UITextField *)textField1{
    [textField resignFirstResponder];
    if (UI_USER_INTERFACE_IDIOM()==UIUserInterfaceIdiomPad){
        
        //show Popover VC
        
        if (!settingsPopoverVC.isPopoverVisible) {
            vc = [[WAPopoverViewController alloc] initWithNibName:@"WAPopoverViewController" bundle:nil];
            __weak WAPopoverViewController *vcToGo_ = vc;
            
            settingsPopoverVC = [[UIPopoverController alloc] initWithContentViewController:vc];
            
            [settingsPopoverVC setPopoverContentSize:CGSizeMake(257,350.0f)];
            [settingsPopoverVC presentPopoverFromRect:textField1.frame inView:self.view permittedArrowDirections:UIPopoverArrowDirectionAny animated:YES];
            vcToGo_.setText = ^(NSString *string){
                
                [textField  setText: string];
            };
        }
        
    }else{
        NSLog(@"iphone");
    }

}
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
