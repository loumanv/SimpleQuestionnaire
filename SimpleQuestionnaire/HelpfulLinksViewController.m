//
//  HelpfulLinksViewController.m
//  DepressionCalc
//
//  Created by Vasileios Loumanis on 20/09/2014.
//  Copyright (c) 2014 Vasileios Loumanis. All rights reserved.
//

#import "HelpfulLinksViewController.h"
#import "WebViewController.h"

@implementation HelpfulLinksViewController

@synthesize tableView, model;

#pragma mark -
#pragma mark View lifecycle

- (void)viewDidLoad {
    [super viewDidLoad];
	// Change the value of the back button in the navigation bar 
	UIBarButtonItem *backButton = [[UIBarButtonItem alloc] initWithTitle:@"Back" style:UIBarButtonItemStylePlain target:nil action:nil];
	self.navigationItem.backBarButtonItem = backButton;
	// Initialization of model, Calling methods to populate its arrays
	model = [[Model alloc]init];
}

#pragma mark -
#pragma mark Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    // Return the number of rows in the section.
    return [model.helpfulLinksTableArray count];
}

// Customize the appearance of table view cells.
- (UITableViewCell *)tableView:(UITableView *)tableview cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    static NSString *CellIdentifier = @"Cell";
    
    UITableViewCell *cell = [tableview dequeueReusableCellWithIdentifier:CellIdentifier];
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
    }
    // Configure the cell and its appearance
	cell.textLabel.text = [model.helpfulLinksTableArray objectAtIndex:indexPath.row];
	cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
    
    return cell;
}

#pragma mark -
#pragma mark Navigation

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    [self performSegueWithIdentifier:@"webViewSegue" sender:self];
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    
    if ([segue.identifier isEqualToString:@"webViewSegue"]) {
        WebViewController *webView = [segue destinationViewController];
        NSIndexPath *indexpath = [tableView indexPathForSelectedRow];
        webView.title = [model.helpfulLinksTableArray objectAtIndex:indexpath.row];
        webView.url = [NSURL URLWithString:[model.helpfulLinksURLsArray objectAtIndex:indexpath.row]];
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

