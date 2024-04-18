//
//  TabBarView.swift
//  ChatApp
//
//  Created by Jor . on 18/04/2024.
//

import SwiftUI

struct TabBarView: View {
    @State private var SelectedTab: Int = 0
    var body: some View {
        TabView{
            InboxView()
                .tabItem {
                    VStack {
                        Image(systemName: "message")
                            .environment(\.symbolVariants, SelectedTab == 0 ? .fill : .none)
                        Text("chats")
                    }
                    .onAppear{
                        SelectedTab = 0
                    }
                }
            
            Text("Calls")
                .tabItem {
                    VStack {
                        Image(systemName: "phone.badge.waveform")
                            .environment(\.symbolVariants, SelectedTab == 1 ? .fill : .none)
                        Text("chats")
                    }
                    .onAppear{
                        SelectedTab = 1
                    }
                }
            
            Text("Community")
                .tabItem {
                    VStack {
                        Image(systemName: "person.3.sequence")
                            .environment(\.symbolVariants, SelectedTab == 2 ? .fill : .none)
                        Text("chats")
                    }
                    .onAppear{
                        SelectedTab = 2
                    }
                }
            
            Text("Updates")
                .tabItem {
                    VStack {
                        Image(systemName: "circle.circle")
                            .environment(\.symbolVariants, SelectedTab == 3 ? .fill : .none)
                        Text("chats")
                    }
                    .onAppear{
                        SelectedTab = 3
                    }
                }
        }
        .tint(.cyan)
    }
}

#Preview {
    TabBarView()
}
