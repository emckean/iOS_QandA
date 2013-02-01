//
//  QAViewController.h
//  QandA
//
//  Created by Erin McKean on 1/31/13.
//  Copyright (c) 2013 Erin McKean. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface QAViewController : UIViewController
@property (weak, nonatomic) IBOutlet UILabel *questionLabel;
@property (weak, nonatomic) IBOutlet UILabel *answerLabel;

@property (strong, nonatomic) NSArray* questionsAndAnswersArray;


- (IBAction)nextPressed:(id)sender;

@end
