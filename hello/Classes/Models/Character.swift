import Foundation

class Character {
    var name: String
    var level: Int
    var imageURL: String
    
    init(name: String, level: Int, imageURL: String) {
        self.name = name
        self.level = level
        self.imageURL = imageURL
    }
    
    static func fetchCharacters(handler: @escaping ((Array<Character>)->Void)) {
        APIClient.request(endpoint: Endpoint.Characters) { json in
            let characters = json["data"].arrayValue.map {
                Character(name: $0["name"].stringValue, level: $0["level"].intValue, imageURL: $0["image_url"].stringValue)
            }
           
            handler(characters)
        }
    }
}
