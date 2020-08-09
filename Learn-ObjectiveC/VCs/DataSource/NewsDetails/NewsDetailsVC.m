//
//  NewsDetailsVC.m
//  Learn-ObjectiveC
//
//  Created by Developer on 8/9/20.
//  Copyright © 2020 RYRA Circuit. All rights reserved.
//

#import "NewsDetailsVC.h"

@interface NewsDetailsVC ()

@end

@implementation NewsDetailsVC

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self setPageInfo];
}


- (void)viewDidLayoutSubviews {
    [super viewDidLayoutSubviews];
    
    [self.tvContent setContentOffset: CGPointZero];
}


- (void)setPageInfo {
    
    self.lblTitle.text = self.newsItem.title;
    self.tvContent.text = self.newsItem.content;
}

@end
