//
//  PageService.swift
//  
//
//  Created by Lennart Fischer on 11.04.21.
//

import Foundation
import Combine


public protocol PageService {
    
    func loadPage(for pageID: Page.ID) -> AnyPublisher<Page, Error>
    
}
