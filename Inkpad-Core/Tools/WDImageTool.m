//
//  WDImageTool.m
//  Inkpad
//
//  Created by Ramesh Vel on 06/06/18.
//

#import "WDImageTool.h"

@implementation WDImageTool

-(NSString *) iconName {
    return @"album.png";
}

-(void) activated {
    if (self.delegate != nil) {
        UIImagePickerController *picker = [[UIImagePickerController alloc] init];
        
        picker.sourceType = UIImagePickerControllerSourceTypePhotoLibrary ;
        picker.modalPresentationStyle  = UIModalPresentationPopover;
        picker.delegate = self.delegate;
        [self.delegate runPopoverWithController:picker from:self.parent];
    }

}
@end
