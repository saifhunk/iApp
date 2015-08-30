//
//  PostViewController.m
//  iApp
//
//  Created by Saif Chaudhary on 8/30/15.
//  Copyright (c) 2015 Saif Chaudhary. All rights reserved.
//

#import "PostViewController.h"

@interface PostViewController ()

@end

@implementation PostViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    [_ImageViewPerson.layer setCornerRadius:_ImageViewPerson.frame.size.height/2];
    
}
- (IBAction)actionBtnShare:(id)sender
{
}

- (IBAction)actionBtnComment:(id)sender
{
    [self performSegueWithIdentifier:@"SegueComment" sender:self];
}
@end
