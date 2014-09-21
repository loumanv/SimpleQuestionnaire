//
//  ResultsViewController.m
//  DepressionCalc
//
//  Created by Vasileios Loumanis on 20/09/2014.
//  Copyright (c) 2014 Vasileios Loumanis. All rights reserved.
//

#import "ResultsViewController.h"

@implementation ResultsViewController

@synthesize result, model, finalScore, indexNumber, resultString;

- (void)viewDidLoad {
    [super viewDidLoad];
	
	self.title = @"Results";

	// Check the finalScore
	if (finalScore <=4) 
		indexNumber = 0;
	else if (finalScore <=9) 
		indexNumber = 1;
	else if (finalScore <=14) 
		indexNumber = 2;
	else if (finalScore <=19) 
		indexNumber = 3;
	else 
		indexNumber = 4;
	// Show the appropriate results to the user
	result.text = [NSString  stringWithFormat:@"%@" ,[model.scoreTextArray objectAtIndex:indexNumber]];
	resultString.text = [NSString  stringWithFormat:@"%@" ,[model.scoreDetailTextArray objectAtIndex:indexNumber]];
}
// Methods for the buttons
-(IBAction)whatsNext {
	// Select the second item in the tab bar
	self.tabBarController.selectedIndex = 1;
}

-(IBAction)repeatTheTest {
	[self.navigationController popToRootViewControllerAnimated:YES]; 
}

- (void)didReceiveMemoryWarning {
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
}

- (void)viewDidUnload {
    [super viewDidUnload];
}

@end
