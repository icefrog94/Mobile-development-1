//
//  ViewController.swift
//  CeltoFahtoCelSwift
//
//  Created by Wai Yan Kaung on 11/12/15.
//  Copyright (c) 2015 Wai Yan Kaung. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet var celsius : UITextField!
    @IBOutlet var fahrenheit : UITextField!
    @IBOutlet var button : UIButton!
    
    @IBAction func tempConverter(sender : AnyObject) {
        if fahrenheit.text.isEmpty && celsius.text.isEmpty {
            celsius.text = nil;
            fahrenheit.text = nil;
        } else if celsius.text.isEmpty {
            let fahrenheitAmount = (fahrenheit.text as NSString).doubleValue
            let calcCelsius = (5.0/9.0 * (fahrenheitAmount - 32.0));
            let resultCelsius = calcCelsius;
            var stringCel = "\(resultCelsius)";
            celsius.text = stringCel;
            fahrenheit.resignFirstResponder();
        } else if fahrenheit.text.isEmpty {
            let celsiusAmount = (celsius.text as NSString).doubleValue
            let calcFahrenheit = (9.0/5.0 * celsiusAmount + 32.0);
            let resultFahrenheit = calcFahrenheit;
            var stringFah = "\(resultFahrenheit)";
            fahrenheit.text = stringFah;
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
    
    @IBAction func clearCelsius(sender : AnyObject) {
        celsius.text = nil;
    }
    
    @IBAction func clearFahrenheit(sender : AnyObject) {
        fahrenheit.text = nil;
    }
    
}

