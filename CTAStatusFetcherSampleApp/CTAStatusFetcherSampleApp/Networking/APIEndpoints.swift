//
//  APIEndpoints.swift
//  TrainTracker
//
//  Created by Rob Timpone on 10/14/17.
//  Copyright © 2017 Rob Timpone. All rights reserved.
//

import Foundation

enum APIEndpoint: String {
    
    case routesStatus = "http://www.transitchicago.com/api/1.0/routes.aspx?outputType=JSON"
    
    var url: URL {
        guard let validURL = URL(string: rawValue) else {
            fatalError("Endpoint is not a valid URL: \(rawValue)")
        }
        return validURL
    }
}
