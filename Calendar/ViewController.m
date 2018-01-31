//
//  ViewController.m
//  Calendar
//
//  Created by 邵勇 on 2018/1/30.
//  Copyright © 2018年 null. All rights reserved.
//

#import "ViewController.h"
#import "XRCalendarPicker.h"

@interface ViewController ()

@property (nonatomic, strong) XRCalendarPicker *calendar;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    self.calendar = [[XRCalendarPicker alloc] initWithFrame:CGRectMake(0, 0, 320, 350)];
    self.calendar.center = self.view.center;
    self.calendar.today = [NSDate date];
    self.calendar.date = [NSDate date];
    [self.view addSubview:self.calendar];
    
    [self.calendar setDidSelectedDate:^(NSString *strDate) {
        NSLog(@"strDate:%@",strDate);
    }];
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
