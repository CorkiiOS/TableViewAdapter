//
//  ICTableViewSectionController.m
//  TableViewAdapter
//
//  Created by 万启鹏 on 2018/12/14.
//  Copyright © 2018 xiaoshentu. All rights reserved.
//

#import "ICTableViewSectionController.h"

@implementation ICTableViewSectionController

- (NSInteger)numberOfRows {
    return 0;
}

- (CGFloat)heightForRowAtIndex:(NSInteger)index {
    return 0;
}

- (__kindof UITableViewCell *)cellForRowAtIndex:(NSInteger)index {
    return nil;
}

- (CGFloat)heightForHeader {
    return CGFLOAT_MIN;
}

- (CGFloat)heightForFooter {
    return CGFLOAT_MIN;
}

- (UIView *)sectionHeaderView {
    return nil;
}

- (UIView *)sectionFooterView {
    return nil;
}

- (void)didUpdateToObject:(id)object {}

- (void)didSelectItemAtIndex:(NSInteger)index {}

- (void)didDeselectItemAtIndex:(NSInteger)index {}

- (void)didHighlightItemAtIndex:(NSInteger)index {}

- (void)didUnhighlightItemAtIndex:(NSInteger)index {}
@end
