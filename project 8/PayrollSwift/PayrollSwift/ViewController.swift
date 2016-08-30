//
//  ViewController.swift
//  PayrollSwift
//
//  Created byWai Yan Kaung on 11/16/15.
//  Copyright (c) 2015 Wai Yan Kaung. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet var hours : UITextField!
    @IBOutlet var wage : UITextField!
    @IBOutlet var button : UIButton!
    @IBOutlet var pay : UILabel!

    @IBAction func calculatePayroll(sender : AnyObject) {
        if hours.text.isEmpty {
            let result = "Please Enter hours worked";
            pay.text = result;
            hours.resignFirstResponder();
        } else if wage.text.isEmpty {
            let result = "Please Enter hourly wage";
            pay.text = result;
            wage.resignFirstResponder();
        } else {
            let hoursAmount = (hours.text as NSString).doubleValue;
            let wageAmount = (wage.text as NSString).doubleValue;
            if hoursAmount >= 40.0 {
                let calcPay = ((40.0 * wageAmount) + (wageAmount * (hoursAmount + (hoursAmount / 2.0) - 60.0)));
                let result = "Your total pay is $\(calcPay)";
                pay.text = result;
                hours.resignFirstResponder();
                wage.resignFirstResponder();
            } else {
                let calcPay = (wageAmount * hoursAmount);
                let result = "Your total pay is $\(calcPay)";
                pay.text = result;
                hours.resignFirstResponder();
                wage.resignFirstResponder();
                
            }
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

