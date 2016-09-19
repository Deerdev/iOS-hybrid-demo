//
//  QRCodeScanVC.h
//  QRCodeTest
//
//  Created by daoquan on 16/9/12.
//  Copyright © 2016年 feixun. All rights reserved.
//

#import <UIKit/UIKit.h>

//第一步，定义block类型
typedef void(^CodeBlock)(NSString *);

@interface QRCodeScanVC : UIViewController

//第二步，定义block属性
@property(nonatomic,copy) CodeBlock codeBlock;

@end
