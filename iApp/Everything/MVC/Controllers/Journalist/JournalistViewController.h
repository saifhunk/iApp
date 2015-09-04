//
//  JournalistViewController.h
//  iApp
//
//  Created by Saif Chaudhary on 9/4/15.
//  Copyright (c) 2015 Saif Chaudhary. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface JournalistViewController : UIViewController

@property (weak, nonatomic) IBOutlet NSLayoutConstraint *HeightViewJournalist;
@property (weak, nonatomic) IBOutlet UIView *ViewJournalist;
@property (weak, nonatomic) IBOutlet UIButton *btnSignup;
@property (weak, nonatomic) IBOutlet UIView *ViewBtnSigup;

- (IBAction)actionBtnNext:(id)sender;
- (IBAction)actionBtnSinup:(id)sender;

@end
