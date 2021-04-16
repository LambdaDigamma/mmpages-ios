//
//  BasePageBlock.swift
//  
//
//  Created by Lennart Fischer on 10.01.21.
//

import Foundation
import MMCommon
import ModernNetworking

public protocol BasePageBlock: Model, Stubbable, Equatable {
    
    associatedtype ID = Identifiable
    associatedtype PageID = Identifiable
    
    var id: ID { get }
    var pageID: PageID { get set }
    var type: String { get set }
//    var data: [String: Any]? { get set }
    
}
