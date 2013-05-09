//
//  TweetController.m
//  BieberTweet
//
//  Created by Jordan Bangia on 5/8/13.
//  Copyright (c) 2013 Jordan Bangia. All rights reserved.
//

#import "TweetController.h"
#import "Tweets.h"

@interface TweetController()
-(void)initializeDefaultDatatList;
@end

@implementation TweetController
-(void) initializeDefaultDatatList{
    NSMutableArray* tweetList = [[NSMutableArray alloc] init];
    self.masterTweetList = tweetList;
}

-(void) setMasterTweetList:(NSMutableArray *)masterTweetList{
    if(_masterTweetList != masterTweetList){
        _masterTweetList = [masterTweetList mutableCopy];
    }
}

-(id)init{
    if (self=[super init]){
        [self initializeDefaultDatatList];
        return self;
    }
    return nil;
}

-(NSUInteger) countofList{
    return [self.masterTweetList count];
}

-(Tweets*) objectInListAtIndex:(NSUInteger)index{
    return [self.masterTweetList objectAtIndex:index];
}

-(void) addTweetwithTweet:(Tweets *)tweet{
    [self.masterTweetList addObject:tweet];
}


@end
