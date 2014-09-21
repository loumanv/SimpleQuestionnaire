//
//  QuestionsViewController.h
//  DepressionCalc
//
//  Created by Vasileios Loumanis on 20/09/2014.
//  Copyright (c) 2014 Vasileios Loumanis. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Model.h"

@interface QuestionsViewController : UITableViewController 

@property (strong, nonatomic) IBOutlet UITableView *tableView;
@property (retain) Model *model;

@property (assign) int currentScore;
@property (assign) int currentLevel;

@end
