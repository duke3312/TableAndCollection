//
//  BasicTableViewCell.m
//  DKNestTableAndCollection
//
//  Created by duke on 16/7/19.
//  Copyright © 2016年 duke. All rights reserved.
//

#import "BasicTableViewCell.h"

@interface BasicTableViewCell ()

@end

@implementation BasicTableViewCell

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        
    }
    return self;
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
