//
//  ViewController2.m
//  SwipeToBackNavigationController
//
//  Created by liuge on 1/5/15.
//  Copyright (c) 2015 iLegendSoft. All rights reserved.
//

#import "ViewController2.h"

@interface ViewController2 ()

@end

@implementation ViewController2

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor whiteColor];
    
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
    
    [btn setTitle:@"Back" forState:UIControlStateNormal];
    btn.frame = (CGRect){0, 0, 50, 50};
    [btn setTitleColor:[UIColor colorWithRed:0 / 255.f green:145 / 255.f blue:1 alpha:1.f] forState:UIControlStateNormal];
    [btn setTitleColor:[UIColor colorWithRed:30 / 255.f green:180 / 255.f blue:1 alpha:1.f] forState:UIControlStateHighlighted];
    [btn addTarget:self action:@selector(didClickBack) forControlEvents:UIControlEventTouchUpInside];
    
    self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc] initWithCustomView:btn];
    
    
    
    self.navigationItem.title = @"ViewController2";
}

- (void)didClickBack {
    [self.navigationController popViewControllerAnimated:YES];
    NSLog(@"called popViewControllerAnimated");
}

@end
