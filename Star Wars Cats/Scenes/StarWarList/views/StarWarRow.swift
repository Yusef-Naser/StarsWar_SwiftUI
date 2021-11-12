//
//  StarWarRow.swift
//  Star Wars Cats
//
//  Created by Yusef Naser on 12/11/2021.
//

import SwiftUI

struct StarWarRow: View {
    
    var starWar : ModelResult
    
    @Environment(\.colorScheme) var colorScheme
    
    var body: some View {
        HStack {
            UrlImageView(urlString: starWar.imageUrl)
                .frame(width: 50, height: 50).padding([.leading], 16)
                
            Text(starWar.name).padding([.horizontal] , 32).foregroundColor( (colorScheme == .dark) ? .white : .black )
            
            
            
            Spacer()
        }
    }
}

struct StarWarRow_Previews: PreviewProvider {
  
    static var previews: some View {

        StarWarRow(starWar: ModelResult(id: 0, name: "dfdf", height: "", mass: "", hair_color: "", skin_color: "", eye_color: "", birth_year: "", gender: "", imageUrl: ""))
            .previewDevice("iPhone 12 Pro")
            .previewLayout(.fixed(width: 300, height: 70))
    }
}
