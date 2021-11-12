//
//  StarWarDetails.swift
//  Star Wars Cats
//
//  Created by Yusef Naser on 12/11/2021.
//

import SwiftUI

struct StarWarDetails: View {
    var starWar : ModelResult
    
    var body: some View {
        ScrollView {
            Group {
                HStack{
                    Spacer()
                    Button(action: actionSheet) {
                        Text("Share Image")
                    }
                }
                ZStack {
                    UrlImageView(urlString: starWar.imageUrl)
                    VStack{
                        Spacer()
                        Text(starWar.name)
                    }
                    
                }
                Divider()
            }
            
            Group {
                HStack {
                    
                    Text("Birth Year : \(starWar.birth_year)")
                        .padding( 8)
                    Spacer()
                }
                
                Divider()
                HStack {
                    
                    Text("Gender : \(starWar.gender)")
                        .padding( 8)
                    Spacer()
                }
                
                Divider()
            }
            
            Group {
                HStack {
                    
                    Text("Height : \(starWar.height)")
                        .padding( 8)
                    Spacer()
                }
                Divider()
                HStack {
                    
                    Text("Mass : \(starWar.mass)")
                        .padding( 8)
                    Spacer()
                }
                Divider()
            }
            
            Group {
                HStack {
                    
                    Text("Eye Color : \(starWar.eye_color)")
                        .padding( 8)
                    Spacer()
                }
                Divider()
                HStack {
                    
                    Text("Hair Color : \(starWar.hair_color)")
                        .padding( 8)
                    Spacer()
                }
                Divider()
                HStack {
                    
                    Text("Skin Color : \(starWar.skin_color)")
                        .padding( 8)
                    Spacer()
                }
                Divider()
            }
            
            
            
        }
        
    }
  
    func actionSheet() {
        guard let urlShare = URL(string: "\(starWar.imageUrl)") else { return }
            let activityVC = UIActivityViewController(activityItems: [urlShare], applicationActivities: nil)
            UIApplication.shared.windows.first?.rootViewController?.present(activityVC, animated: true, completion: nil)
        }
    
}



struct StarWarDetails_Previews: PreviewProvider {
    static var previews: some View {
        StarWarDetails(starWar: ModelResult(id: 0, name: "", height: "", mass: "", hair_color: "", skin_color: "", eye_color: "", birth_year: "", gender: "", imageUrl: ""))
    }
}
