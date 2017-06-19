//
//  UIButton+ContentLocation.h
//  RootController
//
//  Created by lecochao on 2017/6/17.
//  Copyright © 2017年 lecochao. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef NS_ENUM(NSInteger, BtnContentLocation) {
    BtnContentLocationLeft = 0,              //图片在左，文字在右，默认
    BtnContentLocationRight = 1,             //图片在右，文字在左
    BtnContentLocationTop = 2,               //图片在上，文字在下
    BtnContentLocationBottom = 3,            //图片在下，文字在上
};

@interface UIButton (ContentLocation)
/**
 *  利用UIButton的titleEdgeInsets和imageEdgeInsets来实现文字和图片的自由排列
 *  注意：这个方法需要在设置图片和文字之后才可以调用，且button的大小要大于 图片大小+文字大小+spacing
 *
 *  @param spacing 图片和文字的间隔
 */
- (void)setImagePosition:(BtnContentLocation)location spacing:(CGFloat)spacing;
@end
