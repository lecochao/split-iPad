//
//  XCLayoutButton.h
//  RootController
//
//  Created by lecochao on 2017/6/17.
//  Copyright © 2017年 lecochao. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef NS_ENUM(NSUInteger, XCLayoutButtonStyle) {
    XCLayoutButtonStyleLeftImageRightTitle,
    XCLayoutButtonStyleLeftTitleRightImage,
    XCLayoutButtonStyleUpImageDownTitle,
    XCLayoutButtonStyleUpTitleDownImage
};

/// 重写layoutSubviews的方式实现布局，忽略imageEdgeInsets、titleEdgeInsets和contentEdgeInsets
@interface XCLayoutButton : UIButton

/// 布局方式
@property (nonatomic, assign) XCLayoutButtonStyle layoutStyle;
/// 图片和文字的间距，默认值8
@property (nonatomic, assign) CGFloat midSpacing;
/// 指定图片size
@property (nonatomic, assign) CGSize imageSize;
@end
