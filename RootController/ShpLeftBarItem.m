//
//  ShpLeftBarItem.m
//  RootController
//
//  Created by lecochao on 2017/6/17.
//  Copyright © 2017年 lecochao. All rights reserved.
//

#import "ShpLeftBarItem.h"

@implementation ShpLeftBarItem

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
    
    UIImageView *bgView = [[UIImageView alloc] initWithFrame:self.bounds];
    bgView.image = [UIImage imageNamed:@"selectedTab"];
    self.selectedBackgroundView = bgView;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];
    // Configure the view for the selected state
}

@end
