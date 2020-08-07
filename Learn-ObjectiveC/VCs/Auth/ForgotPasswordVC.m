//
//  ForgotPasswordVC.m
//  Learn-ObjectiveC
//
//  Created by Developer on 8/7/20.
//  Copyright © 2020 RYRA Circuit. All rights reserved.
//

#import "ForgotPasswordVC.h"

@interface ForgotPasswordVC ()

@property (weak, nonatomic) IBOutlet UITextField *tfEmail;

@end

@implementation ForgotPasswordVC

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self setDelegates];
}


- (void)setDelegates {
    self.tfEmail.delegate = self;
}


- (IBAction)didTapOnReset:(UIButton *)sender {
    printf("**** TAPPED RESET");
    
}

@end
