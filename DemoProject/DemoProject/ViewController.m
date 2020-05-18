//
//  ViewController.m
//  DemoProject
//
//  Created by Mac on 2019/12/20.
//  Copyright © 2019 Mac. All rights reserved.
//

#import "ViewController.h"
#import "FGLog.h"
#import "FGPrintLogViewController.h"

typedef NS_ENUM(NSInteger, NewModuleSign) {
    FGLog_TestModule,
    FGLog_TestModule2,
};

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
//     Do any additional setup after loading the view.
    self.title = @"主页";
    FGLog(FGLog_Home, FGLogLevel_MustShow, @"已进入主页");
    FGLog(FGLog_TestModule, FGLogLevel_MustShow, @"新Module");
    FGLog(FGLog_TestModule2, FGLogLevel_MustShow, @"新Module2");
    
    {
        UIButton *btn = [[UIButton alloc]initWithFrame:CGRectMake(50, 100, 200, 44)];
        [btn setTitle:@"查看日志" forState:UIControlStateNormal];
        btn.backgroundColor = [UIColor blueColor];
        [btn addTarget:self action:@selector(pushToNextVC) forControlEvents:UIControlEventTouchUpInside];
        [self.view addSubview:btn];
    }

}

- (void)pushToNextVC{
    FGPrintLogViewController *vc = [[FGPrintLogViewController alloc]init];
    vc.view.backgroundColor = [UIColor whiteColor];
    [self.navigationController pushViewController:vc animated:YES];
}

@end
