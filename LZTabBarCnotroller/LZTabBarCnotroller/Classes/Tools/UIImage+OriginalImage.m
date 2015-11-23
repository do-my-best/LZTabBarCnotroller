//
//  UIImage+OriginalImage.m
//  LZTabBarCnotroller
//
//  Created by liuzhu on 15/11/22.
//  Copyright © 2015年 liuzhu. All rights reserved.
//

#import "UIImage+OriginalImage.h"

@implementation UIImage (OriginalImage)

//+ (NSCharacterSet *)controlCharacterSet;
//+ (NSCharacterSet *)whitespaceCharacterSet;
//+ (NSCharacterSet *)whitespaceAndNewlineCharacterSet;
//+ (NSCharacterSet *)decimalDigitCharacterSet;
//+ (NSCharacterSet *)letterCharacterSet;
//+ (NSCharacterSet *)lowercaseLetterCharacterSet;
//+ (NSCharacterSet *)uppercaseLetterCharacterSet;
//+ (NSCharacterSet *)nonBaseCharacterSet;
//+ (NSCharacterSet *)alphanumericCharacterSet;
//+ (NSCharacterSet *)decomposableCharacterSet;
//+ (NSCharacterSet *)illegalCharacterSet;
//+ (NSCharacterSet *)punctuationCharacterSet;
//+ (NSCharacterSet *)capitalizedLetterCharacterSet;
//+ (NSCharacterSet *)symbolCharacterSet;
//+ (NSCharacterSet *)newlineCharacterSet

+ (UIImage *)imageNamedForRender:(NSString *)name{
    
    
    UIImage *image = [UIImage imageNamed:name];
    
    return  [image imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
}

@end
