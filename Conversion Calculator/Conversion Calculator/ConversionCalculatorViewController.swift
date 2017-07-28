//
//  ViewController.swift
//  Conversion Calculator
//
//  Created by Whitaker, Cody (MU-Student) on 7/27/17.
//  Copyright © 2017 Whitaker, Cody (MU-Student). All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var convertFromText: UITextField!
    @IBOutlet weak var convertToText: UITextField!
    
    var convert = Convert(convertFrom: Convert.Symbols.fahrenheit, convertTo: Convert.Symbols.celsius)

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        updateConvert()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func appendNumber(_ number: Double) {
        
    }
    
    func updateConvert() {
        convertFromText.text = convert.from.rawValue
        convertToText.text = convert.to.rawValue
    }
    
    @IBAction func converter(_ sender: Any) {
        let alert = UIAlertController(title: "Choose Converter", message: "", preferredStyle: UIAlertControllerStyle.actionSheet)
        alert.addAction(UIAlertAction(title: "Fahrenheit to Celsius", style: UIAlertActionStyle.default, handler: {
            (alertAction) -> Void in
            self.convert.from = .celsius
            self.convert.to = .fahrenheit
            self.updateConvert()
        }))
        alert.addAction(UIAlertAction(title: "Celsius to Fahrenheit", style: UIAlertActionStyle.default, handler: {
            (alertAction) -> Void in
            self.convert.from = .fahrenheit
            self.convert.to = .celsius
            self.updateConvert()
        }))
        alert.addAction(UIAlertAction(title: "Miles to Kilometers", style: UIAlertActionStyle.default, handler: {
            (alertAction) -> Void in
            self.convert.from = .miles
            self.convert.to = .kilometers
            self.updateConvert()
        }))
        alert.addAction(UIAlertAction(title: "Kilometers to Miles", style: UIAlertActionStyle.default, handler: {
            (alertAction) -> Void in
            self.convert.from = .kilometers
            self.convert.to = .miles
            self.updateConvert()
        }))
        self.present(alert, animated: true, completion: nil)
    }
    
    @IBAction func clear(_ sender: Any) {
        convertFromText.text = convert.from.rawValue
        convertToText.text = convert.to.rawValue
    }
    
    @IBAction func plusminus(_ sender: Any) {
    }
    
    @IBAction func decimal(_ sender: Any) {
    }
    
    @IBAction func zero(_ sender: Any) {
    }
    
    @IBAction func one(_ sender: Any) {
    }
    
    @IBAction func two(_ sender: Any) {
    }
    
    @IBAction func three(_ sender: Any) {
    }
    
    @IBAction func four(_ sender: Any) {
    }
    
    @IBAction func five(_ sender: Any) {
    }
    
    @IBAction func six(_ sender: Any) {
    }
    
    @IBAction func seven(_ sender: Any) {
    }
    
    @IBAction func eight(_ sender: Any) {
    }
    
    @IBAction func nine(_ sender: Any) {
    }
}


