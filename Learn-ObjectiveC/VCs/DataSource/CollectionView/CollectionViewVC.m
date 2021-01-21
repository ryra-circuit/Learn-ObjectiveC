//
//  CollectionViewVC.m
//  Learn-ObjectiveC
//
//  Created by Developer on 8/8/20.
//  Copyright © 2020 RYRA Circuit. All rights reserved.
//

#import "CollectionViewVC.h"
#import "DemoCVCell.h"
#import "NewsDetailsVC.h"

@interface CollectionViewVC ()

@property (weak, nonatomic) IBOutlet UICollectionView *collectionView;

@end

@implementation CollectionViewVC

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self setupUI];
    [self initData];
}


-(void)setupUI {
    
    self.sectionInsets = UIEdgeInsetsMake(8, 8, 8, 8);
    self.itemsPerRow = 2;
    
    self.collectionView.dataSource = self;
    self.collectionView.delegate = self;
}


-(void)initData {
    
    // Init data
    NewsItem *item0 = [NewsItem new];
    item0.title = @"News Item 0";
    item0.content = @"News item 0 content";
    item0.createdAt = @"2020-08-08 07:10:50";
    
    NewsItem *item1 = [[NewsItem alloc] init];
    item1.title = @"News Item 1";
    item1.content = @"News item 1 content";
    item1.createdAt = @"2020-08-08 10:30:00";
    
    NewsItem *item2 = [[NewsItem alloc] init];
    item2.title = @"News Item 2";
    item2.content = @"News item 2 content";
    item2.createdAt = @"2020-08-08 11:15:10";
    
    NewsItem *item3 = [[NewsItem alloc] init];
    item3.title = @"News Item 3 having long title to show dynamic table view row height";
    item3.content = @"News item 3 content having long content show dynamic table view cell height";
    item3.createdAt = @"2020-08-08 14:45:35";
    
    // Initilize array
    self.newsList = [[NSMutableArray alloc] init];
    
    // Add object by object
    [self.newsList addObject: item0];
    [self.newsList addObject: item1];
    //[self.newsList addObject: item2];
    //[self.newsList addObject: item3];
    
    // Add objects as array
    NSArray *moreItems = @[item2, item3];
    [self.newsList addObjectsFromArray: moreItems];
    
    // Reaload TableView
    [self.collectionView reloadData];
}


#pragma mark - CollectionView datasource methods
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
    
    return cell;
    
    // Returns empty cell
    //return [[UICollectionViewCell alloc] init];
}


#pragma mark - CollectionView delegate methods
- (void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath {
    
    NewsItem *item = self.newsList[indexPath.row];
    
    [self showNewsDetails: item];
}


- (void)showNewsDetails: (NewsItem *)item {
    
    UIStoryboard *sb = [UIStoryboard storyboardWithName: @"DataSource" bundle: nil];
    NewsDetailsVC *vc = [sb instantiateViewControllerWithIdentifier: @"NewsDetailsVC"];
    vc.newsItem = item;
    
    [self.navigationController pushViewController: vc animated: YES];
}


#pragma mark - CollectionView flowlayout delagate methods
- (CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath {
    
    CGFloat paddingSpace = ((self.sectionInsets.left) * (self.itemsPerRow + 1));
    CGFloat totalWidth = self.collectionView.frame.size.width;
    CGFloat availableWidth = (totalWidth - paddingSpace);
    CGFloat widthPerItem = (availableWidth / self.itemsPerRow);
    CGFloat heightPerItem = widthPerItem;
    
    return CGSizeMake(widthPerItem, heightPerItem);
}


- (UIEdgeInsets)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout insetForSectionAtIndex:(NSInteger)section {
    return self.sectionInsets;
}


- (CGFloat)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout minimumLineSpacingForSectionAtIndex:(NSInteger)section {
    return self.sectionInsets.left;
}

@end
