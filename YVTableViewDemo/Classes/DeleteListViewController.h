//
//  DeleteListViewController.h
//  YVTableViewDemo
//
//  Created by Yoonvey on 2018/10/8.
//  Copyright © 2018年 Yoonvey. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "ChildScrollDelegate.h"

@interface DeleteListViewController : UIViewController

- (instancetype)initWithFrame:(CGRect)frame;

@property (nonatomic, weak) id<ChildScrollDelegate> scrollDelegate;

@end
