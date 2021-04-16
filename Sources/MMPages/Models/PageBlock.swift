//
//  PageBlock.swift
//  
//
//  Created by Lennart Fischer on 14.01.21.
//

import Foundation


public struct PageBlock: BasePageBlock {
    
    public typealias ID = Int
    public typealias PageID = Page.ID
    
    public var id: ID
    public var pageID: PageID
    public var type: String
//    public var data: [String: Any]?
    
    public init(id: ID, pageID: PageID, type: String/*, data: [String: String]?*/) {
        self.id = id
        self.pageID = pageID
        self.type = type
//        self.data = data
    }
    
    public enum CodingKeys: String, CodingKey {
        case id = "id"
        case pageID = "page_id"
        case type = "type"
//        case data = "data"
    }
    
    public static func stub(withID id: Int) -> PageBlock {
        return PageBlock(id: id,
                         pageID: 0,
                         type: "test"
                         /*data: [:]*/)
    }
    
}
