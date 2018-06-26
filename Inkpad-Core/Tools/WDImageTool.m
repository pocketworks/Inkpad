//
//  WDImageTool.m
//  Inkpad
//
//  Created by Ramesh Vel on 06/06/18.
//

#import "WDImageTool.h"

@implementation WDImageTool
UIViewController *imageController;
-(NSString *) iconName {
    return @"album.png";
}

-(void) activated {
    if (self.delegate != nil) {
        if (!imageController) {
            imageController = [self.delegate buildImageView];
        }
        imageController.modalPresentationStyle = UIModalPresentationPopover;
        [self.delegate runPopoverWithController:imageController from:self.parent];
    }
    

}
@end
