//
//  THContactViewStyle.m
//  ContactPicker
//
//  Created by Dmitry Vorobjov on 12/6/12.
//  Copyright (c) 2012 Tristan Himmelman. All rights reserved.
//

#import "THContactViewStyle.h"

#import "THContactView.h"

#define kHorizontalPadding 3
#define kVerticalPadding 2
#define kCommaHorizontalPadding 4

@interface THContactViewStyle ()

@property (nonatomic, strong) UIColor *originalCommaTextColor;

@end

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
        self.commaTextColor = textColor;
        self.typedTextColor = textColor;
        self.originalCommaTextColor = textColor;
        self.gradientTop = gradientTop;
        self.gradientBottom = gradientBottom;
        self.borderColor = borderColor;
        self.borderWidth = borderWidth;
        self.cornerRadiusFactor = cornerRadiusFactor;
        self.horizontalPadding = kHorizontalPadding;
        self.verticalPadding = kVerticalPadding;
        self.commaHorizontalPadding = kCommaHorizontalPadding;
    }
    return self;
}

- (id)initWithTextColor:(UIColor *)textColor
         commaTextColor:(UIColor *)commaTextColor
            gradientTop:(UIColor *)gradientTop
         gradientBottom:(UIColor *)gradientBottom
            borderColor:(UIColor *)borderColor
            borderWidth:(CGFloat)borderWidth
     cornerRadiusFactor:(CGFloat)cornerRadiusFactor
      horizontalPadding:(CGFloat)horizontalPadding
        verticalPadding:(CGFloat)verticalPadding
 commaHorizontalPadding:(CGFloat)commaHorizontalPadding
{
    if (self = [super init]) {
        self.textColor = textColor;
        self.commaTextColor = commaTextColor;
        self.typedTextColor = commaTextColor;
        self.originalCommaTextColor = commaTextColor;
        self.gradientTop = gradientTop;
        self.gradientBottom = gradientBottom;
        self.borderColor = borderColor;
        self.borderWidth = borderWidth;
        self.cornerRadiusFactor = cornerRadiusFactor;
        self.horizontalPadding = horizontalPadding;
        self.verticalPadding = verticalPadding;
        self.commaHorizontalPadding = commaHorizontalPadding;
    }
    return self;
}

- (void)revertToOriginalCommaTextColor
{
    self.commaTextColor = self.originalCommaTextColor;
}

@end
