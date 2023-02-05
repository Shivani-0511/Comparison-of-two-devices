//
//  CompareViewController.swift
//  ComputerInformation
//
//  Created by Apple on 27/12/22.
//

import UIKit

class CompareViewController: UIViewController {
    var machine1 : ComputerInformation?
    var machine2 : ComputerInformation?
    var point1 : Int = 0
    var point2 : Int = 0

    @IBOutlet weak var nameUILabel: UILabel!
    @IBOutlet weak var ramUILabel: UILabel!
    @IBOutlet weak var storageUILabel: UILabel!
    @IBOutlet weak var screenSizeUILabel: UILabel!
    
    @IBOutlet weak var processorUILabel: UILabel!
    @IBOutlet weak var priceUILabel: UILabel!
    @IBOutlet weak var batteryLifeUILabel: UILabel!
    @IBOutlet weak var name1UILabel: UILabel!
    @IBOutlet weak var ram1UILabel: UILabel!
    @IBOutlet weak var storage1UILabel: UILabel!
    @IBOutlet weak var screensize1UILabel: UILabel!
    
    @IBOutlet weak var processor1UILabel: UILabel!
    @IBOutlet weak var price1UILabel: UILabel!
    @IBOutlet weak var batteryLife1UILabel: UILabel!
    @IBOutlet weak var name2UILabel: UILabel!
    @IBOutlet weak var ram2UILabel: UILabel!
    @IBOutlet weak var storage2UILabel: UILabel!
    
    @IBOutlet weak var screenSize2UILabel: UILabel!
   
    
    @IBOutlet weak var processor2UILabel: UILabel!
    
    @IBOutlet weak var price2UILabel: UILabel!
    
    @IBOutlet weak var batteryLife2UILabel: UILabel!
    
    @IBOutlet weak var resultUILabel: UILabel!
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        if let machine1 = machine1 {
            name1UILabel.text = machine1.name
            ram1UILabel.text = "\(machine1.ram) GB"
            storage1UILabel.text = "\(machine1.storage) GB"
            screensize1UILabel.text = "\(machine1.screenSize) inches"
            processor1UILabel.text = "\(machine1.processor)"
            price1UILabel.text = "\(machine1.price) Rs."
            batteryLife1UILabel.text = "\(machine1.batteryLife) hours"
        }
        if let machine2 = machine2 {
            name2UILabel.text = machine2.name
            ram2UILabel.text = "\(machine2.ram) GB"
            storage2UILabel.text = "\(machine2.storage) GB "
            screenSize2UILabel.text = "\(machine2.screenSize) inches"
            processor2UILabel.text = "\(machine2.processor)"
            price2UILabel.text = "\(machine2.price) Rs."
            batteryLife2UILabel.text = "\(machine2.batteryLife) hours"
        }
        if let machine1 = machine1 ,let machine2 = machine2 {
            if machine1.processor >= machine2.processor {
                point1 += 1
            } else {
                point2 += 1
            }
            if machine1.ram >= machine2.ram{
                point1 += 1
            } else {
                point2 += 1
        }
            if machine1.price <= machine2.price{
                point1 += 1
            } else {
                point2 += 1
            }
            if point1 > point2{
                resultUILabel.text = "\(machine1.name) is better than \(machine2.name)"
            }
            else{
                resultUILabel.text = "\(machine2.name) is better than \(machine1.name)"

            }
        }
    
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
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
