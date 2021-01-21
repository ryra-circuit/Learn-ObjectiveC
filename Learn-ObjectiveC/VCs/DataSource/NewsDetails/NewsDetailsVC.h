//
//  NewsDetailsVC.h
//  Learn-ObjectiveC
//
//  Created by Developer on 8/9/20.
//  Copyright © 2020 RYRA Circuit. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "BaseVC.h"
#import "NewsItem.h"

NS_ASSUME_NONNULL_BEGIN

@interface NewsDetailsVC : BaseVC

@property (weak, nonatomic) IBOutlet UILabel *lblTitle;
@property (weak, nonatomic) IBOutlet UITextView *tvContent;

@property NewsItem *newsItem;

@end

NS_ASSUME_NONNULL_END
