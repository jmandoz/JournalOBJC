//
//  Entry.m
//  JournalC
//
//  Created by Jason Mandozzi on 7/1/19.
//  Copyright © 2019 Jason Mandozzi. All rights reserved.
//

#import "Entry.h"

@implementation Entry

//_timestamp = (NSDate new);

- (instancetype)initWithName:(NSString *)title bodyText:(NSString *)bodyText {
    self = [super init];
    if (self) {
        _title = title;
        _bodyText = bodyText;
        _timestamp = [NSDate new];
    }
    return self;
}

@end
