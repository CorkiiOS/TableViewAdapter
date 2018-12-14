//
//  ViewController.m
//  TableViewAdapter
//
//  Created by 万启鹏 on 2018/12/13.
//  Copyright © 2018 xiaoshentu. All rights reserved.
//

#import "ViewController.h"
#import "ICTableViewAdapter.h"
#import "ICNormalTableViewSectionController.h"
@interface ViewController ()<ICTableViewAdapterDataSource>
@property (weak, nonatomic) IBOutlet UITableView *tableView;
@property (strong, nonatomic) ICTableViewAdapter *adapter;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    // 静态页面
    
    /*
     
     single  multi
     
     datas
      ||
     
     @[ section section section ]
     
      ||
     
     section    cell for row       ==
                cell height          =====
                cell action               =====
     
     section    cell for row
                cell height                 context  tableview controller
                cell action
                                           =====
     section    cell for row            =====
                cell height        ==
                cell action
      ||
     
     */
    self.adapter = [[ICTableViewAdapter alloc] initViewController:self];
    self.adapter.tableView = self.tableView;
    self.adapter.dataSource = self;
    [self.adapter addSection:[ICNormalTableViewSectionController new]];
    
}
- (NSArray *)objectsForListAdapter:(ICTableViewAdapter *)listAdapter {
    return @[];
}

- (ICTableViewSectionController *)listAdapter:(ICTableViewAdapter *)listAdapter sectionControllerForObject:(id)object {
    return nil;
}

@end
