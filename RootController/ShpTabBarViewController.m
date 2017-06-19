//
//  ShpTabBarViewController.m
//  RootController
//
//  Created by lecochao on 2017/6/17.
//  Copyright © 2017年 lecochao. All rights reserved.
//

#import "ShpTabBarViewController.h"
#import "ViewController.h"
@interface ShpTabBarViewController ()

@end

@implementation ShpTabBarViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    NSMutableArray *ary = [NSMutableArray array];
    UIStoryboard *sb = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
    for (int i = 0; i<9; i++) {
        UINavigationController *vc = [sb instantiateViewControllerWithIdentifier:@"ViewController"];
        [ary addObject:vc];
    }
    self.viewControllers = ary;
    [self.tabBar removeFromSuperview];
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
