//
//  WDImageTool.h
//  Inkpad
//
//  Created by Ramesh Vel on 06/06/18.
//

#import "WDTool.h"
#import "WDCanvasDelegate.h"

@interface WDImageTool : WDTool
@property (nonatomic, strong) id<WDCanvasDelegate> delegate;
@end
