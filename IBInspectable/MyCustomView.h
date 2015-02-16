//
//  MyCustomView.h
//  IBInspectable
//
//  Created by Ramaraj Thanga Pandi on 10/02/15.
//  Copyright (c) 2015 Ramaraj. All rights reserved.
//

#import <UIKit/UIKit.h>

IB_DESIGNABLE
@interface MyCustomView : UIView
{
    
}

@property (strong, nonatomic) NSURLConnection *connection;

@property (nonatomic) IBInspectable NSString *title;
@property (nonatomic) IBInspectable NSInteger borderRadious;

@property (nonatomic) IBInspectable NSInteger circleRadious;
@property (nonatomic) IBInspectable UIColor *circleFillColor;
@property (nonatomic) IBInspectable NSInteger circleBorderWidth;

@property (nonatomic) IBInspectable CGRect circleFrame;
@property (nonatomic) IBInspectable UIImage *avatar;
@property (nonatomic) IBInspectable BOOL showImage;


@end
