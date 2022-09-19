//
//  BlockText.swift
//  
//
//  Created by Lennart Fischer on 23.05.22.
//

import Foundation
import ProseMirror

public struct BlockText: Blockable {
    
    public static var type: BlockType = .text
    
    public var title: String?
    public var subtitle: String?
    public var text: Document?
    
    public enum CodingKeys: String, CodingKey {
        case title = "title"
        case subtitle = "subtitle"
        case text = "text"
    }
    
}

