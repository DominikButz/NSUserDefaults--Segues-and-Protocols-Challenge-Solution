//
//  DBSignInViewController.h
//  NSUserDefaults, Segues and Protocols Challenge Solution
//
//  Created by Dominik Butz on 07.11.13.
//  Copyright (c) 2013 Code Coalition. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "DBCreateAccountVC.h"


@interface DBSignInViewController : UIViewController <DBCreateAccountVCDelegate>

@property (strong, nonatomic) IBOutlet UITextField *usernameTextField;
@property (strong, nonatomic) IBOutlet UITextField *passwordTextField;

- (IBAction)createAccountButtonPressed:(UIBarButtonItem *)sender;
- (IBAction)loginButtonPressed:(UIButton *)sender;


@end
