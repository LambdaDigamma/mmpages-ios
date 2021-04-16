//
//  BasePage.swift
//  
//
//  Created by Lennart Fischer on 10.01.21.
//

import Foundation
import MMCommon
import ModernNetworking

public protocol BasePage: Model, Timestamps, Stubbable, Equatable {
    
    associatedtype ID = Identifiable
    associatedtype UserID = Identifiable
    associatedtype PageBlock = BasePageBlock
    
    var id: ID { get }
    var title: String? { get set }
    var slug: String? { get set }
    var blocks: [PageBlock] { get set }
    var creatorID: UserID? { get set }
    var extras: [String: String]? { get set }
    var archivedAt: Date? { get set }
    
}
