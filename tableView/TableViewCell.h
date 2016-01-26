//
//  TableViewCell.h
//  tableView
//
//  Created by Pamela Iupi Peixinho on 1/26/16.
//  Copyright © 2016 PamelaPeixinho. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TableViewCell : UITableViewCell

@property (weak, nonatomic) IBOutlet UIImageView * cellImageView;
@property (weak, nonatomic) IBOutlet UILabel * cellTitle;
@property (weak, nonatomic) IBOutlet UILabel * cellDescription;

@end
