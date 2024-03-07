//
//  ListViewModel.swift
//  TodoList
//
//  Created by 陈天宇 on 2024/3/5.
//

import Foundation

class ListViewModel: ObservableObject {
    @Published var items: [ItemModel] = []
    
    init() {
        getItem()
    }
    
    func getItem() {
        let newItem = [
            ItemModel(title: "This is the first", isCompleted: true),
            ItemModel(title: "This is the second", isCompleted: true),
            ItemModel(title: "Third", isCompleted: false)
        ]
        items.append(contentsOf: newItem)
    }
    
    func deleteItem(indexSet: IndexSet) {
        items.remove(atOffsets: indexSet)
    }
    func moveItem(from: IndexSet, to: Int) {
        items.move(fromOffsets: from, toOffset: to)
    }
    func addItem(title: String) {
        let newItem = ItemModel(title: title, isCompleted: false)
        items.append(newItem)
    }
    func updateItem(item: ItemModel) {
        if let index = items.firstIndex(where: { $0.id == item.id }) {
            items[index] = ItemModel(title: item.title, isCompleted: !item.isCompleted)
        }
    }
}
