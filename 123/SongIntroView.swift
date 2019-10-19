//
//  SongIntroView.swift
//  123
//
//  Created by Dunja on 2019/10/16.
//  Copyright © 2019 Starmy. All rights reserved.
//

import SwiftUI

struct SongIntroView: View {
    var animisong: AnimiSong
    
    var body: some View {
        NavigationView{
            VStack {
                Image(animisong.number)
                    .resizable()
                    .scaledToFill()
                    .frame(minWidth: 0, maxWidth: .infinity, maxHeight: 300).clipped()
                ScrollView(.vertical){
                    Text(animisong.name).padding()
                    
                    Text(animisong.lyrics).padding()
                    
                }
            }.background(LinearGradient(gradient: Gradient(colors: [Color.red, Color.blue]), startPoint: .leading, endPoint: .trailing))
        }.navigationBarTitle(animisong.singer)
    }
}

struct SongIntroView_Previews: PreviewProvider {
    static var previews: some View {
        SongIntroView(animisong: animisongs[0])
    }
}
