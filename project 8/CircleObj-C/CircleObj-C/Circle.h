//
//  Circle.h
//  CircleObj-C
//
//  Created by Wai Yan Kaung on 11/9/15.
//  Copyright (c) 2015 Wai Yan Kaung. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface Circle : UIViewController <UITextFieldDelegate>
{
    UITextField *radius;
    UILabel *circumference;
    UILabel *area;
    NSString *string;
    UIButton *button;
    
}


@property (nonatomic, retain) IBOutlet UITextField *radius;
@property (nonatomic, retain) IBOutlet UILabel *circumference;
@property (nonatomic, retain) IBOutlet UILabel *area;
@property (nonatomic, retain) IBOutlet UIButton *button;
@property (nonatomic, copy) NSString *string;

-(IBAction)circle:(id)sender;


@end

