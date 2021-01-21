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
            [self showAlertView];
            break;
            
        case 4:
            [self showActionSheet];
            break;
            
        case 5:
            [self showShareSheet];
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


-(void)showAlertView {
    
    UIAlertController *alertController = [UIAlertController alertControllerWithTitle: @"Alert" message: @"This is alert message" preferredStyle: UIAlertControllerStyleAlert];
    
    UIAlertAction *proceedAction = [UIAlertAction actionWithTitle: @"Proceed" style: UIAlertActionStyleDefault handler: nil];
    
    UIAlertAction *deleteAction = [UIAlertAction actionWithTitle: @"Delete" style: UIAlertActionStyleDestructive handler: nil];
    
    UIAlertAction *cancelAction = [UIAlertAction actionWithTitle: @"Cancel" style: UIAlertActionStyleCancel handler: nil];
    
    [alertController addAction: proceedAction];
    [alertController addAction: deleteAction];
    [alertController addAction: cancelAction];
    
    [self presentViewController: alertController animated: YES completion: nil];
}


-(void)showActionSheet {
    
    UIAlertController *alertController = [UIAlertController alertControllerWithTitle: @"Alert" message: @"This is alert message" preferredStyle: UIAlertControllerStyleActionSheet];
    
    UIAlertAction *proceedAction = [UIAlertAction actionWithTitle: @"Proceed" style: UIAlertActionStyleDefault handler: nil];
    
    UIAlertAction *deleteAction = [UIAlertAction actionWithTitle: @"Delete" style: UIAlertActionStyleDestructive handler: nil];
    
    UIAlertAction *cancelAction = [UIAlertAction actionWithTitle: @"Cancel" style: UIAlertActionStyleCancel handler: nil];
    
    [alertController addAction: proceedAction];
    [alertController addAction: deleteAction];
    [alertController addAction: cancelAction];
    
    [self presentViewController: alertController animated: YES completion: nil];
}


-(void)showShareSheet {
    
    NSString *shareString = @"Test content";
    UIImage *shareImage = [UIImage imageNamed:@"Test"];
    NSURL *shareUrl = [NSURL URLWithString: @"https://www.google.com/" relativeToURL: nil];
    
    NSArray *activityItems = [NSArray arrayWithObjects: shareString, shareImage, shareUrl, nil];
    
    UIActivityViewController *activityViewController = [[UIActivityViewController alloc] initWithActivityItems: activityItems applicationActivities: nil];
    
    activityViewController.modalTransitionStyle = UIModalTransitionStyleCoverVertical;

    [self presentViewController: activityViewController animated:YES completion:nil];
}


@end
