//
//  CartCell.h
//  Gifter
//
//  Created by Karthik on 22/03/2015.
//
//

#import <UIKit/UIKit.h>

@interface ExploreProductCell : UITableViewCell
@property(nonatomic, weak) IBOutlet UILabel *lblItemName, *lblPrice, *lblItemDescription;
@property(nonatomic, weak) IBOutlet UIImageView *imgItem;
@property(nonatomic, weak) IBOutlet UIButton *btnBuy, *btnLike;

@property(nonatomic, weak) IBOutlet UILabel *lblLikeNote;
@property(nonatomic, weak) IBOutlet UIImageView *imgLike;

+ (NSString *)cellIdentifier;
+ (CGFloat)getHight;
@end
