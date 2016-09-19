//
//  ViewController.h
//  HybridTestDemo
//
//  Created by daoquan on 16/9/13.
//  Copyright © 2016年 daoquan. All rights reserved.
//

#import "ViewController.h"
#import "URLController.h"
#import "MHWKWebViewController.h"
#import "JSCWebViewController.h"
#import "WVJSBController.h"

@interface ViewController () <UITableViewDataSource, UITableViewDelegate>

@property (strong, nonatomic) NSMutableArray *tableCellTextList;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    _tableCellTextList = [[NSMutableArray alloc] init];
//    for (int i=0; i < 25; ++i) {
//        NSString *textStr = [NSString stringWithFormat:@"this is line %d", i];
//        [_tableCellTextList addObject:textStr];
//    }
    
    NSString *textStr0 = [NSString stringWithFormat:@"通过URL拦截的方式"];
    NSString *textStr1 = [NSString stringWithFormat:@"MessageHandle方式"];
    NSString *textStr2 = [NSString stringWithFormat:@"JavaScriptCore方式"];
    NSString *textStr3 = [NSString stringWithFormat:@"WebViewJavaScriptBridge方式"];
    [_tableCellTextList addObject:textStr0];
    [_tableCellTextList addObject:textStr1];
    [_tableCellTextList addObject:textStr2];
    [_tableCellTextList addObject:textStr3];
    
    self.tableView = [[UITableView alloc]
                      initWithFrame:self.view.bounds
                      style:UITableViewStylePlain];
    self.tableView.delegate   = self;
    self.tableView.dataSource = self;
    [self.view addSubview:self.tableView];
    
    self.navigationItem.title = @"Hybrid";
    
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSInteger)tableView:(UITableView *)tableView
 numberOfRowsInSection:(NSInteger)section{
    return [_tableCellTextList count];
}

// 设置Cell
- (UITableViewCell *)tableView:(UITableView *)tableView
         cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    UITableViewCell *cell = [[UITableViewCell alloc]init];
    //设置cell的标题
    cell.textLabel.text = _tableCellTextList[indexPath.row];
    return cell;
}

//设置cell点击事件
- (void)tableView:(UITableView *)tableView
didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    
    
    switch (indexPath.row) {
        case 0:{
            URLController *urlView0 = [[URLController alloc] init];
            [self.navigationController pushViewController:urlView0 animated:YES];
            break;
        }
        case 1:{
            MHWKWebViewController *urlView1 = [[MHWKWebViewController alloc] init];
            [self.navigationController pushViewController:urlView1 animated:YES];
            break;
        }
        case 2:{
            JSCWebViewController *urlView2 = [[JSCWebViewController alloc] init];
            [self.navigationController pushViewController:urlView2 animated:YES];
            break;
        }
        case 3:{
            WVJSBController *urlView3 = [[WVJSBController alloc] init];
            [self.navigationController pushViewController:urlView3 animated:YES];
            break;
        }
        default:
            break;
    }

    NSLog(@"click2");
}

//允许cell左滑
- (BOOL)tableView:(UITableView *)tableView
canEditRowAtIndexPath:(NSIndexPath *)indexPath{
    return false;
}

//设置左滑按钮
- (NSString *)tableView:(UITableView *)tableView
titleForDeleteConfirmationButtonForRowAtIndexPath:(NSIndexPath *)indexPath{
    return @"Delete";
}

//点击按钮时事件
- (void)tableView:(UITableView *)tableView
commitEditingStyle:(UITableViewCellEditingStyle)editingStyle
forRowAtIndexPath:(NSIndexPath *)indexPath
{
    [_tableCellTextList removeObjectAtIndex:indexPath.row];
    //删除指定的cell
    [tableView deleteRowsAtIndexPaths:@[indexPath]
                     withRowAnimation:UITableViewRowAnimationRight];
}

@end
