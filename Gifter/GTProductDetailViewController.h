//
//  GTAccountViewController.h
//  Gifter
//
//  Created by Karthik on 22/03/2015.
//
//

#import <UIKit/UIKit.h>
#import <FDTakeController.h>
#import "GTBaseViewController.h"

@interface GTProductDetailViewController : GTBaseViewController <UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout>


@property(nonatomic, weak) IBOutlet UIImageView *imgProductImg;
@property(nonatomic, weak) IBOutlet UILabel *lblItemName;
@property(nonatomic, weak) IBOutlet UILabel *lblItemDescription;
@property(nonatomic, weak) IBOutlet UILabel *lblPrice;

@property(nonatomic, weak) IBOutlet UIButton *btnBuy;

@property(nonatomic, weak) IBOutlet UILabel *lblDescription;
@property(nonatomic, weak) IBOutlet UICollectionView *collectionView;


@end
