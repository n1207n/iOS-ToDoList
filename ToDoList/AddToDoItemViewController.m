//
//  AddToDoItemViewController.m
//  ToDoList
//
//  Created by Silin Na on 11/6/13.
//  Copyright (c) 2013 Silin Na. All rights reserved.
//

#import "AddToDoItemViewController.h"

@interface AddToDoItemViewController ()
@property (strong, nonatomic) IBOutlet UITextField *textField;
@property (strong, nonatomic) IBOutlet UIBarButtonItem *doneButton;

@end

@implementation AddToDoItemViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void) prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if (sender != self.doneButton)
    {
        return;
    }
    
    else if (self.textField.text.length > 0)
    {
        self.toDoItem = [[ToDoItem alloc] init];
        self.toDoItem.itemName = self.textField.text;
        self.toDoItem.completed = NO;
    }
}

@end
