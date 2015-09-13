//
//  CommentViewController.h
//  iApp
//
//  Created by Saif Chaudhary on 8/30/15.
//  Copyright (c) 2015 Saif Chaudhary. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Header.h"

@interface CommentViewController : UIViewController<UITableViewDelegate,UITableViewDataSource,UITextViewDelegate>


@property (weak, nonatomic) IBOutlet UITableView *tableViewComment;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *ConstraintBottom;
@property (weak, nonatomic) IBOutlet UITextView *textViewComment;

@property (weak, nonatomic) IBOutlet UIView *ViewComment;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *constraintTop;

- (IBAction)actionBtnDown:(id)sender;
- (IBAction)actionBtnPost:(id)sender;


@end
