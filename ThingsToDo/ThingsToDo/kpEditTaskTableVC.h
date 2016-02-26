//
//  kpEditTaskTableVC.h
//  ThingsToDo
//
//  Created by knax on 2/19/16.
//  Copyright © 2016 knax. All rights reserved.
//

#import <UIKit/UIKit.h>
@class kpTask;


@interface kpEditTaskTableVC : UITableViewController

@property (nonatomic, strong)IBOutlet UITextField *nameField;
@property (nonatomic, strong)IBOutlet UISwitch *doneSwitch;

@property (nonatomic,strong)kpTask *task;


-(IBAction)taskDataChanged:(id)sender;

@end
