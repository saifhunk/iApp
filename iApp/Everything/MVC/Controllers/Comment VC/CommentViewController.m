//
//  CommentViewController.m
//  iApp
//
//  Created by Saif Chaudhary on 8/30/15.
//  Copyright (c) 2015 Saif Chaudhary. All rights reserved.
//

#import "CommentViewController.h"

@interface CommentViewController ()

@property (nonatomic, strong) NSMutableSet *shownIndexes;
@property (nonatomic, assign) CATransform3D initialTransform;

@end

@implementation CommentViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    CGFloat rotationAngleDegrees = -30;
    CGFloat rotationAngleRadians = rotationAngleDegrees * (M_PI/180);
    CGPoint offsetPositioning = CGPointMake(-20, -20.0);
    
    CATransform3D transform = CATransform3DIdentity;
    transform = CATransform3DRotate(transform, rotationAngleRadians, -50.0, 0.0, 1.0);
    transform = CATransform3DTranslate(transform, offsetPositioning.x, offsetPositioning.y, -50.0);
    _initialTransform = transform;
    
    _shownIndexes = [NSMutableSet set];
    [self registerForKeyboardNotifications];
    // Do any additional setup after loading the view.
}

-(void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    [_textViewComment.layer setCornerRadius:5.0f];
    UISwipeGestureRecognizer *swipeGesture = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(handleSwipeGesture:)];
    [swipeGesture setDirection:UISwipeGestureRecognizerDirectionDown];
    [self.view addGestureRecognizer:swipeGesture];
    
    [_tableViewComment setTableFooterView:[[UIView alloc] initWithFrame:CGRectZero]];
    
    _constraintTop.constant = self.view.frame.size.height/2-70;
    
    _textViewComment.text = @"Write a Comment";
    _textViewComment.textColor = [UIColor lightGrayColor];
}

-(void)viewWillDisappear:(BOOL)animated
{
    
    [super viewWillDisappear:animated];
    [self removeKeyboardObservers];
    
}
#pragma mark - TextView Methods

-(void)textViewDidBeginEditing:(UITextView *)textView
{
    if (textView.textColor == [UIColor lightGrayColor])
    {
        textView.text = @"";
        textView.textColor = [UIColor darkTextColor];
    }
    
}

-(void)textViewDidEndEditing:(UITextView *)textView
{
    if ([[textView.text stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]] isEqualToString:@""])
    {
        textView.text = @"Write a Comment";
        textView.textColor = [UIColor lightGrayColor];
    }
}

-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    [self.view endEditing:YES];
}

#pragma mark - Notification Methods

-(void)removeKeyboardObservers
{
    [[NSNotificationCenter defaultCenter] removeObserver:UIKeyboardWillShowNotification];
    [[NSNotificationCenter defaultCenter] removeObserver:UIKeyboardWillHideNotification];
}

- (void)registerForKeyboardNotifications
{
    
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(keyboardWasShown:) name:UIKeyboardWillShowNotification object:nil];
    
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(keyboardWillBeHidden:) name:UIKeyboardWillHideNotification object:nil];
    
}


- (void)keyboardWasShown:(NSNotification*)aNotification

{
    
    [self.view layoutIfNeeded];
    [self.view updateConstraintsIfNeeded];
    
    NSDictionary* info = [aNotification userInfo];
    
    CGSize kbSize = [[info objectForKey:UIKeyboardFrameEndUserInfoKey] CGRectValue].size;
    
    
    
        [UIView animateWithDuration:0.5 animations:^{
            _ConstraintBottom.constant = kbSize.height;
            _constraintTop.constant = -50;
        }];
    
    
    
}

- (void)keyboardWillBeHidden:(NSNotification*)aNotification

{
    [UIView animateWithDuration:0.5 animations:^{
        
        
        _ConstraintBottom.constant = 0;
        _constraintTop.constant = self.view.frame.size.height/2-50;
    }];
}

- (BOOL)textView:(UITextView *)textView shouldChangeTextInRange:(NSRange)range replacementText:(NSString *)text {
    
    if([text isEqualToString:@"\n"]) {
        [textView resignFirstResponder];
        return NO;
    }
    
    return YES;
}

#pragma mark - Gesture Handlers

-(void)handleSwipeGesture : (UISwipeGestureRecognizer *)recognizer
{
    [self dismissViewControllerAnimated:YES completion:nil];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section;

{
    
    return 10;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    CommentTableViewCell * cell = [tableView dequeueReusableCellWithIdentifier:@"CellComment" forIndexPath:indexPath];
    return cell;
}

- (CGFloat)tableView:(UITableView *)tableView estimatedHeightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 80;
}

- (void)tableView:(UITableView *)tableView willDisplayCell:(UITableViewCell *)cell  forRowAtIndexPath:(NSIndexPath *)indexPath
{

    if (![self.shownIndexes containsObject:indexPath]) {
        
        [self.shownIndexes addObject:indexPath];
        UIView *weeeeCell = [cell contentView];
        
        weeeeCell.layer.transform = self.initialTransform;
        weeeeCell.layer.opacity = 0.8;
        
        [UIView animateWithDuration:.65 delay:0.0 usingSpringWithDamping:.85 initialSpringVelocity:.8 options:0 animations:^{
            weeeeCell.layer.transform = CATransform3DIdentity;
            weeeeCell.layer.opacity = 1;
        } completion:^(BOOL finished) {}];
    }
}

- (IBAction)actionBtnDown:(id)sender {
    
    [self dismissViewControllerAnimated:YES completion:^{
        
    }];
}

- (IBAction)actionBtnPost:(id)sender {
}
@end
