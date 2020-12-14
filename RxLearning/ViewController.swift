//
//  ViewController.swift
//  RxLearning
//
//  Created by xuanquynhle on 2020/12/14.
//

import UIKit

class ViewController: UIViewController {
    var array = [1, 2, 3]
    var currentIndex = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func onButtonTouched(_ sender: Any) {
        print(array[currentIndex])
        if currentIndex != array.count-1 {
            currentIndex += 1
        }
    }
    
}

