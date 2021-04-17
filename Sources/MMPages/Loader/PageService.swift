//
//  PageService.swift
//  
//
//  Created by Lennart Fischer on 11.04.21.
//

import Foundation
import Combine
import ModernNetworking

public protocol PageService {
    
    var environment: ServerEnvironment { get set }
    
    func loadPage(for pageID: Page.ID) -> AnyPublisher<Page, Error>
    
}
