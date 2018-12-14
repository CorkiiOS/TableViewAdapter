//
//  ICTableViewAdapter+UITableView.m
//  ICTableViewKit
//
//  Created by 王志刚 on 2017/12/5.
//  Copyright © 2017年 王志刚. All rights reserved.
//

#import "ICTableViewAdapter+UITableView.h"
#import "ICTableViewSectionController.h"
@implementation ICTableViewAdapter (UITableView)

- (nonnull UITableViewCell *)tableView:(nonnull UITableView *)tableView cellForRowAtIndexPath:(nonnull NSIndexPath *)indexPath {
    ICTableViewSectionController *sectionController = self.sectionControllerArray[indexPath.section];
    UITableViewCell *cell = [sectionController cellForRowAtIndex:indexPath.row];
    return cell;
}

- (NSInteger)tableView:(nonnull UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    ICTableViewSectionController *sectionController = self.sectionControllerArray[section];
    return [sectionController numberOfRows];
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return self.sectionControllerArray.count;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    ICTableViewSectionController *sectionController = self.sectionControllerArray[indexPath.section];
    CGFloat height = [sectionController heightForRowAtIndex:indexPath.row];
    return height;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    ICTableViewSectionController *sectionController = self.sectionControllerArray[indexPath.section];
    [sectionController didSelectItemAtIndex:indexPath.row];
}

- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section {
    ICTableViewSectionController *sectionController = self.sectionControllerArray[section];
    return [sectionController heightForHeader];
}

- (CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section {
    ICTableViewSectionController *sectionController = self.sectionControllerArray[section];
    return [sectionController heightForFooter];
}

- (UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section {
    ICTableViewSectionController *sectionController = self.sectionControllerArray[section];
    return [sectionController sectionHeaderView];
}

- (UIView *)tableView:(UITableView *)tableView viewForFooterInSection:(NSInteger)section {
    ICTableViewSectionController *sectionController = self.sectionControllerArray[section];
    return [sectionController sectionFooterView];
}

@end
