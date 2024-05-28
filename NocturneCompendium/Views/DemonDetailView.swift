//
//  DemonDetailView.swift
//  NocturneCompendium
//
//  Created by Trey Dixon on 3/14/24.
//

import SwiftUI

struct DemonDetailView: View {
    @EnvironmentObject var vm: ViewModel
    let demon: Demon
    
    var body: some View {
        VStack {
            DemonView(demon: demon)
            
            VStack(spacing: 10) {
                Text("**Race**: \(demon.race)")
                Text("**lvl**: \(demon.lvl)")
            }
            .padding()
        }
    }
}

struct DemonDetailView_Previews: PreviewProvider
{
    static var previews: some View {
        DemonDetailView(demon:
            Demon.sampleDemon).environmentObject(ViewModel())
    }
}
