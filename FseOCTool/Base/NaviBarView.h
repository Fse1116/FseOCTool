//
//  NaviBarView.h
//  BaseViewControllor
//
//  Created by zbf on 2019/5/16.
//  Copyright © 2019 zbf. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef void (^NaviButBlock) (int);


@class BaseViewController;

#define NaviTitleFont [UIFont systemFontOfSize:17] //导航栏标题字体
#define NaviTitleColor [UIColor blackColor]         //导航栏标题颜色

#define NaviBarColor   [UIColor whiteColor]         //标题栏颜色
#define StatusBarColor [UIColor whiteColor]         //状态栏颜色



#define ScreenWidth [UIScreen mainScreen].bounds.size.width
#define ScreenHeight [UIScreen mainScreen].bounds.size.height

/**
 导航条
 */
@interface NaviBarView : UIView

@property (retain, nonatomic) UIView *statusBar;    // 状态栏
@property (retain, nonatomic) UIView *navigationBar;// 导航条
@property (retain, nonatomic) UILabel *titleLabel;  // 标题
@property (nonatomic, strong) UIView *lineView;     // 底部分割线

@property (retain, nonatomic) UIButton *leftBut;    //  左侧按钮
@property (retain, nonatomic) UIButton *rightBut;   // 右侧按钮

@property (nonatomic,strong) NaviButBlock block;


- (instancetype)initWithController:(BaseViewController *)controller;

-(void)setLeftButImg:(NSString *)img;
-(void)setLeftButTitle:(NSString *)title;
-(void)setRightButImg:(NSString *)img;
-(void)setRightButTitle:(NSString *)title;

@end
