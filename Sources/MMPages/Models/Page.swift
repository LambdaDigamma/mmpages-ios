//
//  Page.swift
//  
//
//  Created by Lennart Fischer on 14.01.21.
//

import Foundation


public struct Page: BasePage {
    
    public typealias ID = Int
    public typealias UserID = Int
//    public typealias Block = PageBlock
    
    public let id: ID
    public var title: String?
    public var slug: String?
    public var blocks: [PageBlock]
    public var creatorID: UserID?
    public var extras: [String : String]?
    public var archivedAt: Date?
    public var createdAt: Date?
    public var updatedAt: Date?
    
    public enum CodingKeys: String, CodingKey {
        case id = "id"
        case title = "title"
        case slug = "slug"
        case blocks = "blocks"
        case creatorID = "creator_id"
        case extras = "extras"
        case archivedAt = "archived_at"
        case createdAt = "created_at"
        case updatedAt = "updated_at"
    }
    
    public static func stub(withID id: Page.ID) -> Page {
        return Page(id: id,
                    title: "",
                    slug: nil,
                    blocks: [],
                    creatorID: nil,
                    extras: nil,
                    archivedAt: nil,
                    createdAt: Date(),
                    updatedAt: Date())
    }
    
    public static var decoder: JSONDecoder {
        let decoder = JSONDecoder()
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy-MM-dd'T'HH:mm:ss.SSS'Z"
        formatter.timeZone = TimeZone(abbreviation: "UTC")
        
        decoder.dateDecodingStrategy = .formatted(formatter)
        decoder.keyDecodingStrategy = .useDefaultKeys
        
        return decoder
    }
    
}
