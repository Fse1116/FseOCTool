//
//  UIButton+FseButton.m
//  FseOCTool
//
//  Created by zbf on 2020/11/18.
//

#import "UIButton+FseButton.h"

@implementation UIButton (FseButton)

+ (UIButton *)buttonWithImage:(UIImage *)image target:(id __nullable)target action:(SEL __nullable)action {
    return [self buttonWithTitle:nil titleColor:nil titleFont:nil image:image target:target action:action];
}

+ (UIButton *)buttonWithTarget:(id __nullable)target action:(SEL __nullable)action {
    return [self buttonWithTitle:nil titleColor:nil titleFont:nil image:nil target:target action:action];
}

+ (UIButton *)buttonWithTitle:(NSString * __nullable)title titleColor:(UIColor * __nullable)color titleFont:(UIFont * __nullable)font image:(UIImage * __nullable)image target:(id __nullable)target action:(SEL __nullable)action {
    
    UIButton *b = [UIButton buttonWithType:UIButtonTypeCustom];
    [b setTitle:title forState:UIControlStateNormal];
    [b setTitleColor:color forState:UIControlStateNormal];
    b.titleLabel.font = font;
    [b addTarget:target action:action forControlEvents:UIControlEventTouchUpInside];
    [b setImage:image forState:UIControlStateNormal];
    
    return b;
}

- (void)setTitleLeftImageRight:(CGFloat)margin {
    
    CGFloat btnImageWidth = self.imageView.bounds.size.width;
    CGFloat btnLabelWidth = self.titleLabel.bounds.size.width;
    
    btnImageWidth += margin;
    btnLabelWidth += margin;
    
    [self setTitleEdgeInsets:UIEdgeInsetsMake(0, -btnImageWidth, 0, btnImageWidth)];
    [self setImageEdgeInsets:UIEdgeInsetsMake(0, btnLabelWidth, 0, -btnLabelWidth)];
}
@end
