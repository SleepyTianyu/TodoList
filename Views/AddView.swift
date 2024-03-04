//
//  AddView.swift
//  TodoList
//
//  Created by 陈天宇 on 2024/3/4.
//

import SwiftUI

struct AddView: View {
    @State var textFirldText: String = ""
    
    var body: some View {
        ScrollView {
            VStack(spacing: 12) {
                TextField("Type something here...", text: $textFirldText)
                    .padding(.vertical)
                    .padding(.horizontal)
                    .background(Color("textFieldBackground", bundle: .none))
                    .frame(height: 55)
                    .clipShape(RoundedRectangle(cornerRadius: 12))
                    .padding(.horizontal)
                Button(action: {
                    
                }, label: {
                    Text("SAVE")
                        .frame(width: 150, height: 50)
                        .foregroundStyle(.white)
                        .background(.blue)
                        .clipShape(RoundedRectangle(cornerRadius: 25.0))
                })
            }
        }
        .navigationTitle("Add an Ttem")
    }
}

#Preview {
    NavigationStack {
        AddView()
    }
}
