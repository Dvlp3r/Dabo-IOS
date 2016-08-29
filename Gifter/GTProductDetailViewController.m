//
//  GTAccountViewController.m
//  Gifter
//
//  Created by Karthik on 22/03/2015.
//
//

#import "GTProductDetailViewController.h"
#import "KTUtility.h"
#import "GTAPIClient.h"
#import "Constants.h"
#import "MDSGeocodingViewController.h"
#import "ChangePasswordViewController.h"
#import <UIImageView+AFNetworking.h>

#import "ProductCollectionCell.h"

@implementation GTProductDetailViewController
- (void)viewDidLoad {
    [super viewDidLoad];
    self.navigationController.navigationBarHidden = YES;
    self.edgesForExtendedLayout = UIRectEdgeNone;
    
    //Customize the buy button
    [KTUtility setRoundedButtonUI:self.btnBuy];
    
    //Set navigation Back Button
    [self.navigationItem
      setBackBarButtonItem:[[UIBarButtonItem alloc]
                               initWithTitle:@""
                                       style:UIBarButtonItemStyleDone
                                      target:nil
                                      action:nil]];

}



-(void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:YES];
    
    self.navigationController.navigationBarHidden = YES;
    
}

- (void)didReceiveMemoryWarning {
  [super didReceiveMemoryWarning];
  // Dispose of any resources that can be recreated.
}

#pragma mark - User Interaction
- (IBAction)clickBackButton:(id)sender{
    [self.navigationController popViewControllerAnimated:YES];
}

#pragma mark - UICollectionView
-(NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView{
    return 1;
    
}

-(NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section{
    return 4;
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
