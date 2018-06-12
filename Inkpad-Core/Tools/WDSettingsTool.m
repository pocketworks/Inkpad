//
//  WDSettingsTool.m
//  Inkpad
//
//  Created by Ramesh Vel on 12/06/18.
//

#import "WDSettingsTool.h"
#import "WDStrokeController.h"

@implementation WDSettingsTool
  WDStrokeController  *strokeController;
-(NSString *) iconName {
    return @"gear";
}

-(void) activated {
    if (self.delegate != nil) {
        if (!strokeController) {
            strokeController = [[WDStrokeController alloc] initWithNibName:@"Stroke" bundle:nil];
            strokeController.drawingController = [self.delegate getDrawingController];
        }
        
        UINavigationController *navController = [[UINavigationController alloc] initWithRootViewController:strokeController];
         [self.delegate runPopoverWithController:navController from:self.parent];
    }
    
}

@end
