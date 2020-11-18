//
//  NaviBarView.m
//  BaseViewControllor
//
//  Created by zbf on 2019/5/16.
//  Copyright © 2019 zbf. All rights reserved.
//
#import "BaseViewController.h"
#import "NaviBarView.h"

@implementation NaviBarView {
    __weak BaseViewController *_controller;
    UIView *_rightMenuView;
}

// 初始化
- (instancetype)initWithController:(BaseViewController *)controller {
    _controller = controller;
    
    self = [super initWithFrame:CGRectMake(0, 0, ScreenWidth, NAV_BAR_HEIGHT)];
    self.backgroundColor = [UIColor clearColor];
    self.layer.zPosition = 999999;
    
    //状态栏
    _statusBar = [[UIView alloc] initWithFrame:CGRectMake(0, 0, ScreenWidth, STATUSBAR_HEIGHT)];
    _statusBar.backgroundColor = [UIColor whiteColor];
    [self addSubview:_statusBar];
    
    //导航栏
    _navigationBar = [[UIView alloc] initWithFrame:CGRectMake(0,STATUSBAR_HEIGHT, ScreenWidth, NAV_BAR_HEIGHT-STATUSBAR_HEIGHT)];
    _navigationBar.backgroundColor = [UIColor whiteColor];
    [self addSubview:_navigationBar];
    
    return self;
}

#pragma mark - get

- (UIView *)navigationBar {
    return _navigationBar;
}

- (UIView *)statusBar {
    return _statusBar;
}


-(void)setNaviColor:(UIColor *)color{
    _statusBar.backgroundColor = color;
    _navigationBar.backgroundColor = color;
}

- (void)setNavigationTitle:(NSString *)title {
    self.titleLabel.text = title;
}

-(void)setLeftButImg:(NSString *)img{
    [self.leftBut setImage:IMAGE(img) forState:UIControlStateNormal];
}
-(void)setLeftButTitle:(NSString *)title{
    [self.leftBut setTitle:title forState:UIControlStateNormal];
}

-(void)setRightButImg:(NSString *)img{
    [self.rightBut setImage:IMAGE(img) forState:UIControlStateNormal];
}
-(void)setRightButTitle:(NSString *)title{
    [self.rightBut setTitle:title forState:UIControlStateNormal];
}

#pragma mark - lazy

- (UILabel *)titleLabel {
    if (_titleLabel == nil) {
        _titleLabel = [[UILabel alloc] initWithFrame:CGRectMake(60, 0, ScreenWidth - 120, 44)];
        _titleLabel.textAlignment = NSTextAlignmentCenter;
        [_navigationBar addSubview:_titleLabel];
    }
    return _titleLabel;
}
- (UIButton *)leftBut{
    if (_leftBut == nil) {
        _leftBut = [[UIButton alloc]initWithFrame:XYWH(0,0,40,44)];
        [_navigationBar addSubview:_leftBut];
        [_leftBut addTarget:self action:@selector(leftButAction) forControlEvents:UIControlEventTouchUpInside];
    }
    return _leftBut;
}

- (UIButton *)rightBut{
    if (_rightBut == nil) {
        _rightBut = [[UIButton alloc]initWithFrame:XYWH(ScreenWidth - 40,0,40,44)];
        [_navigationBar addSubview:_rightBut];
        [_rightBut addTarget:self action:@selector(rightButAction) forControlEvents:UIControlEventTouchUpInside];

    }
    return _rightBut;
}

-(void)leftButAction{
    if (self.block) {
        self.block(0);
    }
}
-(void)rightButAction{
    if (self.block) {
        self.block(1);
    }
}


@end
