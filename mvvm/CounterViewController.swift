//
//  CounterViewController.swift
//  mvvm
//
//  Created by Luis Henrique Mendonça Grassi on 28/04/17.
//  Copyright © 2017 Luis Henrique Mendonça Grassi. All rights reserved.
//

import UIKit
import RxSwift
import RxCocoa

class CounterViewController: UIViewController {

    @IBOutlet weak var counterLabel : UILabel!
    @IBOutlet weak var closeButton : UIButton!
    
    private let disposeBag = DisposeBag()
    
    var counterViewModel : CounterViewModel!
    
    var controllerAA : ContainerViewController!
    var controllerBB : ContainerViewController!
    
    deinit {
        print ("deinit")
    }
    
    override func viewDidLoad() {
        print("willViewDidLoad")
        super.viewDidLoad()
        fillUI()
        
        closeButton.rx.tap.subscribe(onNext: { [unowned self] in
           self.dismiss(animated: true, completion: nil)
        }).addDisposableTo(disposeBag)
        
        controllerAA.textField.text = "AA"
        controllerBB.textField.text = "BB"
        
        print("didViewDidLoad")
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        print("willprepare")
        if segue.identifier == "aa" {
            controllerAA = segue.destination as! ContainerViewController
        } else if segue.identifier == "bb" {
            controllerBB = segue.destination as! ContainerViewController
        }
        print("didprepare")
    }
    
    fileprivate func fillUI() {
        if !isViewLoaded {
            return
        }
        
        guard let viewModel = counterViewModel else {
            return
        }
        
       // unowned let weakSelf = self
        viewModel.count.asObservable().subscribe(onNext: { [unowned self] (count) in
            self.counterLabel.text = count
        }).addDisposableTo(disposeBag)
    }
    
    // MARK: IBAction
    
    @IBAction func counterButtonTapped(sender : AnyObject) {
        counterViewModel.incCount()
    }


}
