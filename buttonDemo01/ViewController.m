//
//  ViewController.m
//  buttonDemo01
//
//  Created by Andy on 17/6/15.
//  Copyright (c) 2017年 Andy. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

- (IBAction)up;

- (IBAction)down;

- (IBAction)right;

- (IBAction)left;

@property (weak, nonatomic) IBOutlet UIButton *btnIcon;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)up {
    // 获取按钮的y坐标的值，让y的值递减，然后再把新的值赋给按钮的y坐标
    // 获取头像按钮坐标
    // 获取按钮原始的frame值(这个frame中就包含来按钮的大小和坐标)
    CGRect originFrame = self.btnIcon.frame;
    // 设置y值-10
    originFrame.origin.y -= 10;
    
    // 把新的frame再赋值给按钮
    self.btnIcon.frame = originFrame;
    
    NSLog(@"up");
}

- (IBAction)down {
    CGRect originFrame = self.btnIcon.frame;
    originFrame.origin.y += 10;
    
    self.btnIcon.frame = originFrame;
    NSLog(@"down");
}

- (IBAction)right {
    CGRect originFrame = self.btnIcon.frame;
    originFrame.origin.x += 10;
    
    self.btnIcon.frame = originFrame;
    NSLog(@"right");
}

- (IBAction)left {
    CGRect originFrame = self.btnIcon.frame;
    originFrame.origin.x -= 10;
    
    self.btnIcon.frame = originFrame;
    NSLog(@"left");
}
@end
