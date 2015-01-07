//
//  ViewController.m
//  SwipeToBackNavigationController
//
//  Created by liuge on 1/5/15.
//  Copyright (c) 2015 iLegendSoft. All rights reserved.
//

#import "ViewController.h"
#import "ViewController2.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)didClickGoToViewController2:(id)sender {
    
    ViewController2 *viewController2 = [ViewController2 new];
    
    [self.navigationController pushViewController:viewController2 animated:YES];
    NSLog(@"called pushViewController");
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
