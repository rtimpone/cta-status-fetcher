//
//  RouteStatus.swift
//  TrainTracker
//
//  Created by Rob Timpone on 10/12/17.
//  Copyright © 2017 Rob Timpone. All rights reserved.
//

import Foundation

struct RouteInfo: Decodable {
    
    let routesList: RoutesList
    
    enum CodingKeys: String, CodingKey {
        case routesList = "CTARoutes"
    }
}

struct RoutesList: Decodable {
    
    let routes: [RouteStatus]
    
    enum CodingKeys: String, CodingKey {
        case routes = "RouteInfo"
    }
}

enum RouteType {
    case blue
    case brown
    case green
    case orange
    case pink
    case purple
    case red
    case yellow
    case unknown
}

struct RouteStatus: Decodable {
    
    let name: String
    let status: String
    
    var isTrainRoute: Bool { return name.range(of: " Line") != nil }
    var routeType: RouteType { return routeTypeForName(name) }
    
    //possible statuses: "Significant Delays", "Planned Work", "Normal Service", "Planned Work w/Station(s) Bypassed"
    
    enum CodingKeys: String, CodingKey {
        case name = "Route"
        case status = "RouteStatus"
    }
}

private extension RouteStatus {
    
    func routeTypeForName(_ name: String) -> RouteType {
        
        if name.hasSuffix("Blue Line") {
            return .blue
        }
        else if name.hasSuffix("Brown Line") {
            return .brown
        }
        else if name.hasSuffix("Green Line") {
            return .green
        }
        else if name.hasSuffix("Orange Line") {
            return .orange
        }
        else if name.hasSuffix("Pink Line") {
            return .pink
        }
        else if name.hasSuffix("Purple Line") {
            return .purple
        }
        else if name.hasSuffix("Red Line") {
            return .red
        }
        else if name.hasSuffix("Yellow Line") {
            return .yellow
        }
        else {
            return .unknown
        }
    }
}
