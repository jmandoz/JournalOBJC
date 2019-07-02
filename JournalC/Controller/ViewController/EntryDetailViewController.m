//
//  EntryDetailViewController.m
//  JournalC
//
//  Created by Jason Mandozzi on 7/1/19.
//  Copyright © 2019 Jason Mandozzi. All rights reserved.
//

#import "EntryDetailViewController.h"
#import "EntryController.h"
#import "Entry.h"


@interface EntryDetailViewController () <UITextFieldDelegate>


@property (weak, nonatomic) IBOutlet UITextField *titleTextField;

@property (weak, nonatomic) IBOutlet UITextView *bodyTextField;


@end

@implementation EntryDetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self updateWithEntry:_entry];
}



- (IBAction)saveButtonTapped:(UIBarButtonItem *)sender {
    NSString *title = _titleTextField.text;
    NSString *body = _bodyTextField.text;
    if (_entry != nil) {
        [EntryController.sharedInstance updateWith:_entry title:title bodyText:body];
    } else {
        [EntryController.sharedInstance createEntry:title bodyText:body];
    }
    [self.navigationController popViewControllerAnimated: true];
}

- (IBAction)clearButtonTapped:(id)sender {
    _bodyTextField.text = @"";
    _titleTextField.text = @"";
}

- (void)updateWithEntry:(Entry*)entry {
    if ((entry = entry)) {
    self.titleTextField.text = entry.title;
    self.bodyTextField.text = entry.bodyText;
    }
}

- (BOOL)textFieldShouldReturn:(UITextField *)textField
{
    [_titleTextField resignFirstResponder];
    return true;
}

@end
