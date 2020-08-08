//
//  TableViewVC.m
//  Learn-ObjectiveC
//
//  Created by Developer on 8/8/20.
//  Copyright © 2020 RYRA Circuit. All rights reserved.
//

#import "TableViewVC.h"
#import "DemoTVCell.h"

@interface TableViewVC ()

@property (weak, nonatomic) IBOutlet UITableView *tableView;

@end

@implementation TableViewVC

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self setupUI];
}


-(void)setupUI {
    
    self.tableView.dataSource = self;
    self.tableView.delegate = self;
    self.tableView.tableFooterView = [[UIView alloc] init];
}


#pragma mark - TableView methods
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.newsList.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    DemoTVCell *cell = [tableView dequeueReusableCellWithIdentifier: @"DemoTVCell" forIndexPath: indexPath];
    
    NewsItem *item = self.newsList[indexPath.row];
    
    [cell configureCell: item];
    
    return cell; //[[UITableViewCell alloc] init];
}


- (CGFloat)tableView:(UITableView *)tableView estimatedHeightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return 80;
}


- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return UITableViewAutomaticDimension;
}

@end
