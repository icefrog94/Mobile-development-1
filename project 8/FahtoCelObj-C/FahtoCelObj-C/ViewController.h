//
//  ViewController.h
//  FahtoCelObj-C
//
//  Created by Wai Yan Kaung on 11/9/15.
//  Copyright (c) 2015 Wai Yan Kaung. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UITextFieldDelegate>
{
    UITextField *fahrenheit;
    UILabel *celsius;
    NSString *string;
    UIButton *button;
    
}

@property (nonatomic, retain) IBOutlet UITextField *fahrenheit;
@property (nonatomic, retain) IBOutlet UILabel *celsius;
@property (nonatomic, retain) IBOutlet UIButton *button;
@property (nonatomic, copy) NSString *string;

-(IBAction)tempConverter:(id)sender;


@end

