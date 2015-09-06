//
//  SettingVcViewController.m
//  iApp
//
//  Created by Saif Chaudhary on 9/4/15.
//  Copyright (c) 2015 Saif Chaudhary. All rights reserved.
//

#import "SettingVcViewController.h"

@interface SettingVcViewController ()

@end

@implementation SettingVcViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)actionBtnLogout:(id)sender {
    
    [self.navigationController popViewControllerAnimated:YES];
}
@end
