//
//  InboxView.swift
//  ChatApp
//
//  Created by Jor . on 18/04/2024.
//

import SwiftUI

struct InboxView: View {
    var body: some View {
        NavigationStack {
            ZStack(alignment: .bottomTrailing) {
                List(/*@START_MENU_TOKEN@*/0 ..< 5/*@END_MENU_TOKEN@*/) { item in
                    Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                }
                .listStyle(PlainListStyle())
                Button {
                    
                } label: {
                    RoundedRectangle(cornerRadius: 10)
                        .fill(Color(.gray))
                        .frame(width: 60, height: 50)
                        .padding()
                        .overlay {
                            Image(systemName: "message.fill")
                                .foregroundStyle(.white)
                        }
                }
            }
            .toolbar{
                ToolbarItem(placement: .topBarLeading){
                    Text("Chat")
                        .font(.title2)
                        .fontWeight(.semibold)
                        .foregroundStyle(.white)
                        .navigationBarColor(backgroundColor: Color.gray)
                }
                
                ToolbarItem(placement: .topBarTrailing){
                    HStack {
                        Image(systemName: "camera")
                        Image(systemName: "magnifyingglass")
                    }
                    .fontWeight(.semibold)
                    .foregroundStyle(.white)
                }
            }
        }
    }
}

#Preview {
    InboxView()
}
