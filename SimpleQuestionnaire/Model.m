//
//  Model.m
//  SimpleQuestionnaire
//
//  Created by Vasileios Loumanis on 20/09/2014.
//  Copyright (c) 2014 Vasileios Loumanis. All rights reserved.
//

#import "Model.h"

@implementation Model

@synthesize dataXML, questionsArray, answersArray, helpfulLinksTableArray, helpfulLinksURLsArray, scoreTextArray, scoreDetailTextArray;

-(id)init {
	self = [super init];
	if (self) {
		[self readXML];
        [self readQuestionsArray];
        [self readAnswersArray];
        [self readScoreTextArray];
        [self readScoreDetailTextArray];
        [self readHelpfulLinksTableArray];
        [self readHelpfulLinksURLsArray];
	}
	return self;
}
// Reads the data from the property list file Data
-(void)readXML {
	NSString *path = [[NSBundle mainBundle] pathForResource:@"Data" ofType:@"plist"];
	dataXML = [[NSDictionary alloc]initWithContentsOfFile:path];
}
// Methods that populate the appropriate NSArrays from the dataXML NSDictionary
-(void)readQuestionsArray {
	questionsArray = [[NSArray alloc]initWithArray:[dataXML objectForKey:@"questions"]];
}

-(void)readAnswersArray {
	answersArray = [[NSArray alloc]initWithArray:[dataXML objectForKey:@"answers"]];
}

-(void)readHelpfulLinksTableArray {
	helpfulLinksTableArray = [[NSArray alloc]initWithArray:[dataXML objectForKey:@"helpfulLinksTable"]];
}

-(void)readHelpfulLinksURLsArray {
	helpfulLinksURLsArray = [[NSArray alloc]initWithArray:[dataXML objectForKey:@"helpfulLinksURLs"]];
}

-(void)readScoreTextArray {
	scoreTextArray = [[NSArray alloc]initWithArray:[dataXML objectForKey:@"scoreText"]];
}

-(void)readScoreDetailTextArray {
	scoreDetailTextArray = [[NSArray alloc]initWithArray:[dataXML objectForKey:@"scoreDetailText"]];
}

@end
