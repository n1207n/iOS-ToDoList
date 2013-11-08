//
//  ToDoItem.m
//  ToDoList
//
//  Created by Silin Na on 11/7/13.
//  Copyright (c) 2013 Silin Na. All rights reserved.
//

#import "ToDoItem.h"

@implementation ToDoItem

-(void)markAsCompleted:(BOOL)isComplete
{
    self.completed = isComplete;
    
    [self setCompletionDate];
}

- (void)setCompletionDate
{
    if (self.completed)
    {
        self.completionDate = [NSDate date];
    }
    
    else
    {
        self.completionDate = nil;
    }
}

@end
