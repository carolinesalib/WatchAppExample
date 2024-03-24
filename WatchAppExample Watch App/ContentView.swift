//
//  ContentView.swift
//  WatchAppExample Watch App
//
//  Created by Caroline Canto on 2024-03-21.
//

import SwiftUI

struct ContentView: View {
    // MARK: - PROPERTY
    
    @State private var notes: [Note] = [Note]()
    @State private var text: String = ""
    
    // MARK: - FUNCTION
    
    func save() {
        dump(notes)
    }
    
    // MARK: - BODY

    var body: some View {
        VStack {
            HStack(alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/, content: {
                TextField("Add New Note", text: $text)
                
                Button {
                    guard text.isEmpty == false else { return }
                    let note = Note(id: UUID(), text: text)
                    
                    notes.append(note)
                    
                    text = ""
                    
                    save()
                } label: {
                    Image(systemName: "plus.circle")
                        .font(.system(size: 45, weight: .semibold))
                }
                .fixedSize()
                .buttonStyle(PlainButtonStyle())
                .foregroundColor(.accentColor)
            })
            
            Spacer()
            
            Text("\(notes.count)")
        }
        .navigationTitle("Notes")
    }
}

// MARK: - PREVIEW

#Preview {
    ContentView()
}
