//
//  GTAccountViewController.m
//  Gifter
//
//  Created by Karthik on 22/03/2015.
//
//

#import "GTEditProfileController.h"
#import "KTUtility.h"

@implementation GTEditProfileController


- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.navigationController.navigationBarHidden = NO;
    
    //Customize the navigation bar
    self.navigationItem.title = @"Edit Profile";
    
    [self.navigationItem
     setBackBarButtonItem:[[UIBarButtonItem alloc]
                           initWithTitle:@""
                           style:UIBarButtonItemStyleDone
                           target:nil
                           action:nil]];
    
    
    UIBarButtonItem *saveBtn = [[UIBarButtonItem alloc] initWithTitle:NSLocalizedString(@"Save", @"Save")
                                     style:UIBarButtonItemStyleDone
                                    target:self
                                    action:@selector(saveBtn:)];
    
    [saveBtn setTitleTextAttributes:@{
                                        NSFontAttributeName : SKIA_REGULAR(16),
                                        NSForegroundColorAttributeName : GT_RED
                                        } forState:UIControlStateNormal];
    [saveBtn setTintColor:GT_RED];
    self.navigationItem.rightBarButtonItem = saveBtn;
    
    //Custmoize the Text Field
    [self setupUI];
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    self.navigationController.navigationBarHidden = NO;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - UI
- (void)setupUI {
    
    [KTUtility setTextFieldLessBorders:_txtFieldBirthDay
                         withLeftImage:[[UIImage imageNamed:@"icon-birthday"] imageWithRenderingMode:UIImageRenderingModeAlwaysTemplate]];
    [KTUtility setTextFieldLessBorders:_txtFieldRelation
                         withLeftImage:[[UIImage imageNamed:@"icon-relation"] imageWithRenderingMode:UIImageRenderingModeAlwaysTemplate]];
    [KTUtility setTextFieldLessBorders:_txtFieldLocation
                         withLeftImage:[[UIImage imageNamed:@"icon-location"] imageWithRenderingMode:UIImageRenderingModeAlwaysTemplate]];
    [KTUtility setTextFieldLessBorders:_txtFieldLikes
                         withLeftImage:[[UIImage imageNamed:@"icon-likes"] imageWithRenderingMode:UIImageRenderingModeAlwaysTemplate]];
    [KTUtility setTextFieldLessBorders:_txtFieldAddOccasion
                         withLeftImage:[[UIImage imageNamed:@"icon-anniversary"] imageWithRenderingMode:UIImageRenderingModeAlwaysTemplate]];
    [KTUtility setTextFieldLessBorders:_txtFieldOccasionNotification
                         withLeftImage:[[UIImage imageNamed:@"icon-notif"] imageWithRenderingMode:UIImageRenderingModeAlwaysTemplate]];
}


#pragma mark - User Interaction
- (void)saveBtn:(id)sender{
}


@end