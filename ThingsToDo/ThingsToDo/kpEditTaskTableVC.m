//
//  kpEditTaskTableVC.m
//  ThingsToDo
//
//  Created by knax on 2/19/16.
//  Copyright © 2016 knax. All rights reserved.
//

#import "kpEditTaskTableVC.h"
#import "kpTask.h"


@interface kpEditTaskTableVC ()



@end

@implementation kpEditTaskTableVC

@synthesize nameField = _nameField;
@synthesize doneSwitch = _doneSwitch;
@synthesize task = _task;



- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
    
    self.nameField.text = self.task.name;
    [self.doneSwitch setOn:self.task.done];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
#pragma mark - IBActions

-(void)taskDataChanged:(id)sender{
    self.task.name = self.nameField.text;
    self.task.done = self.doneSwitch.isOn;
}

@end
