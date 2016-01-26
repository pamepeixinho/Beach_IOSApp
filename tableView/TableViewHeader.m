//
//  TableViewHeader.m
//  tableView
//
//  Created by Pamela Iupi Peixinho on 1/26/16.
//  Copyright © 2016 PamelaPeixinho. All rights reserved.
//

#import "TableViewHeader.h"

@implementation TableViewHeader

-(id)initWithText:(NSString *)text{
    UIImage *image = [UIImage imageNamed:@"lauchScreen_header.jpg"];

    if((self = [super initWithImage:image])){
        label =[[UILabel alloc] initWithFrame:CGRectMake(20, 0, 250, 50)];
        label.textColor = [UIColor whiteColor];
        label.backgroundColor = [UIColor clearColor];
        label.font = [UIFont systemFontOfSize:20];
        label.text = text;
        label.numberOfLines = 1;
        [self addSubview:label];
    }
    [self setAlpha:0.85];
    return self;
}

-(void)setText:(NSString *) text{
    label.text = text;
}

@end
