//
//  ViewController.h
//  RootController
//
//  Created by lecochao on 2017/6/15.
//  Copyright © 2017年 lecochao. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
@property (weak, nonatomic) IBOutlet UILabel *lbltxt;

- (void)setTxt:(NSString *)txt;
@end

