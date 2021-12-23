//
//  NetworkManager.swift
//  Vote Know How
//
//  Created by Dominick Hera on 12/19/21.
//

import Foundation


class NetworkManager
{
    func request(requestURL: String, queryItems: [URLQueryItem] = [URLQueryItem](), callback: @escaping(_ serverResponse: HTTPURLResponse?, _ data: Data?, _ error: Error?) -> Void)
    {
        var requestURL = URLComponents(string: requestURL)
        requestURL?.queryItems = queryItems
        
        let url = URL(string: requestURL?.string ?? "")!
        var request = URLRequest(url: url)
        request.allHTTPHeaderFields = [
            "Content-Type": "application/json"
        ]
        
        let task = URLSession.shared.dataTask(with: request)
        {
            data, response, error in
            
            guard error == nil, let serverResponse = response as? HTTPURLResponse, serverResponse.statusCode == 200, let receivedData = data else
            {
                callback(nil, nil, error)
                
                return
            }
            
            callback(serverResponse, receivedData, error)
        }
        
        task.resume()
    }
}
