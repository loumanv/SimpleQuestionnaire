//
//  Model.h
//  SimpleQuestionnaire
//
//  Created by Vasileios Loumanis on 20/09/2014.
//  Copyright (c) 2014 Vasileios Loumanis. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Model : NSObject

// Instances to hold data
@property (retain) NSDictionary *dataXML;
@property (retain) NSArray *questionsArray;
@property (retain) NSArray *answersArray;
@property (retain) NSArray *helpfulLinksTableArray;
@property (retain) NSArray *helpfulLinksURLsArray;
@property (retain) NSArray *scoreTextArray;
@property (retain) NSArray *scoreDetailTextArray;

-(id)init;
// Methods to populate the above instances
-(void)readXML;
-(void)readQuestionsArray;
-(void)readAnswersArray;
-(void)readHelpfulLinksTableArray;
-(void)readHelpfulLinksURLsArray;
-(void)readScoreTextArray;
-(void)readScoreDetailTextArray;

@end
