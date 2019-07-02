//
//  EntryController.h
//  JournalC
//
//  Created by Jason Mandozzi on 7/1/19.
//  Copyright © 2019 Jason Mandozzi. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Entry.h"

NS_ASSUME_NONNULL_BEGIN

@interface EntryController : NSObject

//Source of Truth
@property (nonatomic, strong) NSMutableArray* entries;


//shared instance
+(EntryController*)sharedInstance;

//Crud

//create
-(void)createEntry:(NSString *)title bodyText:(NSString *)bodyText;
//delete
-(void)removeEntry:(Entry *)entry;
//update
-(void)updateWith:(Entry*)entry title:(NSString*)title bodyText:(NSString*)bodyText;

@end

NS_ASSUME_NONNULL_END
