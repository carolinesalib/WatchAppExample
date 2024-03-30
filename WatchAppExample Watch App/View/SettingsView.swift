//
//  SettingsView.swift
//  WatchAppExample Watch App
//
//  Created by Caroline Canto on 2024-03-30.
//

import SwiftUI

struct SettingsView: View {
    @AppStorage("lineCount") var lineCount: Int = 1
    @State private var value: Float = 1.0
    
    func update() {
        lineCount = Int(value)
    }

    var body: some View {
        VStack(spacing: 8) {
            HeaderView(title: "Settings")
            Text("Lines: \(lineCount)".uppercased())
                .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
            Slider(value:
                    Binding(
                        get: { self.value },
                        set: { (newValue) in
                            self.value = newValue
                            self.update()
                        }
                    ), in: 1...4, step: 1)
                .accentColor(.accentColor)
        }
    }
}

#Preview {
    SettingsView()
}
