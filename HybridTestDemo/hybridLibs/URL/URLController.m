//
//  MainViewController.m
//  JS_OC_URL
//
//  Created by Harvey on 16/8/4.
//  Copyright © 2016年 Haley. All rights reserved.
//

#import "URLController.h"
#import "URLWebViewController.h"
#import "URLWKWebViewController.h"

@interface URLController ()

@end

@implementation URLController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    self.title = @"主页";
    
    UIButton * UIWebViewBtn                    = [UIButton buttonWithType:UIButtonTypeCustom];
    UIWebViewBtn.frame                         = CGRectMake(10, 100, 250, 35);
    [UIWebViewBtn setTitle:@"UIWebView" forState:UIControlStateNormal];
    UIWebViewBtn.titleLabel.font               = [UIFont systemFontOfSize:15];
    [UIWebViewBtn setTitleColor:[UIColor orangeColor] forState:UIControlStateNormal];
    
    //albumBtn.contentMode=UIViewContentModeScaleAspectFit;
    [UIWebViewBtn addTarget:self action:@selector(btnClick1) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:UIWebViewBtn];
    
    UIButton * WKWebViewBtn                    = [UIButton buttonWithType:UIButtonTypeCustom];
    WKWebViewBtn.frame                         = CGRectMake(10, 300, 250, 35);
    [WKWebViewBtn setTitle:@"WKWebView" forState:UIControlStateNormal];
    WKWebViewBtn.titleLabel.font               = [UIFont systemFontOfSize:15];
    [WKWebViewBtn setTitleColor:[UIColor orangeColor] forState:UIControlStateNormal];
    
    //albumBtn.contentMode=UIViewContentModeScaleAspectFit;
    [WKWebViewBtn addTarget:self action:@selector(btnClick2) forControlEvents:UIControlEventTouchUpInside];
    //[self.view addSubview:WKWebViewBtn];
}

- (void)btnClick1 {
    URLWebViewController *webVC = [[URLWebViewController alloc] init];
    [self.navigationController pushViewController:webVC animated:YES];
}


- (void)btnClick2 {
    URLWKWebViewController *wkWebVC = [[URLWKWebViewController alloc] init];
    [self.navigationController pushViewController:wkWebVC animated:YES];
}

@end
