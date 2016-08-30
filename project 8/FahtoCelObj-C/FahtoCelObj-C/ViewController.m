//
//  ViewController.m
//  FahtoCelObj-C
//
//  Created by Wai Yan Kaung on 11/9/15.
//  Copyright (c) 2015 Wai Yan Kaung. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

@synthesize fahrenheit;
@synthesize celsius;
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

- (void)tempConverter:(id)sender {
    self.string = fahrenheit.text;
    double x = [fahrenheit.text doubleValue];
    if([fahrenheit.text length] == 0){
        NSString *calcCelsius = [[NSString alloc]initWithFormat:@"Please Enter a Number"];
        celsius.text = calcCelsius;
        [celsius resignFirstResponder];
    } else {
        NSString *calcCelsius = [[NSString alloc]initWithFormat:@"Celsius: %f", 5.0/9.0 * (x - 32)];
        celsius.text = calcCelsius;
        [celsius resignFirstResponder];
    }
}

@end
