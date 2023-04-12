//
//  JournalViewModel.swift
//  SwiftUI-Journal
//
//  Created by David Salmberg on 2023-04-12.
//

import Foundation

class JournalViewModel : ObservableObject {
   @Published var entries = [JournalEntry]()
    
    init(){
        addMockData()
    }
    
    func addMockData() {
        
        entries.append(JournalEntry(content: "Jag vaknade"))
        entries.append(JournalEntry(content: "Jag tränade"))
        entries.append(JournalEntry(content: "Jag åt"))
        entries.append(JournalEntry(content: "Jag pluggade"))
    }
    
    func update(entry: JournalEntry, with content: String){
        if let index =  entries.firstIndex(of: entry) {
            entries[index].content = content
        }
    }
}
