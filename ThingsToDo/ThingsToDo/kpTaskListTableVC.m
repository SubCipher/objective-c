//
//  kpTaskListTableVC.m
//  ThingsToDo
//
//  Created by knax on 2/18/16.
//  Copyright © 2016 knax. All rights reserved.
//

#import "kpTaskListTableVC.h"
#import "kptask.h"
#import  "kpAddTaskVC.h"
#import "kpEditTaskTableVC.h"

@interface kpTaskListTableVC ()

@end

@implementation kpTaskListTableVC

@synthesize tasks = _tasks;

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;

    self.tasks = [[NSMutableArray alloc] init];
    kpTask *task = [[kpTask alloc] initWithName:@"My first task" done:NO];
    [self.tasks addObject:task];
    
    kpTask *doneTask = [[kpTask alloc]initWithName:@"My first done task" done:YES];
    [self.tasks addObject:doneTask];
    
    [self.tableView reloadData];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    
    if([segue.identifier isEqualToString:@"addTaskSegue"]){
        UINavigationController *navCon = segue.destinationViewController;
        
        kpAddTaskVC *addTaskVC = [navCon.viewControllers objectAtIndex:0];
        addTaskVC.taskListVC = self;
    }
    else if ([segue.identifier isEqualToString:@"editDoneTaskSegue"] || [segue.identifier isEqualToString:@"editNotDoneTaskSegue"]){
        
        kpEditTaskTableVC *editTaskTableVC = segue.destinationViewController;
        editTaskTableVC.task = [self.tasks objectAtIndex:self.tableView.indexPathForSelectedRow.row];
        
        }

    }


#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {

    return self.tasks.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
   
    static NSString *NotDoneCellIdentifier = @"editNotDoneTaskSegue";
    static NSString *DoneCellIdentifier = @"editDoneTaskSegue";
    
    kpTask *currentTask = [self.tasks objectAtIndex:indexPath.row];
    
    
    NSString *cellIdentifier = currentTask.done ? DoneCellIdentifier : NotDoneCellIdentifier;
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellIdentifier];
    
    if(cell == nil){
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellIdentifier];
    }
    
    // Configure the cell...
    
    cell.textLabel.text = currentTask.name;
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

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
