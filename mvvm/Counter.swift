//
//  Counter.swift
//  mvvm
//
//  Created by Luis Henrique Mendonça Grassi on 28/04/17.
//  Copyright © 2017 Luis Henrique Mendonça Grassi. All rights reserved.
//

import UIKit

class Counter: NSObject {
    var count : Int = 0
    
    func incCount(_ inc : Int = 1) -> Int{
        count = count + inc
        return count
    }
}
