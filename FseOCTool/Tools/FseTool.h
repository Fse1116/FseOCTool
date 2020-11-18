//
//  FseTool.h
//  FseOCTool
//
//  Created by zbf on 2020/11/18.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import "SystemInfo.h"
NS_ASSUME_NONNULL_BEGIN

@interface FseTool : NSObject




/**
 通过color获取image

 @param color color对象
 @return image对象
 */
+ (UIImage *)getImageWithColor:(UIColor *)color;


/**
 通过color获取image

 @param color color对象
 @param size image尺寸
 @return image对象
 */
+ (UIImage *)getImageWithColor:(UIColor *)color size:(CGSize)size;

/**
 通过约束计算view高度
 
 @param contentView 目标view (宽度为屏幕宽)
 @return 高度
 */
+ (CGFloat)getHeightFromViewWithConstraint:(UIView *)contentView;


/**
 通过约束计算view高度

 @param contentView 目标view
 @param width 指定宽度
 @return 高度
 */
+ (CGFloat)getHeightFromViewWithConstraint:(UIView *)contentView andWidth:(CGFloat)width;


/**
 系统alert

 @param string alert的文本
 */
+ (void)alertString:(NSString *)string;

/**
 获取文字宽度
 
 @param value 文字
 @param font 字体
 @return 宽度
 */
+ (CGFloat)widthForString:(NSString *)value andFont:(UIFont *)font;

/**
 获取设备名称
 
 @return e.g. iPad Air 2
 */
+ (NSString *)deviceModel;


/**
 旋转view

 @param view 目标view
 @param duration 一圈的持续时间
 */
+ (void)rotateViewBegin:(UIView *)view duration:(CFTimeInterval)duration;



/**
 停止旋转view

 @param view 目标view
 */
+ (void)rotateViewEnd:(UIView *)view;

//MARK: date相关

/**
 获取当前时间

 @param format dateformat
 @return format后的时间字符串
 */
+ (NSString *)getNowDateWithFormat:(NSString *)format;

/**
 获取当前时间 默认:yyyy-MM-dd HH:mm:ss

 @return yyyy-MM-dd HH:mm:ss
 */
+ (NSString *)getNowDate;


/**
 随机字符串

 @param count 字符串长度
 @return NSString
 */
+ (NSString *)randomStr:(int)count;


/**
 随机字符串 时间+随机4个字符

 @return NSString
 */
+ (NSString *)randomNameWithDate;




@end

NS_ASSUME_NONNULL_END
