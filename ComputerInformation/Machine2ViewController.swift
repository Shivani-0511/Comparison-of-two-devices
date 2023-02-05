//
//  Machine2ViewController.swift
//  ComputerInformation
//
//  Created by Apple on 27/12/22.
//

import UIKit

class Machine2ViewController: UIViewController {
    var machine1 : ComputerInformation?

    @IBOutlet weak var name2UITextField: UITextField!
    
    @IBOutlet weak var ram2UITextField: UITextField!
    
    @IBOutlet weak var storage2UITextField: UITextField!
    
    @IBOutlet weak var screenSize2UITextField: UITextField!
    
    @IBOutlet weak var processor2UITextField: UITextField!
    
    @IBOutlet weak var price2UITextField: UITextField!
    
    @IBOutlet weak var batteryLife2UITextField: UITextField!
    
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func nextButtonAction(_ sender: Any) {
        
        if let nameString =  name2UITextField.text, let ramString = ram2UITextField.text, let ramNum = Int(ramString),let storageString = storage2UITextField.text, let storageName = Int(storageString),let screenSizeString = screenSize2UITextField.text,let screenNum = Double(screenSizeString), let processor = processor2UITextField.text , let processorNum = Int(processor) , let price = price2UITextField.text, let priceNum = Int(price),let batteryLife = batteryLife2UITextField.text , let batteryLifeNum = Int(batteryLife){
           
            let machine2 = ComputerInformation(name: nameString, ram: ramNum, storage: storageName, screenSize: screenNum, processor: processorNum, price: priceNum, batteryLife: batteryLifeNum)
            let main = UIStoryboard(name: "Main", bundle: .none)
            let compareVC = main.instantiateViewController(withIdentifier: "CompareViewController") as! CompareViewController
            compareVC.machine2 = machine2
            compareVC.machine1 = machine1

             self.present(compareVC, animated: true, completion: nil)
        }
        
        
        
    }
    @IBAction func backButtonAction(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)

    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
