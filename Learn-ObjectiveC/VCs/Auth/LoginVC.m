//
//  LoginVC.m
//  Learn-ObjectiveC
//
//  Created by Developer on 8/3/20.
//  Copyright © 2020 RYRA Circuit. All rights reserved.
//

#import "LoginVC.h"
#import "AppDetailsVC.h"
#import "AppDelegate.h"
#import "SceneDelegate.h"

@interface LoginVC ()

@property (weak, nonatomic) IBOutlet UITextField *tfEmail;
@property (weak, nonatomic) IBOutlet UITextField *tfPassword;

@end

@implementation LoginVC

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self setDelegates];
}


- (void)setDelegates {
    self.tfEmail.delegate = self;
    self.tfPassword.delegate = self;
}


- (IBAction)didTapOnForgot:(UIButton *)sender {
    printf("**** TAPPED LOGIN");
    
    [self pushToRetrivePassword];
}

- (void)pushToRetrivePassword {
    printf("**** GO TO FORGOT PASSWORD WITH BUTTON ACTION");
    
    UIStoryboard *sb = [UIStoryboard storyboardWithName: @"Auth" bundle: nil];
    UIViewController *vc = [sb instantiateViewControllerWithIdentifier: @"ForgotPasswordVC"];
    
    [self.navigationController pushViewController: vc animated: YES];
}


- (IBAction)didTapOnLogin:(UIButton *)sender {
    printf("**** TAPPED LOGIN");
    
    [self directToHome];
}

- (void)directToHome {
    printf("**** DIRECT TO HOME WITH BUTTON ACTION");
    
    UIStoryboard *sb = [UIStoryboard storyboardWithName: @"Main" bundle: nil];
    UINavigationController *nc = [sb instantiateViewControllerWithIdentifier: @"HomeNC"];
    nc.modalPresentationStyle = UIModalPresentationOverCurrentContext;
    
    [self presentViewController: nc animated: YES completion: nil];
    
    /*if (@available(iOS 13.0, *)) {
        SceneDelegate *sceneDelegate = (SceneDelegate *)[UIApplication sharedApplication];

        sceneDelegate.window.rootViewController = nc;
        [sceneDelegate.window makeKeyAndVisible];

    } else {
        AppDelegate *appDelegate = (AppDelegate *)[[UIApplication sharedApplication] delegate];

        appDelegate.window.rootViewController = nc;
        [appDelegate.window makeKeyAndVisible];
    }*/
}


- (IBAction)didTapOnAppDetails:(UIButton *)sender {
    printf("**** TAPPED APP DETAILS");
    
    [self showAppDetails: sender.tag];
}

- (void)showAppDetails: (NSInteger)type {
    
    UIStoryboard *sb = [UIStoryboard storyboardWithName: @"Auth" bundle: nil];
    AppDetailsVC *vc = [sb instantiateViewControllerWithIdentifier: @"AppDetailsVC"];
    vc._type = type;
    
    [self presentViewController: vc animated: YES completion: nil];
}

@end
