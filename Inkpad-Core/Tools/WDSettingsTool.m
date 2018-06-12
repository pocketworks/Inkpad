//
//  WDSettingsTool.m
//  Inkpad
//
//  Created by Ramesh Vel on 12/06/18.
//

#import "WDSettingsTool.h"
#import "WDStrokeController.h"

@implementation WDSettingsTool
  UIViewController  *strokeController;
-(NSString *) iconName {
    return @"gear";
}

-(void) activated {
    if (self.delegate != nil) {
        if (!strokeController) {
            strokeController = [self.delegate buildSettingsViewForStroke];
        }
        strokeController.modalPresentationStyle = UIModalPresentationPopover;
         [self.delegate runPopoverWithController:strokeController from:self.parent];
    }
    
}

@end
