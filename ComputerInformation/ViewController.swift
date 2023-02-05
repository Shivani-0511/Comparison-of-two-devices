//
//  ViewController.swift
//  ComputerInformation
//
//  Created by Apple on 27/12/22.
//

import UIKit

class ViewController: UIViewController {
    //let machineDetail : machine?
    @IBOutlet weak var nameUITextField: UITextField!
    
    @IBOutlet weak var ramUITextField: UITextField!
    
    @IBOutlet weak var storageUITextField: UITextField!
    
    @IBOutlet weak var screenSizeUITextField: UITextField!
    
    @IBOutlet weak var processorUITextField: UITextField!
    
    @IBOutlet weak var priceUITextField: UITextField!
    
    
    @IBOutlet weak var batteryLifeUITextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func nextButtonAction(_ sender: Any) {
        
        if let nameString =  nameUITextField.text, let ramString = ramUITextField.text, let ramNum = Int(ramString),let storageString = storageUITextField.text, let storageName = Int(storageString),let screenSizeString = screenSizeUITextField.text,let screenNum = Double(screenSizeString), let processor = processorUITextField.text , let processorNum = Int(processor) , let price = priceUITextField.text, let priceNum = Int(price),let batteryLife = batteryLifeUITextField.text , let batteryLifeNum = Int(batteryLife){
            
            let machine1 = ComputerInformation(name: nameString, ram: ramNum, storage: storageName, screenSize: screenNum, processor: processorNum, price: priceNum, batteryLife: batteryLifeNum)
            let main = UIStoryboard(name: "Main", bundle: .none)
            let machine2InfoVC = main.instantiateViewController(withIdentifier: "Machine2ViewController") as! Machine2ViewController
            machine2InfoVC.machine1 = machine1
             self.present(machine2InfoVC, animated: true, completion: nil)
        }
       

    }
    
}

