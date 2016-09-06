//
//  ConstraintXIBInCodingViewController.m
//  TestSizeClass
//
//  Created by 张一雄 on 16/3/24.
//  Copyright © 2016年 HuaXiong. All rights reserved.
//

#import "ConstraintXIBInCodingViewController.h"

@interface ConstraintXIBInCodingViewController ()
@property (weak, nonatomic) IBOutlet UILabel *testLabel;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *leadingConstraint;

@end

@implementation ConstraintXIBInCodingViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
//    [self.view removeConstraint:_leadingConstraint];
    _testLabel.translatesAutoresizingMaskIntoConstraints = NO;
    NSString *HSet = @"H:|-50-[_testLabel]-10-|";
    NSArray *h = [NSLayoutConstraint constraintsWithVisualFormat:HSet options:0 metrics:nil views:NSDictionaryOfVariableBindings(_testLabel)];
    [self.view addConstraints:h];
    
    NSString *VSet = @"V:|-50-[_testLabel(44)]-|";
    NSArray *V = [NSLayoutConstraint constraintsWithVisualFormat:VSet options:0 metrics:nil views:NSDictionaryOfVariableBindings(_testLabel)];
    [self.view addConstraints:V];
    
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
