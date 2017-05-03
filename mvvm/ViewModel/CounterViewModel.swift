//
//  Counter.swift
//  mvvm
//
//  Created by Luis Henrique Mendonça Grassi on 28/04/17.
//  Copyright © 2017 Luis Henrique Mendonça Grassi. All rights reserved.
//

import UIKit
import RxSwift

class CounterViewModel: NSObject {
    private let counter : Counter!
    
    var count : Variable<String>
    
    init(counter : Counter) {
        self.counter = counter
        count = Variable<String>(String(counter.count))
    }
    
    func incCount(_ inc : Int = 1){
        count.value = String(counter.incCount(inc))
    }
}
