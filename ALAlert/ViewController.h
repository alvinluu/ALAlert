//
//  ViewController.h
//  ALAlert
//
//  Created by Alvin on 2/27/15.
//  Copyright (c) 2015 Alvin. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ALAlertView.h"

@interface ViewController : UIViewController <ALAlertDelegate>
@property (nonatomic, strong) ALAlertView* popAlert;
@property (weak, nonatomic) IBOutlet UILabel *label;

@end

