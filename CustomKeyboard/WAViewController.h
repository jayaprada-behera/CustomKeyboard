//
//  WAViewController.h
//  CustomKeyboard
//
//  Created by Manoj Katragadda on 12/11/12.
//  Copyright (c) 2012 Manoj Katragadda. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface WAViewController : UIViewController<UITextFieldDelegate>
@property (nonatomic, unsafe_unretained) IBOutlet UITextField *textField;
@end
