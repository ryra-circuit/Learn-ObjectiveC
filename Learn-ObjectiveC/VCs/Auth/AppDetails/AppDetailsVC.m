//
//  AppDetailsVC.m
//  Learn-ObjectiveC
//
//  Created by Developer on 8/3/20.
//  Copyright © 2020 RYRA Circuit. All rights reserved.
//

#import "AppDetailsVC.h"

@interface AppDetailsVC ()

@property (weak, nonatomic) IBOutlet UILabel *lblTitle;
@property (weak, nonatomic) IBOutlet UITextView *tvContent;

@end

@implementation AppDetailsVC

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self setPageInfo];
}


- (void)setPageInfo {
    
    switch (self._type) {
        case 1:
            self.lblTitle.text = @"Terms & Conditions";
            self.tvContent.text = @"Content of Terms & Conditions.";
            break;
        case 2:
            self.lblTitle.text = @"Privacy Policy";
            self.tvContent.text = @"Content of Privacy Policy.";
            break;
            
        case 3:
            self.lblTitle.text = @"About Us";
            self.tvContent.text = @"Content of About Us.";
            break;
            
        default:
            break;
    }
}

@end


typedef enum NSUInteger {
    TermsAndConditions = 1,
    PrivacyPolicy = 2,
    AboutUs = 3
} AppDetail;
