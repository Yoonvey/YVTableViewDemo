//
//  LoadingListViewController.h
//  YVTableViewDemo
//
//  Created by Yoonvey on 2018/10/9.
//  Copyright © 2018年 Yoonvey. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "ChildScrollDelegate.h"

@interface LoadingListViewController : UIViewController

- (instancetype)initWithFrame:(CGRect)frame;

@property (nonatomic, weak) id<ChildScrollDelegate> scrollDelegate;

@end
