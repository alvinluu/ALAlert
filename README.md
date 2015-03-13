# ALAlert

ALAlert can post up to 3 buttons for in ObjC. If button name is asigned to nil, it will use "OK" button by default. Buttons are define by an array of String. When a button is pressed, it will dismiss itself and passes UIButton and title to source.


How to use:
import "ALAlertView.h"

declare ALAlertView object in header file
ALAlertView *popAlert;

allocate object in ViewDidLoad
popAlert = [[ALAlertView alloc] init];

show your alert
[popAlert showInView:self.view title:@"Your Title" message:@"Your Message"];

show with custom button's name

[popAlert showInView:self.view title:@"Your Title" message:@"Your Message" buttons:[@"Cancel", @"OK"]];

