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

@interface GTDaboController : GTBaseViewController <UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout>

@property(nonatomic, weak) IBOutlet UITableView *tableView;

@property(nonatomic, strong) NSArray *arrayGroups;


@end
