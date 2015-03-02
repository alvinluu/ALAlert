//
//  ALAlertView.h
//  ALAlert
//
//  Created by Alvin on 2/27/15.
//  Copyright (c) 2015 Alvin. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol ALAlertDelegate;

@interface ALAlertView : UIViewController
@property (nonatomic,weak) id<ALAlertDelegate> delegate;

@property (weak, nonatomic) IBOutlet UIView *popView;
@property (weak, nonatomic) IBOutlet UILabel *bodyLabel;
@property (weak, nonatomic) IBOutlet UILabel *headerLabel;
@property (weak, nonatomic) IBOutlet UIView *bodyView;
@property (weak, nonatomic) IBOutlet UIView *headerView;
@property (weak, nonatomic) IBOutlet UIView *footerView;

@property (weak, nonatomic) IBOutlet UIButton *btnTwo;
@property (weak, nonatomic) IBOutlet UIButton *btnThree;
@property (weak, nonatomic) IBOutlet UIButton *btnOne;

-(void)showInView:(UIView*)sourceView Title:(NSString*)title Message:(NSString*)message;
-(void)showInView:(UIView*)sourceView Title:(NSString*)title Message:(NSString*)message Buttons:(NSArray*)buttonNames;
@end


@protocol ALAlertDelegate <NSObject>
-(void)buttonClicked:(id)sender Title:(NSString*)title;
@end