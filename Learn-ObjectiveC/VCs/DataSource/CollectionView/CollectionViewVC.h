//
//  CollectionViewVC.h
//  Learn-ObjectiveC
//
//  Created by Developer on 8/8/20.
//  Copyright © 2020 RYRA Circuit. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "BaseVC.h"
#import "NewsItem.h"

NS_ASSUME_NONNULL_BEGIN

@interface CollectionViewVC : BaseVC <UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout>

@property UIEdgeInsets sectionInsets;
@property int itemsPerRow;

@property NSMutableArray *newsList;

@end

NS_ASSUME_NONNULL_END
