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
    
    [self setDelegates];
}


- (void)setDelegates {
    self.tfEmail.delegate = self;
    self.tfPassword.delegate = self;
}


- (IBAction)didTapOnForgot:(UIButton *)sender {
    printf("**** TAPPED FORGOT");
    
    [self pushToViewController:@"Auth" :@"ForgotPasswordVC"];
}


- (IBAction)didTapOnLogin:(UIButton *)sender {
    printf("**** TAPPED LOGIN");
    
    [self directToPath:@"Main" :@"HomeNC"];
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


#pragma mark - Handle TextField return action
- (BOOL)textFieldShouldReturn:(UITextField *)textField {
    
    if (textField == self.tfEmail) {
        [self.tfPassword becomeFirstResponder];
    } else if (textField == self.tfPassword) {
        [self.tfPassword resignFirstResponder];
    }
    
    return YES;
}

@end
