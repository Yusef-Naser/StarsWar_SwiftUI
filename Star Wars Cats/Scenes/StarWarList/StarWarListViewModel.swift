//
//  StarWarListViewModel.swift
//  Star Wars Cats
//
//  Created by Yusef Naser on 12/11/2021.
//

import SwiftUI

class StarWarListViewModel : ObservableObject {
    
    var starWarsList = [ModelResult]()
    
    init() {
        getStarWarList()
    }
    
    func getStarWarList () {
        
        ApiClient<ModelStarWars>.performRequest(route: .getStarWars) { result , statusCode in
            switch result {
            case .success(let data) :
                self.starWarsList = data.results
                return
            case .error(let error) :
                print(error.localizedDescription)
                return
            }
        }
        
    }
    
    func filterStarsWar (search : String ) -> [ModelResult] {
        if search != "" {
           return starWarsList.filter({$0.name.contains(search)})
        }
        return starWarsList
    }
    
}
