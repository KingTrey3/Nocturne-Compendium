//
//  ContentView.swift
//  NocturneCompendium
//
//  Created by Trey Dixon on 3/13/24.
//

import SwiftUI

struct ContentView: View {
    @StateObject var vm = ViewModel()
    
    private let adaptiveColumns = [
        GridItem(.adaptive(minimum: 150))
    ]
    
    var body: some View {
        NavigationView {
            ScrollView {
                LazyVGrid(columns: adaptiveColumns, spacing: 10) {
                    ForEach(vm.filteredDemon) {
                        demon in NavigationLink(destination: DemonDetailView(demon: demon)) {
                            DemonView(demon: demon)
                        }
                    }
                }
                .animation(.easeInOut(duration: 0.3), value: vm.filteredDemon.count).navigationTitle("SMT III Nocturne Compendium").navigationBarTitleDisplayMode(.inline)
            }
            .searchable(text: $vm.searchText)
        }
        .environmentObject(vm)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
