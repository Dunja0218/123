//
//  AppView.swift
//  123
//
//  Created by Dunja on 2019/10/13.
//  Copyright © 2019 Starmy. All rights reserved.
//

import SwiftUI

struct AppView: View {
    var body: some View {
        TabView {
             ContentView()
                .tabItem {
                    Image(systemName:"info.circle.fill")
                    Text("成員")
            }
            SongList()
                .tabItem {
                    Image(systemName: "house.fill")
                    Text("About")
                    
            }
        }
        .accentColor(.red)
      
    }
}

struct AppView_Previews: PreviewProvider {
    static var previews: some View {
        AppView()
    }
}
