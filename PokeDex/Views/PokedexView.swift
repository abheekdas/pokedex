//
//  PokedexView.swift
//  PokeDex
//
//  Created by Abheek Das on 09/05/21.
//

import SwiftUI

struct PokedexView: View {
    // Basically saying vgrid we only want 2 items per row
    private let gridItems = [GridItem(.flexible()),GridItem(.flexible())]
    
    @ObservedObject var viewModel = PokemonViewModel()
    
    
    var body: some View {
        NavigationView{
            ScrollView{
                LazyVGrid(columns: gridItems,spacing:16, content: {
                    ForEach(viewModel.pokemon) { pokemon in
                        PokemonCell(pokemon: pokemon, viewModel: viewModel)
                    }
                })
            }
            .navigationTitle("Pokedex")
        }
    }
}

struct PokedexView_Previews: PreviewProvider {
    static var previews: some View {
        PokedexView()
    }
}
