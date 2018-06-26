//
//  WDMapsTool.m
//  Inkpad
//
//  Created by Ramesh Vel on 21/06/18.
//

#import "WDMapsTool.h"

@implementation WDMapsTool
UIViewController  *mapsController;
-(NSString *) iconName {
    return @"pivot";
}

-(void) activated {
    if (self.delegate != nil) {
        if (!mapsController) {
            mapsController = [self.delegate buildMapView];
        }
        mapsController.modalPresentationStyle = UIModalPresentationPopover;
        [self.delegate runPopoverWithController:mapsController from:self.parent];
    }
    
}
@end
