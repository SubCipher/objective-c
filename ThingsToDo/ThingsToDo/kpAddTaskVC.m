//
//  kpAddTaskVC.m
//  ThingsToDo
//
//  Created by knax on 2/18/16.
//  Copyright © 2016 knax. All rights reserved.
//

#import "kpAddTaskVC.h"
#import "kpTaskListTableVC.h"
#import "kpTask.h"

@interface kpAddTaskVC ()

@end

@implementation kpAddTaskVC

@synthesize nameField = _nameField;
@synthesize taskListVC = _taskListVC;



- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - IBActions
- (void)cancelButtonPressed:(id)sender {
    [self dismissViewControllerAnimated:YES completion:nil];
}


- (void)doneButtonPressed:(id)sender{
    
    kpTask * newTask = [[kpTask alloc] initWithName:self.nameField.text done:NO];
    [self.taskListVC.tasks addObject:newTask];
    
    [self dismissViewControllerAnimated:YES completion:nil];
    [self.taskListVC.tableView reloadData];
}

@end
