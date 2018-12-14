//
//  ICTableViewSectionController.h
//  TableViewAdapter
//
//  Created by 万启鹏 on 2018/12/14.
//  Copyright © 2018 xiaoshentu. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface ICTableViewSectionController : NSObject

@property (nonatomic, assign, readonly) NSInteger section;

@property (nonatomic, weak, readwrite) UIViewController *viewController;

//@property (nonatomic, weak, readwrite) id <ICTableViewContext> tableViewContext;

- (NSInteger)numberOfRows;

- (CGFloat)heightForRowAtIndex:(NSInteger)index;

- (__kindof UITableViewCell *)cellForRowAtIndex:(NSInteger)index;

- (CGFloat)heightForHeader;

- (CGFloat)heightForFooter;

- (UIView *)sectionHeaderView;

- (UIView *)sectionFooterView;

- (void)didUpdateToObject:(id)object;

- (void)didSelectItemAtIndex:(NSInteger)index;

- (void)didDeselectItemAtIndex:(NSInteger)index;

- (void)didHighlightItemAtIndex:(NSInteger)index;

- (void)didUnhighlightItemAtIndex:(NSInteger)index;
@end

NS_ASSUME_NONNULL_END
