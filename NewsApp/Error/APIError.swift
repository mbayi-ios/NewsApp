//
//  APIError.swift
//  NewsApp
//
//  Created by Amby on 14/12/2022.
//

import Foundation

enum APIError: Error {
    case decodingError
    case errorCode(Int)
    case unknown
}

extension APIError: LocalizedError {
    var errorDescription: String? {
        switch self {
        case .decodingError:
            return "failed to decode the object from the service"
        case .errorCode(let code):
            return "\(code) - something went wrong"
        case .unknown:
            return "the error is unknown"
        }
    }
}
