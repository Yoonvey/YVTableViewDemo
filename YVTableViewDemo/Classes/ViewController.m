//
//  ViewController.m
//  YVTableViewDemo
//
//  Created by Yoonvey on 2018/10/8.
//  Copyright © 2018年 Yoonvey. All rights reserved.
//

#import "ViewController.h"

static NSString * const cellId = @"UITableViewCell";

@interface ViewController () <UITableViewDelegate, UITableViewDataSource>

@property (nonatomic, strong) UITableView *listView;

@property (nonatomic, strong) NSArray *explains;
@property (nonatomic, strong) NSArray *classes;

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    [self setupCommon];
    [self setupListView];
}

- (void)setupCommon
{
    self.title = @"功能中心";
    self.view.backgroundColor = [UIColor colorWithRed:234 green:234 blue:234 alpha:1.0];
    
    self.explains = [NSArray arrayWithObjects:@"嵌套表格", @"拖动排序", @"分组列表", @"加载样式", @"单行删除", nil];
    self.classes = [NSArray arrayWithObjects:@"MultiLevelViewController", @"DraggingSortViewController", @"GroupedListViewController", @"LoadingListViewController", @"DeleteListViewController", nil];
}

- (void)setupListView
{
    self.listView = [[UITableView alloc] initWithFrame:self.view.bounds];
    self.listView.dataSource = self;
    self.listView.delegate = self;
    [self.view addSubview:self.listView];
    
    [self.listView registerClass:[UITableViewCell class] forCellReuseIdentifier:cellId];
    
    [UITableViewCellObject setExtraCellLineHidden:self.listView];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return self.explains.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellId];
    cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
    cell.textLabel.text = self.explains[indexPath.row];
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    UIViewController *viewControl = (UIViewController *)[[NSClassFromString(self.classes[indexPath.row]) alloc] init];
    [self.navigationController pushViewController:viewControl animated:YES];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}


@end
