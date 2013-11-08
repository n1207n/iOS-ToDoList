//
//  ToDoItem.h
//  ToDoList
//
//  Created by Silin Na on 11/7/13.
//  Copyright (c) 2013 Silin Na. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ToDoItem : NSObject

@property NSString *itemName;
@property BOOL completed;
@property (readonly) NSDate *creationDate;
@property NSDate *completionDate;

-(void) markAsCompleted:(BOOL)isComplete;

@end
