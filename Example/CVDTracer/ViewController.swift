//
//  ViewController.swift
//  CVDTracer
//
//  Created by Martin Victory on 08/24/2020.
//  Copyright (c) 2020 Martin Victory. All rights reserved.
//

import UIKit
import CVDTracer

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    override func viewDidAppear(_ animated: Bool) {
        self.present(CVDTracer.NewInteractionViewController(), animated: true, completion: nil)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

