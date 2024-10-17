//
//  FWViewController.m
//  MyFirstFrameworkOfHau19
//
//  Created by nguyenhau2003dz on 10/17/2024.
//  Copyright (c) 2024 nguyenhau2003dz. All rights reserved.
//

#import "FWViewController.h"
#import <MyFirstFrameworkOfHau19/FWLogger.h>
@interface FWViewController ()

@end

@implementation FWViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    FWLogger *logger = [[FWLogger alloc] init];
    [logger printer:@"Hello"];
    
    NSBundle *frameworkBundle = [NSBundle bundleForClass:[FWLogger class]];
    NSString *path = [frameworkBundle pathForResource:@"Resources" ofType:@"bundle"];
    NSBundle *resourcesBundle = [NSBundle bundleWithPath:path];
    UIImage *image = [UIImage imageNamed:@"flower.jpg" inBundle:resourcesBundle compatibleWithTraitCollection:nil];

    NSLog(@"%@", image);

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
