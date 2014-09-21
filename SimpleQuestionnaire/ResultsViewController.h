//
//  ResultsViewController.h
//  DepressionCalc
//
//  Created by Vasileios Loumanis on 20/09/2014.
//  Copyright (c) 2014 Vasileios Loumanis. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Model.h"


@interface ResultsViewController : UIViewController 

@property (retain) IBOutlet UILabel *result;
@property (retain) IBOutlet UITextView *resultString;
@property (retain) Model *model;

@property (assign) NSInteger finalScore;
@property (assign) NSInteger indexNumber;

-(IBAction)whatsNext;

-(IBAction)repeatTheTest;

@end
