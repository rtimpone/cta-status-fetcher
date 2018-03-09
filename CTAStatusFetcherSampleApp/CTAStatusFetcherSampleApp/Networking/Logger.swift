//
//  Logger.swift
//  TrainTracker
//
//  Created by Rob Timpone on 10/14/17.
//  Copyright © 2017 Rob Timpone. All rights reserved.
//

import Foundation

struct Logger {
    
    static func logResponse(_ response: URLResponse) {
        
        var statusCode = "UNKNOWN STATUS CODE"
        if let httpResponse = response as? HTTPURLResponse {
            statusCode = String(httpResponse.statusCode)
        }
        
        var url = "UNKNOWN URL"
        if let responseURL = response.url {
            url = responseURL.absoluteString
        }
        
        print("(\(statusCode)) \(url)")
    }
}
