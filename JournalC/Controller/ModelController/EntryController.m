//
//  EntryController.m
//  JournalC
//
//  Created by Jason Mandozzi on 7/1/19.
//  Copyright © 2019 Jason Mandozzi. All rights reserved.
//

#import "EntryController.h"
#import "Entry.h"

@implementation EntryController
//shared instance

- (instancetype)init
{
    self = [super init];
    if (self) {
        _entries = [NSMutableArray new];
    }
    return self;
}

+ (EntryController *)sharedInstance {
   
    static EntryController*shared = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        shared = [EntryController new];
    });
    return shared;
}

- (void)createEntry:(NSString *)title bodyText:(NSString *)bodyText {
    Entry *entry = [[Entry alloc] initWithName:title bodyText:bodyText];
    [_entries addObject:entry];
}

- (void)removeEntry:(Entry *)entry {
    [_entries removeObject:entry];

}
- (void)updateWith:(Entry *)entry title:(NSString *)title bodyText:(NSString *)bodyText {
    entry.title = title;
    entry.bodyText = bodyText;
}


@end
