//
//  ViewController.m
//  ALAlert
//
//  Created by Alvin on 2/27/15.
//  Copyright (c) 2015 Alvin. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
@synthesize popAlert, label;


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    popAlert = [[ALAlertView alloc] init];
    popAlert.delegate = self;
    
//    [popAlert showInView:self.view Title:@"Hello World!" Message:@"You have the best alert!!!"];
}
- (IBAction)simplyAlert:(id)sender {
    [popAlert showInView:self.view title:@"Hello World" message:@"You have the best alert!!!"];
}
- (IBAction)twoBtnAlert:(id)sender {
    [popAlert showInView:self.view title:@"Hello Big World" message:@"This is your very best alert!!\n\nGoGoGo!!!" buttons:@[@"Back",@"Accept Me Now"]];
    
}
- (IBAction)threeBtnAlert:(id)sender {
    [popAlert showInView:self.view title:@"Hello Big World" message:@"This is your very best alert!!\n\nGoGoGo!!!" buttons:@[@"Back",@"Reset",@"Accept"]];
    
}
- (void)buttonClicked:(id)sender title:(NSString *)title {
    NSLog(@"backfromalert");
    if ([sender isKindOfClass:[UIButton class]]) {
        UIButton* btn = (UIButton*)sender;
        label.text = [NSString stringWithFormat:@"You clicked on %@ button\n in %@ alert",btn.titleLabel.text, title];
    } else {
        label.text = @"You didn't click on a button";
    }
    
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
