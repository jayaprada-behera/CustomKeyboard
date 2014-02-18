//
//  WAPopoverViewController.m
//  CustomKeyboard
//
//  Created by Manoj Katragadda on 12/11/12.
//  Copyright (c) 2012 Manoj Katragadda. All rights reserved.
//

#import "WAPopoverViewController.h"
#define DELETE_TAG 13
#define COMMA_TAG  12
#define DOT_TAG    11
#define EQUAL_TAG  14

@interface WAPopoverViewController ()
{
    NSMutableArray *digitArray;
    __block  NSString *buttonText;
}
@end

@implementation WAPopoverViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    digitArray = [[NSMutableArray alloc]init];
     buttonText= nil;
    
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)buttonTouchUpInside:(id)sender {
    
    
    UIButton *button = sender;
    NSInteger index = button.tag;
    if (index == DELETE_TAG) {
        
        [digitArray removeLastObject];
        
    }else {
        if (index == COMMA_TAG)
            buttonText = @",";
        else if (index == DOT_TAG)
            buttonText = @".";
        else if (index == EQUAL_TAG)
            buttonText = @"=";
        else{
            buttonText =[NSString stringWithFormat:@"%ld",(long)button.tag];
        }
        [digitArray addObject:buttonText];
    }
    
    if(_setText){
        NSString *str = @"";
        
        for (int i = 0; i < digitArray.count; i++) {
            str =[str stringByAppendingString:[digitArray objectAtIndex:i]];
        }
        _setText(str );
        NSLog(@"%@ str ",str);
    }

    
}

-(void) changeText:(NSString *) str {
    
}

@end
