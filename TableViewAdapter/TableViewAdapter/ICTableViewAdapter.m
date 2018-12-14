//
//  ICTableViewAdapter.m
//  TableViewAdapter
//
//  Created by 万启鹏 on 2018/12/14.
//  Copyright © 2018 xiaoshentu. All rights reserved.
//

#import "ICTableViewAdapter.h"
@interface ICTableViewAdapter()
@end

@implementation ICTableViewAdapter

- (instancetype)initViewController:(UIViewController *)viewController {
    self = [super init];
    if (self) {
        _viewController = viewController;
        _sectionControllerArray = [NSMutableArray array];
    }
    return self;
}

- (void)setTableView:(UITableView *)tableView {
    if (_tableView != tableView || _tableView.dataSource != self) {
        _tableView = tableView;
//        _registerCellClasses = [NSMutableSet set];
//        _registerNibNames = [NSMutableSet set];
//        _registerHeaderFooterViewClasses = [NSMutableSet set];
//        _registerHeaderFooterViewNibNames = [NSMutableSet set];
        _tableView.dataSource = self;
        _tableView.delegate = self;
        [self updateAfterPublicSettingsChange];
    }
}

- (void)updateAfterPublicSettingsChange {
    
}

- (void)addSection:(ICTableViewSectionController *)sectionController {
    [self.sectionControllerArray addObject:sectionController];
}

@end
