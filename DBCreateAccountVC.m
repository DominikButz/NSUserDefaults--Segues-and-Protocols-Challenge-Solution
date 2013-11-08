//
//  DBCreateAccountVC.m
//  NSUserDefaults, Segues and Protocols Challenge Solution
//
//  Created by Dominik Butz on 07.11.13.
//  Copyright (c) 2013 Code Coalition. All rights reserved.
//

#import "DBCreateAccountVC.h"

@interface DBCreateAccountVC ()

@end

@implementation DBCreateAccountVC

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
	// Do any additional setup after loading the view.
}



- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)CAcancelButtonPressed:(UIButton *)sender {
    
    [self.delegate didCancel];
    
}

- (IBAction)CAcreateAccountButtonPressed:(UIButton *)sender {
    
    if (self.areUserEntriesValid) {
        
            
            [[NSUserDefaults standardUserDefaults] setObject:self.CAuserNameTextField.text forKey:USER_NAME];
            [[NSUserDefaults standardUserDefaults] setObject:self.CApasswordTextField.text forKey:USER_PASSWORD];
            [[NSUserDefaults standardUserDefaults] synchronize];
            
            
            [self.delegate didCreateAccount];
            
        }
        
    
    
    else {
        
        UIAlertView *invalidEntryAlert = [[UIAlertView alloc] initWithTitle:@"Invalid entry" message:@"You haven't filled all fields or the passwords you entered are not identical" delegate:nil cancelButtonTitle:@"OK" otherButtonTitles: nil];
        [invalidEntryAlert show];
    }
    
    }
    
#pragma mark - helper method(s)
    
-(BOOL)areUserEntriesValid {
        
        
        if ((self.CAuserNameTextField.text != nil) && (self.CApasswordTextField.text != nil)  && ([self.CApasswordTextField.text isEqualToString:self.CAconfirmPasswordTextField.text])) {
            return YES;
            
            
        }

        else return NO;
    
}
    

@end
