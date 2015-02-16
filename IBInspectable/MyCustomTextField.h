//
//  MyCustomTextField.h
//  IBInspectable
//
//  Created by Ramaraj Thanga Pandi on 16/02/15.
//  Copyright (c) 2015 Ramaraj. All rights reserved.
//

#import <UIKit/UIKit.h>

IB_DESIGNABLE @interface MyCustomTextField : UITextField
{
    
}

@property (nonatomic) IBInspectable UIColor *borderColor;

@end
