//
//  QAViewController.m
//  QandA
//
//  Created by Erin McKean on 1/31/13.
//  Copyright (c) 2013 Erin McKean. All rights reserved.
//

#import "QAViewController.h"

@interface QAViewController ()

@end

@implementation QAViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    NSString* filePath = [[NSBundle mainBundle] pathForResource:@"questionsandanswers" ofType:@"plist"];
                          
    self.questionsAndAnswersArray = [NSArray arrayWithContentsOfFile:filePath];

}
                          
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)nextPressed:(id)sender
{

    int randomIndex = arc4random() % [self.questionsAndAnswersArray count];
    
    NSDictionary* questionAndAnswer = [self.questionsAndAnswersArray objectAtIndex:randomIndex];
    
    self.questionLabel.text = [questionAndAnswer objectForKey:@"question"];
    self.answerLabel.text = [questionAndAnswer objectForKey:@"answer"];
    
}

@end
