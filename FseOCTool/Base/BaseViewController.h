


#import <UIKit/UIKit.h>
#import "NaviBarView.h"



@interface BaseViewController : UIViewController
#pragma mark - 导航条相关
@property(nonatomic, copy)NSString *naviTitle;  // 标题
/** 导航条 */
@property(nonatomic, strong)NaviBarView *topNavBar;
/** 内容视图 */
@property (strong, nonatomic) UIView *containerView;


-(void)initBaseNavi :(NSString *)title :(BOOL)isShowLeftBut;

-(void)initWBaseNavi;

-(void)setUpUI;

-(void)clearColor;

-(void)dorightPrev;

-(void)doBackPrev;
@end
