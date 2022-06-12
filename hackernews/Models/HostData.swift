//
//  HostData.swift
//  hackernews
//
//  Created by olivia on 12/06/2022.
//

import Foundation

struct Results: Decodable {
    let hits: [Post]
}

struct Post: Decodable, Identifiable {
    var id: String {
        return objectID
    }
    let title: String
    let url: String?
    let objectID: String
    let points: Int
}
