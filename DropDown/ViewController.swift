//
//  ViewController.swift
//  DropDown
//
//  Created by Kumari Mansi on 17/01/25.
//

import UIKit

import UIKit

class ViewController: UIViewController {

 
    @IBOutlet var cityButtons: [UIButton]!
    
    @IBOutlet var select: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        select.layer.cornerRadius = select.frame.height / 2.0
        
            cityButtons.forEach { (button) in
            button.layer.cornerRadius = button.frame.height / 2.0
                button.isHidden = true
            
        }
    }

    @IBAction func selectButton(_ sender: UIButton) {
        cityButtons.forEach { (button) in
            button.isHidden = !button.isHidden
            
        }
    }

    @IBAction func button(_ sender: UIButton) {
        if let  btnLabel = sender.titleLabel?.text {
            print(btnLabel)
        }
    }
}
