//
//  DemoTVCell.m
//  Learn-ObjectiveC
//
//  Created by Developer on 8/8/20.
//  Copyright © 2020 RYRA Circuit. All rights reserved.
//

#import "DemoTVCell.h"

@implementation DemoTVCell

- (void)awakeFromNib {
    [super awakeFromNib];
    
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

}

-(void)configureCell: (NewsItem *)model {
    
    self.lblTitle.text = model.title;
    self.lblContent.text = model.content;
}

@end
