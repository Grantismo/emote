//
//  Hexagonbutton.h
//  AfterCare
//
//  Created by Lucas Best on 7/20/13.
//  Copyright (c) 2013 TabSprint. All rights reserved.
//

#import "UIImageCreator.h"
#import "Emotion.h"
#define HEXAGON_WIDTH_HEIGHT_RATIO 0.8675

@interface Hexagonbutton : UIButton

@property (nonatomic, strong) UIColor* color;
@property (nonatomic) float borderColorOffset;
@property (nonatomic) float borderWidth;

@property (nonatomic, strong) NSString* text;

@end
