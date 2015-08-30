//
//  PostViewController.h
//  iApp
//
//  Created by Saif Chaudhary on 8/30/15.
//  Copyright (c) 2015 Saif Chaudhary. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface PostViewController : UIViewController

@property (weak, nonatomic) IBOutlet UIImageView *ImageViewFull;
@property (weak, nonatomic) IBOutlet UIImageView *ImageViewPerson;

@property (weak, nonatomic) IBOutlet UILabel *labeName;

@property (weak, nonatomic) IBOutlet UILabel *labelHashTags;

@property (weak, nonatomic) IBOutlet UILabel *labelMainContent;

@property (weak, nonatomic) IBOutlet UILabel *labelWebsite;

@property (weak, nonatomic) IBOutlet UIButton *labelLikes;
- (IBAction)actionBtnShare:(id)sender;

- (IBAction)actionBtnComment:(id)sender;


@end
