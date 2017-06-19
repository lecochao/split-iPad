//
//  ViewController.m
//  RootController
//
//  Created by lecochao on 2017/6/15.
//  Copyright © 2017年 lecochao. All rights reserved.
//

#define kKeyWindow [UIApplication sharedApplication].keyWindow
#import "ViewController.h"
#import "ShpTabbarItem.h"
#import "UIButton+ContentLocation.h"
#import "XCLayoutButton.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    XCLayoutButton *item = [[XCLayoutButton alloc] initWithFrame:CGRectMake(100, 100, 100, 75)];
    [item setImage:[UIImage imageNamed:@"Imagebtn"] forState:UIControlStateNormal];
    [item setTitle:@"弹起" forState:UIControlStateNormal];
    [item setBackgroundColor:[UIColor redColor]];
    item.layoutStyle = XCLayoutButtonStyleUpImageDownTitle;
    [item addTarget:self action:@selector(showModleVc) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:item];
    
    UIButton *item2 = [[UIButton alloc] initWithFrame:CGRectMake(250, 100, 100, 75)];
    [item2 setImage:[UIImage imageNamed:@"Imagebtn"] forState:UIControlStateNormal];
    [item2 setTitle:@"返回" forState:UIControlStateNormal];
    [item2 setBackgroundColor:[UIColor redColor]];
    [item2 setImagePosition:BtnContentLocationTop spacing:8];
    [item2 addTarget:self action:@selector(dismiss) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:item2];
    
    NSLog(@"%@",_lbltxt);
}

- (void)showModleVc
{
    ViewController *vc = [self.storyboard instantiateViewControllerWithIdentifier:@"ViewController"];
    vc.modalPresentationStyle = UIModalPresentationFormSheet;
    vc.preferredContentSize = CGSizeMake(900, 700);
    vc.modalTransitionStyle = UIModalTransitionStyleCoverVertical;
    [self presentViewController:vc animated:YES completion:nil];
}

- (void)dismiss
{
    [self dismissViewControllerAnimated:YES completion:nil];
}

- (void)setTxt:(NSString *)txt
{
    _lbltxt.text = txt;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
