//
//  CustomNavigationController.m
//  CustomNavigationBackButton
//
//  Created by fanpyi on 4/12/15.
//  Copyright © 2015 fanpyi. All rights reserved.
//

#import "CustomNavigationController.h"

#define ColorFromRGB16HEX(value) [UIColor colorWithRed:(float)((value&0xFF0000)>>16)/0xff green:(float)((value&0x00FF00)>>8)/0xff blue:(float)(value&0x0000FF)/0xff alpha:1.0]

@interface CustomNavigationController ()

@end

@implementation CustomNavigationController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [[UIBarButtonItem appearance] setBackButtonTitlePositionAdjustment:UIOffsetMake(-10000,-10000) forBarMetrics:UIBarMetricsDefault];
     UIImage *image = [[UIImage imageNamed:@"goback"] resizableImageWithCapInsets:UIEdgeInsetsMake(0, 30, 0, 0)];
    if ([self.navigationBar respondsToSelector:@selector(setBackIndicatorImage:)]) {
        [[UINavigationBar appearance] setBackIndicatorImage:image];
        [[UINavigationBar appearance] setBackIndicatorTransitionMaskImage:image];
        [[UINavigationBar appearance]setTintColor:ColorFromRGB16HEX(0xff4400)];
    }else{
        [[UIBarButtonItem appearance]setBackButtonBackgroundImage:image forState:UIControlStateNormal barMetrics:UIBarMetricsDefault];
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
