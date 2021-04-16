//
//  DefaultPageService.swift
//  
//
//  Created by Lennart Fischer on 11.04.21.
//

import Foundation
import Combine
import ModernNetworking
import Cache

public class DefaultPageService: PageService {
    
    private let loader: HTTPLoader
    private let cache: Storage<String, Page>
    
    public init(_ loader: HTTPLoader = URLSessionLoader(), _ cache: Storage<String, Page>) {
        self.loader = loader
        self.cache = cache
    }
    
    public func loadPage(for pageID: Page.ID) -> AnyPublisher<Page, Error> {
        
        let request = HTTPRequest(path: Endpoint.show(pageID: pageID).path())
        
        return Deferred {
            Future { promise in
                self.loader.load(request) { (result) in
                    promise(result)
                }
            }
        }
        .eraseToAnyPublisher()
        .compactMap { $0.body }
        .decode(type: Resource<Page>.self, decoder: Page.decoder)
        .map({
//            self.cache.async.setObject($0, forKey: "events") { (result) in }
            return $0.data
        })
        .eraseToAnyPublisher()
        
    }
    
}

extension DefaultPageService {
    
    public enum Endpoint {
        
        case show(pageID: Page.ID)
        
        func path() -> String {
            switch self {
                case .show(let id):
                    return "pages/\(id)"
            }
        }
    }
        
}
