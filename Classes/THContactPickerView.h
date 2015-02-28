//
//  ContactPickerTextView.h
//  ContactPicker
//
//  Created by Tristan Himmelman on 11/2/12.
//  Copyright (c) 2012 Tristan Himmelman. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "THContactView.h"

@class THContactPickerView;

@protocol THContactPickerDelegate <NSObject>

- (void)contactPickerTextViewDidChange:(NSString *)textViewText;
- (void)contactPickerDidRemoveContact:(id)contact;
- (void)contactPickerWillResize:(THContactPickerView *)contactPickerView toSize:(CGSize)size;
- (void)contactPickerDidResize:(THContactPickerView *)contactPickerView;
- (BOOL)contactPickerTextFieldShouldReturn:(UITextField *)textField;
- (void)contactPickerDidBecomeFirstResponder:(THContactPickerView *)contactPickerView;

@end

@interface THContactPickerView : UIView <UITextViewDelegate, THContactViewDelegate, UIScrollViewDelegate, UITextInputTraits>

@property (nonatomic, strong) THContactView *selectedContactView;
@property (nonatomic, assign) IBOutlet id <THContactPickerDelegate>delegate;

@property (nonatomic, assign) BOOL limitToOne;				// only allow the ContactPicker to add one contact
@property (nonatomic, assign) CGFloat verticalPadding;		// amount of padding above and below each contact view
@property (nonatomic, assign) NSInteger maxNumberOfLines;	// maximum number of lines the view will display before scrolling
@property (nonatomic, strong) UIFont *font;

@property (nonatomic, strong) NSMutableArray *contactKeys;      // an ordered set of the keys placed in the contacts dictionary

@property (nonatomic, readonly) NSString *textViewText;

- (void)addContact:(id)contact withName:(NSString *)name;
- (void)addContact:(id)contact withName:(NSString *)name animated:(BOOL)animated;
- (BOOL)contactAlreadyExists:(id)contact;
- (void)removeContact:(id)contact;
- (void)removeAllContacts;
- (void)resignFirstResponder;

// View Customization
- (void)setContactViewStyle:(THContactViewStyle *)color selectedStyle:(THContactViewStyle *)selectedColor;
- (void)setPlaceholderLabelText:(NSString *)text;
- (void)setPlaceholderLabelTextColor:(UIColor *)color;
- (void)setPromptLabelText:(NSString *)text;
- (void)setPromptLabelTextColor:(UIColor *)color;
- (void)setFont:(UIFont *)font;
- (void)resetText;

- (void)scrollToBottomWithAnimation:(BOOL)animated;

@end
