//
//  DetailViewController.m
//  tableView
//
//  Created by Pamela Iupi Peixinho on 1/26/16.
//  Copyright © 2016 PamelaPeixinho. All rights reserved.
//

#import "DetailViewController.h"

@interface DetailViewController ()

@end

@implementation DetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.detailTitle.text = self.detailModal[0];
    self.detailDescription.text = _detailModal[1];
    self.detailImageView.image = [UIImage imageNamed:_detailModal[2]];
    self.detailText.text = _detailModal[3];
    
    self.navigationItem.title = _detailModal[0];
    
    if([self.detailTitle.text isEqualToString:@"Bora Bora"])
        self.detailCosts.text = @"Costs: $200 ~ $400 (couple, by day)";
    if([self.detailTitle.text isEqualToString:@"La Digue"])
        self.detailCosts.text = @"Costs: $250 ~ $350 (couple, by day)";
    if([self.detailTitle.text isEqualToString:@"Malibu"])
        self.detailCosts.text = @"Costs: $300 ~ $400 (couple, by day)";
    if([self.detailTitle.text isEqualToString:@"Tavarua"])
        self.detailCosts.text = @"Costs: $400 ~ $500 (couple, by day)";
    if([self.detailTitle.text isEqualToString:@"The Maldives"])
        self.detailCosts.text = @"Costs: $450 ~ $550 (couple, by day)";
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
