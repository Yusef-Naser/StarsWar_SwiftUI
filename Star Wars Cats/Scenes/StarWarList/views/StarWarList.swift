//
//  StarWarList.swift
//  Star Wars Cats
//
//  Created by Yusef Naser on 12/11/2021.
//

import SwiftUI

struct StarWarList: View {
    
    var viewModel = StarWarListViewModel()
    
    @State var searchText = ""
    
    var body: some View {
        
            NavigationView {
                
                ScrollView {
                    
                    HStack {
                        TextField("Search", text : $searchText ).colorScheme(.light)
                    }
                    .padding()
                    
                    .background(Color(#colorLiteral(red: 0.9411764706, green: 0.9411764706, blue: 0.9411764706, alpha: 1)))
                    
                    .cornerRadius(6)
                    .padding(.horizontal)
                    
                    
                    
                    ForEach ( (0..<viewModel.filterStarsWar(search: searchText).count )  , id : \.self) { n in
                        
                        NavigationLink(destination: StarWarDetails(starWar: viewModel.filterStarsWar(search: searchText)[n]) ) {
                                StarWarRow(starWar: viewModel.filterStarsWar(search: searchText)[n])
                        }
                        
                    }
                    
                    
                }
                .navigationTitle("STAR WARS CATS")
                
                
                
//                List(viewModel.starWarsList) { starWar in
//                    NavigationLink(destination: StarWarDetails(starWar: starWar) ) {
//                           StarWarRow(starWar: starWar)
//                    }
//
//                }.ignoresSafeArea()
//                .navigationTitle("STAR WARS CATS")
                
                
            }
        
    }
        
    
}

struct StarWarList_Previews: PreviewProvider {
    static var previews: some View {
        StarWarList()
    }
}
