//
//  DemoCVCell.m
//  Learn-ObjectiveC
//
//  Created by Developer on 8/8/20.
//  Copyright © 2020 RYRA Circuit. All rights reserved.
//

#import "DemoCVCell.h"

@implementation DemoCVCell

- (void)awakeFromNib {
    [super awakeFromNib];
    
}

-(void)configureCell: (NewsItem *)model {
    
    self.lblTitle.text = model.title;
    self.lblContent.text = model.content;
}

@end
