//
//  GTAccountViewController.m
//  Gifter
//
//  Created by Karthik on 22/03/2015.
//
//

#import "GTDaboController.h"
#import "KTUtility.h"
#import "GTAPIClient.h"
#import "Constants.h"
#import "MDSGeocodingViewController.h"
#import "ChangePasswordViewController.h"
#import <UIImageView+AFNetworking.h>
#import "DaboTableCell.h"
#import "PeopleCollectionCell.h"
#import "GTGroupController.h"

@implementation GTDaboController
- (void)viewDidLoad {
    [super viewDidLoad];
    
    //Customize the Navigation Bar
    self.navigationController.navigationBarHidden = NO;

    [self.navigationItem
     setBackBarButtonItem:[[UIBarButtonItem alloc]
                           initWithTitle:@""
                           style:UIBarButtonItemStyleDone
                           target:nil
                           action:nil]];
    
    
    UIButton *searchButton = [[UIButton alloc] initWithFrame:CGRectMake(0, 0, 29., 25.)];
    [searchButton setImage:[UIImage imageNamed:@"icon-search"] forState:UIControlStateNormal];
    self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithCustomView:searchButton];
    
    UIButton *refreshButton = [[UIButton alloc] initWithFrame:CGRectMake(0, 0, 23., 23.)];
    [refreshButton setImage:[UIImage imageNamed:@"icon-update"] forState:UIControlStateNormal];
    self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc] initWithCustomView:refreshButton];

    
    //Initialize the Groups
    self.arrayGroups = @[@"FRIENDS", @"FAMILY", @"CO-WORKERS"];
}



-(void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:YES];
    
    self.navigationController.navigationBarHidden = NO;
    
    [self.tableView reloadData];
    
}

- (void)didReceiveMemoryWarning {
  [super didReceiveMemoryWarning];
  // Dispose of any resources that can be recreated.
}

#pragma mark - User Interaction

-(void)clickViewAll:(id)sender{
    [self performSegueWithIdentifier:@"GOTO_VIEWALL" sender:self];
    
}


#pragma mark - TableView

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
  return 1;
}

- (NSInteger)tableView:(UITableView *)tableView
    numberOfRowsInSection:(NSInteger)section {
  return 3;
}

- (CGFloat)tableView:(UITableView *)tableView
    heightForRowAtIndexPath:(NSIndexPath *)indexPath {
  return [DaboTableCell getHight];
}

- (UITableViewCell *)tableView:(UITableView *)tableView
         cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    NSString *cellIdentifier = [DaboTableCell cellIdentifier];

    DaboTableCell *cell = [tableView dequeueReusableCellWithIdentifier:cellIdentifier];

    cell.lblGroupName.text = [self.arrayGroups objectAtIndex:indexPath.row];
    cell.collectionViewPeoples.delegate = self;
    cell.collectionViewPeoples.dataSource = self;
    [cell.btnViewAll addTarget:self action:@selector(clickViewAll:) forControlEvents:UIControlEventTouchUpInside];
    
  
  return cell;
}

- (void)tableView:(UITableView *)tableView
    didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    
}

#pragma mark - Table Cell User Interaction

- (void)clickOnBuyOnItem:(id)sender{
    [self performSegueWithIdentifier:@"GO_TO_PURCHASE" sender:self];
}



#pragma mark - UICollectionView
-(NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView{
    return 1;
    
}

-(NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section{
    return 10;
}

-(CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath{
    return CGSizeMake(81., 116.);
}

-(UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath{
    NSString *cellIdentifier = [PeopleCollectionCell cellIdentifier];
    
    PeopleCollectionCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:cellIdentifier forIndexPath:indexPath];
    [cell.imgProfile setImage:[UIImage imageNamed:@"sample_photo"]];
    
    return cell;
}

-(void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath{
    [self performSegueWithIdentifier:@"GOTO_PROFILE" sender:self];
}

@end
