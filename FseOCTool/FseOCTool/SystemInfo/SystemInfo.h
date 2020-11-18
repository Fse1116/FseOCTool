//
//  SystemInfo.h
//  FseOCTool
//
//  Created by zbf on 2020/11/18.
//

#ifndef SystemInfo_h
#define SystemInfo_h


//MARK: 通用高度
#define SCREEN_SIZE         [UIScreen mainScreen].bounds.size
#define SCREEN_WIDTH        [UIScreen mainScreen].bounds.size.width
#define SCREEN_HEIGHT       [UIScreen mainScreen].bounds.size.height
#define NAV_BAR_HEIGHT      (K_iPhoneX ? 88.f : 64.f)
#define TABBAR_HEIGHT       (K_iPhoneX ? 83.f : 49.f)
#define SAFE_TOP_MARGIN     (K_iPhoneX ? 24.f : 0.f)
#define SAFE_BOTTOM_MARGIN  (K_iPhoneX ? 34.f : 0.f)
#define STATUSBAR_HEIGHT    (K_iPhoneX ? 44.f : 20.f)


//MARK: 系统相关
#define KEY_WINDOW      [UIApplication sharedApplication].keyWindow
#define DEVICE_UUID     [[[UIDevice currentDevice] identifierForVendor] UUIDString]
#define SYSTEM_VERSION  [UIDevice currentDevice].systemVersion.floatValue
#define USER_DEFAULTS               [NSUserDefaults standardUserDefaults]
#define APP_DELEGATE                [UIApplication sharedApplication].delegate


//MARK: colors
#define RANDOM_COLOR        RGB(arc4random_uniform(256), arc4random_uniform(256), arc4random_uniform(256))
#define RGB(r, g, b)            RGBA(r, g, b, 1)
#define RGBA(r, g, b, a)        [UIColor colorWithRed:(r)/255.0f green:(g)/255.0f blue:(b)/255.0f alpha:a]
#define RGB_HEX(rgbValue)       RGBA_HEX(rgbValue, 1.0)
#define RGBA_HEX(rgbValue, a)   [UIColor \
                                colorWithRed:((float)((rgbValue & 0xFF0000) >> 16))/255.0 \
                                green:((float)((rgbValue & 0xFF00) >> 8))/255.0 \
                                blue:((float)(rgbValue & 0xFF))/255.0 alpha:a]

//MARK:logs
#ifdef DEBUG
#define NSLog(fmt, ...)      NSLog((fmt), ##__VA_ARGS__);
#else
#define NSLog(...)
#endif

//MARK: short cut
#define IMAGE(imageName)            [UIImage imageNamed:imageName]
#define URL(urlString)              [NSURL URLWithString:urlString]
#define UIColorHex(_hex_)           [UIColor colorWithHexString:((__bridge NSString *)CFSTR(#_hex_))]
#define UIImageNamed(_name_)        [UIImage imageNamed:((__bridge NSString *)CFSTR(#_name_))]
#define NSURLString(_string_)       [NSURL URLWithString:((__bridge NSString *)CFSTR(#_string_))]


//MARK: border and radius
#define VIEW_BORDER_RADIUS(View, Radius, Width, Color)\
\
[View.layer setCornerRadius:(Radius)];\
[View.layer setMasksToBounds:YES];\
[View.layer setBorderWidth:(Width)];\
[View.layer setBorderColor:[Color CGColor]]

#define VIEW_RADIUS(View, Radius)\
\
[View.layer setCornerRadius:(Radius)];\
[View.layer setMasksToBounds:YES]

#define VIEW_BORDER(View, Width, Color)\
\
[View.layer setBorderWidth:(Width)];\
[View.layer setBorderColor:[Color CGColor]];\
[View.layer setMasksToBounds:YES]

#pragma mark - UI

#define K_iPhoneX   ([UIScreen mainScreen].bounds.size.height >= 812.0)



#endif /* SystemInfo_h */
