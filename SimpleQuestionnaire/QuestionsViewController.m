//
//  QuestionsViewController.m
//  DepressionCalc
//
//  Created by Vasileios Loumanis on 20/09/2014.
//  Copyright (c) 2014 Vasileios Loumanis. All rights reserved.
//

#import "QuestionsViewController.h"
#import "ResultsViewController.h"

@implementation QuestionsViewController

@synthesize tableView, model, currentLevel, currentScore;

#pragma mark -
#pragma mark View lifecycle

- (void)viewDidLoad {
    [super viewDidLoad];
	// Change the value of the back button in the navigation bar 
	UIBarButtonItem *backButton = [[UIBarButtonItem alloc]initWithTitle:@"Back" style:UIBarButtonItemStylePlain target:nil action:nil];
	self.navigationItem.backBarButtonItem = backButton;
	// Add a button in the right side of the navigation bar to show the number of the current question
	UIBarButtonItem *numberButton = [[UIBarButtonItem alloc]initWithTitle:[NSString stringWithFormat:@"%d of 9",currentLevel + 1] 
														style:UIBarButtonItemStylePlain target:nil action:nil];
	self.navigationItem.rightBarButtonItem = numberButton;
	
	self.title = @"Questionnaire";
}

#pragma mark -
#pragma mark Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    // Return the number of sections.
    return 1;
}


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    // Return the number of rows in the section.
    return [model.answersArray count];
}


// Customize the appearance of table view cells.
- (UITableViewCell *)tableView:(UITableView *)tableview cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    static NSString *CellIdentifier = @"Cell";
    
    UITableViewCell *cell = [tableview dequeueReusableCellWithIdentifier:CellIdentifier];
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
    }
	// Configure the cell and its appearance
	cell.textLabel.text = [model.answersArray objectAtIndex:indexPath.row];
	cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
    
	return cell;
}
// Add the question as a header of the table
- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section {
	
	return [model.questionsArray objectAtIndex:currentLevel];
}

#pragma mark -
#pragma mark Table view delegate

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {

	// Check if there are more questions
	if (currentLevel < [model.questionsArray count] - 1) {
		// We create a new instance of the QuestionsViewController class, pass its data, and push it
        UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"Main" bundle: nil];
		QuestionsViewController *qvc = [storyboard instantiateViewControllerWithIdentifier:@"QVC"];
		qvc.currentScore = self.currentScore + indexPath.row;
		qvc.currentLevel = self.currentLevel + 1;
		qvc.model = self.model;
		[self.navigationController pushViewController:qvc animated:YES];
	}
	else {
		// We create an instance of ResultsViewController class, pass its data, and push it
        UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"Main" bundle: nil];
		ResultsViewController *rvc = [storyboard instantiateViewControllerWithIdentifier:@"RVC"];
		rvc.finalScore = self.currentScore + indexPath.row;
		rvc.model = self.model;
		[self.navigationController pushViewController:rvc animated:YES]; 
	}
}

#pragma mark -
#pragma mark Memory management

- (void)didReceiveMemoryWarning {
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
}

- (void)viewDidUnload {
}

@end

