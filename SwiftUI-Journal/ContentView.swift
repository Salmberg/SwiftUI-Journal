//
//  ContentView.swift
//  SwiftUI-Journal
//
//  Created by David Salmberg on 2023-04-11.
//

import SwiftUI

struct ContentView: View {
    
    var journal = [JournalEntry(content: "Jag vaknade"),
                   JournalEntry(content: "Jag tränade"),
                   JournalEntry(content: "Jag åt"),
                   JournalEntry(content: "Jag pluggade")]
    
    var body: some View {
        NavigationView{
            VStack {
                List() {
                    ForEach(journal) { entry in
                        NavigationLink(destination: JournalEntryView()){
                            RowView(entry: entry)
                        }
                    }
                }
            }
            .navigationTitle("Journal")
            .navigationBarItems( trailing: NavigationLink(destination:
             JournalEntryView()) {
                Image(systemName: "plus.circle")
            })
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct RowView: View {
    let entry : JournalEntry
    
    
    var body: some View {
        HStack {
            Text(entry.date)
            Spacer()
            Text(entry.content.prefix(7)+"...")
        }
    }
}
