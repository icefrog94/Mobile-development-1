//
//  Square.m
//  SquareObj-C
//
//  Created by Wai Yan Kaung on 11/9/15.
//  Copyright (c) 2015 Wai Yan Kaung. All rights reserved.
//

#import "Square.h"

@interface Square ()

@end

@implementation ViewController

@synthesize length;
@synthesize width;
@synthesize perimeter;
@synthesize area;
@synthesize button;
@synthesize stringLength;
@synthesize stringWidth;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)rectangle:(id)sender{
    self.stringLength = length.text;
    self.stringWidth = width.text;
    double x = [length.text doubleValue];
    double y = [width.text doubleValue];
    if([length.text length] == 0){
        NSString *calcPerimeter = [[NSString alloc]initWithFormat:@"Please Enter a Length"];
        NSString *calcArea = [[NSString alloc]initWithFormat:@" "];
        perimeter.text = calcPerimeter;
        area.text = calcArea;
        [perimeter resignFirstResponder];
        [area resignFirstResponder];
    } else if([width.text length] == 0){
        NSString *calcPerimeter = [[NSString alloc]initWithFormat:@" "];
        NSString *calcArea = [[NSString alloc]initWithFormat:@"Please Enter a Width"];
        perimeter.text = calcPerimeter;
        area.text = calcArea;
        [perimeter resignFirstResponder];
        [area resignFirstResponder];
    } else {
        NSString *calcArea = [[NSString alloc]initWithFormat:@"Radius: %f", x * y];
        NSString *calcPerimeter = [[NSString alloc]initWithFormat:@"Area: %f", (x + y) * 2];
        area.text = calcArea;
        perimeter.text = calcPerimeter;
        [perimeter resignFirstResponder];
        [area resignFirstResponder];
    }
}

@end
