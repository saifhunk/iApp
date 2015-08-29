//
//  MainFeedCollectionViewCellBottom.m
//  iApp
//
//  Created by Saif Chaudhary on 8/27/15.
//  Copyright (c) 2015 Saif Chaudhary. All rights reserved.
//

#import "MainFeedCollectionViewCellBottom.h"

@implementation MainFeedCollectionViewCellBottom

-(void)awakeFromNib
{
    self.ImageViewPerson.layer.cornerRadius = self.ImageViewPerson.frame.size.height/2;
}


@end
