//
//  JournalEntry.swift
//  SwiftUI-Journal
//
//  Created by David Salmberg on 2023-04-11.
//

import Foundation

struct JournalEntry : Identifiable{
    var id = UUID()
    var content : String
    
    private var unformattedDate = Date()
    private let dateFormatter = DateFormatter()
    
    init(content: String) {
        self.content = content
        dateFormatter.dateStyle = .medium
    }
    
    var date : String {
        
        
        return dateFormatter.string(from: unformattedDate)
    }
}
