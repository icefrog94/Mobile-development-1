//
//  ViewController.h
//  SquareObj-C
//
//  Created by Wai Yan Kaung R on 11/9/15.
//  Copyright (c) 2015 Wai Yan Kaung. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UITextFieldDelegate>
{
    UITextField *length;
    UITextField *width;
    UILabel *perimeter;
    UILabel *area;
    NSString *stringLength;
    NSString *stringWidth;
    UIButton *button;
    
}


@property (nonatomic, retain) IBOutlet UITextField *length;
@property (nonatomic, retain) IBOutlet UITextField *width;
@property (nonatomic, retain) IBOutlet UILabel *perimeter;
@property (nonatomic, retain) IBOutlet UILabel *area;
@property (nonatomic, retain) IBOutlet UIButton *button;
@property (nonatomic, copy) NSString *stringLength;
@property (nonatomic, copy) NSString *stringWidth;

-(IBAction)rectangle:(id)sender;


@end

