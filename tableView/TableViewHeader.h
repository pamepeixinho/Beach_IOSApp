//
//  TableViewHeader.h
//  tableView
//
//  Created by Pamela Iupi Peixinho on 1/26/16.
//  Copyright © 2016 PamelaPeixinho. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TableViewHeader : UIImageView{
    
    UILabel * label;
}

-(id)initWithText:(NSString *)text;
-(void)setText:(NSString *) text;

@end
