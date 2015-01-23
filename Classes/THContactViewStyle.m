//
//  THContactViewStyle.m
//  ContactPicker
//
//  Created by Dmitry Vorobjov on 12/6/12.
//  Copyright (c) 2012 Tristan Himmelman. All rights reserved.
//

#import "THContactViewStyle.h"

#import "THContactView.h"

@implementation THContactViewStyle

- (id)initWithTextColor:(UIColor *)textColor
            gradientTop:(UIColor *)gradientTop
         gradientBottom:(UIColor *)gradientBottom
            borderColor:(UIColor *)borderColor
            borderWidth:(CGFloat)borderWidth
     cornerRadiusFactor:(CGFloat)cornerRadiusFactor
{
    if (self = [super init]) {
        self.textColor = textColor;
        self.gradientTop = gradientTop;
        self.gradientBottom = gradientBottom;
        self.borderColor = borderColor;
        self.borderWidth = borderWidth;
        self.cornerRadiusFactor = cornerRadiusFactor;
        self.horizontalPadding = kHorizontalPadding;
        self.verticalPadding = kVerticalPadding;
    }
    return self;
}

- (id)initWithTextColor:(UIColor *)textColor
            gradientTop:(UIColor *)gradientTop
         gradientBottom:(UIColor *)gradientBottom
            borderColor:(UIColor *)borderColor
            borderWidth:(CGFloat)borderWidth
     cornerRadiusFactor:(CGFloat)cornerRadiusFactor
      horizontalPadding:(CGFloat)horizontalPadding
        verticalPadding:(CGFloat)verticalPadding
{
    if (self = [super init]) {
        self.textColor = textColor;
        self.gradientTop = gradientTop;
        self.gradientBottom = gradientBottom;
        self.borderColor = borderColor;
        self.borderWidth = borderWidth;
        self.cornerRadiusFactor = cornerRadiusFactor;
        self.horizontalPadding = horizontalPadding;
        self.verticalPadding = verticalPadding;
    }
    return self;
}

@end
