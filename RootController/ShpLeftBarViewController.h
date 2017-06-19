//
//  ShpLeftBarViewController.h
//  RootController
//
//  Created by lecochao on 2017/6/17.
//  Copyright © 2017年 lecochao. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ShpLeftBarViewController : UIViewController
typedef void(^TabBarDidSelected)(NSInteger selectedIndex);
@property(nonatomic ,strong) TabBarDidSelected disSelected;

- (void)updateWith:(NSArray*)imgNames Title:(NSArray*)titles;

- (void)willTabBarSelected:(NSInteger)index;

@end
