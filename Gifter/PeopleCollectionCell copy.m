//
//  CartCell.m
//  Gifter
//
//  Created by Karthik on 22/03/2015.
//
//

#import "PeopleCollectionCell.h"

@implementation PeopleCollectionCell

-(void)awakeFromNib{
    self.imgProfile.layer.cornerRadius = self.imgProfile.frame.size.width;
    self.imgProfile.layer.masksToBounds = YES;
}

+ (NSString *)cellIdentifier {
  return @"PEOPLE_COLLECTON_CELL";
}

@end
