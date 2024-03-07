//
//  AddView.swift
//  TodoList
//
//  Created by 陈天宇 on 2024/3/4.
//

import SwiftUI

struct AddView: View {
    @Environment(\.presentationMode) var presentationMode
    @EnvironmentObject var listViewModel: ListViewModel
    @State var textFirldText: String = ""
    @State var showAlert: Bool = false
    @State var alertTitle: String = ""
    
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
                Button(action: saveButtonPressed) {
                    Text("SAVE")
                        .frame(width: 150, height: 50)
                        .foregroundStyle(.white)
                        .background(.blue)
                        .clipShape(RoundedRectangle(cornerRadius: 25.0))
                }
            }
        }
        .navigationTitle("Add an Ttem")
        .alert(isPresented: $showAlert, content: {
            getAlert()
        })
    }
    func saveButtonPressed() {
        if textIsAppropriate() {
            listViewModel.addItem(title: textFirldText)
            presentationMode.wrappedValue.dismiss()
        }
    }
    func textIsAppropriate() -> Bool {
        if textFirldText.count < 3 {
            alertTitle = "There are not enough words in the content"
            showAlert.toggle()
            return false
        }
        return true
    }
    func getAlert() -> Alert {
        Alert(title: Text(alertTitle))
    }
}

#Preview {
    NavigationStack {
        AddView()
    }
}
