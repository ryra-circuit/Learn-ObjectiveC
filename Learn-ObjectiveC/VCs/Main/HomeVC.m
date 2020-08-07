//
//  HomeVC.m
//  Learn-ObjectiveC
//
//  Created by Developer on 8/3/20.
//  Copyright © 2020 RYRA Circuit. All rights reserved.
//

#import "HomeVC.h"

@interface HomeVC ()

@end

@implementation HomeVC

- (void)viewDidLoad {
    [super viewDidLoad];
    
}


- (IBAction)didTapOnLogout:(UIBarButtonItem *)sender {
    printf("**** TAPPED LOGOUT");
    
    [self directToLogin];
}

- (void)directToLogin {
    printf("**** DIRECT TO LOGIN WITH BUTTON ACTION");
    
    UIStoryboard *sb = [UIStoryboard storyboardWithName: @"Auth" bundle: nil];
    UINavigationController *nc = [sb instantiateViewControllerWithIdentifier: @"AuthNC"];
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

@end
