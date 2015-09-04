//
//  AddImageViewController.m
//  FoundNemo
//
//  Created by Binit Vermani on 27/06/15.
//  Copyright (c) 2015 Binit Vermani. All rights reserved.
//

#import "AddImageViewController.h"

@interface AddImageViewController ()

@end

#pragma mark - View Hierarchy

@implementation AddImageViewController

NSData * signUpImageData;

- (void)viewDidLoad {
    
    [super viewDidLoad];
    [self initializingUI];
}

-(void)viewWillAppear:(BOOL)animated {
}

-(void)viewDidAppear:(BOOL)animated {
}

-(void)viewWillDisappear:(BOOL)animated {
}

-(void)viewDidDisappear:(BOOL)animated {
}

#pragma mark - Initialize UI

-(void)initializingUI {
    
    [self initializingTitles];
    _btnAddPicture.layer.cornerRadius = 5;
    _btnDone.layer.cornerRadius = 5;
    _btnProfileImage.layer.cornerRadius = 82;
    
    if([[_dictUserInfo valueForKey:@"gender"] isEqualToString:@"male"]) {
        
        [_btnProfileImage setImage:[UIImage imageNamed:@"ic_male_pic"] forState:UIControlStateNormal];
    }
    else {
        
        [_btnProfileImage setImage:[UIImage imageNamed:@"ic_female_pic"] forState:UIControlStateNormal];
    }
    
    }

-(void)initializingTitles {
    

    _labelAddPictures.text = @"Add Picture";
    [_btnAddPicture setTitle:@"Add Picture" forState:UIControlStateNormal];
    [_btnDone setTitle:@"Done" forState:UIControlStateNormal];
}

-(void)getUserInfo : (NSDictionary *)dictInfo {
    
    _dictUserInfo = [NSMutableDictionary new];
    _dictUserInfo = [dictInfo mutableCopy];
}



#pragma mark - calling Api


#pragma mark - button actions

- (IBAction)actionBtnDone:(id)sender {
    
    }

- (IBAction)actionBtnAddPictures:(id)sender {
    
    UIActionSheet * actionSheet = [[UIActionSheet alloc] initWithTitle:@"Select the image:" delegate:self cancelButtonTitle:@"Cancel" destructiveButtonTitle:nil otherButtonTitles:@"Camera",@"Gallery", nil];
    [actionSheet showInView:self.view];
}

- (IBAction)actionBtnBack:(id)sender {
    
    [self.navigationController popViewControllerAnimated:YES];
}

#pragma mark - Action sheet Delegate

- (void)actionSheet:(UIActionSheet *)actionSheet clickedButtonAtIndex:(NSInteger)buttonIndex {
    
    if(0 == buttonIndex) {
      
        UIImagePickerController * picker = [[UIImagePickerController alloc] init];
        picker.delegate = self;
        picker.sourceType = UIImagePickerControllerSourceTypeCamera;
        [self presentViewController:picker animated:YES completion:nil];
    }
    else if (1 == buttonIndex) {
        
        UIImagePickerController * picker = [[UIImagePickerController alloc] init];
        picker.delegate = self;
        picker.sourceType = UIImagePickerControllerSourceTypePhotoLibrary ;
        [self presentViewController:picker animated:YES completion:nil];
    }
}

#pragma mark - UIImagePicker delegate

- (void)imagePickerController:(UIImagePickerController *)picker didFinishPickingImage:(UIImage *)image editingInfo:(NSDictionary *)editingInfo {
    
    signUpImageData = UIImageJPEGRepresentation(image, 0);
    [_btnProfileImage setImage:image forState:UIControlStateNormal];
    [[UIApplication sharedApplication] setStatusBarStyle:UIStatusBarStyleLightContent];
    [picker dismissViewControllerAnimated:YES completion:nil];
}

-(void)imagePickerControllerDidCancel:(UIImagePickerController *)picker {
    
    [picker dismissViewControllerAnimated:YES completion:nil];
}

#pragma mark - Alert Box

-(void)alertBox : (NSString *)message {
    
    [[[UIAlertView alloc] initWithTitle:@"" message:message delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil, nil] show];
}

- (void)didReceiveMemoryWarning {
    
    [super didReceiveMemoryWarning];
}

@end