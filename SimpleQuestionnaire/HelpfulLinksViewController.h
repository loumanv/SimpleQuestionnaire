//
//  HelpfulLinksViewController.h
//  DepressionCalc
//
//  Created by Vasileios Loumanis on 20/09/2014.
//  Copyright (c) 2014 Vasileios Loumanis. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Model.h"

@interface HelpfulLinksViewController : UITableViewController 

@property (retain) Model *model;

@property (strong, nonatomic) IBOutlet UITableView *tableView;

@end
