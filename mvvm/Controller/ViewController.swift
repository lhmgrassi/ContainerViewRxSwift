//
//  CounterViewController.swift
//  mvvm
//
//  Created by Luis Henrique Mendonça Grassi on 28/04/17.
//  Copyright © 2017 Luis Henrique Mendonça Grassi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let vc = segue.destination as! CounterViewController
        
        let counter = Counter()
        vc.counterViewModel = CounterViewModel(counter: counter)
    }

}
