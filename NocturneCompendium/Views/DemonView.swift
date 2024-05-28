//
//  DemonView.swift
//  NocturneCompendium
//
//  Created by Trey Dixon on 3/13/24.
//

import SwiftUI

struct DemonView: View {
    @EnvironmentObject var vm: ViewModel
    let demon: Demon
    let dimensions: Double =  140
    
    var body: some View {
        VStack {
            AsyncImage(url: URL(string: "\(demon.image)")) { image in
                if image == image {
                    image
                        .resizable()
                        .scaledToFit()
                        .frame(width: dimensions, height: dimensions)
                }
            } placeholder: {
                ProgressView()
                    .frame(width: dimensions, height: dimensions)
                    
            }
            .background(.thinMaterial)
            .clipShape(Circle())

            Text("\(demon.name.capitalized)")
                .font(.system(size: 16, weight: .regular, design: .monospaced))
                .padding(.bottom, 20)

        }
    }
}

struct PokemonView_Previews: PreviewProvider {
    static var previews: some View {
        DemonView(demon: Demon.sampleDemon)
            .environmentObject(ViewModel())
    }
}

