//
//  RootSplitViewController.m
//  RootController
//
//  Created by lecochao on 2017/6/17.
//  Copyright © 2017年 lecochao. All rights reserved.
//
#define kWeakSelf(type) __weak typeof(type) weak##type = type;
#define SCREEN_WIDTH ([UIScreen mainScreen].bounds.size.width)
#import "RootSplitViewController.h"
#import "ShpLeftBarViewController.h"
#import "ShpTabBarViewController.h"
#import "ViewController.h"
@interface RootSplitViewController ()
@property(nonatomic ,strong) ShpLeftBarViewController *leftViewController;
@property(nonatomic ,strong) ShpTabBarViewController *tabBarViewController;
@end

@implementation RootSplitViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    _leftViewController = [self.storyboard instantiateViewControllerWithIdentifier:@"ShpLeftBarViewController"];
    _tabBarViewController = [[ShpTabBarViewController alloc]init];
    self.viewControllers = @[_leftViewController,_tabBarViewController];
    self.preferredPrimaryColumnWidthFraction = 100/SCREEN_WIDTH;
    self.preferredDisplayMode = UISplitViewControllerDisplayModeAllVisible;
    kWeakSelf(self)
    _leftViewController.disSelected = ^(NSInteger selectedIndex) {
        // 跳转tabbar
        weakself.tabBarViewController.selectedIndex = selectedIndex;
//        [(ViewController *)weakself.tabBarViewController.viewControllers[selectedIndex] setTxt:[NSString stringWithFormat:@"%ld",selectedIndex]];
    };
    [_leftViewController willTabBarSelected:0];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
