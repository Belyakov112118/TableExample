//
//  MainTable.m
//  TableExample
//
//  Created by Student on 03.12.2019.
//  Copyright © 2019 Student. All rights reserved.
//

#import "MainTable.h"
#import "CustomCell.h"
#import "SecondVC.h"

@interface MainTable ()

@property NSArray *data;
@end

@implementation MainTable

- (void)viewDidLoad {
    [super viewDidLoad];
    NSLog(@"Start");
    NSArray *f = @[@"First", @"Second", @"Third",@"Four"];
    NSArray *s = @[@"1", @"2", @"3",@"4", @"5"];
    NSArray *t = @[@"Один", @"Два", @"Три"];
    _data = @[f,s,t];
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
#warning Incomplete implementation, return the number of sections
    return [_data count];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
#warning Incomplete implementation, return the number of rows
    return [_data[section] count];
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    if(indexPath.section == 1){
    return  120;
    }
    else{
        return 50;
    }
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    NSString *identifier = @"";
    switch (indexPath.section) {
        case 0:
            identifier =@"cell1";
            break;
            case 1:
                identifier =@"cell2";
                break;
            case 2:
                identifier =@"cell3";
                break;
            
        default:
            break;
    }
    if([identifier isEqualToString:@"cell2"]){
        CustomCell *cell = (CustomCell*)[tableView dequeueReusableCellWithIdentifier:identifier forIndexPath:indexPath];
        NSString *text =_data[indexPath.section][indexPath.row];
        [cell setName:text description:@"description for cell" select:NO];
        return cell;
    }
    else{
        UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:identifier forIndexPath:indexPath];
    
    [cell.textLabel setText:_data[indexPath.section][indexPath.row]];
    return cell;
    }

}

- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section{
    NSString *title = [NSString stringWithFormat:@"Title %ld",(section+1)];
    return title;
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

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if([segue.identifier isEqualToString:@"segue"]){
        SecondVC *vc = segue.destinationViewController;
        UITableViewCell *cell = (UITableViewCell *)sender;
        vc.name = [[cell textLabel] text];
    }
}

@end
