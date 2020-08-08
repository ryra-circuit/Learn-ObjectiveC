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


- (IBAction)didTapOnItem:(UIButton *)sender {

    switch (sender.tag) {
        case 1:
            [self pushToViewController:@"DataSource" :@"TableViewVC"];
            break;
            
        case 2:
            [self pushToViewController:@"DataSource" :@"CollectionViewVC"];
            break;
            
        case 3:
            break;
            
        case 4:
            break;
            
        case 5:
            break;
            
        case 6:
            break;
            
        case 7:
            break;
            
        case 8:
            break;
            
        case 9:
            break;
            
        case 10:
            break;
            
        default:
            break;
    }
}

@end
