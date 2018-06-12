//
//  WDSettingsTool.h
//  Inkpad
//
//  Created by Ramesh Vel on 12/06/18.
//
#import "WDTool.h"
#import "WDCanvasDelegate.h"

@interface WDSettingsTool : WDTool
@property (nonatomic, strong) id<WDCanvasDelegate> delegate;

@end
