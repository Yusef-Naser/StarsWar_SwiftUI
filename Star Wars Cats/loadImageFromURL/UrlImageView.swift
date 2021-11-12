//
//  UrlImageView.swift
//  Star Wars Cats
//
//  Created by Yusef Naser on 12/11/2021.
//

import SwiftUI

struct UrlImageView: View {
    @ObservedObject var urlImageModel: UrlImageModel
    
    init(urlString: String?) {
        
        urlImageModel = UrlImageModel(urlString: urlString)
    }
    
    var body: some View {
        Image(uiImage: urlImageModel.image ?? UrlImageView.defaultImage!)
            .resizable()
            .scaledToFill()
            .clipped()
//            .frame(width: 100, height: 100)
    }
    
    static var defaultImage = UIImage(named: "placeholder")
}

struct UrlImageView_Previews: PreviewProvider {
    static var previews: some View {
        UrlImageView(urlString: nil)
    }
}
