//
//  GTAccountViewController.m
//  Gifter
//
//  Created by Karthik on 22/03/2015.
//
//

#import "GTAddFriendsController.h"

@implementation GTAddFriendsController


- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.navigationController.navigationBarHidden = NO;
    
    self.navigationItem.title = @"Add Friends";
    
    [self.navigationItem
     setBackBarButtonItem:[[UIBarButtonItem alloc]
                           initWithTitle:@""
                           style:UIBarButtonItemStyleDone
                           target:nil
                           action:nil]];
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    self.navigationController.navigationBarHidden = NO;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - User Interaction
- (IBAction)clickAddFriend:(id)sender{
    [self performSegueWithIdentifier:@"GOTO_ADD_FRIEND" sender:self];
}

- (IBAction)clickAddFBFriend:(id)sender{
    [self performSegueWithIdentifier:@"GOTO_ADD_FRIEND" sender:self];
}

- (IBAction)clickAddTwitterFriend:(id)sender{
    [self performSegueWithIdentifier:@"GOTO_ADD_FRIEND" sender:self];
}

- (IBAction)clickAddContactFriend:(id)sender{
    [self performSegueWithIdentifier:@"GOTO_ADD_FRIEND" sender:self];
}

- (IBAction)clickAddGoogleFriend:(id)sender{
    [self performSegueWithIdentifier:@"GOTO_ADD_FRIEND" sender:self];
}



@end