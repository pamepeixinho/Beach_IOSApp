//
//  TableViewCell.m
//  tableView
//
//  Created by Pamela Iupi Peixinho on 1/26/16.
//  Copyright © 2016 PamelaPeixinho. All rights reserved.
//

#import "TableViewCell.h"

@implementation TableViewCell

- (void)awakeFromNib {
    // Initialization code
    
    [self.cellImageView.layer setCornerRadius:2.0f];
    [self.cellImageView.layer setMasksToBounds:YES];
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
