//
//  APIClient.swift
//  hello
//
//  Created by shohei.ogata on 2017/09/21.
//  Copyright © 2017年 GMO Pepabo. All rights reserved.
//

import Foundation
import Alamofire
import SwiftyJSON

class APIClient {
    static private let baseURL = "https://engineers-training.herokuapp.com"
    
    static func request(endpoint: Endpoint, handler: @escaping (_ json: JSON) -> Void) {
        let method = endpoint.method()
        let url = fullURL(endpoint: endpoint)
        
        Alamofire.request(url, method: method).validate(statusCode: 200...299).responseJSON {response in
            switch response.result {
            case .success(let value):
                handler(JSON(value))
            case .failure(let error):
                print(error)
            }
        }
    }
    
    static private func fullURL(endpoint: Endpoint) -> String {
        return baseURL + endpoint.path()
    }
}

enum Endpoint {
    case HogeIndex
    case Characters
    
    func method() -> HTTPMethod {
        switch self {
        case .HogeIndex: return .get
        case .Characters: return .get
        }
    }
    
    func path() -> String {
        switch self {
        case .HogeIndex:
            return "/api/microposts"
        case .Characters:
            return "/api/characters"
        }
    }
}
