//
//  GTAccountViewController.h
//  Gifter
//
//  Created by Karthik on 22/03/2015.
//
//

#import <UIKit/UIKit.h>
#import "GTBaseViewController.h"

@interface GTEditProfileController : GTBaseViewController


@property(nonatomic, weak) IBOutlet UITextField *txtFieldBirthDay;
@property(nonatomic, weak) IBOutlet UITextField *txtFieldRelation;
@property(nonatomic, weak) IBOutlet UITextField *txtFieldLocation;
@property(nonatomic, weak) IBOutlet UITextField *txtFieldLikes;
@property(nonatomic, weak) IBOutlet UITextField *txtFieldAddOccasion;
@property(nonatomic, weak) IBOutlet UITextField *txtFieldOccasionNotification;


@end
