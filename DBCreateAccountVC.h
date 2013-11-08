//
//  DBCreateAccountVC.h
//  NSUserDefaults, Segues and Protocols Challenge Solution
//
//  Created by Dominik Butz on 07.11.13.
//  Copyright (c) 2013 Code Coalition. All rights reserved.
//


#import <UIKit/UIKit.h>
#define USER_NAME @"username"
#define USER_PASSWORD @"password"


@protocol DBCreateAccountVCDelegate <NSObject>

@required

-(void)didCancel;
-(void)didCreateAccount;


@end

@interface DBCreateAccountVC : UIViewController

@property (weak, nonatomic) id <DBCreateAccountVCDelegate> delegate;
@property (strong, nonatomic) IBOutlet UITextField *CAuserNameTextField;
@property (strong, nonatomic) IBOutlet UITextField *CApasswordTextField;
@property (strong, nonatomic) IBOutlet UITextField *CAconfirmPasswordTextField;

- (IBAction)CAcancelButtonPressed:(UIButton *)sender;
- (IBAction)CAcreateAccountButtonPressed:(UIButton *)sender;




@end
