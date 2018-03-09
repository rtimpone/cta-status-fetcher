//
//  ViewController.swift
//  CTAStatusFetcherSampleApp
//
//  Created by Rob Timpone on 3/9/18.
//  Copyright © 2018 Rob Timpone. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let router = NetworkTaskRouter()
        let task = GetRoutesStatusNetworkTask()
        
        router.sendTask(task) { result in
            
            switch result {
            case .success (let data):
                print(data)
            case .failure:
                print("failed")
            }
        }
    }
}
