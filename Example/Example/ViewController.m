//
//  ViewController.m
//  Example
//
//  Created by Jany on 2017/11/10.
//  Copyright © 2017年 MillionConcept. All rights reserved.
//

#import "ViewController.h"
#import "MapView.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    MapView *map = [[MapView alloc] initWithFrame:self.view.frame];
    [self.view addSubview:map];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
