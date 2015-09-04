//
//  JournalistViewController.m
//  iApp
//
//  Created by Saif Chaudhary on 9/4/15.
//  Copyright (c) 2015 Saif Chaudhary. All rights reserved.
//

#import "JournalistViewController.h"

@interface JournalistViewController ()

@end

@implementation JournalistViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    _ViewJournalist.layer.cornerRadius = 12;
    _btnSignup.layer.cornerRadius = 16;
    _ViewBtnSigup.layer.cornerRadius = 16;
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)actionBtnNext:(id)sender {
    
    [self dismissViewControllerAnimated:YES completion:^{
        
    }];
}

- (IBAction)actionBtnSinup:(id)sender {
}
@end
