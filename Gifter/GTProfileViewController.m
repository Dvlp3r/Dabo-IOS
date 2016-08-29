//
//  GTAccountViewController.m
//  Gifter
//
//  Created by Karthik on 22/03/2015.
//
//

#import "GTProfileViewController.h"
#import "KTUtility.h"
#import "GTAPIClient.h"
#import "Constants.h"
#import "MDSGeocodingViewController.h"
#import "ChangePasswordViewController.h"
#import <UIImageView+AFNetworking.h>
#import "ExploreProductCell.h"
#import "ProductCollectionCell.h"

@implementation GTProfileViewController
- (void)viewDidLoad {
    [super viewDidLoad];
    self.navigationController.navigationBarHidden = YES;
    
    [[NSUserDefaults standardUserDefaults] setBool:NO forKey:@"isCalledFromLovedOne"];
    [[NSUserDefaults standardUserDefaults] setBool:NO forKey:@"isCalledFromDidLoad"];
    self.navigationItem.title = NSLocalizedString(@"Profile", @"");
    
    [self.navigationItem
      setBackBarButtonItem:[[UIBarButtonItem alloc]
                               initWithTitle:@""
                                       style:UIBarButtonItemStyleDone
                                      target:nil
                                      action:nil]];

    [[self.profileImageView layer]
      setCornerRadius:self.profileImageView.frame.size.width / 2.0];
    [[self.profileImageView layer] setBorderWidth:0.3f];
    [[self.profileImageView layer] setBorderColor:[UIColor lightGrayColor].CGColor];

    self.lblName.text = [NSString stringWithFormat:@"%@ %@",
                                                [[NSUserDefaults standardUserDefaults] stringForKey:@"first_name"],
                                                [[NSUserDefaults standardUserDefaults] stringForKey:@"last_name"]];
    
    

    if ([NSURL URLWithString:[[NSUserDefaults standardUserDefaults]
                           stringForKey:@"image"]]) {
    [[self profileImageView]
        setImageWithURL:[NSURL
                        URLWithString:[[NSUserDefaults standardUserDefaults]
                                          stringForKey:@"image"]]];
    }
    
    
    //Default Wishlist Tab Selected
    [self.btnWishListTab setSelected:YES];
    [self.btnActivityTab setSelected:NO];
    self.tableView.hidden = NO;
    self.collectionView.hidden = YES;
}



-(void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:YES];
    
    self.navigationController.navigationBarHidden = YES;
    
    self.lblName.text = [NSString stringWithFormat:@"%@ %@",
                         [[NSUserDefaults standardUserDefaults] stringForKey:@"first_name"],
                         [[NSUserDefaults standardUserDefaults] stringForKey:@"last_name"]];
    
    [self.tableView reloadData];
    
}

- (void)didReceiveMemoryWarning {
  [super didReceiveMemoryWarning];
  // Dispose of any resources that can be recreated.
}

#pragma mark - User Interaction
- (IBAction)clickTab:(id)sender{
    if (sender == self.btnWishListTab) {
        [self.btnWishListTab setSelected:YES];
        [self.btnActivityTab setSelected:NO];
        
        self.tableView.hidden = NO;
        self.collectionView.hidden = YES;
    }
    else{
        [self.btnWishListTab setSelected:NO];
        [self.btnActivityTab setSelected:YES];
        
        self.tableView.hidden = YES;
        self.collectionView.hidden = NO;
    }
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
  return 255.;
}

- (UITableViewCell *)tableView:(UITableView *)tableView
         cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    NSString *cellIdentifier = [ExploreProductCell cellIdentifier];

    ExploreProductCell *cell = [tableView dequeueReusableCellWithIdentifier:cellIdentifier];

    [cell.imgItem setImage:[UIImage imageNamed:[NSString stringWithFormat:@"sample_product_image%d", (int)indexPath.row % 4]]];
    [cell.btnBuy addTarget:self action:@selector(clickOnBuyOnItem:) forControlEvents:UIControlEventTouchUpInside];
//    UIView *mainContentView = [cell.contentView viewWithTag:111];
//    [[mainContentView layer] setBorderWidth:0.3f];
//    [[mainContentView layer] setBorderColor:[UIColor lightGrayColor].CGColor];
    
  
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
    return CGSizeMake(145., 145.);
}

-(UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath{
    NSString *cellIdentifier = [ProductCollectionCell cellIdentifier];
    
    ProductCollectionCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:cellIdentifier forIndexPath:indexPath];
    [cell.imgItem setImage:[UIImage imageNamed:[NSString stringWithFormat:@"sample_product_image%d", (int)indexPath.row % 4]]];
    
    return cell;
}


@end
