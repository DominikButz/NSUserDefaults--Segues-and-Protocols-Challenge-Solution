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
    
    [self performSegueWithIdentifier:@"toViewController" sender:sender];
     
}

#pragma mark - DBCreateAccountVCDelegate methods

-(void)didCancel{
    
    [self dismissViewControllerAnimated:YES completion:nil];
}

-(void)didCreateAccount {
    
    [self dismissViewControllerAnimated:YES completion:nil];
    
}

@end
