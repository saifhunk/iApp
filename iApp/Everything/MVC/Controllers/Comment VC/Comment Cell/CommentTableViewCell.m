//
//  CommentTableViewCell.m
//  iApp
//
//  Created by Saif Chaudhary on 8/30/15.
//  Copyright (c) 2015 Saif Chaudhary. All rights reserved.
//

#import "CommentTableViewCell.h"

@implementation CommentTableViewCell

- (void)awakeFromNib {
    // Initialization code
    [_imageViewPerson.layer setCornerRadius:_imageViewPerson.frame.size.height/2];
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
