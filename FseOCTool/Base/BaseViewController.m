

#import "BaseViewController.h"
#import "UINavigationController+FDFullscreenPopGesture.h"
@interface BaseViewController ()<UIGestureRecognizerDelegate>
{
    
}
@end

@implementation BaseViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    // setup data
    self.view.backgroundColor = [UIColor whiteColor];
    // 所有界面隐藏导航栏,用自定义的导航栏代替
    self.fd_prefersNavigationBarHidden = YES;
    // drawUI
    [self drawTopNaviBar];
    
    [self setUpUI];
}

-(void)setUpUI{
    
}


/// 在旋转界面时重新构造导航条
- (void)drawTopNaviBar {
    if (_topNavBar) {
        [_topNavBar removeFromSuperview];
    }
    // 添加自定义的导航条
    NaviBarView *naviBar = [[NaviBarView alloc] initWithController:self];
    [self.view addSubview:naviBar];
    self.topNavBar = naviBar;
    
    // 自动放一个容器在下面,如果全屏的界面就往 self.view 加子,非全屏的往 container 加
    self.containerView = [[UIView alloc] initWithFrame:CGRectMake(0, NAV_BAR_HEIGHT, ScreenWidth, ScreenHeight - NAV_BAR_HEIGHT)];
    self.containerView.backgroundColor = [UIColor whiteColor];
    [self.view addSubview:self.containerView];
}

// 返回按钮点击操作
- (void)doBackPrev {
    [self.navigationController popViewControllerAnimated:YES];
}
// 右侧按钮点击
-(void)dorightPrev{
    
}




-(void)initBaseNavi :(NSString *)title :(BOOL)isShowLeftBut{
//    [self.topNavBar setBackgroundColor:nomalred];
    [self.topNavBar.navigationBar setBackgroundColor:NaviBarColor];
    [self.topNavBar.statusBar setBackgroundColor:StatusBarColor];
    [self.topNavBar.titleLabel setFont:NaviTitleFont];
    self.topNavBar.titleLabel.textColor = NaviTitleColor;
    self.containerView.frame = XYWH(0, NAV_BAR_HEIGHT, SCREEN_WIDTH, SCREEN_HEIGHT - NAV_BAR_HEIGHT);
    self.naviTitle = title;
    
    if (isShowLeftBut) {
        [self.topNavBar setLeftButImg:@"back"];
        WeakifySelf()
        weakSelf.topNavBar.block = ^(int type) {
            if (type == 0) {
                [weakSelf doBackPrev];
            }
        };
    }
   
}




-(void)initWBaseNavi{
    [self.topNavBar.navigationBar setBackgroundColor:[UIColor clearColor]];
    [self.topNavBar.statusBar setBackgroundColor:[UIColor clearColor]];
    [self.topNavBar setBackgroundColor:[UIColor whiteColor]];
}

-(void)setNaviTitle:(NSString *)naviTitle{
    [self.topNavBar.titleLabel setText:naviTitle];
}



-(void)toWeb:(NSString *)url{
    
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(0.5 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        [[UIApplication sharedApplication]openURL:[NSURL URLWithString:url] options:@{} completionHandler:^(BOOL success) {
        }];
    });
}

-(void)clearColor{
    [self.topNavBar.navigationBar setBackgroundColor:[UIColor clearColor]];
     [self.topNavBar.statusBar setBackgroundColor:[UIColor clearColor]];
    [self.topNavBar setBackgroundColor:[UIColor clearColor]];
}



@end
