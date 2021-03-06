//
//  TweetsMasterViewController.h
//  BieberTweet
//
//  Created by Jordan Bangia on 5/8/13.
//  Copyright (c) 2013 Jordan Bangia. All rights reserved.
//

#import <UIKit/UIKit.h>

@class TweetController;

@interface TweetsMasterViewController : UITableViewController
@property (strong, nonatomic) TweetController* tweetController;
@property (strong, nonatomic) NSString* refreshURL;
@end
