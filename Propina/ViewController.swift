//
//  ViewController.swift
//  Propina
//
//  Created by KMMX on 16/10/20.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tfTotal: UITextField!
    
    @IBOutlet weak var scPropina: UISegmentedControl!
    
    @IBOutlet weak var tlPropina: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func calculaPropina(_ sender: Any) {
        var textTotal : Double! = Double(tfTotal.text!) ?? 0
        //var total : Double = Double(textTotal)
        switch scPropina.selectedSegmentIndex {
        case 0:
            tlPropina.text = String(textTotal*0.15)
        case 1:
            tlPropina.text = String(textTotal*0.2)
        case 2:
            tlPropina.text = String(textTotal*0.25)
        default:
            ""
        }
    }
    
    
}

