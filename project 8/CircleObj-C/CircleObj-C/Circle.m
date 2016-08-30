//
//  Circle.m
//  CircleObj-C
//
//  Created by Wai Yan Kaung on 11/9/15.
//  Copyright (c) 2015 Wai Yan Kaung. All rights reserved.
//

#import "Circle.h"

@interface Circle ()

@end

@implementation Circle

@synthesize radius;
@synthesize circumference;
@synthesize area;
@synthesize button;
@synthesize string;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)circle:(id)sender {
    self.string = radius.text;
    double x = [radius.text doubleValue];
    if([radius.text length] == 0){
        NSString *calcArea = [[NSString alloc]initWithFormat:@"Please Enter a Number"];
        NSString *calcCircum = [[NSString alloc]initWithFormat:@" "];
        area.text = calcArea;
        circumference.text = calcCircum;
        [circumference resignFirstResponder];
        [area resignFirstResponder];
    } else {
        NSString *calcArea = [[NSString alloc]initWithFormat:@"Radius: %f", M_PI * (x * x)];
        NSString *calcCircum = [[NSString alloc]initWithFormat:@"Area: %f", M_PI * x * 2];
        area.text = calcArea;
        circumference.text = calcCircum;
        [circumference resignFirstResponder];
        [area resignFirstResponder];
    }
}

@end
