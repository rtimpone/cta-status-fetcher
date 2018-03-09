//
//  NetworkTask.swift
//  TrainTracker
//
//  Created by Rob Timpone on 10/14/17.
//  Copyright © 2017 Rob Timpone. All rights reserved.
//

import Foundation

protocol NetworkTask {
    var endpoint: APIEndpoint { get }
}
