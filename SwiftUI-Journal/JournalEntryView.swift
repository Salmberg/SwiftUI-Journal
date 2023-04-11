//
//  JournalEntryView.swift
//  SwiftUI-Journal
//
//  Created by David Salmberg on 2023-04-11.
//

import SwiftUI


struct JournalEntryView: View {
    @State var content : String = ""
    
    var body: some View {
        TextEditor(text: $content)
    }
}

struct JournalEntryView_Previews: PreviewProvider {
    static var previews: some View {
        JournalEntryView()
    }
}
