//
//  NotificationViewController.m
//  iApp
//
//  Created by Saif Chaudhary on 8/29/15.
//  Copyright (c) 2015 Saif Chaudhary. All rights reserved.
//

#import "NotificationViewController.h"

@interface NotificationViewController ()

@end

@implementation NotificationViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    _tableViewNotification.tableFooterView = [[UIView alloc]initWithFrame:CGRectZero];
    // Do any additional setup after loading the view.
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 10;
    
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *simpleTableIdentifier = @"CellNotification";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:simpleTableIdentifier];
    
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:simpleTableIdentifier];
    }
    
    cell.textLabel.text = @"dfdinitWithStyle:UITableViewCellStyleDefaultinitWithStyle:";
    cell.detailTextLabel.text = @"5 hours ago";
    cell.imageView.layer.cornerRadius = 40;
    cell.imageView.image = [UIImage imageNamed:@"ic_notification_center"];
    UIButton * button = [[UIButton alloc]initWithFrame:CGRectMake(0, 0, 10, 10)];
    button.backgroundColor = [UIColor colorWithRed:60/255.0f green:158/255.0f blue:166/255.0f alpha:1];
    button.layer.cornerRadius  = 5;
    cell.accessoryView = button;
    return cell;
    
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return  UITableViewAutomaticDimension;
}

- (CGFloat)tableView:(UITableView *)tableView estimatedHeightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 80;
}

- (IBAction)actionBtnNotification:(id)sender {
    
    [self dismissViewControllerAnimated:YES completion:^{
        
    } ];
}

- (IBAction)actionBtnClearAll:(id)sender {
}
@end
