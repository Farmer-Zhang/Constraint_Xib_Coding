//
//  ViewController.m
//  TestSizeClass
//
//  Created by 张一雄 on 16/3/18.
//  Copyright © 2016年 HuaXiong. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

{
    UIScreen *sc;
}
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    
    sc = [UIScreen mainScreen];
    
    sc.brightness = 0.5;
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
