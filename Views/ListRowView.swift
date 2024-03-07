//
//  ListRowView.swift
//  TodoList
//
//  Created by 陈天宇 on 2024/3/4.
//

import SwiftUI

struct ListRowView: View {
    let item: ItemModel
    
    var body: some View {
        HStack {
            Image(systemName: item.isCompleted ? "checkmark.circle" : "circle")
                .foregroundStyle(item.isCompleted ? Color.green : Color.black)
            Text(item.title)
            Spacer()
        }
        .font(.title3)
    }
}

struct ListRowView_Previews: PreviewProvider {
    static var previews: some View {
        let item1 = ItemModel(title: "first", isCompleted: false)
        let item2 = ItemModel(title: "second", isCompleted: true)
        
        ListRowView(item: item1)
        ListRowView(item: item2)
    }
}
