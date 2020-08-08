//
//  CollectionViewVC.m
//  Learn-ObjectiveC
//
//  Created by Developer on 8/8/20.
//  Copyright © 2020 RYRA Circuit. All rights reserved.
//

#import "CollectionViewVC.h"
#import "DemoCVCell.h"

@interface CollectionViewVC ()

@property (weak, nonatomic) IBOutlet UICollectionView *collectionView;

@end

@implementation CollectionViewVC

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self setupUI];
}


-(void)setupUI {
    
    self.collectionView.dataSource = self;
    self.collectionView.delegate = self;
}


#pragma mark - TableView methods
- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView {
    return 1;
}


- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    return self.newsList.count;
}


- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    
    DemoCVCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier: @"DemoCVCell" forIndexPath: indexPath];
    
    NewsItem *item = self.newsList[indexPath.row];
    
    [cell configureCell: item];
    
    return cell; //[[UICollectionViewCell alloc] init];
}


@end
