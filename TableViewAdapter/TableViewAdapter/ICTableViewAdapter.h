//
//  ICTableViewAdapter.h
//  TableViewAdapter
//
//  Created by 万启鹏 on 2018/12/14.
//  Copyright © 2018 xiaoshentu. All rights reserved.
//


#import <UIKit/UIKit.h>

@class ICTableViewSectionController, ICTableViewAdapter;

/**
 数据源
 */
@protocol ICTableViewAdapterDataSource <NSObject>

- (NSArray *)objectsForListAdapter:(ICTableViewAdapter *)listAdapter;

- (ICTableViewSectionController *)listAdapter:(ICTableViewAdapter *)listAdapter sectionControllerForObject:(id)object;


@end


/**
 UI 展示
 */
@protocol ICTableViewAdapterDisplayProtocol <NSObject>


/**
 空白页

 @param listAdapter listAdapter
 @return 空白视图
 */
- (nullable UIView *)emptyViewForListAdapter:(ICTableViewAdapter *)listAdapter;

- (void)beginRefresh:(ICTableViewAdapter *)listAdapter;

- (void)endRefresh:(ICTableViewAdapter *)listAdapter;


@end


NS_ASSUME_NONNULL_BEGIN

@interface ICTableViewAdapter : NSObject

- (instancetype)initViewController:(UIViewController *)viewController;

@property (nonatomic, nullable, weak) UIViewController *viewController;

@property (nonatomic, nullable, weak) UITableView *tableView;

@property (nonatomic, nullable, weak) id <ICTableViewAdapterDataSource> dataSource;
@property (nonatomic, nullable, weak) id <ICTableViewAdapterDisplayProtocol> displayDelegate;

@property (nonatomic, strong) NSMutableArray *sectionControllerArray;

- (void)addSection:(ICTableViewSectionController *)sectionController;

@end

NS_ASSUME_NONNULL_END
