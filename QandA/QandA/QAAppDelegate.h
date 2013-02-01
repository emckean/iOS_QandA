//
//  QAAppDelegate.h
//  QandA
//
//  Created by Erin McKean on 1/31/13.
//  Copyright (c) 2013 Erin McKean. All rights reserved.
//

#import <UIKit/UIKit.h>

@class QAViewController;

@interface QAAppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (strong, nonatomic) QAViewController *viewController;

@end
