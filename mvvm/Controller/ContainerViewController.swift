//
//  CounterViewController.swift
//  mvvm
//
//  Created by Luis Henrique Mendonça Grassi on 28/04/17.
//  Copyright © 2017 Luis Henrique Mendonça Grassi. All rights reserved.
//

import UIKit

class ContainerViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var textField : UITextField!
    
    @IBAction func buttonTapped(sender : UIButton) {
        print("button tapped")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        print(string)
        return true
    }

    @IBAction func buttonTapped(_ sender: Any) {
        print("tapped")
    }
}
