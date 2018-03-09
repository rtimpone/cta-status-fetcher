//
//  Parser.swift
//  TrainTracker
//
//  Created by Rob Timpone on 10/14/17.
//  Copyright © 2017 Rob Timpone. All rights reserved.
//

import Foundation

struct Parser {
    
    static func parse<T: Decodable>(jsonData data: Data, intoType type: T.Type) -> T? {
        
        do {
            let decoder = JSONDecoder()
            return try decoder.decode(T.self, from: data)
        }
        catch {
            print("Parser was unable to parse json data")
            return nil
        }
    }
}
