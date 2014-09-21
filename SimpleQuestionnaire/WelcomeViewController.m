//
//  WelcomeViewController.m
//  DepressionCalc
//
//  Created by Vasileios Loumanis on 20/09/2014.
//  Copyright (c) 2014 Vasileios Loumanis. All rights reserved.
//

#import "WelcomeViewController.h"
#import "QuestionsViewController.h"

@implementation WelcomeViewController

@synthesize model;

// Method that connects the Welcome class with the Questions class through the press of the button
-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    
    if ([segue.identifier isEqualToString:@"questionSegue"]) {
        QuestionsViewController *qvc = [segue destinationViewController];
        qvc.model = self.model;
    }
}

// We hide and show the navigation bar
- (void) viewWillAppear:(BOOL)animated {
	
    [self.navigationController setNavigationBarHidden:YES animated:animated];
    [super viewWillAppear:animated];
}

- (void) viewWillDisappear:(BOOL)animated {
	
    [self.navigationController setNavigationBarHidden:NO animated:animated];
    [super viewWillDisappear:animated];
}

- (void)viewDidLoad {
	[super viewDidLoad];
	
	// Initialization of model, Calling methods to populate its arrays
	self.model = [[Model alloc]init];
	self.title = @"Start";
}

- (void)didReceiveMemoryWarning {
	
    [super didReceiveMemoryWarning];    
}

- (void)viewDidUnload {
    [super viewDidUnload];
}

@end
