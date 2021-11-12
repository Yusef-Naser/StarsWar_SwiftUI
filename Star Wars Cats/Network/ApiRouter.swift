//
//  ApiRouter.swift
//  Star Wars Cats
//
//  Created by Yusef Naser on 12/11/2021.
//

import Foundation


public protocol URLRequestConvertible {
    func asURLRequest() -> URLRequest
}

enum ApiRouter : URLRequestConvertible {
    
    case getStarWars
    
    
    private var Methods : String {
        switch self {
        case .getStarWars  :
            return "GET"
        }
    }
    
    private var Headers : [String : String] {
        switch self {
        case .getStarWars :
            return [
//                "content-type" : "application/json;charset=utf-8",
                :
            ]
        }
    }
    
    func asURLRequest() -> URLRequest {
        let url = Bundle.main.url(forResource: "star_wars", withExtension:"json")
        var urlRequest = URLRequest(url: url!)
        urlRequest.httpMethod = Methods
        urlRequest.allHTTPHeaderFields = Headers
        
        return urlRequest
    }
    
}
