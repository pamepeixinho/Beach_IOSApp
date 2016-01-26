//
//  TableViewController.m
//  tableView
//
//  Created by Pamela Iupi Peixinho on 1/26/16.
//  Copyright © 2016 PamelaPeixinho. All rights reserved.
//

#import "TableViewController.h"
#import "TableViewCell.h"
#import "DetailViewController.h"
#import "TableViewHeader.h"

@interface TableViewController ()

@end

@implementation TableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
    
    UIBarButtonItem *backButton = [[UIBarButtonItem alloc] initWithTitle:@"" style:UIBarButtonItemStylePlain target:nil action:nil];
    [self.navigationItem setBackBarButtonItem:backButton];
    
    self.tableView.separatorColor = [UIColor colorWithRed:0/255.0 green:(102/255.0) blue:207/255.0 alpha:0.25];
    
    self.tableView.tableHeaderView = [[TableViewHeader alloc] initWithText:@""];
    
    title = @[@"Bora Bora",
              @"La Digue",
              @"Malibu",
              @"Tavarua",
              @"The Maldives",];
    
    description = @[@"Tahiti",
                    @"Seychelles",
                    @"USA",
                    @"Fiji",
                    @"Indian Ocean",];
    
    image = @[@"BoraBoraThaiti.jpg",
              @"laDigue.jpg",
              @"Malibu.jpg",
              @"tavarua_fiji.jpg",
              @"theMaldives.jpg",];
    
    detailedDescription = @[
        @"Cupcake ipsum dolor. Sit amet lollipop cookie bonbon. Pudding pie marzipan pudding gummi bears muffin I love candy gummi bears. Wafer gingerbread I love toffee candy. Bonbon marshmallow soufflé tart I love. Lemon drops pie candy canes. Icing gingerbread I love pudding candy canes. I love I love jelly chocolate bar. Cake carrot cake cookie. Marshmallow jujubes carrot cake.Chocolate cake chocolate jelly marzipan. I love marshmallow jelly-o I love I love jujubes bear claw oat cake. Jelly tart I love. Oat cake macaroon sweet roll sweet. Bear claw candy carrot cake ice cream bear claw tart I love. I love gingerbread chocolate lemon drops.",
        @"Marzipan apple pie chupa chups powder chupa chups candy. Ice cream soufflé lollipop I love I love cake danish chocolate bar dessert. Marzipan I love liquorice gummies tootsie roll I love muffin sweet tiramisu. Gingerbread chupa chups sweet roll sweet roll biscuit donut candy chupa chups topping. I love chocolate I love pudding cake candy powder. Muffin macaroon topping chocolate sweet. Gummi bears sweet roll sweet roll fruitcake.",
        @"Cupcake ipsum dolor sit amet caramels tootsie roll pastry gummi bears. Soufflé cake gingerbread chupa chups gummies candy canes. Danish jelly beans cake cupcake donut. Oat cake dragée tiramisu. Lemon drops bonbon gingerbread. Danish pie muffin. I love chupa chups cake fruitcake soufflé cheesecake tart pudding sweet. Liquorice pie jelly-o tart cupcake I love powder. Gummies sweet chocolate bar. Toffee I love liquorice ice cream jelly beans soufflé carrot cake jelly cupcake. I love jelly-o candy canes I love fruitcake. Icing pastry lemon drops cookie marzipan candy canes powder. Halvah apple pie halvah tiramisu chocolate cake cake.Croissant jelly tart topping wafer I love gingerbread. I love I love sugar plum pastry cake caramels. Jelly-o cheesecake cookie danish jujubes I love cupcake. Muffin brownie chocolate bar pastry. Sesame snaps I love danish gingerbread. Oat cake dragée tootsie roll dessert wafer cupcake muffin cake. Gummi bears danish oat cake sesame snaps wafer candy croissant. Icing powder topping apple pie",
        @"Liquorice tiramisu wafer macaroon carrot cake. I love chocolate cake marshmallow wafer danish toffee chocolate bar. Toffee jelly beans jelly beans. Danish bonbon topping I love donut wafer I love cake pie. Bear claw candy jelly beans halvah macaroon I love carrot cake icing. Sugar plum tiramisu danish. Muffin halvah powder. Tiramisu bonbon topping apple pie pie.I love toffee jelly-o lollipop sesame snaps lollipop oat cake chupa chups. Pudding biscuit wafer soufflé jelly beans cookie. Halvah chupa chups bear claw I love sugar plum tootsie roll chocolate. Cake powder biscuit. Chocolate cake cupcake soufflé I love bonbon brownie candy canes. Sweet jujubes gummies. Bear claw I love croissant.",
        @"Soufflé sweet cake biscuit ice cream sweet roll fruitcake lemon drops. Sesame snaps fruitcake danish I love pastry cake fruitcake tart. I love dessert cake lemon drops powder cheesecake brownie bear claw candy canes. Halvah pudding sweet roll toffee brownie biscuit I love. Icing lemon drops ice cream bear claw cotton candy candy canes. I love I love cheesecake gingerbread ice cream chocolate sugar plum. Carrot cake cotton candy bonbon soufflé topping wafer gummi bears jelly fruitcake. Lollipop candy dragée lollipop icing biscuit. Chocolate cake toffee chupa chups pie. Carrot cake caramels sweet wafer oat cake lemon drops bonbon jelly-o. Marshmallow gummies I love gummi bears danish I love. Toffee I love cake macaroon cotton candy gummies chupa chups. Topping cheesecake sweet powder croissant gummies liquorice tiramisu ice cream. Dragée I love gingerbread carrot cake chocolate bar. Halvah sesame snaps marshmallow soufflé. Fruitcake bear claw gummies marshmallow. Caramels tootsie roll icing chocolate.",];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [title count];
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{

    static NSString *cellIdentifier = @"Cell";
    TableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellIdentifier forIndexPath:indexPath];
    
    
    int row = (int)[indexPath row];
    
//    criando e populando com o conteudo
    cell.cellTitle.text = title[row];
    cell.cellDescription.text = description[row];
    cell.cellImageView.image = [UIImage imageNamed:image[row]];
    
    return cell;
    
}


/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {

    if([[segue identifier] isEqualToString:@"showDetails"]){
        
        DetailViewController *detailView = [segue destinationViewController];
        NSIndexPath *myIndexPath = [self.tableView indexPathForSelectedRow];
        
        int row = (int)[myIndexPath row];
        detailView.detailModal = @[title[row], description[row], image[row], detailedDescription[row]];
        
    }
    
}


@end
