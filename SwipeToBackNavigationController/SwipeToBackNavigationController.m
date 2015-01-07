//
//  SwipeToBackNavigationController.m
//  SwipeToBackNavigationController
//
//  Created by liuge on 1/4/15.
//  Copyright (c) 2015 iLegendSoft. All rights reserved.
//

#import "SwipeToBackNavigationController.h"

@interface SwipeToBackNavigationController ()<UINavigationControllerDelegate, UIGestureRecognizerDelegate>

@end

@implementation SwipeToBackNavigationController
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    __weak typeof (self) weakSelf = self;
    if ([self respondsToSelector:@selector(interactivePopGestureRecognizer)]) {
        // gesture's default delegate is a UINavigationInteractiveTransition object.
        self.interactivePopGestureRecognizer.delegate = nil;
        self.delegate = weakSelf;
    }
}

// If the user immediately tries to swipe back while the push is still in progess, the navigation controller soils itself.
// The solution is disable this gesture and enable it after the viewcontroller is pushed.
- (void)pushViewController:(UIViewController *)viewController animated:(BOOL)animated
{
    if ([self respondsToSelector:@selector(interactivePopGestureRecognizer)]) {
        self.interactivePopGestureRecognizer.enabled = NO;
    }
    
    [super pushViewController:viewController animated:animated];
}


// disable swipe to back gesture on rootviewcontroller, something weird will happen if you don't disable it and swipe on rootviewcontroller.
- (void)navigationController:(UINavigationController *)navigationController didShowViewController:(UIViewController *)viewController animated:(BOOL)animated
{
    if (([self respondsToSelector:@selector(interactivePopGestureRecognizer)] && [self.viewControllers count] > 1)) {
        self.interactivePopGestureRecognizer.enabled = YES;
    }else {
        self.interactivePopGestureRecognizer.enabled = NO;
    }
}

@end
