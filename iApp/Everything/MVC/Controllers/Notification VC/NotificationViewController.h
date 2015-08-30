//
//  NotificationViewController.h
//  iApp
//
//  Created by Saif Chaudhary on 8/29/15.
//  Copyright (c) 2015 Saif Chaudhary. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface NotificationViewController : UIViewController<UITableViewDataSource,UITableViewDelegate>



@property (weak, nonatomic) IBOutlet UITableView *tableViewNotification;

@property (weak, nonatomic) IBOutlet UIButton *btnClear;


- (IBAction)actionBtnNotification:(id)sender;
- (IBAction)actionBtnClearAll:(id)sender;

@end
