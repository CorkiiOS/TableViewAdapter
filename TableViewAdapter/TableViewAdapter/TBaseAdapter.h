//
//  TBaseAdapter.h
//  TableViewAdapter
//
//  Created by 万启鹏 on 2018/12/13.
//  Copyright © 2018 xiaoshentu. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@protocol TBaseAdapterDataSource <NSObject>

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath;

@end

@protocol TBaseAdapterScrollProtocol <NSObject>


@end

@protocol TBaseAdapterEventsProtocol <NSObject>
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath;

@end

@interface TBaseAdapter : NSObject<UITableViewDelegate,UITableViewDataSource>

@property (nonatomic, strong) NSArray *dataArray;

@property (nonatomic, weak) id<TBaseAdapterEventsProtocol> eventsDelegate;
@property (nonatomic, weak) id<TBaseAdapterScrollProtocol> scrollDelegate;
@property (nonatomic, weak) id<TBaseAdapterDataSource> dataDelegate;

@end

NS_ASSUME_NONNULL_END
