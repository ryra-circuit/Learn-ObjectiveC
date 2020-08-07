//
//  LoginVC.m
//  Learn-ObjectiveC
//
//  Created by Developer on 8/3/20.
//  Copyright © 2020 RYRA Circuit. All rights reserved.
//

#import "LoginVC.h"
#import "AppDetailsVC.h"

@interface LoginVC ()

@property (weak, nonatomic) IBOutlet UITextField *tfEmail;
@property (weak, nonatomic) IBOutlet UITextField *tfPassword;

@end

@implementation LoginVC

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //NSLog(@"**** TEST LOG");
    printf("**** TEST PRINT");
}


- (IBAction)didTapOnaLogin:(UIButton *)sender {
    printf("**** TAPPED LOGIN");
    
    [self pushToHome];
}


- (void)pushToHome {
    printf("**** GO TO HOME WITH BUTTON ACTION");
    
    UIStoryboard *sb = [UIStoryboard storyboardWithName: @"Main" bundle: nil];
    UIViewController *vc = [sb instantiateViewControllerWithIdentifier: @"HomeVC"];
    
    [self.navigationController pushViewController: vc animated: YES];
}


- (IBAction)didTapOnAppDetails:(UIButton *)sender {
    
    [self showAppDetails: sender.tag];
}


- (void)showAppDetails: (NSInteger)type {
    
    UIStoryboard *sb = [UIStoryboard storyboardWithName: @"Auth" bundle: nil];
    AppDetailsVC *vc = [sb instantiateViewControllerWithIdentifier: @"AppDetailsVC"];
    vc._type = type;
    
    [self presentViewController: vc animated: YES completion: nil];
}

@end
