//
//  NewsResponse.swift
//  NewsApp
//
//  Created by Amby on 14/12/2022.
//

import Foundation

struct NewsResponse: Codable {
    let articles: [Article]
}

struct Article: Codable, Identifiable {
    let id = UUID()
    let author: String?
    let url: String
    let source, title, articleDescription: String
    let image: String
    let date: Date

    enum CodingKeys: String, CodingKey {
        case author, url, source, title
        case articleDescription = "description"
        case image,date
    }
}
