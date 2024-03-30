//
//  CreditsView.swift
//  WatchAppExample Watch App
//
//  Created by Caroline Canto on 2024-03-30.
//

import SwiftUI

struct CreditsView: View {
    var body: some View {
        VStack(spacing: 3) {
            HeaderView(title: "Credits")
            Text("Caroline Salib")
                .foregroundColor(.primary)
                .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
            
            Text("Developer")
                .font(.footnote)
                .foregroundColor(.secondary)
                .fontWeight(.light)
        }
    }
}

#Preview {
    CreditsView()
}
