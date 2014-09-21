//
//  WebViewController.m
//  DepressionCalc
//
//  Created by Vasileios Loumanis on 20/09/2014.
//  Copyright (c) 2014 Vasileios Loumanis. All rights reserved.
//

#import "WebViewController.h"


@implementation WebViewController

@synthesize web, url, activityIndicator;
// Show and hide the activity indicator
-(void)webViewDidStartLoad:(UIWebView *)webView {
	[activityIndicator startAnimating];
}

-(void)webViewDidFinishLoad:(UIWebView *)webView{
	[activityIndicator stopAnimating];
}

- (void)viewDidLoad {
	[super viewDidLoad];

	web.delegate = self;
	activityIndicator = [[UIActivityIndicatorView alloc] initWithActivityIndicatorStyle:UIActivityIndicatorViewStyleGray];
	// Add the activity indicator to the right side of the navigation bar
	UIBarButtonItem *activityItem = [[UIBarButtonItem alloc] initWithCustomView:activityIndicator];
	self.navigationItem.rightBarButtonItem = activityItem;
	// Request the WebView to load the data from the url
	NSURLRequest *request = [NSURLRequest requestWithURL:url];
	[web loadRequest:request];
}

- (void)didReceiveMemoryWarning {
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
}

- (void)viewDidUnload {
    [super viewDidUnload];
}

@end
