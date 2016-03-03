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
}

-(void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
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
    else if ([segue.identifier isEqualToString:@"DoneTaskCell"] || [segue.identifier isEqualToString:@"NotDoneTaskCell"]){
        
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
   
    static NSString *NotDoneCellIdentifier = @"NotDoneTaskCell";
    static NSString *DoneCellIdentifier = @"DoneTaskCell";
    
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



@end
