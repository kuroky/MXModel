//
//  ViewController.m
//  MXModel
//
//  Created by kuroky on 2018/10/9.
//  Copyright © 2018 Kuroky. All rights reserved.
//

#import "ViewController.h"
#import "ItemFactory.h"
#import "ItemA.h"
#import "ItemB.h"
#import "ItemC.h"

static NSString *const kCellId  =   @"cellId";

@interface ViewController () <UITableViewDataSource, UITableViewDelegate>

@property (nonatomic, strong) NSArray *dataList;
@property (weak, nonatomic) IBOutlet UITableView *tableView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.dataList = @[@"model from json dic",
                      @"model from json arr",
                      @"model property to different json key",
                      @"model contain model"];
    self.tableView.rowHeight = 50;
    [self.tableView registerClass:[UITableViewCell class] forCellReuseIdentifier:kCellId];
}

//MARK:- UITableViewDataSource
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.dataList.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:kCellId forIndexPath:indexPath];
    cell.textLabel.text = self.dataList[indexPath.row];
    return cell;
}

//MARK:- UITableViewDelegate
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    
    if (indexPath.row == 0) {
        ItemA *item = [ItemA mx_convertModelWithJsonDic:[ItemFactory jsonDictionary]];
        NSLog(@"item: %@", item);
    }
    else if (indexPath.row == 1) {
        NSArray *arr = [ItemA mx_convertModelWithJsonArr:[ItemFactory jsonArray]];
        NSLog(@"arr: %@", arr);
    }
    else if (indexPath.row == 2) {
        ItemB *item = [ItemB mx_convertModelWithJsonDic:[ItemFactory jsonDictionary]];
        NSLog(@"item: %@", item);
    }
    else if (indexPath.row == 3) {
        ItemC *item = [ItemC mx_convertModelWithJsonDic:[ItemFactory jsonDicContainDic]];
        NSLog(@"item: %@", item);
    }
}

@end
