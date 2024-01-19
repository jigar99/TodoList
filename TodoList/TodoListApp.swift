//
//  TodoListApp.swift
//  TodoList
//
//  Created by Jigar on 1/17/24.
//

import SwiftUI

@main
struct TodoListApp: App {
    
   @StateObject var listViewModel: ListViewModel = ListViewModel()
    
    var body: some Scene {
        WindowGroup {
            NavigationView {
                ListView()
            }
            .navigationViewStyle(StackNavigationViewStyle())
            .environmentObject(listViewModel)
        }
    }
}
