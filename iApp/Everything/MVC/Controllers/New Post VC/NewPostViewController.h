//
//  NewPostViewController.h
//  iApp
//
//  Created by Saif Chaudhary on 9/4/15.
//  Copyright (c) 2015 Saif Chaudhary. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface NewPostViewController : UIViewController
@property (weak, nonatomic) IBOutlet UIImageView *imageViewPerson;
@property (weak, nonatomic) IBOutlet UILabel *labelName;

@property (weak, nonatomic) IBOutlet UITextView *textViewLink;
@property (weak, nonatomic) IBOutlet UITextView *textViewTags;
@end
