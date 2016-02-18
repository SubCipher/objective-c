//
//  kpAddTaskVC.h
//  ThingsToDo
//
//  Created by knax on 2/18/16.
//  Copyright © 2016 knax. All rights reserved.
//

#import <UIKit/UIKit.h>
@class kpTaskListTableVC;

@interface kpAddTaskVC : UITableViewController

-(IBAction)cancelButtonPressed:(id)sender;
-(IBAction)doneButtonPressed:(id)sender;

@property (nonatomic,strong) IBOutlet UITextField *nameField;

@property (nonatomic, strong) kpTaskListTableVC *taskListVC;


@end
