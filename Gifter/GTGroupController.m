//
//  GTAccountViewController.m
//  Gifter
//
//  Created by Karthik on 22/03/2015.
//
//

#import "GTGroupController.h"
#import "KTUtility.h"
#import "GTAPIClient.h"
#import "Constants.h"
#import "MDSGeocodingViewController.h"
#import "ChangePasswordViewController.h"
#import <UIImageView+AFNetworking.h>

@implementation GTGroupController


- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.navigationController.navigationBarHidden = NO;
    
    self.navigationItem.title = @"Friends";
    
    [self.navigationItem
     setBackBarButtonItem:[[UIBarButtonItem alloc]
                           initWithTitle:@""
                           style:UIBarButtonItemStyleDone
                           target:nil
                           action:nil]];
    
    
    UIButton *settingButton = [[UIButton alloc] initWithFrame:CGRectMake(0, 0, 23., 23.)];
    [settingButton setImage:[UIImage imageNamed:@"icon-add-contact"] forState:UIControlStateNormal];
    [settingButton addTarget:self action:@selector(clickAddFriend:) forControlEvents:UIControlEventTouchUpInside];
    self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithCustomView:settingButton];
    
    self.tableView.layer.borderWidth = 0.5f;
    self.tableView.layer.borderColor = GT_LIGHT_DARK.CGColor;
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
- (void)clickAddFriend:(id)sender{
    [self performSegueWithIdentifier:@"GOTO_INVITE" sender:self];
}


#pragma mark - TableView

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView
 numberOfRowsInSection:(NSInteger)section {
    return 5;
}

- (CGFloat)tableView:(UITableView *)tableView
heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return 86.;
}

- (UITableViewCell *)tableView:(UITableView *)tableView
         cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    NSString *cellIdentifier = @"ACTIVITY_TABLE_CELL";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellIdentifier];
    
    UIImageView *imgView = [cell.contentView viewWithTag:100];
    [[imgView layer]
     setCornerRadius:imgView.frame.size.width / 2];
    [imgView setImage:[UIImage imageNamed:@"sample_photo"]];
    
    
    return cell;
}

- (void)tableView:(UITableView *)tableView
didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    
    [self performSegueWithIdentifier:@"GOTO_PROFILE" sender:self];
    
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
}

@end