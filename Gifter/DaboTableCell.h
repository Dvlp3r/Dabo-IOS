//
//  CartCell.h
//  Gifter
//
//  Created by Karthik on 22/03/2015.
//
//

#import <UIKit/UIKit.h>

@interface DaboTableCell : UITableViewCell
@property(nonatomic, weak) IBOutlet UILabel *lblGroupName;
@property(nonatomic, weak) IBOutlet UIButton *btnViewAll;

@property(nonatomic, weak) IBOutlet UICollectionView *collectionViewPeoples;

+ (NSString *)cellIdentifier;
+ (CGFloat)getHight;
@end
