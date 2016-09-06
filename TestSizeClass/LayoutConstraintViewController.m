//
//  LayoutConstraintViewController.m
//  TestSizeClass
//
//  Created by 张一雄 on 16/3/22.
//  Copyright © 2016年 HuaXiong. All rights reserved.
//

#import "LayoutConstraintViewController.h"

@interface LayoutConstraintViewController ()

@end

@implementation LayoutConstraintViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
   
    
    UIButton *backButton = [UIButton buttonWithType:UIButtonTypeSystem];
    [backButton setTitle:@"返回" forState:UIControlStateNormal];
    [backButton addTarget:self action:@selector(backToLast:) forControlEvents:UIControlEventTouchUpInside];
    backButton.backgroundColor = [UIColor blueColor];
    backButton.exclusiveTouch = YES;
    
    [self.view addSubview:backButton];
     backButton.translatesAutoresizingMaskIntoConstraints = NO;
    
    NSLayoutConstraint *constraint = [NSLayoutConstraint constraintWithItem:backButton attribute:NSLayoutAttributeTop relatedBy:NSLayoutRelationEqual toItem:self.view attribute:NSLayoutAttributeTopMargin multiplier:1.0 constant:20];
    
    
    NSLayoutConstraint *constraint2 = [NSLayoutConstraint constraintWithItem:backButton attribute:NSLayoutAttributeLeading relatedBy:NSLayoutRelationEqual toItem:self.view attribute:NSLayoutAttributeLeadingMargin multiplier:1.0 constant:-10.0];
    
    
    NSLayoutConstraint *constraint3 = [NSLayoutConstraint constraintWithItem:backButton attribute:NSLayoutAttributeTrailing relatedBy:NSLayoutRelationEqual toItem:self.view attribute:NSLayoutAttributeTrailing multiplier:1.0 constant:-320];
    
    
    NSLayoutConstraint *constraint4 = [NSLayoutConstraint constraintWithItem:backButton attribute:NSLayoutAttributeHeight relatedBy:NSLayoutRelationEqual toItem:self.view attribute:NSLayoutAttributeHeight multiplier:0.0 constant:40.0];
    
    
    UIButton *button = [UIButton buttonWithType:UIButtonTypeSystem];
    [button setTitle:@"button2" forState:UIControlStateNormal];
    button.backgroundColor = [UIColor redColor];
    [self.view addSubview:button];
    
    button.translatesAutoresizingMaskIntoConstraints = NO;
    
    NSLayoutConstraint *constraint5 = [NSLayoutConstraint constraintWithItem:button attribute:NSLayoutAttributeTop relatedBy:NSLayoutRelationEqual toItem:backButton attribute:NSLayoutAttributeTop multiplier:1.0 constant:0];
    
    
    NSLayoutConstraint *constraint6 = [NSLayoutConstraint constraintWithItem:button attribute:NSLayoutAttributeLeading relatedBy:NSLayoutRelationEqual toItem:backButton attribute:NSLayoutAttributeTrailing multiplier:1.0 constant:50];
    
    
    NSLayoutConstraint *constraint7 = [NSLayoutConstraint constraintWithItem:button attribute:NSLayoutAttributeHeight relatedBy:NSLayoutRelationEqual toItem:backButton attribute:NSLayoutAttributeHeight multiplier:1.0 constant:0];
    
    
    NSLayoutConstraint *constraint8 = [NSLayoutConstraint constraintWithItem:button attribute:NSLayoutAttributeWidth relatedBy:NSLayoutRelationEqual toItem:backButton attribute:NSLayoutAttributeWidth multiplier:1.0 constant:50];

    [self.view addConstraints:@[constraint, constraint2, constraint3, constraint4, constraint5, constraint6, constraint7, constraint8]];
    
    
    
    UILabel *label = [[UILabel alloc] init];
    label.text = @"测试";
    label.backgroundColor = [UIColor greenColor];
    [self.view addSubview:label];
    label.translatesAutoresizingMaskIntoConstraints = NO;
   
    
    
    
    UITextField *textfield = [[UITextField alloc] init];
    textfield.placeholder = @"请随便输入一些文字";
    textfield.backgroundColor = [UIColor purpleColor];
    [self.view addSubview:textfield];
    textfield.translatesAutoresizingMaskIntoConstraints = NO;
    
    NSString *f1 = @"V:|-100-[label(50)]-|";
    NSString *f2 = @"H:|-10-[label(100)]-|";
    NSArray *constraint9 = [NSLayoutConstraint constraintsWithVisualFormat:f1 options:0 metrics:nil views:NSDictionaryOfVariableBindings(label)];
    [self.view addConstraints:constraint9];
    
    NSArray *constraint10 = [NSLayoutConstraint constraintsWithVisualFormat:f2 options:0 metrics:nil views:NSDictionaryOfVariableBindings(label)];
    [self.view addConstraints:constraint10];
    
    NSString *f3 = @"H:|-10-[textfield]-10-|";
    NSArray *constraint11 = [NSLayoutConstraint constraintsWithVisualFormat:f3 options:0 metrics:nil views:NSDictionaryOfVariableBindings(textfield)];
    [self.view addConstraints:constraint11];
    
    NSString *f4 = @"V:[label]-10-[textfield(44)]";
    NSArray *constraint12 = [NSLayoutConstraint constraintsWithVisualFormat:f4 options:0 metrics:nil views:NSDictionaryOfVariableBindings(label,textfield)];
    [self.view addConstraints:constraint12];
    
    [self isJailBreak];
}


- (BOOL)isJailBreak
{
    if ([[UIApplication sharedApplication] canOpenURL:[NSURL URLWithString:@"cydia://"]]) {
        NSLog(@"The device is jail broken!");
        return YES;
    }
    NSLog(@"The device is NOT jail broken!");
    return NO;
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (void)backToLast:(UIButton *)sender {
    
    [self dismissViewControllerAnimated:YES completion:nil];
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
