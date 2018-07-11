//
//  WDCanvasDelegate.h
//  scanprobe
//
//  Created by Ramesh Vel on 01/06/18.
//  Copyright © 2018 Pocketworks. All rights reserved.
//

#import "WDDrawing.h"
#import "WDDrawingController.h"
#import "WDDocument.h"
#import "WDMenuItem.h"
#import "FPPopoverController.h"

@protocol WDCanvasDelegate <NSObject>

@required

- (void) updateTitle;
- (void) editTextObject:(WDText *)text selectAll:(BOOL)selectAll;
- (WDDrawingController*) getDrawingController;
- (UIViewController*) customToolView;
@end
