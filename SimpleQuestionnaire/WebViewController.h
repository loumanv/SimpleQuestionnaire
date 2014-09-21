//
//  WebViewController.h
//  DepressionCalc
//
//  Created by Vasileios Loumanis on 20/09/2014.
//  Copyright (c) 2014 Vasileios Loumanis. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface WebViewController : UIViewController <UIWebViewDelegate>

@property (retain) UIActivityIndicatorView *activityIndicator;
@property (retain) IBOutlet UIWebView *web;
@property (retain) NSURL *url;

@end
