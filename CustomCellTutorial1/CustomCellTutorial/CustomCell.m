//
//  CustomCell.m
//  CustomCellTutorial
//
//  Created by iffytheperfect on 9/22/12.
//  Copyright (c) 2012 iffytheperfect. All rights reserved.
//
// modified version 1.xxx

#import "CustomCell.h"

@implementation CustomCell

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        // Initialization code
    }
    return self;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
