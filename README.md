# ALAlert

ALAlert can post up to 3 buttons for in ObjC. If button name is asigned to nil, it will use "OK" button by default. Buttons are define by an array of String. When a button is pressed, it will dismiss itself and passes UIButton and title to source.


How to use:
import "ALAlertView.h"

[[ALAlert alloc] init] showInView:self.view title:@"Your Title" message:@"Your Message"];

