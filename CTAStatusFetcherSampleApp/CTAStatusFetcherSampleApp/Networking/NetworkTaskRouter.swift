//
//  NetworkTaskRouter.swift
//  TrainTracker
//
//  Created by Rob Timpone on 2/1/18.
//  Copyright © 2018 Rob Timpone. All rights reserved.
//

import Foundation

//remove this import
import UIKit

enum Result {
    case success(Data)
    case failure
}

struct NetworkTaskRouter {
    
    func sendTask(_ task: NetworkTask, completion: @escaping (Result) -> Void) {
        
        let url = task.endpoint.url
        let task = URLSession.shared.dataTask(with: url) { data, response, error in
            
            if let response = response {
                Logger.logResponse(response)
            }
            
            DispatchQueue.main.async {
                
                if let data = data {
                    completion(.success(data))
                }
                else {
                    completion(.failure)
                }
            }
        }
        
        task.resume()
    }
}
