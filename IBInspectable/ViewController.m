//
//  ViewController.m
//  IBInspectable
//
//  Created by Ramaraj Thanga Pandi on 10/02/15.
//  Copyright (c) 2015 Ramaraj. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    NSURLConnection *connection;
    [connection start];
    
    UIButton *btn;
    
    [btn setBackgroundImage:[UIImage imageNamed:@"orange_bg"] forState:UIControlStateNormal];
    [btn setImage:[UIImage imageNamed:@"arrow"] forState:UIControlStateNormal];
    
    [btn setTitleEdgeInsets:UIEdgeInsetsMake(0, 0, -60, 0)];
    [btn setImageEdgeInsets:UIEdgeInsetsMake(0, 0, 125, 0)];
    
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
