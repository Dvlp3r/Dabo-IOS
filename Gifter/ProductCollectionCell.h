//
//  CartCell.h
//  Gifter
//
//  Created by Karthik on 22/03/2015.
//
//

#import <UIKit/UIKit.h>

@interface ProductCollectionCell : UICollectionViewCell
@property(nonatomic, weak) IBOutlet UILabel *lblItemName, *lblPrice;
@property(nonatomic, weak) IBOutlet UIImageView *imgItem;

+ (NSString *)cellIdentifier;

@end
