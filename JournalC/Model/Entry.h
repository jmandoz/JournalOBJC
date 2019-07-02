//
//  Entry.h
//  JournalC
//
//  Created by Jason Mandozzi on 7/1/19.
//  Copyright © 2019 Jason Mandozzi. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Entry : NSObject

@property (nonatomic, copy) NSString* title;
@property (nonatomic, copy) NSString* bodyText;
@property (nonatomic, copy) NSDate* timestamp;

-(instancetype)initWithName:(NSString*)title
                    bodyText:(NSString*)bodyText;


@end

NS_ASSUME_NONNULL_END
