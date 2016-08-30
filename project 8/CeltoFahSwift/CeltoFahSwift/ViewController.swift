//
//  ViewController.swift
//  CeltoFahSwift
//
//  Created by Wai Yan Kaung on 11/9/15.
//  Copyright (c) 2015 Wai Yan Kaung. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet var celsius : UITextField!
    @IBOutlet var fahrenheit : UILabel!
    @IBOutlet var button : UIButton!
    
    @IBAction func tempConverter(sender : AnyObject) {
        if celsius.text.isEmpty {
            let result = "Please Enter Number";
            fahrenheit.text = result;
            celsius.resignFirstResponder();
        } else {
            let celsiusAmount = (celsius.text as NSString).doubleValue;
            let calcFahrenheit = (9.0/5.0 * celsiusAmount + 32.0);
            let result = "Fahrenheit \(calcFahrenheit)";
            fahrenheit.text = result;
            celsius.resignFirstResponder();
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

