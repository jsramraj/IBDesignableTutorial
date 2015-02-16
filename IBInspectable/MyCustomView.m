//
//  MyCustomView.m
//  IBInspectable
//
//  Created by Ramaraj Thanga Pandi on 10/02/15.
//  Copyright (c) 2015 Ramaraj. All rights reserved.
//

#import "MyCustomView.h"
#import <QuartzCore/QuartzCore.h>

@implementation MyCustomView

//-(void)awakeFromNib{
//    _circleRadious = 60;
//    _circleFillColor = [UIColor whiteColor];
//    _circleBorderWidth = 2.0;
//
//}

//-(void)prepareForInterfaceBuilder {
//    _circleRadious = 60;
//    _circleFillColor = [UIColor whiteColor];
//    _circleBorderWidth = 2.0;
//    _title = @"Sample";
//}


// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
    if (_title) {
        NSMutableParagraphStyle* style = [[NSMutableParagraphStyle alloc] init];
        [style setAlignment:NSTextAlignmentCenter];

        [_title drawInRect:CGRectMake(0, 0, rect.size.width, 25) withAttributes:@{NSFontAttributeName                : [UIFont boldSystemFontOfSize:20.0],
                                                                                  NSForegroundColorAttributeName     : [UIColor whiteColor],
                                                                                  NSParagraphStyleAttributeName      : style}];
    }
    
    self.clipsToBounds = YES;
    self.layer.cornerRadius = (float)_borderRadious;
    
    
    if (_showImage && _avatar) {
        [_avatar drawInRect:_circleFrame];
    }
    else {
        //Draw the circle
        int radious = (int)_circleRadious;
        int border = (int)_circleBorderWidth;
        CGRect borderRect = CGRectMake(CGRectGetMidX(rect) - (radious / 2.0), CGRectGetMidY(rect) - (radious / 2.0), radious, radious);
        if (!CGRectIsEmpty(_circleFrame)) {
            borderRect = _circleFrame;
        }
        CGContextRef context = UIGraphicsGetCurrentContext();
        CGContextSetRGBStrokeColor(context, 1.0, 1.0, 1.0, 1.0);
        CGContextSetFillColorWithColor(context, _circleFillColor.CGColor);
        CGContextSetLineWidth(context, border);
        CGContextFillEllipseInRect (context, borderRect);
        CGContextStrokeEllipseInRect(context, borderRect);
        CGContextFillPath(context);
    }
    
    [super drawRect:rect];
}

@end
