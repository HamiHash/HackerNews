import Foundation

struct Results: Decodable {
    let hits: [Post]
}

struct Post: Decodable, Identifiable {
    var id: Int {
        return Int(objectID)!
    }
    let objectID: String
    let points: Int
    let title: String
    let url: String?
}
