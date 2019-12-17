//
//  CustomCell.m
//  TableExample
//
//  Created by Student on 17.12.2019.
//  Copyright © 2019 Student. All rights reserved.
//

#import "CustomCell.h"

@implementation CustomCell{
    __weak IBOutlet UILabel *nameLabel;
    __weak IBOutlet UITextView *descriptionTV;
    __weak IBOutlet UISwitch *selectSwitch;
}

-(void) setName:(NSString *) name description: (NSString *) descr select: (BOOL) b{
    [nameLabel setText:name];
    [descriptionTV setText:descr];
    [selectSwitch setOn:b];
}


- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
