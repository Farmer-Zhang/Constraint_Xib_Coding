//
//  StackViewTestViewController.m
//  TestSizeClass
//
//  Created by 张一雄 on 16/3/21.
//  Copyright © 2016年 HuaXiong. All rights reserved.
//

#import "StackViewTestViewController.h"

@interface StackViewTestViewController ()

@end

@implementation StackViewTestViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
   UILayoutGuide *guide = self.view.layoutMarginsGuide;
    NSLayoutConstraint *constraint =  [self.view.leadingAnchor constraintEqualToAnchor:guide.leadingAnchor];
    constraint.active = true;
    
    
    NSLayoutConstraint *constraint2 =  [self.view.trailingAnchor constraintEqualToAnchor:guide.trailingAnchor];
    constraint2.active = true;
    
     NSLayoutConstraint *constraint3 =  [self.view.heightAnchor constraintEqualToAnchor:guide.widthAnchor multiplier:2.0];
    
    
    
//    NSLayoutConstraint *sonst = [NSLayoutConstraint constraintWithItem:<#(nonnull id)#> attribute:<#(NSLayoutAttribute)#> relatedBy:<#(NSLayoutRelation)#> toItem:<#(nullable id)#> attribute:<#(NSLayoutAttribute)#> multiplier:<#(CGFloat)#> constant:<#(CGFloat)#>]
    
    
//    NSLayoutConstraint *const2 = [NSLayoutConstraint constraintsWithVisualFormat:<#(nonnull NSString *)#> options:<#(NSLayoutFormatOptions)#> metrics:<#(nullable NSDictionary<NSString *,id> *)#> views:<#(nonnull NSDictionary<NSString *,id> *)#>]
    
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

- (IBAction)dimiss:(UIButton *)sender {
    [self dismissViewControllerAnimated:YES completion:nil];
}



@end
