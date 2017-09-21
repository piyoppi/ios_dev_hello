//
//  Hoge.swift
//  hello
//
//  Created by shohei.ogata on 2017/09/21.
//  Copyright © 2017年 GMO Pepabo. All rights reserved.
//

import Foundation

class Hoge {
    var id: Int
    var content: String
    
    init(id: Int, content: String) {
        self.id = id
        self.content = content
    }
    
    static func fetchHoges(handler: @escaping ((Array<Hoge>) -> Void)) {
        APIClient.request(endpoint: Endpoint.HogeIndex) { json in
            let hoges = json["data"].arrayValue.map {
                Hoge(id: $0["id"].intValue, content: $0["content"].stringValue)
            }
            
            handler(hoges)
        }
    }
}
