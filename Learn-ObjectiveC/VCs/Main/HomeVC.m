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
    
    [self directToPath:@"Auth" :@"AuthNC"];
}

@end
