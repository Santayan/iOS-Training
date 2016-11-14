//
//  ViewController.swift
//  randomNumberGenerator
//
//  Created by Paul, Santayan on 11/7/16.
//  Copyright © 2016 Paul, Santayan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var lowerField: UITextField!
    
    @IBOutlet var upperField: UITextField!
    
    @IBOutlet weak var theSwitch: UISwitch!
    
    @IBAction func colorSwitch(_ sender: Any) {
        
        if theSwitch.isOn {
            // TODO for Dark And Light Theme
        }
        
    }
    
    @IBOutlet var resultOutput: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        resultOutput.isHidden = true;
        self.lowerField.becomeFirstResponder()
        // Do any additional setup after loading the view, typically from a nib.
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    @IBAction func generateRandomNumber(_ sender: Any) {
        
        resultOutput.isHidden = false;
        
        self.upperField.resignFirstResponder();
        self.lowerField.resignFirstResponder();
        
        let upperNumber:Int? = Int(upperField.text!);
        let lowerNumber:Int? = Int(lowerField.text!);
        
        if (upperNumber != nil && lowerNumber != nil && upperNumber! >= lowerNumber!)
        {
            let randomNumber = lowerNumber! + Int(arc4random_uniform(UInt32(upperNumber! - lowerNumber! + 1)))
            resultOutput.text = String(randomNumber);
            } else if (upperNumber == nil){
            resultOutput.text = " Upper Bound Cannot Be Blank "
            } else if (lowerNumber == nil){
            resultOutput.text = " Lower Bound Cannot Be Blank "
            } else if (upperNumber! < lowerNumber!){
            resultOutput.text = " Upper Bound Cannot Be Less Than Lower Bound "
            }
        }
    }

