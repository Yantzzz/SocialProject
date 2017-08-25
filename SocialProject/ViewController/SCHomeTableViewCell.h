//
//  SCHomeTableViewCell.h
//  SocialProject
//
//  Created by Yan Tian on 8/20/17.
//  Copyright © 2017 Yan Tian. All rights reserved.
//

#import <UIKit/UIKit.h>

@class SCPost;

@interface SCHomeTableViewCell : UITableViewCell

- (void)loadCellWithPost:(SCPost *)post;
+ (CGFloat)cellHeight;

@end
