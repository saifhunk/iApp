//
//  EyeWitnessViewController.h
//  iApp
//
//  Created by Saif Chaudhary on 9/4/15.
//  Copyright (c) 2015 Saif Chaudhary. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Header.h"

@interface EyeWitnessViewController : UIViewController<UITextViewDelegate>

@property (weak, nonatomic) IBOutlet UIImageView *imagwViewPerson;
@property (weak, nonatomic) IBOutlet UILabel *labelName;
@property (weak, nonatomic) IBOutlet UITextView *textViewLinks;
@property (weak, nonatomic) IBOutlet UITextView *textViewtags;
@end
