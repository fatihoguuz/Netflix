//
//  NetworkConstans.swift
//  Netflix
//
//  Created by Fatih Oğuz on 21.10.2024.
//

import Foundation

protocol EndPointProtocol {
    var baseURL: String {get}
    var genreURL: String {get}
    var apiKey: String {get}
    var methot: HTPPMethod {get}
    
    func movieApiURL() -> String
    func request() -> URLRequest
}

enum HTPPMethod: String{
    case post = "POST"
    case get = "GET"
}
enum EndPoint {
    case popular
    case topRated
    case upComing
}
extension EndPoint: EndPointProtocol {
    
    var baseURL: String {
        return "https://api.themoviedb.org/3/movie/"
    }
    
    var genreURL: String {
        switch self {
        case.popular:
            return "popular"
        case.topRated:
            return "top_rated"
        case.upComing:
            return "upcoming"
        }
    }
    var apiKey: String {
        return "?api_key=6c167902271047f31a8375a59985caa3"
    }
    
    var methot: HTPPMethod {
        switch self {
        case.popular:
            return .get
        case.topRated:
            return .get
        case.upComing:
            return .get
        }
    }
    func movieApiURL() -> String {
        return "\(baseURL)\(genreURL)\(apiKey) "
    }
    func request() -> URLRequest {
        guard let apiUrl = URLComponents(string: movieApiURL()) else {
            fatalError("Url companent bulunamadi.")
        }
        guard let url = apiUrl.url else {
            fatalError("url bulunamadi.")
        }
        var request = URLRequest(url: url)
        request.httpMethod = methot.rawValue
        
        return request
    }

}
