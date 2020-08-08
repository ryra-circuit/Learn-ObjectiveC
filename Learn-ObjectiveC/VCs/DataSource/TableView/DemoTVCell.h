//
//  DemoTVCell.h
//  Learn-ObjectiveC
//
//  Created by Developer on 8/8/20.
//  Copyright © 2020 RYRA Circuit. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "NewsItem.h"

NS_ASSUME_NONNULL_BEGIN

@interface DemoTVCell : UITableViewCell

@property (weak, nonatomic) IBOutlet UILabel *lblTitle;
@property (weak, nonatomic) IBOutlet UILabel *lblContent;

-(void)configureCell: (NewsItem *)model;

@end

NS_ASSUME_NONNULL_END
