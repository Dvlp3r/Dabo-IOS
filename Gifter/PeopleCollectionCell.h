//
//  CartCell.h
//  Gifter
//
//  Created by Karthik on 22/03/2015.
//
//

#import <UIKit/UIKit.h>

@interface PeopleCollectionCell : UICollectionViewCell
@property(nonatomic, weak) IBOutlet UILabel *lblName;

@property(nonatomic, weak) IBOutlet UIImageView *imgProfile;

+ (NSString *)cellIdentifier;

@end
