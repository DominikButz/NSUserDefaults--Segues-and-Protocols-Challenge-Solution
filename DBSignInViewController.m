//
//  DBSignInViewController.m
//  NSUserDefaults, Segues and Protocols Challenge Solution
//
//  Created by Dominik Butz on 07.11.13.
//  Copyright (c) 2013 Code Coalition. All rights reserved.
//

#import "DBSignInViewController.h"
#import "DBCreateAccountVC.h"

@interface DBSignInViewController ()

@end

@implementation DBSignInViewController

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

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    
        if ([segue.destinationViewController isKindOfClass:[DBCreateAccountVC class]]) {
            DBCreateAccountVC *createAccountVC = segue.destinationViewController;
            createAccountVC.delegate = self;
            
            
        }
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)createAccountButtonPressed:(UIBarButtonItem *)sender {
    
    [self performSegueWithIdentifier:@"toCreateAccountViewController" sender:sender];
    
    
    
    
}

- (IBAction)loginButtonPressed:(UIButton *)sender {
    
    if ([NSUserDefaults standardUserDefaults] != nil) {
        
        NSString *username = [[NSUserDefaults standardUserDefaults] objectForKey:USER_NAME];
        NSString *password =[[NSUserDefaults standardUserDefaults] objectForKey:USER_PASSWORD];
        
        if ([self.usernameTextField.text isEqualToString:username] && [self.passwordTextField.text isEqualToString:password]) {
            
            [self performSegueWithIdentifier:@"toViewController" sender:sender];
        }
        
        else {
            
            
            UIAlertView *userCredentialsWrong = [[UIAlertView alloc] initWithTitle:@"Login failed" message:@"Login name and/or password incorrect, please re-enter!" delegate:nil cancelButtonTitle:@"OK" otherButtonTitles: nil];
            [userCredentialsWrong show];
            
        }
        
        
    }
    else {
        
        UIAlertView *noUserCreated = [[UIAlertView alloc] initWithTitle:@"Login failed" message:@"No user login information found, please create a user account first!" delegate:nil cancelButtonTitle:@"OK" otherButtonTitles: nil];
        [noUserCreated show];
        
    }
    
     
}

#pragma mark - DBCreateAccountVCDelegate methods

-(void)didCancel{
    
    [self dismissViewControllerAnimated:YES completion:nil];
}

-(void)didCreateAccount {
    
    [self dismissViewControllerAnimated:YES completion:nil];
    
}

@end
