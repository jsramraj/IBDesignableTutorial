//
//  MyCustomTextField.m
//  IBInspectable
//
//  Created by Ramaraj Thanga Pandi on 16/02/15.
//  Copyright (c) 2015 Ramaraj. All rights reserved.
//

#import "MyCustomTextField.h"
#import <QuartzCore/QuartzCore.h>

@implementation MyCustomTextField

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

-(void)setBorderColor:(UIColor *)borderColor{
    _borderColor = borderColor;
    [self.layer setBorderWidth:2.0f];
    [self.layer setCornerRadius:5.0f];
    [self.layer setBorderColor:borderColor.CGColor];
}

@end
